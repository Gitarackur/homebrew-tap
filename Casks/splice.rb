cask "splice" do
  version "0.1.0"
  sha256 "96e266b1fedd0aa4879354ef37ee7bcf355ee13786e560eb95c87784c292613b"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/splice-v#{version}/Splice-macos-aarch64.dmg"
  name "Splice"
  desc "Private, lossless MP3 cutter"
  homepage "https://github.com/Gitarackur/void-zero/tree/main/rust/vyombo/apps/mp3-cutter"

  depends_on arch: :arm64
  depends_on :macos

  app "Splice.app"

  caveats <<~EOS
    Splice is not code-signed. If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Splice.app"
  EOS
end
