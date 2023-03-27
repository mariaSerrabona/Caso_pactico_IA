FROM bitnami/pytorch:lastest
ADD req.txt .
RUN pip install -r req.txt
WORKDIR /usr/src/predict
ADD 7_predict.py .
ADD dogs_cats_model.pth .
CMD ["python", "7_predict.py"]