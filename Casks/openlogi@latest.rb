cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.10"
  sha256 arm:   "27a599af4131ff328ea9e1eea4fe2eff568d5d4c7434f1e2b7700b6798bb438e",
         intel: "d28e5c00ab22683595f8dd2d5cb317a2376ee959454898c558999cb44e51d9d8"

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
