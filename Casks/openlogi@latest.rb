cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.19"
  sha256 arm:   "24743975257acc94868912ce7e79963d93cbbd27fd2fea9d4bbacf883e0b00ae",
         intel: "d307227249c1fe0e2e5696b23a70daa89581775151e97bc58bed5d249cfe6e51"

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
