cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.3"
  sha256 arm:   "4bc5e5c2e39dfe6c8aa28482b2f76a03d41400192678c25880a79daee034e95f",
         intel: "80f6ae4ed80d8661098e18401f9e9f25c8006209dc0767fe3f596d45be3c444a"

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
