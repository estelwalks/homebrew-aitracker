# AITracker Homebrew Tap

Homebrew Casks for [AITracker](https://github.com/estelwalks/aitracker).

## Install the stable channel

Install the current stable release with the fully qualified Cask name:

```sh
brew install --cask estelwalks/aitracker/aitracker
```

Upgrade it with:

```sh
brew upgrade --cask estelwalks/aitracker/aitracker
```

The stable Cask is generated from the matching public GitHub Release metadata
and pins the arm64 and Intel DMG SHA-256 values independently.

## Install the beta channel

The current published release is an unsigned beta. Install it with the fully
qualified Cask name:

```sh
brew install --cask estelwalks/aitracker/aitracker-beta
```

Upgrade it with:

```sh
brew upgrade --cask estelwalks/aitracker/aitracker-beta
```

The beta Cask is generated from the matching public GitHub Release metadata
and pins the arm64 and Intel DMG SHA-256 values independently.

## Uninstall

```sh
brew uninstall --cask aitracker
brew uninstall --cask aitracker-beta
```

The beta installers are unsigned. Verify the GitHub Release source and
checksum before opening the application, and follow macOS's normal
per-application Gatekeeper confirmation flow if prompted.
