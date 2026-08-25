cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.0"
  sha256 arm:   "5477315b9ed9436a99fb66fff5d64a816e06c81e640654079e319d62c699e4ab",
         intel: "831e8953094bd277b4c15465e5e85012d3b7aeb94dd1f23691bdae4ca9dcc147"

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
