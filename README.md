# AprilNEA's Homebrew Tap

Homebrew packages for projects by [@AprilNEA](https://github.com/AprilNEA).

## Tap

```bash
brew tap AprilNEA/tap https://github.com/AprilNEA/homebrew-tap
```

## Available packages

| Name | Type | Description |
| --- | --- | --- |
| [`byokey`](https://github.com/AprilNEA/BYOKEY) | formula | Bring Your Own Keys — AI subscription-to-API proxy gateway (CLI) |
| [`byokey`](https://github.com/AprilNEA/BYOKEY) | cask | BYOKEY menu-bar desktop app (macOS) |

## Installing

```bash
# CLI (formula)
brew install AprilNEA/tap/byokey

# Desktop app (cask)
brew install --cask AprilNEA/tap/byokey
```

When a formula and a cask share a name, Homebrew may prompt you to
disambiguate — add `--formula` or `--cask` explicitly.

## Updating

```bash
brew update
brew upgrade byokey              # CLI
brew upgrade --cask byokey       # desktop app
```

## License

Each package retains the license of its upstream project; see the
individual project repositories for details.
