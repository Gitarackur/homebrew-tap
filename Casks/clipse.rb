cask "clipse" do
  version "0.1.1"
  sha256 "4b49241a6eb9371d43740292c28b2c1a652d7b7727e487395a40445b0b7b2d32"

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
