class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.31/mma-darwin-arm64"
      sha256 "7c5a5caea7ecf41baabde41df4aec31cbfdc923dfd0e5eb178d09b08108bb172"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.31/mma-darwin-x64"
      sha256 "2160254ccde3479661537a85625cf47ab1732990d6f23492f404c978c71e5f46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.31/mma-linux-arm64"
      sha256 "d600ff31e2e7219e9d0201934e0475ea7590be16704ac408180ee0a3dd7438be"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.31/mma-linux-x64"
      sha256 "c79f0d8abbe9403b4618699ba8d557ef741c5d614433c0a5ea324ce488c394ee"
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
