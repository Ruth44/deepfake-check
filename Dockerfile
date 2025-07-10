# Use TensorFlow base image
FROM tensorflow/tensorflow:2.19.0

# Set working directory to Flask app
WORKDIR /app

# Copy Flask app folder
COPY III__Flask-Web-Application/ ./

# Copy model folder from root into container
COPY II__Deepfake-Detection-Models/ /II__Deepfake-Detection-Models/

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Run app
CMD ["gunicorn", "Run_App:app"]