class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.10/mma-darwin-arm64"
      sha256 "7c6d12b15597298807e93b106503cf9fecb0789512ede79f2e43a354686789b1"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.10/mma-darwin-x64"
      sha256 "ad5aff40cb0f0b02a9425072e7c3be415f1d5ed2c69ed663dce303ecad11ec9e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.10/mma-linux-arm64"
      sha256 "4b96787b3b7deb4b4236eb0a3b3f6fad259b1a11fca75f317a938e8fbbe9ef98"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.10/mma-linux-x64"
      sha256 "7fa2b0dd5f0a4fe571be61a3236778305d73636aeaa3f27e6d1a89bf61293185"
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
