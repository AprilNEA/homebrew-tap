cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.4"
  sha256 arm:   "11024c3a19a8b7c9fd478a39e6c9545a634b7e2f751f19b3574fc843d8d33663",
         intel: "4e40a994d9763822b46f07c2d52f62d612fd2c8afbeae813623b4ce1a690af58"

  url "https://github.com/AprilNEA/OpenLogi/releases/download/v#{version}/OpenLogi-v#{version}-macos-#{arch}.dmg"
  name "OpenLogi"
  desc "Lightweight, local-first companion for Logitech HID++ peripherals"
  homepage "https://github.com/AprilNEA/OpenLogi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
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
