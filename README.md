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
| [`openlogi`](https://github.com/AprilNEA/OpenLogi) | cask | OpenLogi — local-first companion for Logitech HID++ peripherals (macOS) |

## Installing

```bash
# CLI (formula)
brew install AprilNEA/tap/byokey

# Desktop apps (cask)
brew install --cask AprilNEA/tap/byokey
brew install --cask AprilNEA/tap/openlogi
```

When a formula and a cask share a name, Homebrew may prompt you to
disambiguate — add `--formula` or `--cask` explicitly.

## Updating

```bash
brew update
brew upgrade byokey                  # CLI
brew upgrade --cask byokey openlogi  # desktop apps
```

## License

Each package retains the license of its upstream project; see the
individual project repositories for details.
