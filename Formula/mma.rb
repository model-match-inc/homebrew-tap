class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.30/mma-darwin-arm64"
      sha256 "696de3bcc904f2c9433e7e007c16dc26ef8421f5d8c2ecef236b1f7c7e9f5f4d"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.30/mma-darwin-x64"
      sha256 "8153178740f677a1f51c908ac9d3992996b6d23bbc74ada8c7e322b718d0e547"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.30/mma-linux-arm64"
      sha256 "639a62bd683b39056910369942da1dd8791f2e8ae6331ffc7b27e8cff0b727b0"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.30/mma-linux-x64"
      sha256 "589c1c33c2b90e54baaf3226d87ccf115aa2b1f7f11fd023eee7c940550356cf"
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
