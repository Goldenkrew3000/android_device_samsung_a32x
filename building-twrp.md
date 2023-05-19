Step 1) Install dependencies
https://source.android.com/docs/setup/start/initializing
along with: python3, python3-pip, git, git-lfs
Also python has to be linked to python3

Step 2) Initialize repo
https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp
repo init -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync
(Now it downloads like 30gb)

Step 3) Add code
create folders .repo/local_manifests
Add a32x.xml from Goldenkrew3000/android_device_samsung_a32x/main to created folder
repo sync

Step 4) Build
source build/envsetup.sh
lunch twrp_a32x-eng
mka recoveryimage

Step 5) Flash recovery
its in: out/target/product/a32x/recovery.img
Boot phone into download mode: adb reboot download
sudo heimdall flash --vbmeta vbmeta.img (in main branch)
sudo heimdall flash --recovery recovery.img
Done!
