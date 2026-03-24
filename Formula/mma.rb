class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.5/mma-darwin-arm64"
      sha256 "1b3fad853d2e0602ef9e5637d3f8e986dffdbf7b701c3bfa699d8441977f290f"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.5/mma-darwin-x64"
      sha256 "2457e59265d7621e10c426f3c24a5791cdb5d72ad21d3e9eebabe3cad7c6aaee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.5/mma-linux-arm64"
      sha256 "54c17e88a5111414e805ffb84c523fd06036b2ae8811c9bad58c1fc8af9bf145"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.5/mma-linux-x64"
      sha256 "8ee779f8e6e2ae73a8cf9f7ad48b81c57e7a7d70a4bb69e2dd3f92bff0d24792"
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
