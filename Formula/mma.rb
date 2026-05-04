class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.41"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.41/mma-darwin-arm64"
      sha256 "e8c5ffa6df63aa370ed08da7eb00d6ed011aebdc5701c55c562ede83088b8865"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.41/mma-darwin-x64"
      sha256 "9d7db1365ab8c1fa1869233c98178be2e326b094cc54505e3a3ac76804a65c1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.41/mma-linux-arm64"
      sha256 "215810a9133901daeed2dab74860a2eb473e562a36b1135ba5ea2cba8422d43d"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.41/mma-linux-x64"
      sha256 "9fc5a0a847a37d3ea23c34f804a37f66940e9e7c1838ceac1e63e00d9235fb87"
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
