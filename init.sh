#!/bin/bash
echo "[include $1/crowsnest.conf]" > crowsnest.conf
echo "[include $1/moonraker.conf]" > moonraker.conf
echo "[include $1/printer.cfg]" > printer.cfg
