#include "mainwindow.h"
#include "ui_mainwindow.h"

// #include "mjpegwidget.h"

#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    cfg = new QSettings("coolshou.idv.tw", "mjpegcam");
    ui->setupUi(this);
    m_stream = new MJPEGStreamer(this);
    connect(m_stream, &MJPEGStreamer::disconnected, this, &MainWindow::onDisconnected);
    connect(m_stream, &MJPEGStreamer::updateMsg, this, &MainWindow::onUpdateMsg);
    connect(m_stream, &MJPEGStreamer::error, this, &MainWindow::onError);
    ui->vlVideo->addWidget(m_stream);
    connect(ui->pbStart, &QPushButton::clicked, this, &MainWindow::onStart);
    connect(ui->pbStop, &QPushButton::clicked, this, &MainWindow::onStop);
    loadsetting();
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::onStart()
{
    savesetting();
    onUpdateMsg("");
    ui->pbStart->setEnabled(false);
    ui->pbStop->setEnabled(true);

    url="http://";
    QString sUsername = ui->leUsername->text();
    if (!sUsername.isEmpty()){
        url = url + sUsername;
        QString sPassword = ui->lePassword->text();
        if (!sPassword.isEmpty()){
            url = url + ":" + sPassword;
        }
        url = url + "@";
    }
    QString sIpaddress = ui->leIPAddress->text();
    url = url + sIpaddress;
    int iPort = ui->sbPort->value();
    if (iPort != 80){
        url = url + ":" + QString::number(iPort);
    }
    QString sPath = ui->lePath->text();
    if (!sPath.isEmpty()) {
        url = url + sPath;
    }
    onUpdateMsg("Connect to " + url);
#ifdef Q_OS_WIN
    m_stream->set_url(url, iPort);
#else
    m_stream->set_url(url);
#endif
    m_stream->start();
}

void MainWindow::onStop()
{
    m_stream->stop();
    onUpdateMsg("stop");
}

void MainWindow::onDisconnected()
{
    onUpdateMsg(url + " Disconnected");
    onStopped();
}

void MainWindow::onUpdateMsg(QString msg)
{
    if (msg.isEmpty()){
        ui->statusbar->clearMessage();
    }else{
        ui->statusbar->showMessage(msg);
        qDebug() << msg;
    }
}

void MainWindow::onError(QString msg)
{
    onUpdateMsg(msg);
    onStopped();
}

void MainWindow::onStopped()
{
    ui->pbStart->setEnabled(true);
    ui->pbStop->setEnabled(false);
}

void MainWindow::loadsetting()
{
    cfg->beginGroup("main");
    QString ip = cfg->value("ip", "192.168.0.20").toString();
    ui->leIPAddress->setText(ip);
    int port = cfg->value("port", 80).toInt();
    ui->sbPort->setValue(port);
    QString path = cfg->value("path", "/video/mjpg.cgi").toString();
    ui->lePath->setText(path);
    QString username = cfg->value("username", "admin").toString();
    ui->leUsername->setText(username);
    QString password = cfg->value("password", "").toString();
    ui->lePassword->setText(password);
    cfg->endGroup();
}

void MainWindow::savesetting()
{
    cfg->beginGroup("main");
    cfg->setValue("ip", ui->leIPAddress->text());
    cfg->setValue("port", ui->sbPort->value());
    cfg->setValue("path", ui->lePath->text());
    cfg->setValue("username", ui->leUsername->text());
    cfg->setValue("password", ui->lePassword->text());
    cfg->endGroup();
    cfg->sync();
}
