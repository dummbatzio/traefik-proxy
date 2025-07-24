FROM traefik:v3.4

# ── 1. Static config
COPY ./traefik.yaml /traefik.yaml
COPY ./config /etc/traefik/config

# ── 2. ACME storage placeholder
RUN touch /acme.json \
 && chmod 600 /acme.json

# ── 3. Certificates
COPY ./certs /certs