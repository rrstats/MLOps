FROM python:3.12.0a5-slim-buster
WORKDIR /Users/ryanr/OneDrive/Documents/JN PLAYGROUND/MLOps/Flask_Class/FLASKING

COPY requirements.txt ./

RUN python -m pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "-m", "flask", "--app", "loan_app", "run", "--host=0.0.0.0"]
