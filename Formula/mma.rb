class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.1/mma-darwin-arm64"
      sha256 "c855e1f56d0af7d4c6ec15d26d8d74ff8b68d514fa0f8c33ef508d748d25e711"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.1/mma-darwin-x64"
      sha256 "fed95e7cf2d75df6b87529a73c38ac204ac4f1ce0059f3aa2f51096586335440"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.1/mma-linux-arm64"
      sha256 "6b385d24998502cc7cb31c3dbd2fee68dc62c414e3a083a10c91b107ee949107"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.1/mma-linux-x64"
      sha256 "c59db6daee0f8852a2663b58f7f097b94077b3a0340bb8861d669bfd0df8e465"
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
