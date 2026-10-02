cask "gitash-terminal" do
  version "0.1.0"
  sha256 "f8ddcb4e4c1685449d9c1bdc6aa36c2a209c71de32db7a744568975b4c273439"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/gitash-terminal-v#{version}/Gitash-Terminal-macos-aarch64.dmg"
  name "Gitash Terminal"
  desc "Native graphical terminal built for the Gitash shell"
  homepage "https://github.com/Gitarackur/void-zero"

  depends_on arch: :arm64
  depends_on :macos

  app "Gitash Terminal.app"

  caveats <<~EOS
    Gitash Terminal is not code-signed. If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Gitash Terminal.app"
  EOS
end
