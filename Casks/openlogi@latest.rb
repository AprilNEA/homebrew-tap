cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.2"
  sha256 arm:   "98a004ed79f611533e8f89c9291986b630f352a6e87eb6ffdfd936c288340baa",
         intel: "18ce150ef5a6e59c0c03007d689748f39e9ca8ac60de972baf6dc1dcbdea7e94"

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
