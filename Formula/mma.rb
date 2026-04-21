class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.38"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.38/mma-darwin-arm64"
      sha256 "b2793888d20d7e637ece29d3c6f9afbbfd60f52b06f6de5795b488acad3d663e"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.38/mma-darwin-x64"
      sha256 "31e0357b3ca04da8a4c1e9c8a1be1c1b679a34e2e986a8b84f04e18982d75d0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.38/mma-linux-arm64"
      sha256 "489d4635a24898565f7518c29238750444deca43bec7605ef3abdfec36aaecdd"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.38/mma-linux-x64"
      sha256 "b19ad1ebb394f83578fbca100d6f56afa7ce93eaf4b2a9efeed14d20e832403a"
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
