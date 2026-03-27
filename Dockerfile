FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /usr/src/app

COPY . ./
RUN dotnet restore
RUN dotnet publish -o out

FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/out .

RUN dotnet build -c "Release"
EXPOSE 5678
ENTRYPOINT ["dotnet", "docker-dotnet-exercise.dll", "--urls", "5678"]