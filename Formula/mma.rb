class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.35"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.35/mma-darwin-arm64"
      sha256 "22f945f694b515b0e4ccd030e5f35435c99d7830ccff8351a00acf3827f47811"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.35/mma-darwin-x64"
      sha256 "3224efc3640d313b474111d75ca32eb04979612f607a1022335e503d5abd7f05"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.35/mma-linux-arm64"
      sha256 "4bfa60f19174da3654c9d020427c4f1bf64dcfba0242e92ac38706bea19d7052"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.35/mma-linux-x64"
      sha256 "243b8d1881c55eb8e3a24e472189454bf92dc0f7e43283451982ca337fa1ecda"
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
