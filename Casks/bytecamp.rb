cask "bytecamp" do
  version "0.1.0"
  sha256 "896e3c9d408a866169102970bbe1e4c2c23e2d14c5d656ce2dbf9bbf2633e321"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/bytecamp-v#{version}/Bytecamp-macos-aarch64.dmg"
  name "Bytecamp"
  desc "Interactive low-level systems bootcamp"
  homepage "https://github.com/Gitarackur/void-zero/tree/main/zig/bytecamp"

  depends_on arch: :arm64
  depends_on :macos

  app "Bytecamp.app"

  caveats <<~EOS
    Bytecamp is not code-signed. If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Bytecamp.app"
  EOS
end
