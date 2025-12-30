from transformers import ViTForImageClassification

def test_vit_model_load():
    model = ViTForImageClassification.from_pretrained(
        "google/vit-base-patch16-224",
        num_labels=10,
        ignore_mismatched_sizes=True
    )
    assert model is not None
