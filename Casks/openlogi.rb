cask "openlogi" do
  arch arm: "arm64", intel: "x86_64"

  version "0.4.0"
  sha256 arm:   "33f9f9d06aeaae4e7914ba13fec2b70174e2d22c735f37a862a7f1a7a0cf8f43",
         intel: "430960d4fffdf414694034c1da9d9d33d534c40270ffe1e8e8303f10fbb05f6f"

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
