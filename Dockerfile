FROM nginx
WORKDIR /app
COPY  ./dotnet/DotnetCore/xUnitSample/bin/Debug/netcoreapp2.2/ /app
