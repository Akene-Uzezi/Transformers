# Transformers Learning Repository

A collection of Jupyter notebooks exploring transformers, Hugging Face, and PyTorch/TensorFlow. This repository documents my journey learning state-of-the-art NLP techniques using transformer models.

## 📚 Repository Overview

This repository contains practical implementations and experiments with various transformer architectures, demonstrating core NLP tasks like question answering, text classification, and sentiment analysis.

**Repository Size:** 417 KB  
**Main Language:** Jupyter Notebook  
**Created:** May 2026

---

## 📖 Notebooks

### 1. **BERT.ipynb**
**Size:** ~65 KB

A comprehensive guide to BERT (Bidirectional Encoder Representations from Transformers) and question-answering tasks.

**Key Topics:**
- Loading pre-trained BERT models from Hugging Face
- Question Answering with `BertForQuestionAnswering`
- Tokenization using `BertTokenizer`
- Input embeddings and token encoding
- Answer extraction from context passages
- Visualization of logits scores using matplotlib and seaborn
- Building a FAQ bot using BERT

**Models Used:**
- `bert-large-uncased-whole-word-masking-finetuned-squad` - Fine-tuned on SQuAD dataset

**Key Outputs:**
- Question answering on the DVD release example
- FAQ bot for Sunset Motors dealership
- Logits score visualizations for token positions

---

### 2. **Text Classification with XLNet.ipynb**
**Size:** ~62 KB

An end-to-end emotion classification project using XLNet and the emotion detection dataset.

**Key Topics:**
- Data preprocessing and cleaning with `cleantext`
- Handling emoji removal and mention removal
- XLNet tokenization with `XLNetTokenizer`
- Building datasets using Hugging Face `datasets` library
- Label encoding and class balancing
- Model fine-tuning with `XLNetForSequenceClassification`
- Training with the `Trainer` API from Hugging Face
- Evaluation metrics computation

**Dataset:**
- **Training:** emotion-labels-train.csv (4,414 samples)
- **Testing:** emotion-labels-test.csv (1,227 samples)
- **Validation:** emotion-labels-val.csv (491 samples)
- **Classes:** anger, fear, joy, sadness

**Models Used:**
- `xlnet-base-cased` - Base XLNet model adapted for sequence classification

**Key Techniques:**
- Dataset balancing across emotion classes
- Custom tokenization function with padding and truncation
- Training loop with epoch-based evaluation
- Accuracy metrics tracking

---

### 3. **Transformer pipeline.ipynb**
**Size:** ~12 KB

A quick-start guide to using Hugging Face pipelines and core transformer concepts.

**Key Topics:**
- High-level Hugging Face pipeline API
- Sentiment analysis with pre-trained models
- Named Entity Recognition (NER)
- Zero-shot classification
- Tokenization fundamentals
- Manual model loading and inference
- Model and tokenizer persistence (saving/loading)

**Pipelines Demonstrated:**
1. **Sentiment Analysis** - Classify text as positive/negative
2. **Named Entity Recognition (NER)** - Extract entities like names and locations
3. **Zero-shot Classification** - Classify text without task-specific training

**Models Used:**
- `distilbert-base-uncased-finetuned-sst-2-english` - Sentiment analysis
- `dslim/bert-base-NER` - Named entity recognition
- `facebook/bart-large-mnli` - Zero-shot classification

---

## 🚀 Getting Started

### Prerequisites
```bash
python >= 3.11
```

### Required Dependencies
```bash
pip install transformers torch pandas numpy scikit-learn datasets evaluate
pip install cleantext matplotlib seaborn
```

### Optional Dependencies
```bash
pip install jupyter jupyter-lab  # For running notebooks
pip install unidecode  # For better text cleaning
```

---

## 📂 File Structure

```
Transformers/
├── README.md                          # This file
├── BERT.ipynb                         # Question answering with BERT
├── Text Classification with XLNet.ipynb  # Emotion classification
├── Transformer pipeline.ipynb         # Quick-start guide
├── emotion-labels-train.csv           # Training data
├── emotion-labels-test.csv            # Test data
├── emotion-labels-val.csv             # Validation data
├── commit.sh                          # Utility script
└── .gitignore
```

---

## 🔍 Key Concepts Covered

### Transformer Architectures
- **BERT** - Bidirectional transformer for understanding context
- **XLNet** - Autoregressive pretraining with transformer-xl
- **DistilBERT** - Lightweight BERT variant
- **BART** - Encoder-decoder for sequence-to-sequence tasks

### NLP Tasks
- **Question Answering** - Extract answers from context passages
- **Text Classification** - Categorize text into predefined classes
- **Sentiment Analysis** - Determine emotional tone
- **Named Entity Recognition** - Identify entities in text
- **Zero-shot Classification** - Classify without task-specific training

### Hugging Face Tools
- `transformers` - Pre-trained models and utilities
- `datasets` - Dataset loading and preprocessing
- `Trainer` API - Simplified training loop
- `pipeline` API - High-level inference interface
- `AutoTokenizer` & `AutoModel` - Automatic model/tokenizer loading

### PyTorch Concepts
- Tensor operations
- Model inference with `torch.no_grad()`
- Token and attention mask handling
- Logits interpretation

---

## 💡 Learning Outcomes

After working through these notebooks, you'll understand:

1. ✅ How transformers process text through tokenization and embeddings
2. ✅ How to load and use pre-trained models from Hugging Face
3. ✅ How to fine-tune transformer models on custom datasets
4. ✅ How to implement NLP pipelines for real-world tasks
5. ✅ How to extract and interpret model outputs
6. ✅ Best practices for data preprocessing and cleaning
7. ✅ Model evaluation and metrics computation

---

## 🛠️ Common Tasks & Commands

### Running a Notebook
```bash
jupyter notebook BERT.ipynb
```

### Loading a Pre-trained Model
```python
from transformers import AutoTokenizer, AutoModel

model_name = "bert-base-uncased"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModel.from_pretrained(model_name)
```

### Using Pipelines
```python
from transformers import pipeline

classifier = pipeline("sentiment-analysis")
result = classifier("I love transformers!")
```

### Fine-tuning on Custom Data
```python
from transformers import Trainer, TrainingArguments

training_args = TrainingArguments(
    output_dir="./results",
    num_train_epochs=3,
    per_device_train_batch_size=16,
    eval_strategy="epoch"
)

trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=train_data,
    eval_dataset=val_data
)

trainer.train()
```

---

## 📊 Dataset Information

### Emotion Labels Dataset
- **Total Samples:** ~6,000 after preprocessing
- **Classes:** 4 emotion categories (anger, fear, joy, sadness)
- **Source:** Twitter-based emotion dataset
- **Features:** Text content with emotion labels
- **Preprocessing Applied:**
  - Emoji removal
  - Mention (@username) removal
  - Text cleaning and normalization
  - Class balancing

---

## 🔗 Useful Resources

- [Hugging Face Documentation](https://huggingface.co/docs)
- [Transformer Models Hub](https://huggingface.co/models)
- [PyTorch Documentation](https://pytorch.org/docs)
- [Papers with Code - Transformers](https://paperswithcode.com/methods/category/transformers)
- [Attention is All You Need](https://arxiv.org/abs/1706.03762) - Original Transformer paper

---

## 📝 Notes

- These notebooks are educational implementations for learning purposes
- Models are downloaded from Hugging Face Hub on first use
- GPU is recommended for faster training on larger datasets
- Some notebooks use reduced dataset samples for demonstration purposes

---

## 📧 Contact & Contributions

Feel free to explore, learn, and modify these notebooks for your own projects!

**Repository Owner:** [Akene-Uzezi](https://github.com/Akene-Uzezi)

---

## ⭐ If you found this helpful, please consider starring the repository!

---

**Last Updated:** May 17, 2026  
**Status:** Active Learning Repository
