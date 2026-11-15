cask "gitash-terminal" do
  version "0.1.0"
  sha256 "4108bd7614153ee43a71abf8d465d89bb563209575a058b75831531cd503205f"

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
