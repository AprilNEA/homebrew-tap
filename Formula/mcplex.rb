class Mcplex < Formula
  desc "A local MCP multiplexer"
  homepage "https://github.com/AprilNEA/MCPlex"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-aarch64-apple-darwin.tar.xz"
      sha256 "ddf5e6eb74f4bf2338dc64a305c048cb1bc57d6a249e8b8dfe37b6e0ec1979d9"
    end
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-apple-darwin.tar.xz"
      sha256 "c77e819acea0df8004fc9fedf26f205807c5635be53834664df2e1abfaa06f47"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/AprilNEA/MCPlex/releases/download/v#{version}/mcplex-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "cdd213f39d9b4f41eb0ef7c4b84a7aeb456265b321943d8dc5d4734034c4145f"
    end
  end

  def install
    bin.install "mcplex"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcplex --version")
  end
end
