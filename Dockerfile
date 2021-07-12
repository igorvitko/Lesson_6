FROM python:3.9

WORKDIR /blog.app

COPY . .

# EXPOSE 5000

RUN pip install -r requirements.txt

# ENV FLASK_APP=app_blog.py
ENV FLASK_ENV=development

CMD ["gunicorn", "app_blog:app", "-b", "0.0.0.0:8000"]
# CMD ["flask", "run", "-h", "0.0.0.0", "-p", "8000"]
