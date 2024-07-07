#!/bin/bash
echo "[include $1/crowsnest.cfg]" > crowsnest.cfg
echo "[include $1/moonraker.cfg]" > moonraker.cfg
echo "[include $1/printer.cfg]" > printer.cfg
