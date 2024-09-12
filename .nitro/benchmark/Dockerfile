# How to build and run
# docker build -f .nitro/benchmark/Dockerfile -t foundation.canary.nitrobench .
# docker run -it --rm foundation.canary.nitrobench
FROM golang:1.22.5
WORKDIR /app

COPY ./ ./
COPY .nitro/benchmark/run.sh ./
RUN go mod vendor

CMD ["/app/run.sh"]
