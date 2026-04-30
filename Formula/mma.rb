class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.40"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.40/mma-darwin-arm64"
      sha256 "fc48708fa21e621c6d6cd7de0b14fb5166a463b28b2db3a13a9a9677f457a0eb"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.40/mma-darwin-x64"
      sha256 "8c63f1baa20c8f4600aa289f9f7c0885045d99dad4090890c11463aa6efe5d6c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.40/mma-linux-arm64"
      sha256 "cba64d62b45245a25e940ec9300951fefbd61c288c3228b03ea7a6b392129d5f"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.40/mma-linux-x64"
      sha256 "d9dd8c7edd6e019abc4086361ba716dabb39be5cd9efc656bd485b9550e79a27"
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
