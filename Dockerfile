FROM python:3.9.5-slim-buster

RUN apt-get update

ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

RUN ls -la $APP_HOME/

RUN pip install -r requirements.txt

# Run the streamlit on container startup
CMD [ "streamlit", "run","--server.enableCORS","false","beanleaf_classification_app.py" ]
# CMD [ "streamlit", "run","beanleaf_classification_app.py" ]