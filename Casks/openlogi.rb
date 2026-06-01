cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.3"
  sha256 arm:   "c0560dd384640610b8f6f75f977eeb50f601ee1a1cc9d5b5602787fd20668c39",
         intel: "f983c4a381805851413e5219fbea165dd67bfdd3660c97858601f74b557c179f"

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
