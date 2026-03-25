class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.7/mma-darwin-arm64"
      sha256 "98a788dda0c40b1d42ff6e238b01b8367ec422963d0226ad21a75e273a818724"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.7/mma-darwin-x64"
      sha256 "8a30f65bc06e64507f1701e50edec393b848e9218e1ff64ed8a2a82c484c4aef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.7/mma-linux-arm64"
      sha256 "11a73db786d0686f4fd79d7226234e33403140e02e2bba900ccdc85630f447b5"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.7/mma-linux-x64"
      sha256 "6204228856b659a1900b24a14c7f94fc54c92c27945efa89d17bd7e08f516b06"
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
