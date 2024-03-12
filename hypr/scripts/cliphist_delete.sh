#!/bin/sh
cliphist list | dmenu -l 15 | cliphist delete
