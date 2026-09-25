cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.8"
  sha256 arm:   "be8a89bf36712d0a20db3c4df2b20ecfebbc1a44d9242fcc4d42ebaa4fdb9495",
         intel: "28a1bea803c55720818deddb1d151a058e9ca36fa01b603e532cdacacbf7b991"

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
