# ── Build stage ──────────────────────────────────────────────────
FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY TshAi/TshAi.csproj TshAi/
RUN dotnet restore TshAi/TshAi.csproj

COPY . .
RUN dotnet publish TshAi/TshAi.csproj \
    --configuration Release \
    --output /app/publish \
    --no-restore

# ── Runtime stage ─────────────────────────────────────────────────
FROM mcr.microsoft.com/dotnet/aspnet:10.0 AS runtime
WORKDIR /app

COPY --from=build /app/publish .

ENV ASPNETCORE_URLS=http://+:8080
ENV ASPNETCORE_ENVIRONMENT=Production

EXPOSE 8080

ENTRYPOINT ["dotnet", "TshAi.dll"]
