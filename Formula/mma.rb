class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.27/mma-darwin-arm64"
      sha256 "27758953098061ba137277bd32a4d82dc64e746c34704d7d12f0b013d88695af"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.27/mma-darwin-x64"
      sha256 "d15ae8f6b0fbd57bafdaccdb13505f57cf483c583827e2ad664683ed81db174f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.27/mma-linux-arm64"
      sha256 "04d69bfbe907c7cc5815d31a3bfdeb33b253281236f1215948ed3d37955a0d05"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.27/mma-linux-x64"
      sha256 "5ebef44a676beace8c5889b80b405c458cdf90d3d8fd596763bfdc47dbb9bcb6"
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
