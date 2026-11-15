cask "gitash-terminal" do
  version "0.1.1"
  sha256 "338680531ac1b3c8de4a1f8439f0bf9ea166f86f91a75147ae3c251ccfde2cfd"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/gitash-terminal-v#{version}/Gitash-Terminal-macos-aarch64.dmg"
  name "Gitash Terminal"
  desc "Native graphical terminal built for the Gitash shell"
  homepage "https://github.com/Gitarackur/homebrew-tap"

  depends_on arch: :arm64
  depends_on :macos

  app "Gitash Terminal.app"

  caveats <<~EOS
    Gitash Terminal is ad hoc signed, without Apple Developer ID signing or notarization.
    After trying to open the app, use System Settings > Privacy & Security > Open Anyway.
    If macOS does not offer the override, remove quarantine from this app only:
      xattr -dr com.apple.quarantine "#{appdir}/Gitash Terminal.app"
  EOS
end
