cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.11"
  sha256 arm:   "795d8087827fec0fe71c5ceb1abadbcb04890a7673271c88071a15c012ec882a",
         intel: "7cbb2874b2fb0d8240427b438e187d19234d91d17768cc8a9e90b1b03522c81e"

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
