class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.8/mma-darwin-arm64"
      sha256 "500c8a4c467db907f10eeee5e547a4a0c9368c4d6d7b2baaa20b56855ffb1a47"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.8/mma-darwin-x64"
      sha256 "9d870c5bdbc19501cbfab4404a408b6bf29a3b8cfc47978a65567528fefd29ff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.8/mma-linux-arm64"
      sha256 "29b18559ef85185e4720435015fb6d981b90fbf2720dffc30652e0f2b63af172"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.8/mma-linux-x64"
      sha256 "018185f1bebb1ddad29a23fee2897e3746f91a2bc0f2cbf89e9992dc416e38d5"
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
