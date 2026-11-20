cask "icarus" do
  version "0.0.165"
  sha256 "3092247258ee4ee53dea00e35a5f06e536f07c9fc8ffba39aa68a26ce3918ea4"

  url "https://github.com/Gitarackur/MISSION-ICARUS/releases/download/v#{version}/Icarus-Mac-#{version}-Installer.dmg"
  name "Icarus"
  desc "Desktop environment for scientific data analysis and visualization"
  homepage "https://github.com/Gitarackur/MISSION-ICARUS"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Icarus.app"

  caveats <<~EOS
    Icarus has a valid ad hoc bundle signature but is not notarized by Apple.
    After trying to open the app, use System Settings > Privacy & Security > Open Anyway.
    If macOS does not offer the override, remove quarantine from this app only:
      xattr -dr com.apple.quarantine "#{appdir}/Icarus.app"
  EOS
end
