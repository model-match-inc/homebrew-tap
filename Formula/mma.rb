class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.2/mma-darwin-arm64"
      sha256 "90c3b0466c785f10af3932b8f2344bd9a3cbb0d9a4b8fe3e40bde0256db7fdde"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.2/mma-darwin-x64"
      sha256 "2e9ba9ca113f6c802943b0d4ceb754604302e84c2adb49bf6d39b05a054319f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.2/mma-linux-arm64"
      sha256 "d49312d4082ea78cf2f07aadec258e9b7328c5645d282f47017eddfe1a8b8da6"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.2/mma-linux-x64"
      sha256 "1b38362bb5e697b1368326cd85139dc939ffac0fa25d5f0b70179d2a335e41a8"
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
