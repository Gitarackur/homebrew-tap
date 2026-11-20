# Gitarackur Homebrew Tap

Homebrew packages for Gitarackur applications and tools. All current casks
require macOS on Apple Silicon; Intel Macs are unsupported.

| Application | Homebrew cask | Web app / PWA |
| --- | --- | --- |
| Bytecamp | `bytecamp` | [Launch](https://void-zero.pages.dev/bytecamp/) |
| Clipse | `clipse` | [Launch](https://void-zero.pages.dev/mp4-cutter/) |
| Gitash Terminal | `gitash-terminal` | Native only |
| Icarus | `icarus` | Native only |
| Microtag | `microtag` | [Launch](https://void-zero.pages.dev/microtag/) |
| Splice | `splice` | [Launch](https://void-zero.pages.dev/splice/) |

Run `brew tap Gitarackur/tap` once. Trust each cask once before installing it.

## Web apps and PWAs

Bytecamp, Clipse, Splice, and Microtag also have hosted progressive web app
variants. They run locally in the browser, keep file processing on the device,
and require no Homebrew installation:

- [Launch Bytecamp](https://void-zero.pages.dev/bytecamp/) — interactive low-level systems bootcamp.
- [Launch Clipse](https://void-zero.pages.dev/mp4-cutter/) — local MP4 inspection and clipping.
- [Launch Splice](https://void-zero.pages.dev/splice/) — private, lossless MP3 trimming.
- [Launch Microtag](https://void-zero.pages.dev/microtag/) — local image and scientific metadata exploration.

The hosted variants can be installed from a supported browser for app-like and
offline use. See the [Void Zero application documentation](https://github.com/Gitarackur/void-zero#applications)
for source links, platform packages, and implementation details.

## Clipse

Prefer the browser version? [Launch the Clipse PWA](https://void-zero.pages.dev/mp4-cutter/).
It processes MP4 files locally without uploading them.

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

Clipse is ad hoc signed, without Apple Developer ID signing or notarization.
After trying to open it, use **System Settings → Privacy & Security → Open Anyway**.
If that override is unavailable, remove quarantine from this app only:

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

Gitash Terminal is ad hoc signed, without Apple Developer ID signing or notarization.
After trying to open it, use **System Settings → Privacy & Security → Open Anyway**.
If that override is unavailable, remove quarantine from this app only:

```bash
xattr -dr com.apple.quarantine "/Applications/Gitash Terminal.app"
```

## Icarus

Install on an Apple Silicon Mac:

```bash
brew tap Gitarackur/tap
brew trust --cask gitarackur/tap/icarus
brew install --cask gitarackur/tap/icarus
```

Upgrade or uninstall:

```bash
brew upgrade --cask gitarackur/tap/icarus
brew uninstall --cask icarus
```

Icarus has a valid ad hoc bundle signature but is not notarized by Apple.
After trying to open it, use **System Settings > Privacy & Security > Open Anyway**.
If that override is unavailable, remove quarantine from this app only:

```bash
xattr -dr com.apple.quarantine "/Applications/Icarus.app"
```

## Bytecamp

Prefer the browser version? [Launch the Bytecamp PWA](https://void-zero.pages.dev/bytecamp/).
Lessons and exercises run locally through Zig and WebAssembly.

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

Bytecamp is ad hoc signed, without Apple Developer ID signing or notarization.
After trying to open it, use **System Settings → Privacy & Security → Open Anyway**.
If that override is unavailable, remove quarantine from this app only:

```bash
xattr -dr com.apple.quarantine "/Applications/Bytecamp.app"
```

## Splice

Prefer the browser version? [Launch the Splice PWA](https://void-zero.pages.dev/splice/).
MP3 processing stays on the device and does not require an upload.

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

Splice is ad hoc signed, without Apple Developer ID signing or notarization.
After trying to open it, use **System Settings → Privacy & Security → Open Anyway**.
If that override is unavailable, remove quarantine from this app only:

```bash
xattr -dr com.apple.quarantine "/Applications/Splice.app"
```

## Microtag

[Launch the Microtag PWA](https://void-zero.pages.dev/microtag/) to inspect image,
EXIF, microscopy, and scientific metadata locally in the browser. Its Zig and
WebAssembly engine runs on the device, and the installed PWA can work offline
after its assets have been cached.

Install the native app on an Apple Silicon Mac:

```bash
brew tap Gitarackur/tap
brew trust --cask gitarackur/tap/microtag
brew install --cask gitarackur/tap/microtag
```

Upgrade or uninstall:

```bash
brew upgrade --cask gitarackur/tap/microtag
brew uninstall --cask microtag
```

Microtag is ad hoc signed, without Apple Developer ID signing or notarization.
After trying to open it, use **System Settings → Privacy & Security → Open Anyway**.
If that override is unavailable, remove quarantine from this app only:

```bash
xattr -dr com.apple.quarantine "/Applications/Microtag.app"
```

## Repaired macOS installers

The republished 0.1.0 installers contain repaired bundle signatures; Clipse also
includes its app icon. The app versions are unchanged, so existing installations
need a reinstall to receive these packaging fixes. To reinstall all four apps:

```bash
brew update
brew reinstall --cask gitarackur/tap/{clipse,bytecamp,splice,gitash-terminal}
```

To reinstall a specific app, use `brew reinstall --cask gitarackur/tap/clipse`
(or replace `clipse` with `bytecamp`, `splice`, or `gitash-terminal`).
