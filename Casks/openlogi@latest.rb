cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.11"
  sha256 arm:   "ad56dfa748ef890e67850f81123eab1705be3110d378c86ea03d59b9c94e1a84",
         intel: "c795d8e20236733c92a7b0611dbd8d797b0b41b79c0877ce1d7d8af78db709d4"

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
