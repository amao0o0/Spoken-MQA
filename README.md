# Spoken‑MQA

📄 [**Paper**](https://arxiv.org/abs/2505.15000)  
🤗 [**Dataset**](https://huggingface.co/datasets/amao0o0/spoken-mqa)

---

## 🔍 Evaluation

We use [**AudioBench**](https://github.com/AudioLLMs/AudioBench) to evaluate Spoken‑MQA.

### ⚙️ Setup Instructions

1. **Install AudioBench**
```bash
git clone https://github.com/AudioLLMs/AudioBench
cd AudioBench
pip install -r requirements.txt
```

2. **Install additional dependencies for Spoken-MQA**

```
pip install -r latex2sympy2
```

### ▶️ Run Evaluations
We provide a script for full dataset evaluation. Copy the bash script `eval_spoken_mqa.sh` to `AudioBench/`

```
bash eval_spoken_mqa.sh
```

### 🧩 TODO: Add Models

In the paper on Spoken‑MQA, we evaluate several models, such as math-specific LLMs, which may require customized prompting formats or are not yet supported in AudioBench.

To enable evaluation of these models:

1. Their implementation files are provided in the `model_src/` directory of this repository.

2. To integrate them with AudioBench:
   - Copy the model files into `AudioBench/src/model_src/`.
   - Modify `AudioBench/src/model.py` to handle the new models appropriately
  
## 📖 Citation

If you use Spoken-MQA or find our work helpful, please cite:

```bibtex
@article{wei2025towards,
  title     = {Towards Spoken Mathematical Reasoning: Benchmarking Speech-based Models over Multi-faceted Math Problems},
  author    = {Wei, Chengwei and Wang, Bin and Kim, Jung-jae and Chen, Nancy F},
  journal   = {arXiv preprint arXiv:2505.15000},
  year      = {2025}
}
