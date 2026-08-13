cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.27"
  sha256 arm:   "6f6fe79cbcc21ef3b8df05f6db734e8567a6603385e652ac3fc91879ae280fc4",
         intel: "1853703bd6b580398c4a107f54e0daf9f81fbfc29cb1df3f3ae9137d17ca601a"

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
