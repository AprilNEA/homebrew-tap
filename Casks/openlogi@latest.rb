cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.13"
  sha256 arm:   "8c732f945f755c850a3bc60a9de4a2e2364fd17de6367279eba7ec402b84d452",
         intel: "f45e666b8a952785538f1a027f1b9c8fb4f98ab9554fc52daaa599a01e218613"

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
