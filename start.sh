echo https://quantum.cloud.ibm.com && \
docker build -t ft_quantum_img . && \
docker run -it -p 8888:8888 --env-file .env -v /home/sdell-er/Desktop/Progetti/Mastery/Ftl_quantum:/app ft_quantum_img