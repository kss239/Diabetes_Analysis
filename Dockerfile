FROM python:3.9
WORKDIR /app
COPY requirements.txt ./requirements.txt
RUN pip install --no-cache-dir -r  requirements.txt 
COPY . .
ENV PORT=
CMD streamlit run app.py --server.port=${PORT}  --browser.serverAddress="0.0.0.0"