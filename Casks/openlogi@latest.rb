cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.22"
  sha256 arm:   "024cda5b07cf24d99de9b58e1d5ca1e417f3b4bca19acf59a73495ae40ff28b6",
         intel: "dc59e616b41e633bc9fcee42f259e7bcc40c59282c74a9bad3e60ca865a2dc39"

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
