class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.28/mma-darwin-arm64"
      sha256 "d69604f077b4ca3d1f4822d08229468f216fa4d06279308f722c6c313c06ddd6"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.28/mma-darwin-x64"
      sha256 "6a950b72a59990c81ad81cefdf58ff8b30d44e08a0dc18db9d09a4edcedcf838"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.28/mma-linux-arm64"
      sha256 "b21f0707657695faeb9ccfbafef072375cdc3405438cf1bce33d5d90e57ac568"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.28/mma-linux-x64"
      sha256 "ec7bf8c2a1d6a773ad67e47341dafca9c47457e87953030c66470931d5377556"
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
