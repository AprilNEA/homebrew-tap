cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.19"
  sha256 arm:   "308e172d4c2ce2a704536138818412fad42f1f958f72e7e9a80c88d92f95b4e3",
         intel: "f6827cf7d4d5ca75d580fed87b0a2c4e462b21029a2b7a357efb5e4966010bb1"

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
