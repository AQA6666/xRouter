import json
from datasets import load_dataset

# Load dataset
train_data = load_dataset("LLM360/guru-RL-92k", cache_dir="/gemini/space/Datasets/guru-RL-92k")

print(f"Columns: {train_data.column_names}")
# print the first 10 rows of the dataset
print(train_data[:10])