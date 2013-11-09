android
=======

Cyanogenmod Android Source Code  CM-10.1
from 06.10.2013<br><br>

Initial Repo:
-------------
repo init -u https://github.com/crewrktablets/android_manifest.git -b cm-10.1


Build Instructions:
-------------------
. build/envsetup.sh<br>
lunch              (select your device)<br>
make -j#           (# number of parallel threads)<br>
<br>
after end of the build prozess<br>
./copy-rkxx.sh     (xx matching your device)<br>
<br>
now you can find a new system.img and boot.img in the out directory.
