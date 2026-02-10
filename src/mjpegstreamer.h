#ifndef MJPEGSTREAMER_H
#define MJPEGSTREAMER_H

#include <QUrl>
#include <QLabel>
#include <QObject>
#include <QTcpSocket>

class MJPEGStreamer : public QLabel
{
    Q_OBJECT
    enum StreamState {
        Stopped, Authorizing, Streaming
    };
public:
    MJPEGStreamer(QWidget * parent = nullptr);
    ~MJPEGStreamer();
    void start();
    void stop();
    void set_url(const QString &url);
    QString url();
private:
    QTcpSocket * m_socket;
    QUrl m_url;
    QByteArray m_buffer;
    int64_t m_state;
signals:
    void disconnected();
    void updateMsg(QString msg);
    void error(QString msg);
private:
    void stream_mjpeg();
    QString generate_auth_digest(const QString &response);
    QString socketErrorToString(QAbstractSocket::SocketError error);
    void clearVideoSurface();
private slots:
    void on_connected();
    void on_disconnected();
    void on_readyRead();
    void on_errorOccurred(QAbstractSocket::SocketError err);
};

#endif // MJPEGSTREAMER_H
