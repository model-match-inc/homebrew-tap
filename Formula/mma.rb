class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.2/mma-darwin-arm64"
      sha256 "3953f61143cb71e6ebccc269fbd02debc4a5c9ee63669e38d0020906be93f039"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.2/mma-darwin-x64"
      sha256 "b872e9552c0a15c5390ff2dbf9e6fbd4e718c7ad910a54ffbb0d941515c66755"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.2/mma-linux-arm64"
      sha256 "0ab131d08ad2ba5124765e767c3d590b2fd3eb34ad0b59c7fb92523ab2f056e6"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.2/mma-linux-x64"
      sha256 "369aea326c65640490f63acd1b4f35dc91e37d10066c326e2d496041b173560f"
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
