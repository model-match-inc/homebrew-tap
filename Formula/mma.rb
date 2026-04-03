class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.25/mma-darwin-arm64"
      sha256 "d74b850fa49e2e900c8aba15411b857d3b248a0ffa647fcb18118d522d57d010"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.25/mma-darwin-x64"
      sha256 "6c2c2e62b85bbad54af79e1c4d1753ac9e0dfb9499c15e5f9cf9c73a91fb6db8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.25/mma-linux-arm64"
      sha256 "024d17eff66d7c3befef85dde52b795c361b4d4350f39838c951d70c515e2e20"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.25/mma-linux-x64"
      sha256 "04774a713116f44569d1eaa4f92554d5bf4760bf3501d923b89e3ef36f19eda7"
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
