class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.20"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.20/mma-darwin-arm64"
      sha256 "d0cd93a0c8e30e318120958584044eb03a86652a2e7b6260a566ec508f33cd15"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.20/mma-darwin-x64"
      sha256 "b59339a54984c2da064ccace7148f517f74eecfbb3e7898a6f9047b9bf97a204"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.20/mma-linux-arm64"
      sha256 "271d7ecc7caa8cec108a596fdfc7d1772d741d15e438e863c4289162d1c85d8d"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.20/mma-linux-x64"
      sha256 "da93af739d1323e98e95c711ca16ab94341f15cf1bb700a4583795357b7874ab"
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
