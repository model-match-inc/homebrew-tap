class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.26/mma-darwin-arm64"
      sha256 "ba59b847cedb0a670f12c81d9e6c1ee0919fbc618bc1b7b964f4cc8225a2b024"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.26/mma-darwin-x64"
      sha256 "91196e82fa7175d2070e9a50f2b4e9a0289adc3ede502d43a0546f8898457cb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.26/mma-linux-arm64"
      sha256 "83d8b320c5a48769e812d5b5263d197a3dda2a26d5e52d2df49e4cca8ce79229"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.26/mma-linux-x64"
      sha256 "8b14831c94e43259e216adc08b2b778e12035f4c5ce0eca4191b329c1ed89b6e"
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
