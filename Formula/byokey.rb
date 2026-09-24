class Byokey < Formula
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"
  version "2.0.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c8d81547b27fa84706c6d97d35eefe8446fb7d729b5b7c1c633dd8d6ebb57c30"
    end
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "cc8b7daccc9ebf83b45dae59e4df300d7b0c71bf9416e220a9dcb1e9396ae56c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e3c39b5535b48e2b318b628c1460721ba98e769ecbec8a3b34f7cc838df4f78a"
    end
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ea478b6de05d9b616d975da12ce54a8c60155b86fd80da5fca8cc6dd54a61fe"
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
