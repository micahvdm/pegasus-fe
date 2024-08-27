# Resource object code (Python 3)
# Created by: object code
# Created by: The Resource Compiler for Qt version 6.5.1
# WARNING! All changes made in this file will be lost!

from PySide6 import QtCore

qt_resource_data = b"\
\x00\x00\x01S\
#\
 This is a comme\
nt, it should be\
 skipped\x0a\x0a  an i\
nvalid line, as \
it starts with s\
pace, but isn't \
a multiline\x0a\x0akey\
1:val\x0akey2 : val\
\x0akey with spaces\
: val with space\
s\x0amissing value \
:\x0a: missing key\x0a\
\x0amultiline1: hel\
lo\x0a  world!\x0amult\
iline2:\x0a  purely\
\x0a  multiline\x0amul\
tiline3: text\x0a  \
with\x0a  .\x0a  line \
break\x0amultiline4\
: text\x0a  stops h\
ere\x0a\x0a  line brea\
k\x0a\
"

qt_resource_name = b"\
\x00\x08\
\x0c\xa7F\x87\
\x00t\
\x00e\x00s\x00t\x00.\x00c\x00f\x00g\
"

qt_resource_struct = b"\
\x00\x00\x00\x00\x00\x02\x00\x00\x00\x01\x00\x00\x00\x01\
\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\
\x00\x00\x01\x91\x95\x19{\xf6\
"

def qInitResources():
    QtCore.qRegisterResourceData(0x03, qt_resource_struct, qt_resource_name, qt_resource_data)

def qCleanupResources():
    QtCore.qUnregisterResourceData(0x03, qt_resource_struct, qt_resource_name, qt_resource_data)

qInitResources()
