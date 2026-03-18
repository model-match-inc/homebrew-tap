class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.8.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.5/mma-darwin-arm64"
      sha256 "c6542f2e3083ad367d20950d2341504585365d73e4560ea27624347d25ab46aa"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.5/mma-darwin-x64"
      sha256 "3fe8b1ed879ffa40d8e604248ef0998e01ae983efd73a5e8a81d16f6b9bdfa12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.5/mma-linux-arm64"
      sha256 "700dd727f82b817c386939c89190677cdf7248777206d1f2010dd9d3f89a04c8"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.8.5/mma-linux-x64"
      sha256 "0df174ea6194406196c580a07028bc67d9d7397a27c7c74b143db43a48297b79"
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
