# ido4 Plugins Marketplace

Plugin marketplace for the [ido4](https://ido4.dev) ecosystem. Specs-driven AI-hybrid development at scale.

## Available Plugins

| Plugin | Description |
|--------|------------|
| [ido4shape](https://github.com/ido4-dev/ido4shape) | Creative specification through conversation — shape what to build |

## Installation

```bash
# Add the marketplace
/plugin marketplace add ido4-dev/ido4-plugins

# Install plugins
/plugin install ido4shape@ido4-plugins
```

## The ido4 Pipeline

**ido4shape** (shape what to build) → strategic spec → downstream tools (decomposition, governance, implementation)

ido4shape produces a strategic spec through guided conversation. The spec is consumed by separate tools — including the [`ido4dev`](https://github.com/ido4-dev/ido4dev) plugin (distributed via the Claude Code CLI, not via this marketplace) and the [`ido4`](https://github.com/ido4-dev/ido4) MCP server — to decompose, govern, and implement the work.
