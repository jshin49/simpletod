


export MODEL=$2
export MODEL_NAME=$3
export BATCH=$4
export OUTPUT=output/dst_${MODEL_NAME}
export TRAIN_FILE=./resources/gpt2/train.history_belief
export TEST_FILE=./resources/gpt2/val.history_belief


CUDA_VISIBLE_DEVICES=$1 python main.py \
    --output_dir=$OUTPUT \
    --model_type=$MODEL \
    --model_name_or_path=$MODEL_NAME \
    --train_data_file=$TRAIN_FILE \
    --do_eval \
    --eval_data_file=$TEST_FILE \
    --evaluate_during_training \
    --save_steps 10000 \
    --logging_steps 10000 \
    --per_gpu_train_batch_size 1 \
    --per_gpu_eval_batch_size 8 \
    --num_train_epochs 10 \
    --gradient_accumulation_steps 16