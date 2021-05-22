#include "mainwindow.h"
#include <iostream>

MainWindow::MainWindow(QWidget *parent) : QMainWindow(parent)
{
    this->resize(800, 800);
    view = new QWebEngineView(this);
    this->setCentralWidget(view);

    QUrl myurl("https://github.com");
    view->load(myurl);
    view->page()->runJavaScript("navigator.userAgent;", [=](const QVariant &v){
        QString res = v.toString();
        std::cout << "UserAgent is: " << res.toStdString() << "\n";
    });
    std::cout << "Hello wolrd\n";
//    QObject::connect (p, &QPushButton::clicked, [=]() {
//        std::cout << "Hello wolrd button clicked\n";
//   });
}
