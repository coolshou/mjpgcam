#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QSettings>
#include "mjpegstreamer.h"

QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();
public slots:
    void onStart();
    void onStop();
    void onDisconnected();
    void onUpdateMsg(QString msg);
    void onError(QString msg);
    void onStopped();
private:
    void loadsetting();
    void savesetting();
    Ui::MainWindow *ui;
    QSettings *cfg;
    QString url;
    MJPEGStreamer * m_stream;
};
#endif // MAINWINDOW_H
