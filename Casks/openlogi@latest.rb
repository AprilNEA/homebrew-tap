cask "openlogi@latest" do
  arch arm: "arm64", intel: "x86_64"

  version "0.8.12"
  sha256 arm:   "0e6253ab051b324aa3951ef12b2372b2e48cb8793d8e69163b0b02ac30ddb5e5",
         intel: "8a3867289dbcc62e5319c9abd57d2a31128b88a5f679d77fc76707f2bedb89dd"

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
