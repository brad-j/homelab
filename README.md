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
  <summary>Hardware Specifications</summary>

| Component     | Specification                       |
| ------------- | ----------------------------------- |
| CPU           | Intel i9-9900K (8C/16T)             |
| Memory        | 64GB RAM                            |
| Storage       | 2× 1TB NVMe SSDs<br>1× 1TB SATA SSD |
| Total Storage | 3TB                                 |

</details>

| Name              | Type | Description                            |
| ----------------- | ---- | -------------------------------------- |
| Home Assistant OS | VM   | Smart Home Automation                  |
| Docker Host       | VM   | Containerized Applications (Portainer) |
| Pi-Hole           | CT   | Network-wide ad blocking & DNS         |
| SABnzbd           | CT   | Media                                  |
| Prowlarr          | CT   | Media                                  |
| Radarr            | CT   | Media                                  |
| Sonarr            | CT   | Media                                  |
| Gluetun           | CT   | Media                                  |
| Jellyfin          | CT   | Media                                  |
| Jellyseer         | CT   | Media                                  |
