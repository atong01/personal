#!/bin/bash
rsync -av --include='*.png' --include='*.csv' --include='*.jpg', --include='*.mp4' --include='*/' --exclude='*' galloway:TrajectoryNet/ $HOME/galloway_tn/
