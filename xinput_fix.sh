#!/usr/bin/env bash

deceleration=2;

deviceId0=$(xinput | grep "Logitech USB Receiver" | head -1 | cut -d"=" -f 2 | cut -f 1);
deviceId1=$(xinput | grep "Logitech USB Receiver" | tail -1 | cut -d"=" -f 2 | cut -f 1);
deviceId3=$(xinput | grep "Logitech USB Optical Mouse" | tail -1 | cut -d"=" -f 2 | cut -f 1);


xinput set-prop $deviceId0 "Device Accel Constant Deceleration" $deceleration;
xinput set-prop $deviceId1 "Device Accel Constant Deceleration" $deceleration;
xinput set-prop $deviceId3 "Device Accel Constant Deceleration" $deceleration;

