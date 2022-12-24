export CUDA_VISIBLE_DEVICES=7

python run_multiple_choice.py \
--model_name_or_path hfl/chinese-roberta-wwm-ext \
--do_train \
--do_eval \
--train_file /home/cl/ChID_baseline-main/ChID/train_data.json \
--validation_file ./ChID/dev_data.json \
--test_file ./ChID/test_data.json \
--metric_for_best_model eval_accuracy \
--greater_is_better True \
--load_best_model_at_end \
--learning_rate 3e-5 \
--evaluation_strategy epoch \
--num_train_epochs 10 \
--output_dir ./checkpoints/multiplechoice_50w_no_token_type_content-with-idiom-candidates_begin_wd0.01_3e-5_bsz8x4_fp32 \
--per_device_eval_batch_size 32 \
--per_device_train_batch_size 8 \
--gradient_accumulation_steps 4 \
--seed 42 \
--max_seq_length 512 \
--warmup_ratio 0.1 \
--save_strategy epoch \
--overwrite_output \
--weight_decay 0.01 \
