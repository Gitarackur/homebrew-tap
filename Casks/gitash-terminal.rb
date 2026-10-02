cask "gitash-terminal" do
  version "0.1.0"
  sha256 "15a3e9b8af9aabfae023805c5ff3c201f60d0693dd2d4351f8b62f18361ed490"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/gitash-terminal-v#{version}/Gitash-Terminal-macos-aarch64.dmg"
  name "Gitash Terminal"
  desc "Native graphical terminal built for the Gitash shell"
  homepage "https://github.com/Gitarackur/homebrew-tap"

  depends_on arch: :arm64
  depends_on :macos

  app "Gitash Terminal.app"

  caveats <<~EOS
    Gitash Terminal is not code-signed. If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Gitash Terminal.app"
  EOS
end
