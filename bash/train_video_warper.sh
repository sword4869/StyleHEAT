export BASICSR_JIT='True'

name=train_video_warper
python -m torch.distributed.launch train.py\
 --nproc_per_node=4 \
 --master_port 12347 \
 --checkpoints_dir=./output \
 --config configs/video_warper_trainer.yaml --name ${name}


