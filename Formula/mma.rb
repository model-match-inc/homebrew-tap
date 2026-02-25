class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.3/mma-darwin-arm64"
      sha256 "089c097030733f7ab210c32c8ba5f2a6f6d7cfcb11c516726a0c564efa184237"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.3/mma-darwin-x64"
      sha256 "4a95cd72cd2ce5e6593efdebf6c9164ff4ba5de4d44c7f4fd66e205f58d22b71"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.3/mma-linux-arm64"
      sha256 "5fd5e46613c0ad9bd9661f6fd13ebb9a5bed85fa012dbc085dfcae41b2364fdc"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.4.3/mma-linux-x64"
      sha256 "cae623c0b203dc0168ba117d9900427ad3d5d6be2a75d965d8983a09ddce75c2"
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
