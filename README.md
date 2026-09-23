# AprilNEA's Homebrew Tap

Homebrew packages for projects by [@AprilNEA](https://github.com/AprilNEA).

```bash
brew tap AprilNEA/tap
```

## Packages

| Name | Type | Description |
| --- | --- | --- |
| [`byokey`](https://github.com/AprilNEA/BYOKEY) | formula | Bring Your Own Keys — AI subscription-to-API proxy gateway (CLI) |
| [`byokey`](https://github.com/AprilNEA/BYOKEY) | cask | BYOKEY menu-bar desktop app (macOS) — **discontinued**, use the formula |
| [`openlogi@latest`](https://github.com/AprilNEA/OpenLogi) | cask | OpenLogi — latest GitHub release for Logitech HID++ peripherals (macOS) |

```bash
brew install AprilNEA/tap/byokey                 # CLI (formula)
brew install --cask AprilNEA/tap/openlogi@latest # latest OpenLogi cask
```

The `byokey` cask (the desktop app) is discontinued and receives no updates;
it shares its name with the formula, so add `--formula` or `--cask` to
disambiguate. To switch: `brew uninstall --cask byokey && brew install --formula byokey`.

## OpenLogi and homebrew-cask

[OpenLogi](https://github.com/AprilNEA/OpenLogi) ships in the official
[Homebrew Cask](https://github.com/Homebrew/homebrew-cask) repository:

```bash
brew install --cask openlogi
```

This tap also provides `openlogi@latest` for explicitly tracking OpenLogi's
latest GitHub release from AprilNEA's tap. It conflicts with the official
`openlogi` cask, so install only one of them.

Existing `AprilNEA/tap/openlogi` installs are migrated to the official cask
automatically on the next `brew update` (via `tap_migrations.json`).

## License

Each package retains the license of its upstream project; see the individual
project repositories for details.
