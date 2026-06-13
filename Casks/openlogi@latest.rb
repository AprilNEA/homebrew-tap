cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.12"
  sha256 arm:   "1f15eb39a61f0e88b6c8551a726b0576bc773b2f67136b055dbf9f274c2811c5",
         intel: "44b20a1a3c2cd535c8dacef16430d347fbd28cc6cdaec32e2d4685785fb2ccb7"

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
