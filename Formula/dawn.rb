class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version ".0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v.0.0.8/dawn-macos-arm64.tar.gz"
      sha256 "6ad7e923836c4f9b6db6a6e61f70fcbba7348cf7b34664178637aa95c66c3f72"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v.0.0.8/dawn-macos-x64.tar.gz"
      sha256 "705c2dd8e5fb96226700885813ca17612a0e2daed092f818416da4901d99e384"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
