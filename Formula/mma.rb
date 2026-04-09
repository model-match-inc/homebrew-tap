class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.32/mma-darwin-arm64"
      sha256 "968591d6f1233b02a8aa0870a48ca0b646da29dec5be2f6c6e11e32edf36c9f2"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.32/mma-darwin-x64"
      sha256 "fa384705323d348de21866fb2330ff561c83fb7064227831b47e56d1b0dab8f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.32/mma-linux-arm64"
      sha256 "49b690709faf71e568400ca3dfb6181bcf3cabae1e1f9854101af0b7f619110b"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.32/mma-linux-x64"
      sha256 "b3283f04f497b8ceaee6fa53a62fc627fb7a707ffeef486f80347c86a22010b7"
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
