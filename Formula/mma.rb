class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.15"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.15/mma-darwin-arm64"
      sha256 "d1ab70a78ff53c2bbff1cc817368cb2d953d48121d99acca15bcfc72a9956a8e"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.15/mma-darwin-x64"
      sha256 "bf21656b6c72ec9fd79dc13928f5af254780bfce649a739c2831c9553a4918da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.15/mma-linux-arm64"
      sha256 "fedc7cacf1a8b49877b8dcd0f733095a85be2e11c97838f1e1924dc0ed5fb8ee"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.15/mma-linux-x64"
      sha256 "e89408603c249d836a08e5843a4a8b1253981abe7ef9d0e6b6b5e521a4805346"
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
