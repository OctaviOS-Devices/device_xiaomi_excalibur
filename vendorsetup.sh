# Hals
rm -rf hardware/qcom/audio/adsprpcd

rm -rf hardware/qcom-caf/sm8150/audio
git clone https://github.com/MrJarvis698/android_hardware_qcom_audio.git -b arrow-11.0-caf-sm8150 hardware/qcom-caf/sm8150/audio

rm -rf hardware/qcom-caf/sm8150/display
git clone https://github.com/MrJarvis698/android_hardware_qcom_display.git -b 11-caf-sm8150-octavi hardware/qcom-caf/sm8150/display

rm -rf hardware/qcom-caf/sm8150/media
git clone https://github.com/MrJarvis698/android_hardware_qcom_media.git -b arrow-11.0-caf-sm8150 hardware/qcom-caf/sm8150/media