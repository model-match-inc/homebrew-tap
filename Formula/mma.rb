class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.6/mma-darwin-arm64"
      sha256 "66800e2f9503169c790dd0b36b8b7397230b4da3771d67a068da281bb174f41e"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.6/mma-darwin-x64"
      sha256 "cc7d1fa3e2ef3a9ecd18afc3059d44097f830b59b8c6954b113ddc4496a80a2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.6/mma-linux-arm64"
      sha256 "ee6b6750455a8b4dfb4d0d20bd2a9549e69b58d14b69f49a19d0d79dd8f059e4"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.6/mma-linux-x64"
      sha256 "df9d90d02d9af5aa1d9c62d71b407383536bf92923b552f5497ba47f2aff9093"
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
