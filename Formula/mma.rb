class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.18/mma-darwin-arm64"
      sha256 "db7a45a776964b53e24f8e76ee68f2b5247d0791ce1fd3e06d35df843481c88e"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.18/mma-darwin-x64"
      sha256 "f87425e6fdced5351c5a7854a4fd1ba56d7cf239ec84e9fc3dea265da9f0163f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.18/mma-linux-arm64"
      sha256 "841b4a985f403f3652de4a8a7d60ee12d2c77335ccf18b1569fa03195ba6ace8"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.18/mma-linux-x64"
      sha256 "4a6bbb93abb193df8c12d621e29684c8e6935fced2267078f581c68fff955ce6"
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
