pip install -U "vllm>=0.19.0"
pip install "transformers>=5.3.0"
pip install "glmocr[selfhosted,server]"
pip install glmocr
pip uninstall -y torchaudio

cat > config.yaml <<'EOF'
server:
  host: "0.0.0.0"
  port: 5002

pipeline:
  layout:
    model_dir: "PaddlePaddle/PP-DocLayoutV3_safetensors"

  ocr_api:
    api_host: "localhost"
    api_port: 8082
    model: "glm-ocr"
    api_mode: "openai"
EOF

chmod +x run_vlm.sh
chmod +x run_server.sh