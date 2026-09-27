cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.9"
  sha256 arm:   "44a4c28700482957dc8c8abdeaaf4fe5e0589d84531343a9ee68dcc244e64245",
         intel: "11068b331c1f7b0402b161bb87eceffa7cd9d3b5a0810412ce4ff5b7fc505dfd"

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
