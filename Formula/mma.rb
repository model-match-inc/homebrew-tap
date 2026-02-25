class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.0/mma-darwin-arm64"
      sha256 "daf576a705ee47a9ad5d426b4089331cf2c4e16213751afc487739667c452352"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.0/mma-darwin-x64"
      sha256 "02d769b0097be16faf072562e64cd6fda8ab6931407f8a5cbb765fbf23d0d0c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.0/mma-linux-arm64"
      sha256 "51262dd2e431b0104d39ad6283d9b70cdefaf50a41debce05db9e779c58cb663"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.6.0/mma-linux-x64"
      sha256 "0df87966f751ebd550afef6ec760f37ac9ec734aabbf6497afffbfb38d1ece8d"
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
