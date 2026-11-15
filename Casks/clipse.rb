cask "clipse" do
  version "0.1.0"
  sha256 "ac4fa5f262e45fd4994ff1b2f886e64bdf62725c11923ddcb8130aebc08394f0"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/clipse-v#{version}/Clipse-macos-aarch64.dmg"
  name "Clipse"
  desc "Private, local-first MP4 clip editor"
  homepage "https://github.com/Gitarackur/void-zero/tree/main/rust/vyombo/apps/mp4-cutter"

  depends_on arch: :arm64
  depends_on :macos

  app "Clipse.app"

  caveats <<~EOS
    Clipse is not code-signed. If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Clipse.app"
  EOS
end
