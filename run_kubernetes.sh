#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="mckain/ops-machine-learning-app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ops-machine-learning-app-k8\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=8000 --labels app=ops-machine-learning-app-k8

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ops-machine-learning-app-k8 8000:5000

