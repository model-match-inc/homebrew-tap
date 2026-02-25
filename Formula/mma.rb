class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.1/mma-darwin-arm64"
      sha256 "4bc813651842e8d4eb877c097c88d4afd5ebcca69141f1c421926f0e4b05b5d0"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.1/mma-darwin-x64"
      sha256 "a12554314867af8cfed230606c01126e01665ae0e2fcd60085e583fc66e97a55"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.1/mma-linux-arm64"
      sha256 "ce4371df8a7f9c9177677b050a82527dc33be59b0419c74e778a2f58f6a70770"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.1/mma-linux-x64"
      sha256 "0c2adc090b871d7a2591d9f01f3a5c1f02e2de1a5c6558602f27e999bfe1b7cb"
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
