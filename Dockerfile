FROM python:3

WORKDIR /streamlit-app

COPY app  ./app/
COPY data  ./data/
COPY pickled-models  ./pickled-models/
COPY requirements.txt  ./

RUN pip install -r requirements.txt
RUN pip uninstall xgboost -y

EXPOSE 8501

CMD streamlit run app/streamlit_app.py --server.port $PORT
