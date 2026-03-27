# docker-dotnet-exercise

A repository containing source code for a test project. Used as a part of a homework task for [this](https://courses.mooc.fi/org/uh-cs/courses/devops-with-docker-spring-2026) course.

## Prerequisites

Install dotnet 8.0 [(SDK for Windows)](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-8.0.125-windows-x64-installer). Other versions can be found [here](https://dotnet.microsoft.com/en-us/download/dotnet/8.0).

Use ` dotnet --version` command to make sure that the SDK is installed.

## Build project
Use `dotnet build -c "Release"` command for building the project (or it can also be built via any preferred IDE). The resulting files will be placed in `~\docker-dotnet-exercise\bin\Release\net8.0` folder.

## Run project
Use `dotnet docker-dotnet-exercise.dll` command to launch the application. Make sure that the command is executed from the folder containing the resulting .DLL file.

## Access API
The application has only one API called 'WeatherForecast'. Once the application is running, it can be accessed via a GET request to `http://localhost:5000/WeatherForecast`. By default, the application may be available on the port 5000 but it is possible to specify a different port via `--urls` argument. For example: `dotnet docker-dotnet-exercise.dll --urls http://localhost:7000`.