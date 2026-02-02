        FROM python:3.10-slim

# system timezone muammo bermasligi uchun
ENV TZ=Asia/Tashkent

WORKDIR /app

# dependency lar
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# bot kodi
COPY bot.py .

# start
CMD ["python", "bot.py"]
