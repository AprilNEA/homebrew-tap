cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.15"
  sha256 arm:   "430edc511b0a80a93c3157803250bfea20930a3e0f5b4ec907d6d9c3c1f4344c",
         intel: "e23ed488ce6735673be34afe5823ef4d81ed3b9fa297b6a05ad7f5e5168f1cf5"

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
