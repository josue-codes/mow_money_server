# Starting based off of the official Python Docker image
FROM python:3.10
# Setting the working directory to where the code will be
WORKDIR /code
# Copying requirements file to the working directory
COPY ./requirements.txt /code/requirements.txt
# Install required dependencies, --no-cache-dir is to avoid saving
# the downloaded packages locally since we're working with a container
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
# Copying the codebase, near the end since this won't get cached as it changes
# frequently, prior steps should get cached, optimizing container build time
COPY . /code
CMD python __main__.py