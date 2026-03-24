class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.3/mma-darwin-arm64"
      sha256 "8b1b77e3e0ff4f22bf2c382a2b3c922567df5c0d41372d50ff121a0c4fac0910"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.3/mma-darwin-x64"
      sha256 "e037333cb23a287abd6310d5911a0aebfda2b2ff96e8174eefe1e7f558a46d84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.3/mma-linux-arm64"
      sha256 "7f947b695c32964d9b491389edbd4586ed55791caecf9df1bc6f949668954ae0"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.3/mma-linux-x64"
      sha256 "2476f00a735be50d507fe7a8c9c0db6cc0691aef60d4f339c0fcca9a30654bb3"
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
