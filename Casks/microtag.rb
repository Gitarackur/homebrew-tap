cask "microtag" do
  version "0.1.0"
  sha256 "7f30e2662a2454e5ef066416fc650b08356a15149696fbcfa402ad2128883b29"

  url "https://github.com/Gitarackur/homebrew-tap/releases/download/microtag-v#{version}/Microtag-macos-aarch64.dmg"
  name "Microtag"
  desc "Local image and microscopy metadata explorer"
  homepage "https://void-zero.pages.dev/microtag/"

  livecheck do
    skip "Microtag uses app-specific release tags in a multi-application repository"
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Microtag.app"

  caveats <<~EOS
    Microtag is ad hoc signed, without Apple Developer ID signing or notarization.
    After trying to open the app, use System Settings > Privacy & Security > Open Anyway.
    If macOS does not offer the override, remove quarantine from this app only:
      xattr -dr com.apple.quarantine "#{appdir}/Microtag.app"
  EOS
end
