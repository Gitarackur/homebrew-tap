# Gitarackur Homebrew Tap

Homebrew packages for Gitarackur applications and tools.

## Gitash Terminal

```bash
brew tap Gitarackur/tap
brew install gitash-terminal
```

The tap command is only required once. A first-time one-command installation is
also available with `brew install --cask Gitarackur/tap/gitash-terminal`.

To uninstall Gitash Terminal:

```bash
brew uninstall gitash-terminal
```

To also remove the Gitarackur tap from Homebrew:

```bash
brew untap Gitarackur/tap
```

Gitash Terminal is currently unsigned. If macOS blocks the first launch, run:

```bash
xattr -dr com.apple.quarantine "/Applications/Gitash Terminal.app"
```
