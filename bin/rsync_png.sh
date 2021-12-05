#!/bin/bash
rsync -av orkney: $HOME/orkney_home/
#rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' oban:CapsNet-Tensorflow/ $HOME/CapsNet-Tensorflow/oban/
#rsync -av --include='*.tex' --include='*.png' --include='*.csv' --include='*/' --exclude='*' orkney:src/ $HOME/orkney
#rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' orkney:datasets/VACS/ $HOME/vacs/orkney
##rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' galloway:VACS/ $HOME/vacs/galloway
# rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' oban:IsingAE/ $HOME/IsingAEoban
# rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' oban:Model-Distance/ $HOME/Model-Distance/oban/
# rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' oban:gan-examine/ $HOME/gan-examine
# rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' orkney:datasets/mimic/ $HOME/mimic
#rsync -av --include='*.png' --include='*.csv' --include='*.xlsx' --include='*.mp4' --include='*/' --exclude='*' orkney:datasets/parathyroid/ $HOME/parathyroid
#rsync -av --include='*.png' --include='*.csv' --include='*.xlsx' --include='*.mp4' --include='*/' --exclude='*' orkney:noonan/ $HOME/noonan
# rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' genius:mixture-gan/experiments $HOME/genius/
##rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' galloway:krishnaswamylab $HOME/galloway/
#rsync -av --include='*.mp4' --include='*.png' --include='*.jpg' --include='*.csv' --include='*/' --exclude='*' galloway:ffjord $HOME/galloway_ffjord/
#rsync -av --include='*.png' --include='*.csv' --include='*/' --exclude='*' galloway:pytorch.sngan_projection $HOME/galloway_projection/
##rsync -av --include='*.png' --include='*.csv' --include='*.jpg', --include='*.mp4' --include='*/' --exclude='*' galloway:ot $HOME/galloway_ot/
##rsync -av --include='*.png' --include='*.csv' --include='*.jpg', --include='*.mp4' --include='*/' --exclude='*' galloway:TrajectoryNet/ $HOME/galloway_tn/
#rsync -av galloway:TrajectoryNet/results/ $HOME/galloway_tn/results/
#rsync -av orkney:TrajectoryNet/results/ $HOME/orkney_tn/results/
#rsync -av orkney:TrajectoryNet/figures/ $HOME/orkney_tn/figures/
##rsync -av --include='*.png' --include='*.csv' --include='*.jpg', --include='*.mp4' --include='*/' --exclude='*' galloway:patient-trajectories/ $HOME/galloway_pt/
