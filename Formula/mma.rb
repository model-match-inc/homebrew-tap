class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.14/mma-darwin-arm64"
      sha256 "ad1ebf1f2655d33e1c751b47d8ce07c01db6393ed7379f2219ca37f03f3499e1"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.14/mma-darwin-x64"
      sha256 "6052300bab1ab6724d1780228a93b1d3016020c5eb4e3a984a13b9e71776ba79"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.14/mma-linux-arm64"
      sha256 "03a53ab2e06c9fed6e27c09caa2f6b05d8a174fb54b6d3c9a732890ec809dce4"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.14/mma-linux-x64"
      sha256 "d19383b22cc8b3a354c105aedbd87585307deee1f8d7e8b09ae2fe0f6ec65bae"
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
