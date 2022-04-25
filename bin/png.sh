#!/bin/bash
rsync -av --include='*.png' --include='*.csv' --include='*.jpg', --include='*.mp4' --include='*/' --exclude='*' galloway:new_trajectorynet/results/ $HOME/new_galloway_tn/
