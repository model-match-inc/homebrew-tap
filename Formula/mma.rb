class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.39"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.39/mma-darwin-arm64"
      sha256 "a4d1b15d18b05398787698f978b1598cec401f56d6fd7b641d844f1cf60d314d"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.39/mma-darwin-x64"
      sha256 "b81479a9fc45adf8f55eaf9d64e986f71d5d2a074c587e23a4ec24c96521200d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.39/mma-linux-arm64"
      sha256 "87065437685df7253c7b4130d5b55f989c87977223004040b903bfc953845256"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.39/mma-linux-x64"
      sha256 "7de15be09bc23de2c1ccbc7a2cae844888160dab71a7d3c2c62f254e32bdb50e"
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
