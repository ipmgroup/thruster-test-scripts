#!/bin/bash

echo "This script will set up the default motor profiles on the device."

while true; do
    read -p "Do you wish to write the default profiles? (y/n): " yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

#utility="sleep 1; ./tctl -v "
utility="./tctl -v "

#Setting up profile 0 for ILM70_10.
eval $utility --active_profile=0
eval $utility --device_id=6
eval $utility --motor_type=1
eval $utility --motor_numPolePairs=7
eval $utility --motor_Rr=0
eval $utility --motor_Rs=0.019
eval $utility --motor_Ls_d=1.3013e-05
eval $utility --motor_Ls_q=1.3013e-05
eval $utility --motor_ratedFlux=0.0126
eval $utility --IdRated=0
eval $utility --maxCurrent_resEst=3.0
eval $utility --maxCurrent_indEst=-1.0
eval $utility --maxCurrent=24.0
eval $utility --fluxEstFreq_Hz=150.0
eval $utility --speed_limit=12000
eval $utility --acceleration_limit=20000
eval $utility --save_profile=1
eval $utility --kp=3.5
eval $utility --ki=0.058

#Setting up profile 1 for T200_R1.
eval $utility --active_profile=1
eval $utility --device_id=6
eval $utility --motor_type=1
eval $utility --motor_numPolePairs=7
eval $utility --motor_Rr=0
eval $utility --motor_Rs=0.1091551
eval $utility --motor_Ls_d=2.341015e-05
eval $utility --motor_Ls_q=2.341015e-05
eval $utility --motor_ratedFlux=0.0116241
eval $utility --IdRated=0
eval $utility --maxCurrent_resEst=2.0
eval $utility --maxCurrent_indEst=-1.0
eval $utility --maxCurrent=20.0
eval $utility --fluxEstFreq_Hz=60.0
eval $utility --speed_limit=5000
eval $utility --acceleration_limit=3000
eval $utility --save_profile=1
eval $utility --kp=3.5
eval $utility --ki=0.059

#Setting up profile 2 for T100_R1.
eval $utility --active_profile=2
eval $utility --device_id=6
eval $utility --motor_type=1
eval $utility --motor_numPolePairs=7
eval $utility --motor_Rr=0
eval $utility --motor_Rs=0.146415
eval $utility --motor_Ls_d=3.504666e-05
eval $utility --motor_Ls_q=3.504666e-05
eval $utility --motor_ratedFlux=0.008677511
eval $utility --IdRated=0
eval $utility --maxCurrent_resEst=2.0
eval $utility --maxCurrent_indEst=-1.0
eval $utility --maxCurrent=10.0
eval $utility --fluxEstFreq_Hz=60.0
eval $utility --speed_limit=5000
eval $utility --acceleration_limit=3000
eval $utility --save_profile=1
eval $utility --kp=3.5
eval $utility --ki=0.059

#Setting up profile 3 for lmt_1920_18.
eval $utility --active_profile=3
eval $utility --device_id=6
eval $utility --motor_type=1
eval $utility --motor_numPolePairs=1
eval $utility --motor_Rr=0
eval $utility --motor_Rs=0.02384629
eval $utility --motor_Ls_d=9.091695e-06
eval $utility --motor_Ls_q=9.091695e-06
eval $utility --motor_ratedFlux=0.01992391
eval $utility --IdRated=0
eval $utility --maxCurrent_resEst=2.0
eval $utility --maxCurrent_indEst=-1.0
eval $utility --maxCurrent=30.0
eval $utility --fluxEstFreq_Hz=60.0
eval $utility --speed_limit=35000
eval $utility --acceleration_limit=3000
eval $utility --save_profile=1
eval $utility --kp=3.5
eval $utility --ki=0.059

#Setting up profile 4 for ILM70_10.
eval $utility --active_profile=4
eval $utility --device_id=6
eval $utility --motor_type=1
eval $utility --motor_numPolePairs=10
eval $utility --motor_Rr=0
eval $utility --motor_Rs=0.08085751
eval $utility --motor_Ls_d=9.255042e-05
eval $utility --motor_Ls_q=9.255042e-05
eval $utility --motor_ratedFlux=0.02411043
eval $utility --IdRated=0
eval $utility --maxCurrent_resEst=2.0
eval $utility --maxCurrent_indEst=-1.0
eval $utility --maxCurrent=15.0
eval $utility --fluxEstFreq_Hz=60.0
eval $utility --speed_limit=5000
eval $utility --acceleration_limit=3000
eval $utility --save_profile=1
eval $utility --kp=3.5
eval $utility --ki=0.059

#Setting active profile to 0.
eval $utility --active_profile=0

#TODO: reset device.

unset utility
echo "Done."
