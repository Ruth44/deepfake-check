# Use TensorFlow's official image with Python 3.9 support
FROM tensorflow/tensorflow:2.19.0

# Set working directory
WORKDIR /app

# Copy your code
COPY . .

# Install extra Python dependencies your app needs
RUN pip install --upgrade pip
RUN pip install --ignore-installed -r requirements.txt

# Optional: avoid using app.run() in production
ENV FLASK_ENV=production
RUN ls -la /app
# Start your app using gunicorn
CMD ["gunicorn", "Run_App:app"]