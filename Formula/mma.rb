class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.7.0/mma-darwin-arm64"
      sha256 "b2f4137da4c70bec227c37f7412d1fedea04bcb13526af09667e8017444f76d4"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.7.0/mma-darwin-x64"
      sha256 "05b49837560c8d0c482abea1971a5cb980bc0b00921f93c2a3a22836e7343697"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.7.0/mma-linux-arm64"
      sha256 "58630e084b6e133f794cfe01b8f40735648da57e5fd2462065a3feacb23109b6"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.7.0/mma-linux-x64"
      sha256 "e1bcbec97c375264cd7f0d5093e7dde30d06e342a5cefd2822e669136b2d3601"
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
