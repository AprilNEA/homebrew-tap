cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.1"
  sha256 arm:   "e2efe940a5794683fe20bf2edc021a8fb009235acc918c122d69d4f83d7a67d4",
         intel: "ce63e26e88bf6a4746790b77f09be3ffd482d720f6df83ef23654ccbf93ca353"

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
