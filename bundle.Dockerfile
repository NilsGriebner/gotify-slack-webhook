ARG SERVER_VERSION=latest
FROM ghcr.io/gotify/server:${SERVER_VERSION}
# NOTE: Need to re-declare this to make available _inside_ image build
ARG TARGETARCH
COPY out/gotify-slack-webhook-linux-${TARGETARCH}.so /app/data/plugins/
