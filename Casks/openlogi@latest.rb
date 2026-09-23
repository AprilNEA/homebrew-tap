cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.7"
  sha256 arm:   "44d9cadd7eb50a9c4b27d0e895fb002fc6cbcea01e77fc7ce50ea8706c1505ee",
         intel: "94102ec6a135bb2431a6c67261a6636da4a3faaf096ab02d900ea45236d93b95"

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
