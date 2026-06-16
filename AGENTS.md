# AGENTS.md

Guidance for coding agents working in this repository.

## Project overview

This repository is a GitHub template for Foundry Solidity projects that use Bun for JavaScript package management.

Template usage documented in `README.md`:

```sh
forge init my-project --template https://github.com/giuseppecrj/foundry-bun
```

## Stack

- Foundry / Forge
- Solidity configured in `foundry.toml` (`solc_version = "0.8.34"`)
- Bun-managed npm dependencies via `package.json` and `bun.lock`
- `forge-std` resolved from `node_modules/forge-std/src`
- OpenZeppelin Contracts and Solady available from `node_modules`

## Repository layout

- `src/` — Solidity contracts
- `test/` — Forge tests
- `script/` — Forge scripts
- `foundry.toml` — Foundry configuration and remappings
- `package.json` / `bun.lock` — JavaScript dependency manifest and lockfile
- `README.md` — template usage and common commands

Generated directories such as `out/`, `cache/`, `coverage/`, `node_modules/`, and local `broadcast/` artifacts should not be edited by agents.

## Common commands

Install dependencies:

```sh
bun install
```

Build contracts:

```sh
forge build
```

Run tests:

```sh
forge test
```

Format Solidity:

```sh
forge fmt
```

## Editing rules

- Keep this repository template-friendly; avoid project-specific names unless intentionally changing the template.
- Prefer minimal, focused changes.
- Add or update Forge tests in `test/` when changing contract behavior.
- Keep remappings in `foundry.toml` consistent with Bun-installed packages under `node_modules`.
- Do not commit generated build artifacts from `out/` or `cache/`.
- Do not introduce another JavaScript package manager lockfile; use `bun.lock`.

## Verification expectations

For Solidity changes, run at least:

```sh
forge test
```

For dependency or remapping changes, also run:

```sh
bun install
forge build
```
