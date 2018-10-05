#!/usr/bin/env bash

# Optimize video and create poster.jpg from first frame
ffmpeg -an -i input.mp4 -vcodec libx264 -pix_fmt yuv420p -profile:v baseline -level 3 -vf scale=1280:-1 output.mp4 -y
ffmpeg -i input.mp4 -vframes 1 -f image2 poster.jpg
