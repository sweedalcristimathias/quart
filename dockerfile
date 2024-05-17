FROM python:3.9.9
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir --trusted-host pypi.org --trusted-host pypi.python.org --trusted-host files.pythonhosted.org -r requirements.txt
COPY . /app/
EXPOSE 5000
CMD ["python","main.py"]