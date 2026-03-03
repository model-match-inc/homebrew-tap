class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.0/mma-darwin-arm64"
      sha256 "e852ab014772ff1fb2c6abb822b6733386ce09f74933aa10d4f5711718781e74"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.0/mma-darwin-x64"
      sha256 "648372aee2d119ed39b3470844fe930b2965e6bd78985ae815428a4f7287b351"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.0/mma-linux-arm64"
      sha256 "77692bd12c6aee4b7817957dddaab0570a0bca8e326a4ff33bc9cf1ab165f47a"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.0/mma-linux-x64"
      sha256 "49e199fd5bd2c0a87e17310a6cc2a686aca37d58441a9cc60abbba5a6b6d697a"
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
