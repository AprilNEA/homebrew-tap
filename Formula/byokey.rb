class Byokey < Formula
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"
  version "3.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  deprecate! date: "2026-09-28", because: :repo_archived
  disable! date: "2027-09-28", because: :repo_archived

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "8a96133555123f03eb09938028840ee9ff26a6d4c9dde5d5db5c8025b03035f1"
    end
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4c44c8926ba379867b624137c35ea3cc523b041453473a42c775e9a542d4f5f7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3b354834620789886bdc1749c78881a048f713be72e03e6ac9da1a5c9812d91"
    end
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c1094c27894083663221474408820ac43a78208df02c47839603116be43f13e0"
    end
  end

  def install
    bin.install "byokey"
  end

  service do
    run [opt_bin/"byokey", "serve"]
    keep_alive true
    working_dir var/"byokey"
    log_path var/"log/byokey.log"
    error_log_path var/"log/byokey.log"
  end

  test do
    assert_match "byokey", shell_output("#{bin}/byokey --help")
  end
end
