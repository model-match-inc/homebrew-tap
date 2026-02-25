class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.5.0/mma-darwin-arm64"
      sha256 "90d170d2a8b363a59c066542f3e67dfe8a7abd91b4eeacba4763692c17ac327e"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.5.0/mma-darwin-x64"
      sha256 "a9f97694c75c503cce7d7e23e5c5fd1e8594913042277878e0984dd6b111ba17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.5.0/mma-linux-arm64"
      sha256 "b06a41bed2df927e59163c8180d1c21b4f6222be164dfc8060add6a1c14315d3"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.5.0/mma-linux-x64"
      sha256 "4d0bf06d1445532361441ac78531840e5ed86a1bae1918fab8387d7516094c6c"
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
