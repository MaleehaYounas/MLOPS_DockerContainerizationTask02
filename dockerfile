
FROM python:3.9


WORKDIR /app


COPY requirements.txt .
COPY salaries_data.csv .
COPY app.py .

# Installing dependencies
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
