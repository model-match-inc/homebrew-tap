class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.16/mma-darwin-arm64"
      sha256 "e9139424e9d9e44465fb21d6b6beb6850bae4be9ce0ec489aa54c84fc58c3e5a"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.16/mma-darwin-x64"
      sha256 "a6e70d9978c15c744604321dd2d53dd3baca1f24cd3f1f4da0a51d8514ae5f96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.16/mma-linux-arm64"
      sha256 "5176b8f0d8114b2ecdeb7558e54a57d735079c112356243c24fa848265ace1ca"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.16/mma-linux-x64"
      sha256 "b575ca25616cf4e0c727ecae58035d0147ed5034bd56e2fee201f231dc56eb5f"
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
