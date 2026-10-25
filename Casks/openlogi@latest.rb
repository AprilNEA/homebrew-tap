cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.18"
  sha256 arm:   "00112454fa77b60cffbb2771926d4735bac581582e2dfb629e7a7af296836221",
         intel: "f534c22746a2109bba1bd5d2a7df6d98b0db0ee60071e444d09869a037291902"

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
