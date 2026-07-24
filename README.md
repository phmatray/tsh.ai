![tsh.ai banner](.github/banner.png)

# tsh.ai ☕

<!-- portfolio-badges:start -->
<!-- Identity -->
[![phmatray - tsh.ai](https://img.shields.io/static/v1?label=phmatray&message=tsh.ai&color=blue&logo=github)](https://github.com/phmatray/tsh.ai)
![Top language](https://img.shields.io/github/languages/top/phmatray/tsh.ai)
[![Stars](https://img.shields.io/github/stars/phmatray/tsh.ai?style=social)](https://github.com/phmatray/tsh.ai/stargazers)
[![Forks](https://img.shields.io/github/forks/phmatray/tsh.ai?style=social)](https://github.com/phmatray/tsh.ai/network/members)
[![License](https://img.shields.io/github/license/phmatray/tsh.ai)](https://github.com/phmatray/tsh.ai/blob/HEAD/LICENSE)

<!-- Activity -->
[![Issues](https://img.shields.io/github/issues/phmatray/tsh.ai)](https://github.com/phmatray/tsh.ai/issues)
[![Pull requests](https://img.shields.io/github/issues-pr/phmatray/tsh.ai)](https://github.com/phmatray/tsh.ai/pulls)
[![Last commit](https://img.shields.io/github/last-commit/phmatray/tsh.ai)](https://github.com/phmatray/tsh.ai/commits)
<!-- portfolio-badges:end -->

<!-- portfolio-toc:start -->

## Table of Contents

- [What's inside](#whats-inside)
- [Newsletter](#newsletter)
- [Stack](#stack)
- [Run locally](#run-locally)
- [Deploy (k8s)](#deploy-k8s)
- [Projects featured](#projects-featured)
- [DNS (for Philippe)](#dns-for-philippe)
- [Contributing](#contributing)

<!-- portfolio-toc:end -->

<!-- portfolio-features:start -->

## Features

- **Weekly newsletter capture** — the homepage "Le Chai du Dev" signup form (`#newsletter-signup` in `Home.razor`) with inline email validation, a loading state, and a success confirmation once subscribed.
- **Content-rich landing page** — hero, a "Ce que tu vas recevoir" benefits grid (.NET tips, AI-agent practice, Atypical Consulting behind-the-scenes), a recent-projects showcase, and an about/stats section, all on one Blazor Server route.
- **Newsletter archive** (`/newsletter`) — dedicated page previewing upcoming issue topics while the first send is being prepared.
- **OSS project showcase** (`/projets`) — detailed cards for [TaLibStandard](https://github.com/phmatray/TaLibStandard), [FormCraft](https://github.com/phmatray/FormCraft), [TenantKit](https://github.com/phmatray/TenantKit), and [NuGetPulse](https://github.com/phmatray/NuGetPulse), plus a preview of the in-progress `AgentKit` agent-orchestration library.
- **Hand-rolled "Chai" design system** — a dedicated `app.css` design system (amber/cream/soft-violet palette, custom radii/shadows/typography tokens) plus accessible, `aria-hidden` decorative SVGs (chai cup, cinnamon sticks, star anise).
- **Container-native CI/CD** — GitHub Actions builds and tests on .NET 10, pushes a Docker image to GHCR, then rolls it out to a k3s cluster (Traefik ingress, cert-manager TLS) via `kubectl`.

<!-- portfolio-features:end -->

<!-- portfolio-getstarted:start -->

## Getting Started

### Prerequisites

- [.NET SDK](https://dotnet.microsoft.com/download)

### Run

```bash
git clone https://github.com/phmatray/tsh.ai.git
cd tsh.ai
dotnet restore
dotnet build
dotnet run --project TshAi/TshAi.csproj
```

<!-- portfolio-getstarted:end -->




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

---

<!-- portfolio-roadmap:start -->

## Roadmap

Planned work and known limitations are tracked in the [open issues](https://github.com/phmatray/tsh.ai/issues). Contributions toward them are welcome.

<!-- portfolio-roadmap:end -->

<!-- portfolio-sections:start -->

## Contributing

Contributions are welcome. Open an issue first to discuss any significant change.

1. Fork the repository and create your branch (`git checkout -b feat/my-feature`)
2. Commit your changes (`git commit -m 'feat: ...'`)
3. Push the branch and open a Pull Request

<!-- portfolio-sections:end -->
