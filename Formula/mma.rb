class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.11/mma-darwin-arm64"
      sha256 "3f43a81f2b0afa9d93ebea8da2d0fcad11dcaceae67decdd75a7b4e073dc03a0"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.11/mma-darwin-x64"
      sha256 "bd680a6a93e74feff0d2cf388fc9e5d7b8d1488e3eebf6bf9fffc35ef145bc85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.11/mma-linux-arm64"
      sha256 "c3a2afcfc4d22904803a2cd827225220ba7ec2a04712ef213358a20003684eb4"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.11/mma-linux-x64"
      sha256 "94c59f3acfea944b19e53b0de15365b924f5604f12416cd051082c3bc3aa14ce"
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
