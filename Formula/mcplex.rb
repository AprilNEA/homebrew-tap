class Mcplex < Formula
  desc "A local MCP multiplexer"
  homepage "https://github.com/AprilNEA/MCPlex"
  version "0.5.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-aarch64-apple-darwin.tar.xz"
      sha256 "7edfd1ec01513a6299d53d4293046135f84159599584bb28a32f01322da97617"
    end
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-apple-darwin.tar.xz"
      sha256 "11c4128d59093f26eaf4a043649d849ff10a4ef027d1e3019f114600feda1ae4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "a026f61093cc77ec98c348e84f0fba378f835f63ecd8eacea38a36b79ad307f2"
    end
  end

  def install
    bin.install "mcplex", "mcplex-daemon"
  end

  service do
    run [opt_bin/"mcplex-daemon", "--foreground"]
    keep_alive true
    log_path var/"log/mcplex.log"
    error_log_path var/"log/mcplex.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcplex --version")
    assert_match version.to_s, shell_output("#{bin}/mcplex-daemon --version")
  end
end
