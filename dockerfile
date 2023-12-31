FROM python:3.8
WORKDIR /endpoint
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["uvicorn", "main:endpoint", "--host", "0.0.0.0", "--port", "8080"]