class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.33/mma-darwin-arm64"
      sha256 "73e24fc9f885f7e54f72c2220b37f2ce8165ad2d0617e3252ab6c56ab38db707"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.33/mma-darwin-x64"
      sha256 "40445c13b699918b5c69faa7a127b4ed788b9856ebc276b9a2192a127ad711df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.33/mma-linux-arm64"
      sha256 "325cfbd0b1e6f40859a87e1ed0a26f174c97be0e163723fa8f52f940e355fc12"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.33/mma-linux-x64"
      sha256 "75ced9da4a356a1bf621e57d8f1b0504177e11230a9f6d4167fb3347d45eb453"
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
