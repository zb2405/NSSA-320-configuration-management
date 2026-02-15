# NSSA‑320 Configuration Management Automation

## Overview

This project is an **Ansible‑based infrastructure automation solution**
designed to deploy and manage a complete web application environment. It
provisions Apache web servers, configures HAProxy load balancing,
applies firewall and SELinux policies, enables automated system updates,
and deploys a static web application.

------------------------------------------------------------------------

## What This Project Does

-   Installs and configures Apache web servers
-   Deploys the *Explore California* web application
-   Configures HAProxy as a load balancer
-   Applies firewall rules required for web traffic
-   Enforces SELinux configuration
-   Enables automatic package updates using `dnf-automatic`
-   Includes siege role for testing

------------------------------------------------------------------------

## Architecture

Client → HAProxy Load Balancer → Apache Web Servers

------------------------------------------------------------------------

## Project Structure

```
NSSA-320-configuration-management-main/
├── main.yml
│
└── roles/
    ├── apache/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── files/
    │       ├── explore_california_ver3/
    │       ├── explore_california_ver4/
    │       └── httpd.conf
    │
    ├── haproxy/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── files/
    │       ├── backend1/
    │       │   └── haproxy.cfg
    │       └── backend2/
    │           └── haproxy.cfg
    │
    ├── firewall_exceptions/
    │   ├── tasks/
    │   │   └── main.yml
    │   └── handlers/
    │       └── main.yml
    │
    ├── selinux/
    │   └── tasks/
    │       └── main.yml
    │
    ├── dnf_automatic/
    │   ├── defaults/
    │   │   └── main.yml
    │   ├── tasks/
    │   │   └── main.yml
    │   └── templates/
    │       └── automatic.conf.j2
    │
    └── siege/
        └── tasks/
            └── main.yml
```
------------------------------------------------------------------------

## Usage

ansible-playbook -i inventory main.yml

------------------------------------------------------------------------

## Features

-   Role-based configuration management
-   Idempotent infrastructure deployment
-   Load-balanced web deployment
-   Security enforcement with SELinux
-   Automated updates

------------------------------------------------------------------------

## Author

Configuration Management Automation Project
