cask "clipse" do
  version "0.1.0"
  sha256 "7e360ede4d18990e35dcd6f34c7252f7f432aedff2e26f3204cf5e6b8934c8b1"

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
