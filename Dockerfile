FROM nginx
WORKDIR /app
COPY /usr/jenkins/workspace/dotnet/DotnetCore/xUnitSample/bin/Debug/netcoreapp2.2/ ./
