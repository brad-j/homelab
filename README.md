# 🏠 Homelab

[![Project Status: Active](https://img.shields.io/badge/Project%20Status-Active-green.svg)](https://github.com/yourusername/homelab)

This repository contains all the code, configuration, and documentation for my personal homelab setup. As a passionate tech enthusiast and tinkerer, this project began when I repurposed my old gaming PC with Proxmox, transforming it into a powerful home server.

## Overview

My homelab serves as both a learning platform and a playground where I:

- 🛠️ Self-host various applications and services
- 🏡 Manage home automation through Home Assistant
- 🎮 Experiment with virtualization and containerization
- 📺 Run a complete media server stack

## Current Infrastructure

### <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#36B4AC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-server"><rect width="20" height="8" x="2" y="2" rx="2" ry="2"/><rect width="20" height="8" x="2" y="14" rx="2" ry="2"/><line x1="6" x2="6.01" y1="6" y2="6"/><line x1="6" x2="6.01" y1="18" y2="18"/></svg> Proxmox Host

<details>
  <summary>Specs.</summary>

| Component | Specification                       |
| --------- | ----------------------------------- |
| CPU       | Intel i9-9900K                      |
| Memory    | 64GB RAM                            |
| Storage   | 2× 1TB NVMe SSDs<br>1× 2TB SATA SSD |

</details>

### <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#36B4AC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-database"><ellipse cx="12" cy="5" rx="9" ry="3"/><path d="M3 5V19A9 3 0 0 0 21 19V5"/><path d="M3 12A9 3 0 0 0 21 12"/></svg> Synology D723+

<details>
  <summary>Specs.</summary>

| Component | Specification   |
| --------- | --------------- |
| CPU       | AMD Ryzen R1600 |
| Memory    | 32GB RAM        |
| Storage   | 2x 8TB SHA-1    |

</details>

## <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#36B4AC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="lucide lucide-square-code"><path d="M10 9.5 8 12l2 2.5"/><path d="m14 9.5 2 2.5-2 2.5"/><rect width="18" height="18" x="3" y="3" rx="2"/></svg> Software

| Name                    | Type |
| ----------------------- | ---- |
| Home Assistant OS       | VM   |
| Docker Host (Portainer) | VM   |
| Pi-Hole                 | CT   |
| SABnzbd                 | CT   |
| Prowlarr                | CT   |
| Radarr                  | CT   |
| Sonarr                  | CT   |
| Gluetun                 | CT   |
| Jellyfin                | CT   |
| Jellyseer               | CT   |
| Uptime Kuma             | CT   |
| Traefik                 | CT   |
| Vaultwarden             | CT   |
| Gitea                   | CT   |
