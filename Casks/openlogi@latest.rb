cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.7.7"
  sha256 arm:   "f99b671034acac6a8d4784d39cd66871b0200719db57eb33248e2ffe665cee59",
         intel: "4c4f8bfdb0dded977d8c367e924aafe3bb06d381d045fdfd1af9f37974388ff6"

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
