#!/usr/bin/env bash

GEOMETRY=$(slurp -d)
mkfifo screen_cast_wayland_data.flv
wf-recorder -f screen_cast_wayland_data.flv \
    -g "$GEOMETRY" -c h264_vaapi -d /dev/dri/renderD128
rm screen_cast_wayland_data.flv
