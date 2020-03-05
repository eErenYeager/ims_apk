# Qualcomm IMS apk source for legacy devices

This ims source is based on xyz qcom nougat bsp leak, modified by @eErenYeager (Abhishek) and @ghostrider-reborn (Adithya) for usage with Android 9 and 10. Since old SOCs such as msm8916 cannot run qcom's newer oreo/pie ims and radio stack, the nougat ims apk has been modified to use compat MMTel apis added in Android Pie. Few more changes have been made to support Android 10 and volte on both slots as well.

**Tested and works in these devices:**
- YU Yuphoria (lettuce)
- YU Yureka (tomato)
- Redmi 2 (wt88047)
- Lenovo Vibe K5 (A6020)

# Brief history
- Android Pie is released - Google ditches the old ims apis and introduced new apis based on mmtel framework
- After initial pie bringup, devs try to use same ol' ims stack but ended up breaking ril as well cuz ims apk was crashing.
- Devs (like me) try to decompile ims apk, edit smali paths according to pie changes, recompile and then try again, but still crashes
- Devs of newer soc's kang pie ims blobs from other devices, succesfully, fixing volte once and for all
- Devs of older soc's (like me) try to kang oreo blobs too, but unsuccesful because they don't support old modem (MPSS.DPM.1.x)
- Mohd Faraz (@AndroiableDroid), LYF Water 8 (msm8939 device) dev succesfully fix volte using msm8952 oreo and pie blobs, hats off!
- We YU and redmi 2 devs trying again, failing, crying in a corner, with users still using oreo roms just for VoL!T
- Android 10 releases and I (ghostrider-reborn) booted it on A6020 - Lenovo Vibe K5 (msm8916 device); VoLTE is forgotten as its hopeless
- Months later, out of nowhere, pro god Abhishek (@eErenYeager) suddenly releases LineageOS 16.0 with VoLTE for YU Yureka (another sad legacy device)
- We realize that he has been working undercover trying hard to hack old ims apk to get it working with pie and finally he succeeded!
- Initial hack required changes in mmtel api in fwb. Later he integrated those changes in ims apk itself.
- Others (redmi 2, lettuce, A6020 etc) follow suit and use his ims apk to fix volte in pie and 10
- Later he made few more changes, now volte works in both sims (one at a time)

**TODO:**
- Fix ViLTE and WFC

