class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.9/mma-darwin-arm64"
      sha256 "682e9872859ff2a40d5091a749c104b60578861c5c563c06407a3045c423e0ce"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.9/mma-darwin-x64"
      sha256 "c66da0017f249f18b442659a369937b1063ccedcf5d45d1d0dc5294e81ab7ec6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.9/mma-linux-arm64"
      sha256 "6d443af378d89d41630c256ec7410198091d39a583856136d51801ad157eb913"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.9/mma-linux-x64"
      sha256 "200e400a08452f53148c5978b42353f172b191024fcb948b668bda6259bb64bb"
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
