# Use TensorFlow base image with Python support
FROM tensorflow/tensorflow:2.19.0

# Set working directory for the app inside container
WORKDIR /app

# Copy Flask app source code into /app
COPY III__Flask-Web-Application/ /app/

# Copy model files to the root as expected by your code
COPY II__Deepfake-Detection-Models/ /II__Deepfake-Detection-Models/


# Set environment variable for production
ENV FLASK_ENV=production

# Expose port (optional but recommended for Render)
EXPOSE 10000

# Run the app via gunicorn (assuming app is exposed in Run_App.py)
CMD ["gunicorn", "Run_App:app", "--bind", "0.0.0.0:10000"]