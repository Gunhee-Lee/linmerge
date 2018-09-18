FROM vookimedlo/ubuntu-qt:5.11_gcc_bionic

WORKDIR /app
COPY src .

CMD ["echo", "TEST"]
