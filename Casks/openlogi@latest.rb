cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.25"
  sha256 arm:   "cf18e1e9ae338dec89476a0fc647898dbff91a346c489d9a4e459b7accf9e67c",
         intel: "a945f73c8fcfba16cbb07933f925b14920a37576dcc10f073c2105d23f00e6e5"

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
