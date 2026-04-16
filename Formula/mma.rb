class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.37/mma-darwin-arm64"
      sha256 "bdbc3c21827be0156817f5fbcfa40da5a6233a5b679296762487da630b858b32"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.37/mma-darwin-x64"
      sha256 "ab9bc4e918c487f26f368f7d67157c9d2a811d95ca93733d9a1a8e76ed54a8d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.37/mma-linux-arm64"
      sha256 "f661281108b5009bc5fc4b70263bd21d578c92d332699934f86041855af63424"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.37/mma-linux-x64"
      sha256 "6591f9a6349fa77f22159dcb2645899eb705311e230a2d10fb0f1857618e3414"
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
