class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.29/mma-darwin-arm64"
      sha256 "fc23a29c29a89ab040c1a79c5fe76edf916b7437fbb79aabea5b4820312dfff7"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.29/mma-darwin-x64"
      sha256 "93d2dbb632a6ebf4fa03ad71a7befff1602f08e9c4792a34008cd1c74ebcbadf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.29/mma-linux-arm64"
      sha256 "3ff7828e4171f3f875f1d45fcc45a485c38a53beed32c688d05fdd6cd42c1e21"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.29/mma-linux-x64"
      sha256 "30744a3e3e5df33b9644735a0f109cbc7f35a3ad7f0bb257f4f142123f4906ff"
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
