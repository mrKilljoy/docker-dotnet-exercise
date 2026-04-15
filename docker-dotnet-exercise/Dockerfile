FROM mcr.microsoft.com/dotnet/sdk:8.0 AS base
WORKDIR /usr/src/app

COPY . ./
RUN dotnet restore
RUN dotnet publish -c "Release" -o out /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /usr/src/app
COPY --from=base /usr/src/app/out .

EXPOSE 5678
ENTRYPOINT ["dotnet", "./docker-dotnet-exercise.dll", "--urls", "http://*:5678"]