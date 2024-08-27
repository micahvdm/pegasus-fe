# Resource object code (Python 3)
# Created by: object code
# Created by: The Resource Compiler for Qt version 6.5.1
# WARNING! All changes made in this file will be lost!

from PySide6 import QtCore

qt_resource_data = b"\
\x00\x00\x05q\
/\
/ Pegasus Fronte\
nd\x0a// Copyright \
(C) 2017-2018  M\
\xc3\xa1ty\xc3\xa1s Mustoha\x0a\
//\x0a// This progr\
am is free softw\
are: you can red\
istribute it and\
/or modify\x0a// it\
 under the terms\
 of the GNU Gene\
ral Public Licen\
se as published \
by\x0a// the Free S\
oftware Foundati\
on, either versi\
on 3 of the Lice\
nse, or\x0a// (at y\
our option) any \
later version.\x0a/\
/\x0a// This progra\
m is distributed\
 in the hope tha\
t it will be use\
ful,\x0a// but WITH\
OUT ANY WARRANTY\
; without even t\
he implied warra\
nty of\x0a// MERCHA\
NTABILITY or FIT\
NESS FOR A PARTI\
CULAR PURPOSE. S\
ee the\x0a// GNU Ge\
neral Public Lic\
ense for more de\
tails.\x0a//\x0a// You\
 should have rec\
eived a copy of \
the GNU General \
Public License\x0a/\
/ along with thi\
s program. If no\
t, see <http://w\
ww.gnu.org/licen\
ses/>.\x0a\x0a\x0aimport \
QtQuick 2.12\x0a\x0a\x0aM\
ouseArea {\x0a    i\
d: root\x0a\x0a    pro\
perty real minSw\
ipeLength: vpx(2\
0)\x0a\x0a    property\
 real startX: 0\x0a\
    property rea\
l lastX: 0\x0a    p\
roperty bool act\
ive: false\x0a\x0a    \
signal swipeLeft\
()\x0a    signal sw\
ipeRight()\x0a\x0a    \
propagateCompose\
dEvents: true\x0a\x0a \
   onPressed: {\x0a\
        startX =\
 mouse.x;\x0a      \
  lastX = startX\
;\x0a        active\
 = true;\x0a    }\x0a\x0a\
    onPositionCh\
anged: {\x0a       \
 if (!active)\x0a  \
          return\
;\x0a\x0a        var d\
iff = mouse.x - \
startX;\x0a\x0a       \
 if (diff < -min\
SwipeLength) {\x0a \
           activ\
e = false;\x0a     \
       swipeLeft\
();\x0a        }\x0a  \
      else if (m\
inSwipeLength < \
diff) {\x0a        \
    active = fal\
se;\x0a            \
swipeRight();\x0a  \
      }\x0a    }\x0a}\x0a\
\
\x00\x00\x08\xc7\
/\
/ pixL Pegasus F\
rontend\x0a\x0a//Creat\
ed by BozoTheGee\
k from AutoScrol\
l.qml to do one \
for horizontal c\
ase.\x0a\x0aimport QtQ\
uick 2.12\x0a\x0a/// T\
his item provide\
s an infinitely \
looping, autoscr\
olling view into\
\x0a/// a taller co\
ntent.\x0a/// You c\
an change the sc\
rolling speed (p\
ixels per second\
), and the\x0a/// a\
dditional delay \
before and after\
 the the animati\
on.\x0a/// If the c\
ontent fits into\
 the view, no sc\
rolling happens.\
\x0a\x0aFlickable {\x0a  \
  id: container\x0a\
\x0a    property in\
t scrollWaitDura\
tion: 1500\x0a    p\
roperty int pixe\
lsPerSecond: 10\x0a\
    property boo\
l activated: tru\
e\x0a\x0a    function \
stopScroll() {\x0a \
       scrollAni\
mGroup.complete(\
);\x0a    }\x0a    fun\
ction restartScr\
oll() {\x0a        \
if(container.act\
ivated) scrollAn\
imGroup.restart(\
);\x0a    }\x0a\x0a    cl\
ip: true\x0a    fli\
ckableDirection:\
 Flickable.Horiz\
ontalFlick\x0a    c\
ontentWidth: con\
tentItem.childre\
nRect.width\x0a    \
contentHeight: h\
eight\x0a\x0a    prope\
rty int targetX:\
 Math.max(conten\
tWidth - width, \
0);\x0a\x0a    functio\
n recalcAnimatio\
n() {\x0a        sc\
rollAnimGroup.st\
op();\x0a        co\
ntentX = 0;\x0a\x0a   \
     // the para\
meters of the su\
b-animations can\
't be properly\x0a \
       // change\
d by regular bin\
ding while the g\
roup is running\x0a\
        animScro\
llRight.to = tar\
getX;\x0a        an\
imScrollRight.du\
ration = (target\
X / pixelsPerSec\
ond) * 1000;\x0a   \
     animPauseHe\
ad.duration = sc\
rollWaitDuration\
;\x0a        animPa\
useTail.duration\
 = scrollWaitDur\
ation;\x0a\x0a        \
if(container.act\
ivated) scrollAn\
imGroup.restart(\
);\x0a    }\x0a    onT\
argetXChanged: r\
ecalcAnimation()\
\x0a    onScrollWai\
tDurationChanged\
: recalcAnimatio\
n()\x0a    onPixels\
PerSecondChanged\
: recalcAnimatio\
n()\x0a\x0a    // canc\
el the animation\
 on user interac\
tion\x0a    onMovem\
entStarted: scro\
llAnimGroup.stop\
()\x0a\x0a    Sequenti\
alAnimation {\x0a  \
      id: scroll\
AnimGroup\x0a      \
  running: conta\
iner.activated\x0a \
       loops: An\
imation.Infinite\
\x0a\x0a        PauseA\
nimation {\x0a     \
       id: animP\
auseHead\x0a       \
     duration: 0\
\x0a        }\x0a     \
   NumberAnimati\
on {\x0a           \
 id: animScrollR\
ight\x0a           \
 target: contain\
er; property: \x22c\
ontentX\x22\x0a       \
     from: 0; to\
: 0; duration: 0\
\x0a        }\x0a     \
   PauseAnimatio\
n {\x0a            \
id: animPauseTai\
l\x0a            du\
ration: 0\x0a      \
  }\x0a        Numb\
erAnimation {\x0a  \
          target\
: container; pro\
perty: \x22contentX\
\x22\x0a            to\
: 0; duration: 1\
000\x0a        }\x0a  \
  }\x0a}\x0a\
\x00\x00\x0a\xc0\
/\
/ Pegasus Fronte\
nd\x0a// Copyright \
(C) 2017  M\xc3\xa1ty\xc3\
\xa1s Mustoha\x0a//\x0a//\
 This program is\
 free software: \
you can redistri\
bute it and/or m\
odify\x0a// it unde\
r the terms of t\
he GNU General P\
ublic License as\
 published by\x0a//\
 the Free Softwa\
re Foundation, e\
ither version 3 \
of the License, \
or\x0a// (at your o\
ption) any later\
 version.\x0a//\x0a// \
This program is \
distributed in t\
he hope that it \
will be useful,\x0a\
// but WITHOUT A\
NY WARRANTY; wit\
hout even the im\
plied warranty o\
f\x0a// MERCHANTABI\
LITY or FITNESS \
FOR A PARTICULAR\
 PURPOSE. See th\
e\x0a// GNU General\
 Public License \
for more details\
.\x0a//\x0a// You shou\
ld have received\
 a copy of the G\
NU General Publi\
c License\x0a// alo\
ng with this pro\
gram. If not, se\
e <http://www.gn\
u.org/licenses/>\
.\x0a\x0a\x0aimport QtQui\
ck 2.12\x0a\x0a/// Thi\
s item provides \
an infinitely lo\
oping, autoscrol\
ling view into\x0a/\
// a taller cont\
ent.\x0a/// You can\
 change the scro\
lling speed (pix\
els per second),\
 and the\x0a/// add\
itional delay be\
fore and after t\
he the animation\
.\x0a/// If the con\
tent fits into t\
he view, no scro\
lling happens.\x0aF\
lickable {\x0a    i\
d: container\x0a\x0a  \
  property int s\
crollWaitDuratio\
n: 1500\x0a    prop\
erty int pixelsP\
erSecond: 10\x0a\x0a  \
  function stopS\
croll() {\x0a      \
  scrollAnimGrou\
p.complete();\x0a  \
  }\x0a    function\
 restartScroll()\
 {\x0a        scrol\
lAnimGroup.resta\
rt();\x0a    }\x0a\x0a   \
 clip: true\x0a    \
flickableDirecti\
on: Flickable.Ve\
rticalFlick\x0a    \
contentWidth: wi\
dth\x0a    contentH\
eight: contentIt\
em.childrenRect.\
height\x0a\x0a    prop\
erty int targetY\
: Math.max(conte\
ntHeight - heigh\
t, 0);\x0a\x0a    func\
tion recalcAnima\
tion() {\x0a       \
 scrollAnimGroup\
.stop();\x0a       \
 contentY = 0;\x0a\x0a\
        // the p\
arameters of the\
 sub-animations \
can't be properl\
y\x0a        // cha\
nged by regular \
binding while th\
e group is runni\
ng\x0a        animS\
crollDown.to = t\
argetY;\x0a        \
animScrollDown.d\
uration = (targe\
tY / pixelsPerSe\
cond) * 1000;\x0a  \
      animPauseH\
ead.duration = s\
crollWaitDuratio\
n;\x0a        animP\
auseTail.duratio\
n = scrollWaitDu\
ration;\x0a\x0a       \
 scrollAnimGroup\
.restart();\x0a    \
}\x0a    onTargetYC\
hanged: recalcAn\
imation()\x0a    on\
ScrollWaitDurati\
onChanged: recal\
cAnimation()\x0a   \
 onPixelsPerSeco\
ndChanged: recal\
cAnimation()\x0a\x0a  \
  // cancel the \
animation on use\
r interaction\x0a  \
  onMovementStar\
ted: scrollAnimG\
roup.stop()\x0a\x0a   \
 SequentialAnima\
tion {\x0a        i\
d: scrollAnimGro\
up\x0a        runni\
ng: true\x0a       \
 loops: Animatio\
n.Infinite\x0a\x0a    \
    PauseAnimati\
on {\x0a           \
 id: animPauseHe\
ad\x0a            d\
uration: 0\x0a     \
   }\x0a        Num\
berAnimation {\x0a \
           id: a\
nimScrollDown\x0a  \
          target\
: container; pro\
perty: \x22contentY\
\x22\x0a            fr\
om: 0; to: 0; du\
ration: 0\x0a      \
  }\x0a        Paus\
eAnimation {\x0a   \
         id: ani\
mPauseTail\x0a     \
       duration:\
 0\x0a        }\x0a   \
     NumberAnima\
tion {\x0a         \
   target: conta\
iner; property: \
\x22contentY\x22\x0a     \
       to: 0; du\
ration: 1000\x0a   \
     }\x0a    }\x0a}\x0a\
"

qt_resource_name = b"\
\x00\x08\
\x04<\xa33\
\x00q\
\x00m\x00l\x00u\x00t\x00i\x00l\x00s\
\x00\x17\
\x0a!_\xdc\
\x00H\
\x00o\x00r\x00i\x00z\x00o\x00n\x00t\x00a\x00l\x00S\x00w\x00i\x00p\x00e\x00A\x00r\
\x00e\x00a\x00.\x00q\x00m\x00l\
\x00\x18\
\x05\x9b\xeb\xdc\
\x00H\
\x00o\x00r\x00i\x00z\x00o\x00n\x00t\x00a\x00l\x00A\x00u\x00t\x00o\x00S\x00c\x00r\
\x00o\x00l\x00l\x00.\x00q\x00m\x00l\
\x00\x0e\
\x0fFs<\
\x00A\
\x00u\x00t\x00o\x00S\x00c\x00r\x00o\x00l\x00l\x00.\x00q\x00m\x00l\
"

qt_resource_struct = b"\
\x00\x00\x00\x00\x00\x02\x00\x00\x00\x01\x00\x00\x00\x01\
\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00\x00\x00\x02\x00\x00\x00\x03\x00\x00\x00\x02\
\x00\x00\x00\x00\x00\x00\x00\x00\
\x00\x00\x00J\x00\x00\x00\x00\x00\x01\x00\x00\x05u\
\x00\x00\x01\x91\x95\x19{\xf5\
\x00\x00\x00\x16\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\
\x00\x00\x01\x91\x95\x19{\xf5\
\x00\x00\x00\x80\x00\x00\x00\x00\x00\x01\x00\x00\x0e@\
\x00\x00\x01\x91\x95\x19{\xf5\
"

def qInitResources():
    QtCore.qRegisterResourceData(0x03, qt_resource_struct, qt_resource_name, qt_resource_data)

def qCleanupResources():
    QtCore.qUnregisterResourceData(0x03, qt_resource_struct, qt_resource_name, qt_resource_data)

qInitResources()
