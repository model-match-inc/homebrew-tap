class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.43"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.43/mma-darwin-arm64"
      sha256 "eeb6bd0801bfd4d6cd397cab79ddc4c788be3a707bbcdca9599828436292f0f8"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.43/mma-darwin-x64"
      sha256 "685cf0f712efb44f808c23167ad3b684db9e804753aa46644cf8a03b1c7cc0a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.43/mma-linux-arm64"
      sha256 "cc281874872797ad761167b28e79a73cd065a3a0f736dc384a9582f5bcb22ba8"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.43/mma-linux-x64"
      sha256 "943e9d4ab077657b888b04bb110d9bc97ac41a9b6b1376cb4a7a62c14c765a5d"
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
