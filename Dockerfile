FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
RUN sed -i 's/deb.debian.org/ftp.de.debian.org/' /etc/apt/sources.list && \
    sed -i 's/security.debian.org/security.debian.org/' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y python3-pip && \
    pip3 install hyundai-kia-connect-api && \
    rm -rf /var/lib/apt/lists/*
COPY ./solarmanager /app
ENTRYPOINT ["dotnet", "backend/Solarmanager.dll"]