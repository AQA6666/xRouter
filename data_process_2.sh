date_str=1125

# Combine all processed datasets
mkdir -p data/combined_train_${date_str}
mv data/train_*_${date_str}/* data/combined_train_${date_str}/

# Filter by token length
python scripts/token_distribution_analysis.py \
    --data_folder data/combined_train_${date_str}/ \
    --max_tokens 12000