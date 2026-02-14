# 🐳 Drupal Compose

```{=html}
<p align="center">
```
`<img src="https://www.drupal.org/files/Wordmark_blue_RGB.png" width="220" alt="Drupal Logo"/>`{=html}
```{=html}
</p>
```
```{=html}
<p align="center">
```
`<img src="https://img.shields.io/badge/Drupal-10.x-blue?logo=drupal" alt="Drupal">`{=html}
`<img src="https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker&logoColor=white" alt="Docker Compose">`{=html}
`<img src="https://img.shields.io/badge/MySQL-8.0-4479A1?logo=mysql&logoColor=white" alt="MySQL">`{=html}
`<img src="https://img.shields.io/badge/PHP-8.x-777BB4?logo=php&logoColor=white" alt="PHP">`{=html}
```{=html}
</p>
```

------------------------------------------------------------------------

## 🚀 Simple Drupal Docker Setup

A minimal, developer-friendly **Drupal + MySQL** Docker Compose setup
based on the official Drupal Docker image.

Perfect for: - 🧑‍💻 Local development - 🧪 Testing modules/themes - 🧱
Custom Drupal builds - ⚡ Quick project bootstrap

------------------------------------------------------------------------

## 📦 Stack Overview

  Service         Technology
  --------------- ---------------------------
  CMS             Drupal (official image)
  Database        MySQL 8
  Web             Apache (via Drupal image)
  Orchestration   Docker Compose

------------------------------------------------------------------------

## 🏗 Project Structure

    .
    ├── docker-compose.yml
    ├── Dockerfile
    ├── install.sh
    ├── reset.sh
    ├── fix_permissions.sh
    │
    ├── drupal-modules/
    ├── drupal-themes/
    ├── drupal-profiles/
    ├── drupal-sites/default/files/
    ├── drupal-config/

------------------------------------------------------------------------

## ⚙️ Installation

``` bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
cd YOUR_REPO
docker compose build
docker compose up -d
```

Open: http://localhost:8080

Database: Host: database DB: drupal User: drupal Pass: drupal Port: 3306

------------------------------------------------------------------------

## 🔧 Useful Commands

``` bash
./install.sh
./reset.sh
./fix_permissions.sh
```

------------------------------------------------------------------------

## 🏭 Production Notes

⚠️ Development use only.
