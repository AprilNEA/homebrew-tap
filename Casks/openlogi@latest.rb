cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.4"
  sha256 arm:   "7f264baf85227310cc408389337f41230b9964034fcd48dfbcfc8a1bac86f64d",
         intel: "45afdd6cdf27981c64cc18465151e293c962286a659c56d5c3cc045a4a57ecf9"

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
