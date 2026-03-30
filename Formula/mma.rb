class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.13/mma-darwin-arm64"
      sha256 "dac0d2510d87407e3077e0337bd969142009259fbd1fb7f3be065d60ba437719"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.13/mma-darwin-x64"
      sha256 "3e63c7b397c5aa90c7893bbcdc2c4af89ab697434803997ff5edbac9a1e660ea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.13/mma-linux-arm64"
      sha256 "db9123e377267ca87873eb2da5c590937d5dd55649feee38b7f3633407aabc5c"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.13/mma-linux-x64"
      sha256 "f33acf215d12c893aa4f3ab42c575c55da755e4d8d74e6b460d1e37a8fa4d386"
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
