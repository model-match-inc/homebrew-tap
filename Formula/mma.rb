class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.8.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.6/mma-darwin-arm64"
      sha256 "36bc340bab62a13ad88e3dfac69066b1c920cf87266eb765f737e700e3a401aa"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.6/mma-darwin-x64"
      sha256 "8f5cf0e11f459c9c317d4bdf436434876b79484f948999f91cb455c8c9bdc511"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.6/mma-linux-arm64"
      sha256 "d11b633c9305a87e1f7f8bddf35207b03df1a19537f9c388f78e67ab437c11b2"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.6/mma-linux-x64"
      sha256 "3f939038f87c9dd3be3417bd4c9be25cbcd6dabc0c32fa361923a2e122527009"
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
