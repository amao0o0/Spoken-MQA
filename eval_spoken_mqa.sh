GPU=0
BATCH_SIZE=1
OVERWRITE=True
NUMBER_OF_SAMPLES=-1 # indicate all test samples if number_of_samples=-1

# Define metrics
METRICS=acc 

# Define the list of models
MODELS=(
    cascade_whisper_large_v3_llama_3_8b_instruct
)

# The list of datasets
DATASETS=(
    spoken-mqa_short_digit
    spoken-mqa_long_digit
    spoken-mqa_single_step_reasoning
    spoken-mqa_multi_step_reasoning
)

# Loop through all models and datasets
for MODEL_NAME in "${MODELS[@]}"; do
    for DATASET in "${DATASETS[@]}"; do
        echo "Evaluating model: $MODEL_NAME on dataset: $DATASET"
        bash eval.sh "$DATASET" "$MODEL_NAME" "$GPU" "$BATCH_SIZE" "$OVERWRITE" "$METRICS" "$NUMBER_OF_SAMPLES" 
    done
done