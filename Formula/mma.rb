class Mma < Formula
  desc "Model Match Auth CLI"
  homepage "https://github.com/model-match-inc/admin"
  version "3.9.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.19/mma-darwin-arm64"
      sha256 "775a024c4a96de40671748144b31326281064365a0bfd7adce8ea89934d571a8"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.19/mma-darwin-x64"
      sha256 "54976e85bba301c166a57d204820401ea881414e1d9a1e92edd62b24c3056174"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.19/mma-linux-arm64"
      sha256 "3b9ec39d3f2074a95d4e7b50ab3e112912735b3a4b477e1634466d406576e6f8"
    else
      url "https://github.com/model-match-inc/homebrew-tap/releases/download/v3.9.19/mma-linux-x64"
      sha256 "4fb02a5118082887b51c5bfb8a77bd6f518c96c4baf1338d342f0ca929399ecf"
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
