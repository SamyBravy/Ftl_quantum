# ⚛️ ft_quantum

![Python](https://img.shields.io/badge/Python-3.10-blue?style=for-the-badge&logo=python&logoColor=white)
![Qiskit](https://img.shields.io/badge/Qiskit-IBM_Quantum-purple?style=for-the-badge&logo=ibm&logoColor=white)
![Jupyter](https://img.shields.io/badge/Jupyter-Notebooks-orange?style=for-the-badge&logo=jupyter&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Containerized-2496ED?style=for-the-badge&logo=docker&logoColor=white)

Explore the fascinating world of **Quantum Computing**. This project explores foundational quantum concepts and algorithms through interactive Jupyter Notebooks, utilizing IBM's **Qiskit** framework to simulate and interact with real quantum hardware.

## 🚀 Overview

The project is structured as a series of progressive exercises, moving from simple qubit states up to advanced quantum algorithms:

-   `Ex00` **Superposition**: Introduction to creating basic quantum superposition states using the Hadamard gate.
-   `Ex01` **Entanglement**: Exploring quantum entanglement and creating a Bell state using CNOT gates.
-   `Ex02` **Quantum Noise**: Understanding the effects of decoherence and quantum error/noise simulation.
-   `Ex03` **Deutsch-Jozsa Algorithm**: Implementing the first quantum algorithm exponentially faster than classical deterministic algorithms.
-   `Ex04` **Search Algorithm (Grover's)**: Developing a quantum search algorithm that provides a quadratic speedup for unstructured search.
-   `Bonus` **Shor's Algorithm**: A demonstration of the famous integer factorization algorithm that demonstrates the cryptographic power of quantum computers.

## 🛠️ Setup & Requirements

This project is fully dockerized to ensure a consistent environment without having to install Qiskit and Jupyter manually on your machine.

### Prerequisites
1.  **Docker** installed on your system.
2.  An **IBM Quantum API Token** (You can get one for free at [quantum.cloud.ibm.com](https://quantum.cloud.ibm.com)).
3.  An **IBM Quantum Instance CRN** (You can find it in the [quantum.cloud.ibm.com/instances](https://quantum.cloud.ibm.com/instances) page).

### Configuration

Create a `.env` file in the root directory and add your IBM Quantum API token and instance:

```env
IBM_QUANTUM_TOKEN=your_token_here
IBM_QUANTUM_INSTANCE=your_instance_crn
```

## 💻 Usage

To build the Docker image and start the Jupyter Notebook server, simply run the provided bash script:

```bash
chmod +x start.sh
./start.sh
```

-   The script will print the IBM Quantum Cloud link.
-   It will build the `ft_quantum_img` docker image.
-   It will start the container and map port `8888`.
-   Check the terminal output for the Jupyter Notebook access URL (it will look like `http://127.0.0.1:8888/tree?token=...`). Click the link to open the Notebooks in your browser.

## 📚 Project Structure

```text
├── Dockerfile                  # Environment containerization
├── requirements.txt            # Python dependencies (Qiskit, matplotlib, etc.)
├── start.sh                    # Startup build and run script
├── .env                        # (Create this) IBM API Token
├── Ex00_superposition.ipynb    # Introduction to Hadamard gates
├── Ex01_entanglement.ipynb     # Bell states and CNOT gates
├── Ex02_quantum_noise.ipynb    # Noise simulation and mitigation
├── Ex03_deutsch-jozsa.ipynb    # Oracle-based algorithm
├── Ex04_search_algorithm.ipynb # Grover's Search Algorithm
├── Bonus_shor.ipynb            # Shor's Factoring Algorithm
└── Theory/                     # Theoretical explanations and notes
```

