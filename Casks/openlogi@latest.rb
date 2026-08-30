cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.3"
  sha256 arm:   "f37856be06324145c1cd5b65b16cc59b36d9823dddd8ea2834ed5cb42b8894a8",
         intel: "30183db4df029f120094bf1bc211393b29d93d57ffae6bc3e342add9327a516d"

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
