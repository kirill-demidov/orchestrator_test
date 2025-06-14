FROM python:3.9-slim

WORKDIR /app

# Установка необходимых системных зависимостей
RUN apt-get update && apt-get install -y \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Копирование requirements.txt (если есть)
COPY requirements.txt* ./

# Установка Python зависимостей
RUN if [ -f "requirements.txt" ]; then pip install --no-cache-dir -r requirements.txt; fi

# Копирование исходного кода
COPY . .

# Установка переменных окружения
ENV PYTHONUNBUFFERED=1

# Запуск приложения
CMD ["python3"] 