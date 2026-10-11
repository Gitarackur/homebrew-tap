# Gitarackur Homebrew Tap

Homebrew packages for Gitarackur applications and tools.

## Gitash Terminal

Install on an Apple Silicon Mac:

```bash
brew tap Gitarackur/tap
brew trust --cask gitarackur/tap/gitash-terminal
brew install --cask gitarackur/tap/gitash-terminal
```

The tap and trust steps are required only once. The trust command authorizes
Homebrew to load this specific cask from the tap. If Homebrew reports
"Refusing to load cask ... from untrusted tap", run the trust command above,
then retry installation. Intel Macs are currently unsupported.

To upgrade Gitash Terminal:

```bash
brew upgrade --cask gitarackur/tap/gitash-terminal
```

To uninstall Gitash Terminal:

```bash
brew uninstall --cask gitash-terminal
```

To also remove the Gitarackur tap from Homebrew:

```bash
brew untap Gitarackur/tap
```

Gitash Terminal is currently unsigned. If macOS blocks the first launch, run:

```bash
xattr -dr com.apple.quarantine "/Applications/Gitash Terminal.app"
```
