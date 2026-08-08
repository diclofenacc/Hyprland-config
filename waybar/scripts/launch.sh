#!/bin/bash

pkill waybar
pkill swaync

waybar &
swaync &
swaync-client -t
