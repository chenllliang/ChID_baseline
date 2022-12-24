export CUDA_VISIBLE_DEVICES=6
MODEL_PATH=/home/cl/ChID_baseline-main/checkpoints/multiplechoice_50w_no_token_type_content-with-idiom-candidates_begin_wd0.01_3e-5_bsz8x4_fp32/checkpoint-81112

python run.py \
--model_name_or_path $MODEL_PATH  \
--do_eval \
--train_file ./ChID/train_data_1w.json \
--validation_file ./ChID/dev_data.json \
--test_file /home/cl/ChID_baseline-main/ChID/test_data.json \
--metric_for_best_model eval_accuracy \
--load_best_model_at_end \
--learning_rate 5e-5 \
--evaluation_strategy epoch \
--num_train_epochs 1 \
--output_dir ./test \
--per_device_eval_batch_size 32 \
--per_device_train_batch_size 2 \
--seed 42 \
--max_seq_length 512 \
--warmup_ratio 0.01 \
--save_strategy epoch \
--overwrite_output