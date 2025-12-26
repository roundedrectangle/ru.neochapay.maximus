TARGET = ru.neochapay.maximus

CONFIG += \
    sailfishapp

INCLUDEPATH += ../libs/qtwebsockets5 \
               ../libs/qmaxmessenger \
               ../libs/libqwebp

LIBS += -L../libs/qtwebsockets5 -lqtwebsockets \
        -L../libs/qmaxmessenger/ -lqmaxmessenger \
        -L../libs/libqwebp/ -lqwebp \
        -L../libs/libwebp/ -lwebp \

SOURCES += \
    emojimodel.cpp \
    main.cpp

RESOURCES += qml.qrc

HEADERS += \
    emojimodel.h

DISTFILES += \
    qml/* \
    qml/pages/* \
    qml/covers/* \
    qml/js/* \
    qml/components/* \
    translations/*.ts

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172 256x256

CONFIG += sailfishapp_i18n

TRANSLATIONS += \
    translations/ru.neochapay.maximus.ts \
    translations/ru.neochapay.maximus-ru.ts

VERSION = $$system( egrep "^Version:\|^Release:" ../rpm/ru.neochapay.maximus.spec  |tr -d "[A-Z][a-z]: " | tr "\\\n" "-" | sed "s/\.$//g"| tr -d "[:space:]")
DEFINES += APP_VERSION=\\\"$$VERSION\\\"
