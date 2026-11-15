cask "splice" do
  version "0.1.0"
  sha256 "a2e426c345c8cf975db8d607cd287cc3b1e78764b79488636e0670d887df4f02"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/splice-v#{version}/Splice-macos-aarch64.dmg"
  name "Splice"
  desc "Private, lossless MP3 cutter"
  homepage "https://github.com/Gitarackur/void-zero/tree/main/rust/vyombo/apps/mp3-cutter"

  depends_on arch: :arm64
  depends_on :macos

  app "Splice.app"

  caveats <<~EOS
    Splice is ad hoc signed, without Apple Developer ID signing or notarization.
    After trying to open the app, use System Settings > Privacy & Security > Open Anyway.
    If macOS does not offer the override, remove quarantine from this app only:
      xattr -dr com.apple.quarantine "#{appdir}/Splice.app"
  EOS
end
