# foundry-bun

A GitHub template for starting Foundry projects that use Bun for JavaScript package management.

## Use this template

Create a new repository from this GitHub template, or initialize a new Foundry project directly from it:

```sh
forge init my-project --template https://github.com/giuseppecrj/foundry-bun
cd my-project
bun install
```

Replace `my-project` with your project name.

## Included

- Foundry project layout (`src`, `test`, `script`)
- Bun lockfile/package setup
- `forge-std`
- OpenZeppelin Contracts
- Solady

## Common commands

```sh
forge build
forge test
forge fmt
```
