class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.22/mma-darwin-arm64"
      sha256 "59f70fff91948ccfc123cc7000df7cb4dd9dbb163cdafe22265e7ba0f9cb3e0f"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.22/mma-darwin-x64"
      sha256 "c354f6310fa844bb6f0dc6b5d2c4161777b95949c862683e6320a84b32011c62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.22/mma-linux-arm64"
      sha256 "8c9e38b3fc55773faa47179cf2d9037f6cce044416773453c7cccda3443f146a"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.22/mma-linux-x64"
      sha256 "3196ccfb67aec70313fb5c4d2dfc4525bc0d2f84a48a0a44d55966ba1b28e026"
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
