class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.21/mma-darwin-arm64"
      sha256 "2eb96fcc4b9a5f00742c197e9f58335ac4731ffb90a28835860adf8fcdac934e"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.21/mma-darwin-x64"
      sha256 "db24cab26289af2f259335ba5c0645869d7dca2334fd4cff122a7ad3124e7c96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.21/mma-linux-arm64"
      sha256 "3c19e1d508a101821955712fc1f97cada5986e6666c05b5db2013dc4b62af3d7"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.21/mma-linux-x64"
      sha256 "0ac232c46cf1bdc6a29fceb9447b4adab77cf1dddfb3e1e888c6069ca4343ed3"
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
