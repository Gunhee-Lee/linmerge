FROM vookimedlo/ubuntu-qt:5.11_gcc_bionic

ENV PATH=${PATH}:/opt/qt511/bin
RUN apt-get update && apt-get install -y libgl1-mesa-dev

WORKDIR /app
COPY src src
COPY build.sh .
COPY run.sh .

RUN ./build.sh
CMD ["/bin/bash", "./run.sh"]
