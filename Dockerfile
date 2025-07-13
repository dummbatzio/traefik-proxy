FROM traefik:v3.4

# ── 1. Static config
COPY config/traefik.yaml /traefik.yaml
COPY config/config.yaml  /config.yaml

# ── 2. ACME storage placeholder
RUN touch /acme.json \
 && chmod 600 /acme.json