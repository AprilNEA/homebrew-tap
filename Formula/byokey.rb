class Byokey < Formula
  desc "Bring Your Own Keys — AI subscription-to-API proxy gateway"
  homepage "https://github.com/AprilNEA/BYOKEY"
  version "0.10.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9593d95dc52674767baa18fd2ed6c02e38a490bb55c2e925f6838a81de89af42"
    end
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "b876637cd46a36425edbe8e727517bf822130e493302a4796aa12646a25df9ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3146b8746a6ade2804e38ff893835e487c50ec64729fcdecd4a229f26433d834"
    end
    on_arm do
      url "https://github.com/AprilNEA/BYOKEY/releases/download/v#{version}/byokey-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6325289aed02a8a010ba343239e79097cdd7200fb178306f22e2d8afc2c7eb2e"
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
