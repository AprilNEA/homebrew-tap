# AprilNEA's Homebrew Tap

Homebrew packages for projects by [@AprilNEA](https://github.com/AprilNEA).

```bash
brew tap AprilNEA/tap
```

## Packages

| Name | Type | Description |
| --- | --- | --- |
| [`byokey`](https://github.com/AprilNEA/BYOKEY) | formula | Bring Your Own Keys — AI subscription-to-API proxy gateway (CLI) |
| [`byokey`](https://github.com/AprilNEA/BYOKEY) | cask | BYOKEY menu-bar desktop app (macOS) |

```bash
brew install AprilNEA/tap/byokey            # CLI (formula)
brew install --cask AprilNEA/tap/byokey     # desktop app (cask)
```

A formula and a cask share the `byokey` name; add `--formula` or `--cask` to
disambiguate, and `brew upgrade` accordingly.

## OpenLogi moved to homebrew-cask

[OpenLogi](https://github.com/AprilNEA/OpenLogi) now ships in the official
[Homebrew Cask](https://github.com/Homebrew/homebrew-cask) repository, so it no
longer lives in this tap:

```bash
brew install --cask openlogi
```

Existing `AprilNEA/tap/openlogi` installs are migrated to the official cask
automatically on the next `brew update` (via `tap_migrations.json`).

## License

Each package retains the license of its upstream project; see the individual
project repositories for details.
