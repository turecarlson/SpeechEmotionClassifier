# Huge thanks to KNuggies on YT for this tutorial to get GPU support for TF running on WSL: https://www.youtube.com/watch?v=YozfiLI1ogY

FROM tensorflow/tensorflow:latest-gpu

WORKDIR /src

RUN pip install -U jupyterlab pandas matplotlib

EXPOSE 8888

ENTRYPOINT [ "jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--no-browser" ]

