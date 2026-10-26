# Demo: Cursor plugins

Work in progress. The plugins demo for Session 2: package rules and skills as one Cursor plugin.

This folder is a **marketplace** (`.cursor-plugin/marketplace.json`) that lists one **plugin**
(`people-analytics-starter/`, with its own `.cursor-plugin/plugin.json`).

## What's inside

| Path | What it is |
|---|---|
| `.cursor-plugin/marketplace.json` | The marketplace manifest: its name, owner, and the list of plugins (`source` = folder) |
| `people-analytics-starter/` | The plugin: `.cursor-plugin/plugin.json`, one rule (`rules/semantic-layer-first.mdc`), one skill (`skills/headcount-check/`) |
| `install.sh` | Copies each plugin here into `~/.cursor/plugins/local/` |
| `reset.sh` | Removes those local installs |

## Two ways to install it in Cursor

**A. As a local marketplace.** Customize > Plugins > **+ Add** > **From Local Repository**, and pick
*this* folder (not the plugin folder - Cursor wants the `marketplace.json`). Adding a marketplace
only indexes it - nothing is installed yet. Then open **Browse**, find `people-analytics-demo`,
and install **People Analytics Starter**.

**B. As a local plugin.** `bash session-2/demos/plugins/install.sh`, then `Developer: Reload Window`.
Cursor loads local plugins only from `~/.cursor/plugins/local/` and skips symlinks that point
outside it, so the script copies. Run it again after every edit.

Use one or the other, not both: two installs with the same plugin name clash.

On Teams and Enterprise, local plugins load only if the admin turned on
**Allow Local Plugin Imports** (off by default on Enterprise).
