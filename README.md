# tsh.ai ☕

> **Le hub de Philippe Matray** — AI agent teams pour PMEs .NET.

Personal brand hub + newsletter landing page for [Philippe Matray](https://github.com/phmatray).

**Live:** [tsh.garry-ai.cloud](https://tsh.garry-ai.cloud) *(temp domain — final: tsh.ai)*

---

## What's inside

| Page | Description |
|------|-------------|
| `/` | Landing page — hero, newsletter signup, projects, about |
| `/newsletter` | Archive of *Le Chai du Dev* issues |
| `/projets` | OSS projects list |

## Newsletter

**Le Chai du Dev** — weekly insights on .NET + AI agents + Atypical Consulting.

Subscribe at [tsh.garry-ai.cloud](https://tsh.garry-ai.cloud) ↗

## Stack

- **Blazor Server** (.NET 10)
- **CSS custom** — no heavy framework
- **Design:** warm amber + cream + soft violet
- **Docker** + **k3s** (Traefik ingress, cert-manager TLS)

## Run locally

```bash
cd TshAi
dotnet run
# → http://localhost:5000
```

## Deploy (k8s)

```bash
# Apply all manifests
kubectl apply -f k8s/

# Rollout
kubectl rollout restart deployment/tsh-ai -n tsh
```

## Projects featured

| Project | Description |
|---------|-------------|
| [TaLibStandard](https://github.com/phmatray/TaLibStandard) | TA-Lib for .NET — technical analysis indicators |
| [FormCraft](https://github.com/phmatray/FormCraft) | Fluent Blazor form builder |
| [TenantKit](https://github.com/phmatray/TenantKit) | Multi-tenancy toolkit for ASP.NET Core |
| [NuGetPulse](https://github.com/phmatray/NuGetPulse) | NuGet package monitoring dashboard |

## DNS (for Philippe)

Point `tsh.ai` → `72.61.194.21` at your registrar to go live on the real domain.

---

MIT License · Made with ☕ by [Ritchie](https://github.com/phmatray) for Philippe Matray
