cask "clipse" do
  version "0.1.2"
  sha256 "c2eb4ec9d2d782b139f6cbe5fa682ab8569c99227875a83524e835004ac8873d"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/clipse-v#{version}/Clipse-macos-aarch64.dmg"
  name "Clipse"
  desc "Private, local-first MP4 clip editor"
  homepage "https://github.com/Gitarackur/void-zero/tree/main/rust/vyombo/apps/mp4-cutter"

  depends_on arch: :arm64
  depends_on :macos

  app "Clipse.app"

  caveats <<~EOS
    Clipse is ad hoc signed, without Apple Developer ID signing or notarization.
    After trying to open the app, use System Settings > Privacy & Security > Open Anyway.
    If macOS does not offer the override, remove quarantine from this app only:
      xattr -dr com.apple.quarantine "#{appdir}/Clipse.app"
  EOS
end
