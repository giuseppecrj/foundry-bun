# foundry-bun

A GitHub template for starting Foundry projects that use Bun for JavaScript package management.

## Requirements

- [mise](https://mise.jdx.dev/) installed and activated in your shell
- Git
- Foundry/Forge available to run `forge init`

If you do not have Forge yet, install it first or create the repository from the GitHub template UI, then run `mise install`.

## Use this template

Create a new repository from this GitHub template, or initialize a new Foundry project directly from it:

```sh
forge init my-project --template https://github.com/giuseppecrj/foundry-bun
cd my-project
mise install
mise run install
```

Replace `my-project` with your project name. `mise install` installs the tool versions pinned in `mise.toml`.

## Included

- Foundry project layout (`src`, `test`, `script`)
- Bun lockfile/package setup
- Mise tool pinning for Bun and Foundry
- Prettier formatting, including Solidity via `prettier-plugin-solidity`
- `forge-std`
- OpenZeppelin Contracts
- Solady

## Common commands

```sh
mise run build
mise run test
mise run fmt
mise run check
```

These wrap the underlying build, test, and formatting commands. Formatting uses Prettier with `prettier-plugin-solidity`.
