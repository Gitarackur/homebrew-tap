cask "bytecamp" do
  version "0.1.1"
  sha256 "9946e327cc88a27b4baffacc80167de08c0f7204b84a7109ad9a811d363bb082"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/bytecamp-v#{version}/Bytecamp-macos-aarch64.dmg"
  name "Bytecamp"
  desc "Interactive low-level systems bootcamp"
  homepage "https://github.com/Gitarackur/void-zero/tree/main/zig/bytecamp"

  depends_on arch: :arm64
  depends_on :macos

  app "Bytecamp.app"

  caveats <<~EOS
    Bytecamp is ad hoc signed, without Apple Developer ID signing or notarization.
    After trying to open the app, use System Settings > Privacy & Security > Open Anyway.
    If macOS does not offer the override, remove quarantine from this app only:
      xattr -dr com.apple.quarantine "#{appdir}/Bytecamp.app"
  EOS
end
