# Gitarackur Homebrew Tap

Homebrew packages for Gitarackur applications and tools.

## Gitash Terminal

```bash
brew tap Gitarackur/tap
brew install gitash-terminal
```

The tap command is only required once. A first-time one-command installation is
also available with `brew install --cask Gitarackur/tap/gitash-terminal`.

Gitash Terminal is currently unsigned. If macOS blocks the first launch, run:

```bash
xattr -dr com.apple.quarantine "/Applications/Gitash Terminal.app"
```
