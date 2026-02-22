# Homebrew Tap for BYOKEY

## Installation

```bash
brew tap AprilNEA/tap https://github.com/AprilNEA/homebrew-tap
brew install byokey
```

### Install from HEAD (latest main branch)

```bash
brew install --HEAD byokey
```

## Usage

```bash
# Start the proxy server
byokey serve

# Or run as a background service
brew services start byokey

# Authenticate with a provider
byokey login claude
byokey login gemini

# Check status
byokey status
```

## Updating

```bash
brew update
brew upgrade byokey
```
