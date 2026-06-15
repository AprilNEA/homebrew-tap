cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.13"
  sha256 arm:   "375e101bc037737093b8d5607b5220d8d532ab0f94116cda06fabaaa50eb7263",
         intel: "c7bd7b0f590f600b546f5562e35a70893063abc079eb79c05a75d2f58243e6d2"

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
