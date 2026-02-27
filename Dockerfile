# Usa un'immagine Python leggera
FROM python:3.10-slim

# Installa dipendenze di sistema necessarie per la grafica
RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    && rm -rf /var/lib/apt/lists/*

# Crea una cartella di lavoro nel container
WORKDIR /app

# Copia il file dei requisiti e installa le librerie
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Espone la porta per Jupyter Notebook
EXPOSE 8888

# Comando per avviare Jupyter quando il container parte
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]