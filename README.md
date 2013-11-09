android
=======

Cyanogenmod Android Source Code  CM-10.1
from 06.10.2013<br><br>

Initial Repo:
-------------
repo init -u https://github.com/crewrktablets/android_manifest.git -b cm-10.1


Build Instructions:
-------------------

. build/envsetup.sh
lunch              (select your device)
make -j#           (# number of parallel threads)

after end of the build prozess
./copy-rkxx.sh     (xx matching your device)

now you can find a new system.img and boot.img in the out directory.
