class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.1/mma-darwin-arm64"
      sha256 "b072136a48a2757b066a03232d7b30c840b1c149f68aa7b8cb173e9d0cf03eb9"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.1/mma-darwin-x64"
      sha256 "09cb35aa8dab9355fb09d08dfad6e14ae782d5f84813cf8244f4c1b7a7ddb859"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.1/mma-linux-arm64"
      sha256 "3de174a0ca4473f393ed7945b9b14232475b5c80a8ae22b7fd1713a9e9ce0125"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.1/mma-linux-x64"
      sha256 "9ea4f3a98352e6ebf87d74b138f31a0c4a11813fc8683e1dfec6c73711d9706c"
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
