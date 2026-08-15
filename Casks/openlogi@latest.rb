cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.0"
  sha256 arm:   "44ed66950f6a0b7a3a8cba2089b16496a145236e0efd70c1855ccb70f5e54f6b",
         intel: "8671ce959319a759b30ee6e89dfae15d05763e357f64af108cb5ea457c2c4f42"

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
