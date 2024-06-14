# Use the latest Ubuntu image
FROM ubuntu:latest
# Update and install required packages
RUN apt-get update 88 apt-get install -y \
python3 \
python3-pip
# Set the working directory
WORKDIR /app
# Install JupyterLab
RUN pip3 install jupyterlab
# Expose port 8080
EXPOSE 8080
# Start JupyterLab on port 8080 without authentic
CMD ["jupyter". "lab". "--ip=0.0.0.0". "--port=8080", "no-browser" "allow-root", "--NotebookApp.token=''"]
