nohup vllm serve zai-org/GLM-OCR \
    --port 8081 \
    --served-model-name glm-ocr \
    --gpu-memory-utilization 0.70 \
    --max-model-len 32768 > > vllm.log 2>&1 &