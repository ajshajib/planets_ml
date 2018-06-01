# Directory to save output TFRecord files into.
TFRECORD_DIR='/home/idies/workspace/Storage/tdo/planets_ml/tfrecord'
  
# Directory to save model checkpoints into.
MODEL_DIR="../../astronet_model2/"

# Run the training script.
bazel-bin/astronet/train \
  --model=AstroCNNModel \
  --config_name=local_global \
  --train_files=${TFRECORD_DIR}/train* \
  --eval_files=${TFRECORD_DIR}/val* \
  --model_dir=${MODEL_DIR}