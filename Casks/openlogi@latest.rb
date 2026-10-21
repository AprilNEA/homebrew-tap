cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.16"
  sha256 arm:   "3339ae577c95b8e04576b4b1c9151bc80a14737644a310f795bd7bb2ad921ac3",
         intel: "c004cac584a64dcb022aa00f73c2bf55661d0fdab033da0e0fae0aa92af6c7ff"

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
