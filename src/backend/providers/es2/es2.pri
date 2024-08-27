ENABLED_COMPATS += EmulationStation

DEFINES *= WITH_COMPAT_ES2

HEADERS += \
    $$PWD/Es2Games.h \
    $$PWD/Es2Metadata.h \
    $$PWD/Es2Provider.h \
    $$PWD/Es2Systems.h \
    $$PWD/Es2Input.h \
    
SOURCES += \
    $$PWD/Es2Games.cpp \
    $$PWD/Es2Metadata.cpp \
    $$PWD/Es2Provider.cpp \
    $$PWD/Es2Systems.cpp \
    $$PWD/Es2Input.cpp \
