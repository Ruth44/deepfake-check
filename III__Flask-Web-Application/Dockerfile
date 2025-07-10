e an official Python 3.9 image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy all your code into the container
COPY . .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Set environment variable for production (Flask-specific)
ENV FLASK_ENV=production

# Run the app using gunicorn
CMD ["gunicorn", "Run_App:app"]
