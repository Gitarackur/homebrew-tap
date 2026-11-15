# Gitarackur Homebrew Tap

Homebrew packages for Gitarackur applications and tools. All current casks
require macOS on Apple Silicon; Intel Macs are unsupported.

| Cask | Application |
| --- | --- |
| `bytecamp` | Interactive low-level systems bootcamp |
| `clipse` | Private, local-first MP4 clip editor |
| `gitash-terminal` | Native graphical terminal for the Gitash shell |
| `splice` | Private, lossless MP3 cutter |

Run `brew tap Gitarackur/tap` once. Trust each cask once before installing it.

## Clipse

Install on an Apple Silicon Mac:

```bash
brew tap Gitarackur/tap
brew trust --cask gitarackur/tap/clipse
brew install --cask gitarackur/tap/clipse
```

To upgrade or uninstall Clipse:

```bash
brew upgrade --cask gitarackur/tap/clipse
brew uninstall --cask clipse
```

Clipse is currently unsigned. If macOS blocks the first launch, run:

```bash
xattr -dr com.apple.quarantine "/Applications/Clipse.app"
```

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

## Bytecamp

Install on an Apple Silicon Mac:

```bash
brew tap Gitarackur/tap
brew trust --cask gitarackur/tap/bytecamp
brew install --cask gitarackur/tap/bytecamp
```

Upgrade or uninstall:

```bash
brew upgrade --cask gitarackur/tap/bytecamp
brew uninstall --cask bytecamp
```

Bytecamp is currently unsigned. If macOS blocks the first launch, run:

```bash
xattr -dr com.apple.quarantine "/Applications/Bytecamp.app"
```

## Splice

Install on an Apple Silicon Mac:

```bash
brew tap Gitarackur/tap
brew trust --cask gitarackur/tap/splice
brew install --cask gitarackur/tap/splice
```

Upgrade or uninstall:

```bash
brew upgrade --cask gitarackur/tap/splice
brew uninstall --cask splice
```

Splice is currently unsigned. If macOS blocks the first launch, run:

```bash
xattr -dr com.apple.quarantine "/Applications/Splice.app"
```
