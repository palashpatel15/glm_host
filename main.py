from glmocr import GlmOcr

with GlmOcr(
    config_path="client_config.yaml",
    mode="selfhosted",
) as parser:
    result = parser.parse(
        "/content/final_bill.pdf",
        save_layout_visualization=False,
    )

print(type(result))
print(result.markdown_result)