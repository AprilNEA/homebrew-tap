cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.3"
  sha256 arm:   "de83a7a80e5dea05fcccee25897d0e554b35cdfd6ab8b9c9ddaafb561a8d439c",
         intel: "bf236f0ead2d9e68aaac9f46e804953cfe70f452abbe4d2aca346d3ba027e647"

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
