TARGET = test_apng
SOURCES = $${TARGET}.cpp
RESOURCES += data.qrc

OTHER_FILES += \
    tst_render.qml

include($${TOP_SRCDIR}/tests/qmltest_common.pri)
