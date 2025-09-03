# Usa Ubuntu como base
FROM ubuntu:24.04

# Evita preguntas interactivas durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Actualiza paquetes e instala los necesarios
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      libz-mingw-w64-dev \
      mingw-w64 \
 && rm -rf /var/lib/apt/lists/*

# Define un comando por defecto (opcional), por ejemplo abrir bash
CMD ["/bin/bash"]