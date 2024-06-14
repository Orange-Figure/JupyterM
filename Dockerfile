# Use the base inage
FROM fredblgr /ubuntu-novnc: 20.04
# Expose the port on which NoVNC runs (80 inside the container)
EXPOSE 80|
# Set the environment variable for screen resolution
ENV RESOLUTION 1707×1067
# Start the command to run NOVNC
CMD ["supervisord", "-c", */etc/supervisor/supervisord.conf"]
