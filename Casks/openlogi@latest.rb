cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.26"
  sha256 arm:   "d81f81ae268e3d03691a85ee32f5a8ce1341554ef879273b1b494e6c5a944f75",
         intel: "3811cd8af51f0fdfbeaf47a2a0e4f83666856e7ceb4e1f67691a9bb783fe0c7b"

  url "https://github.com/AprilNEA/OpenLogi/releases/download/v#{version}/OpenLogi-v#{version}-macos-#{arch}.dmg"
  name "OpenLogi"
  desc "Lightweight, local-first companion for Logitech HID++ peripherals"
  homepage "https://github.com/AprilNEA/OpenLogi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  conflicts_with cask: "openlogi"
  depends_on macos: :ventura

  app "OpenLogi.app"

  zap trash: [
    "~/.config/openlogi",
    "~/.local/share/openlogi",
    "~/Library/Caches/org.openlogi.openlogi",
    "~/Library/Preferences/org.openlogi.openlogi.plist",
    "~/Library/Saved Application State/org.openlogi.openlogi.savedState",
  ]
end
