cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.14"
  sha256 arm:   "786ef37aa3c27be4bec36d7464cef5df1acd4e33df804f1cec33530fd7bd00e6",
         intel: "f9fb4ca77c122283ff61b8cb64da0cf45d349aead53f5c1b2f9ea9eb13506972"

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
