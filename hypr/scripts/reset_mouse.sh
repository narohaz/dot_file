#!/bin/bash
# 移除 hid_logitech_hidpp 模块
sudo rmmod hid_logitech_hidpp

# 移除 usbhid 模块
sudo rmmod usbhid

# 重新加载 usbhid 模块
sudo modprobe usbhid

# 重新加载 hid_logitech_hidpp 模块
sudo modprobe hid_logitech_hidpp
