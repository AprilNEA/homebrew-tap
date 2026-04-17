cask "byokey" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.0"
  sha256 arm:   "c9af8a07713e0a0d6f44750e60453b0ce88fc63833d0855fd7a4c2674be63aa8",
         intel: "56f5aaab2569d6da4de957c642f1fb1643239f5566523b686f78cade960c51d7"

  url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/Byokey-v#{version}-#{arch}.dmg"
  name "Byokey"
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Byokey.app"

  zap trash: [
    "~/Library/Application Support/Byokey",
    "~/Library/Preferences/io.byokey.desktop.plist",
    "~/Library/Caches/io.byokey.desktop",
    "~/Library/Logs/Byokey",
    "~/.byokey",
  ]
end
