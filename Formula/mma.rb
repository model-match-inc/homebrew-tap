class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.8.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.4/mma-darwin-arm64"
      sha256 "48587a87043a55c48335712ffd3658ca0e42eb1c8805a203c8675254a4ffba62"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.4/mma-darwin-x64"
      sha256 "16b2da8c1ac7dcc4486e32a6d456b6a16711dfd8b625766cd21352f6b3001b19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.4/mma-linux-arm64"
      sha256 "d5177b23407bc17606b970389f73084720f338ea85a3957185afec32a83ff052"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.4/mma-linux-x64"
      sha256 "1a701c7d6eb8a04933fb55fc6305114db0dc50e25de6616cfb6c7816cc44bb4b"
    end
  end

  def install
    binary = stable.url.split("/").last
    bin.install binary => "mma"
  end

  test do
    assert_match "mma", shell_output("#{bin}/mma --version")
  end
end
