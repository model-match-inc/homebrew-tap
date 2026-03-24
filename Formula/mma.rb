class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.0/mma-darwin-arm64"
      sha256 "283e615f045dc5e6b6a4c2a930aefd0798e6fa9d2dcbfe76011db602cd88f79f"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.0/mma-darwin-x64"
      sha256 "9a50a4ba629e7cf767bb4bb68b556a91b9eef6950489560c4973930251dc63b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.0/mma-linux-arm64"
      sha256 "e660f57d4b5b1958f0c2349c2f0ea7b4b78a91bf57c929455e83dd2d217aa762"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.0/mma-linux-x64"
      sha256 "9dbf0d19997fb49d249a24f2960eb587980c5fc32f3793a55f96b3dd1ec20d8f"
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
