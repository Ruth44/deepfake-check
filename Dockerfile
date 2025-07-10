# Use TensorFlow base image with Python support
FROM tensorflow/tensorflow:2.19.0

# Set working directory for the app
WORKDIR /app

# Copy your Flask app code
COPY III__Flask-Web-Application/ /app/

# Copy model files where your app expects them
COPY II__Deepfake-Detection-Models/ /II__Deepfake-Detection-Models/

RUN mkdir -p /app/Static/TMP
# Upgrade pip and install dependencies
RUN pip install --upgrade pip
RUN pip install --ignore-installed -r requirements.txt

# Set environment
ENV FLASK_ENV=production

# Expose the port your app will run on
EXPOSE 10000

# Use shell form so $PORT is dynamically injected by Render
CMD gunicorn Run_App:app --bind 0.0.0.0:$PORT