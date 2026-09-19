cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.6"
  sha256 arm:   "ba1cf960055606c6c48839f437dad82da1a62877cf1f17f16571fa275c4664cc",
         intel: "ff4475c33254e68b2f9b87bf2b6f4fff3fed9d9bc1b8306f84af7c972b6a6ad8"

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
