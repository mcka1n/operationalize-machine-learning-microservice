# TODO
[![mcka1n](https://circleci.com/gh/mcka1n/operationalize-machine-learning-microservice.svg?style=svg)](https://circleci.com/gh/mcka1n/operationalize-machine-learning-microservice)


## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it

```
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```

* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

#### Testing the microservice

Once you have the service up and running, you can run the bash script `./make_prediction.sh` and it will make a `POST` request to the `/predict` endpoint with a proper payload.

The result should be a value (float) with a 200 OK HTTP Status

### Uploading the docker image to DockerHub

If you haven't login yet, it will ask you so do: `docker login` and use your credentials from [DockerHub](https://hub.docker.com/)

Once you do that, you will be able to upload the image by running the script:

```
./upload_docker.sh
```
