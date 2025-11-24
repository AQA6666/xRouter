date_str=$(date +%m%d)

# Process hard tasks (pass rate < 0.15)
python data_preprocess/router_data_preprocess.py \
    --use_fixed_sets \
    --fixed_set_1_percentage 0.5 \
    --fixed_set_2_percentage 0.1 \
    --fixed_set_3_percentage 0.05 \
    --num_repetitions 2 \
    --premium_min 1 --premium_max 5 \
    --budget_min 1 --budget_max 5 \
    --standard_min 1 --standard_max 5 \
    --specialized_min 0 --specialized_max 3 \
    --seed 42 \
    --max_system_prompt_length 2000 \
    --output_dir data/train_hard_${date_str} \
    --input_dir /gemini/space/Datasets/guru-RL-92k \
    --max_num_samples 400

# Process medium difficulty tasks
python data_preprocess/router_data_preprocess.py \
    --use_fixed_sets \
    --fixed_set_1_percentage 0.5 \
    --fixed_set_2_percentage 0.1 \
    --fixed_set_3_percentage 0.05 \
    --num_repetitions 1 \
    --output_dir data/train_medium_${date_str} \
    --input_dir /gemini/space/Datasets/guru-RL-92k \
    --max_num_samples 400