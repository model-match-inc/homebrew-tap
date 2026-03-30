class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.12/mma-darwin-arm64"
      sha256 "0f6e09f896e1e04f706bf53e337abeecc1ee99fe7706583d6faf79e487378c8c"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.12/mma-darwin-x64"
      sha256 "39ef22f702b74e1e57dda26575c5627186d3d7170e09fb96b8dbad92d860e9cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.12/mma-linux-arm64"
      sha256 "2761e9f5765781f0b1d7a30e84b359712fa9e82ba5179695b04ef38c574aecfa"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.12/mma-linux-x64"
      sha256 "187d91328a76db6dba9aa64ec854a00d9f6be845b171384031929a01bcb1e327"
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
