FROM jupyter/scipy-notebook:latest

# launchbot-specific labels
LABEL name.launchbot.io="Scientific Computing with Python"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="Lectures on scientific computing with Python."
LABEL 8888.port.launchbot.io="Tutorial"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
