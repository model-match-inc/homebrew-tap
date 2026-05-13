class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.42"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.42/mma-darwin-arm64"
      sha256 "0c0839ba4f8c52fd1e0c4342e6b22245034dace54d4b048820f9c01a752cd062"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.42/mma-darwin-x64"
      sha256 "95d6d0724d7dc89393e9f4c115b46f302d701fc3e38aa2ea5d278502867e4cb4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.42/mma-linux-arm64"
      sha256 "99b052ba6978d11e67886a10ce91a86eb67c2306baaed2f6d73a5fd6d4d85974"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.42/mma-linux-x64"
      sha256 "fec68ec96a3fee3fab0666d30a771399ccd6075d2cbd7a990c2efda1f32b43c8"
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
