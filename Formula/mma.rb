class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.4/mma-darwin-arm64"
      sha256 "3c180eaea55adadd5c434972af021aef356cc4399d2567fdf0b6780f17b06a0e"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.4/mma-darwin-x64"
      sha256 "7d805131a9b0b0d76451c08a4367b2c2ceaaffe95036884c608cecfe30ea5228"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.4/mma-linux-arm64"
      sha256 "005e16f198cc2ecbe9504d8bddf2e8c03934e1d5c79462932884a3500cbfaa48"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.4/mma-linux-x64"
      sha256 "acdb2166912b2867896f0274154f625e4e6a4fdffe9b894b805ed9bcce8f24ae"
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
