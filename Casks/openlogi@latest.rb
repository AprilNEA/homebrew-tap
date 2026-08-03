cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.23"
  sha256 arm:   "bbc32d6498987d8a905060f135d70a3becd60a7bd0eb58137a7f9a99cad11447",
         intel: "eb607bca6c77c4a9b4e0ff10b4d4fdf39a7db14ebd680503adf7a99ecf8536f1"

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
