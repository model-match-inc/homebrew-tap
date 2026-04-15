class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.36/mma-darwin-arm64"
      sha256 "f94d9853ac16057c9d67827f4e38321940ef845ebdb3f56c4f64b5d7842cb409"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.36/mma-darwin-x64"
      sha256 "e0f92d9635936c8bf3a69bb33440cee343135d02ecfe64b252f521df72d84a15"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.36/mma-linux-arm64"
      sha256 "439c089c03b66bc2420aabd49068db563d87f3f10f583055e3b3db9bc2db9bf0"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.36/mma-linux-x64"
      sha256 "1cf18bfc2e81fbe3a7b5151e78e9a472f63a2113f911f0a6f95eca6a98984545"
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
