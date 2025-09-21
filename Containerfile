# Will be replaced in the CI with registry.ci.openshift.org/ocp/builder:rhel-8-golang-1.16-openshift-4.10
FROM docker.io/library/golang:1.19 AS builder

WORKDIR /src

COPY ./ ./

RUN make build

FROM registry.access.redhat.com/ubi9-micro:9.2

COPY --from=builder /src/bin/expense-app-backend /usr/bin/

USER 1000:1000
ENV LC_ALL en_US.UTF-8

ENTRYPOINT ["/usr/bin/expense-app-backend"]
