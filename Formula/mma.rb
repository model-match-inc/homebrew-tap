class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.17/mma-darwin-arm64"
      sha256 "bf74883a1f5e00690c04777393b3fac38f75db6504f605637e111a4b15388af7"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.17/mma-darwin-x64"
      sha256 "ff5e01b44de2e11d5d50fdf0202fcbbd42c16d21a3750c7cb3e4e04db4cbbec8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.17/mma-linux-arm64"
      sha256 "b38796f93d8a86948827c07d186bfc755c831f2bee5e72bdb5b1460343da92d3"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.17/mma-linux-x64"
      sha256 "3df1b04188c45d00526bf960210a887bdcbccb91710a895ba06e4b6b8d855067"
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
