<div align="center">

# 🤖 Anomaly Innovations opencode CLI

**Containerized Anomaly Innovations opencode CLI (Hardened)**

[![build_status_badge](../../actions/workflows/docker-image-native-multiplatform-pipeline.yaml/badge.svg?branch=main)](.github/workflows/docker-image-native-multiplatform-pipeline.yaml)
[![opencode](https://img.shields.io/badge/GitHub-Repository-blue?logo=github)](https://github.com/anomalyco/opencode)
[![Documentation](https://img.shields.io/badge/Docs-opencode-green?logo=github)](https://opencode.ai/docs)

</div>

---

## 📦 Latest Build

<!-- VERSION_INFO_START -->
| Component | Version |
|-----------|---------|
| **Anomaly Innovations opencode CLI** | [`1.18.5`](https://github.com/anomalyco/opencode/releases/tag/v1.18.5) |

> 🔄 Last updated: 2026-07-25T16:37:02Z · [Build #58](https://github.com/stefanbosak/opencode-cli/actions/runs/30165921755)
<!-- VERSION_INFO_END -->

---

## 📋 Overview

This repository provides a fully automated preparation of <span style="color: #0969da;">**containerized**</span> [Anomaly Innovations Code CLI](https://github.com/anomalyco/opencode) environment with integrated <span style="color: #8250df;">**MCP server**</span> support using <span style="color: #1a7f37;">**Docker-in-Docker**</span> architecture.

### About solution
- Sandboxing environment for AI scope (reduced possible negative impact via isolation)
- Automated packaging of current tool versions (optimized maintenance effort via automation)
- Strong focus on security (mitigated security issues and vulnerabilities through hardening)
- Simplification of the initial run-up (see: [Container runner script](./opencode.sh), [Environment configuration](./.opencode/.env))

- **Container image is:**
  - keyless-signed via cosign using GitHub OIDC certificate issuer (trusted verifiable source)
  - automatically built when a new release of Anomaly Innovations opencode is detected (scheduled monitoring - every hour)

### ⚠️ Important Notices

> [!NOTE]
> All files in this repository are well-commented with relevant implementation details.

> [!IMPORTANT]
> Always review and understand the code before executing any commands.

> [!CAUTION]
> Users are solely responsible for any modifications or execution of code from this repository.


## 🔌 MCP Servers

### <span style="color: #0969da;">🗄️ Database & Storage</span>

#### **postgres** - <span style="color: #0969da;">PostgreSQL Integration</span>
- **Documentation:** [MCP Toolbox for Databases](https://github.com/googleapis/genai-toolbox)
- ⚠ **Note:** <span style="color: #d73a49;">Linux ARM64 architecture currently not supported ([issue](https://github.com/googleapis/genai-toolbox/issues/2754))</span>
---

### <span style="color: #8250df;">🧠 AI & Reasoning</span>

#### **sequentialthinking** - <span style="color: #8250df;">Step-by-Step Reasoning</span>
- **Benefits:** <span style="color: #1a7f37;">Reduces token consumption by 5-55%</span>
- **Documentation:** [Sequential Thinking MCP Server](https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking)

#### **ref** - <span style="color: #8250df;">Documentation Search</span>
- **Type:** <span style="color: #0969da;">HTTP</span>
- **URL:** `https://api.ref.tools/mcp`
- **Authentication:** <span style="color: #d73a49;">Requires `REF_API_KEY`</span>
- **Benefits:** <span style="color: #1a7f37;">Essential for efficient context retrieval</span>
- **Documentation:** [Ref.tools](https://ref.tools/)

---

### <span style="color: #1a7f37;">🌐 Utilities</span>

#### **fetch** - <span style="color: #1a7f37;">Web Fetching</span>
- **Documentation:** [Fetch MCP Server](https://github.com/modelcontextprotocol/servers/tree/main/src/fetch)

#### **time** - <span style="color: #1a7f37;">Time & Timezone</span>
- **Documentation:** [Time MCP Server](https://github.com/modelcontextprotocol/servers/tree/main/src/time)

---

### <span style="color: #d73a49;">📊 Monitoring & Logging</span>

#### **grafana-tst** - <span style="color: #d73a49;">Grafana</span> <span style="color: #8250df;">(Test)</span>
- **Type:** <span style="color: #0969da;">SSE</span>
- **URL:** `https://grafana-mcp.tst.domain.tld/sse`
- **Documentation:** [Grafana MCP Server](https://github.com/grafana/mcp-grafana)

#### **grafana-prd** - <span style="color: #d73a49;">Grafana</span> <span style="color: #1a7f37;">(Production)</span>
- **Type:** <span style="color: #0969da;">SSE</span>
- **URL:** `https://grafana-mcp.prd.domain.tld/sse`
- **Documentation:** [Grafana MCP Server](https://github.com/grafana/mcp-grafana)


## 📁 Repository Structure

### <span style="color: #8250df;">Configuration Files</span>
| File | Description |
|------|-------------|
| [`.env`](./.opencode/.env) | <span style="color: #1a7f37;">Environment variables</span> |

### <span style="color: #0969da;">Docker & Build</span>
| File | Description |
|------|-------------|
| [`Dockerfile`](./Dockerfile) | <span style="color: #0969da;">Container image configuration</span> |
| [`opencode-build.sh`](./opencode-build.sh) | <span style="color: #1a7f37;">Build automation script</span> |
| [`opencode.sh`](./opencode.sh) | <span style="color: #1a7f37;">Execution wrapper script</span> |
| [`act.sh`](./act.sh) | <span style="color: #1a7f37;">Act tool script</span> |


## 🐳 Container Images

### <span style="color: #0969da;">Available Registries</span>

| Registry | Network Support | Pull Command |
|----------|----------------|--------------|
| [**GitHub CR**](https://github.com/stefanbosak/opencode-cli/pkgs/container/opencode-cli) | <span style="color: #8250df;">IPv4 only</span> | `docker pull ghcr.io/stefanbosak/opencode-cli:initial` |
| [**Docker Hub**](https://hub.docker.com/r/developmententity/opencode-cli) | <span style="color: #1a7f37;">IPv4 & IPv6</span> | `docker pull developmententity/opencode-cli:initial` |

---

<div align="center">

<span style="color: #8250df;">**Made with ❤ for ⚡ efficiency and 🔒 security**</span>

</div>
