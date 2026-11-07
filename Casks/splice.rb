cask "splice" do
  version "0.1.0"
  sha256 "62901767eeda4c0adf806cd7b2bb3794f3f536f37532cd6e213c120c9aeba1d1"

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
