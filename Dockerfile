FROM mcr.microsoft.com/powershell:latest

# Install Git
RUN apt-get update && \
    apt-get install -y git

# Clone ARM-TTK Repo
RUN git clone https://github.com/Azure/arm-ttk.git

# Copy the Entrypoint file from the current directory (the one the Dockerfile is located in)
COPY entrypoint.ps1 /entrypoint.ps1

# Start using the Entrypoint file.
ENTRYPOINT [ "pwsh", "/entrypoint.ps1" ]