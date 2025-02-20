# 🏠 Homelab

[![Project Status: Active](https://img.shields.io/badge/Project%20Status-Active-green.svg)](https://github.com/yourusername/homelab)

This repository contains all the code, configuration, and documentation for my personal homelab setup. As a passionate tech enthusiast and tinkerer, this project began when I repurposed my old gaming PC with Proxmox, transforming it into a powerful home server.

## 🌟 Overview

My homelab serves as both a learning platform and a playground where I:

- 🛠️ Self-host various applications and services
- 🏡 Manage home automation through Home Assistant
- 🎮 Experiment with virtualization and containerization
- 📺 Run a complete media server stack

## Current Infrastructure

### 🖥️ Proxmox Host

<details>
  <summary>Specs.</summary>

| Component | Specification                       |
| --------- | ----------------------------------- |
| CPU       | Intel i9-9900K                      |
| Memory    | 64GB RAM                            |
| Storage   | 2× 1TB NVMe SSDs<br>1× 2TB SATA SSD |

</details>

### 🖥️ Synology D723+

<details>
  <summary>Specs.</summary>

| Component | Specification   |
| --------- | --------------- |
| CPU       | AMD Ryzen R1600 |
| Memory    | 32GB RAM        |
| Storage   | 2x 8TB SHA-1    |

</details>

### What I'm currently running

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
