class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.2/dawn-macos-arm64.tar.gz"
      sha256 "0a8fa713d3c4e3e476ac7a7b3922b49e3ad6649cfeccb821dcc7b55035d30756"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.2/dawn-macos-x64.tar.gz"
      sha256 "26e0e11c737d733df2317e4b96bcd7e2469e3b5b819bf1d88a6dc6d100488745"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.2/dawn-linux-arm64.tar.gz"
      sha256 "cd157d0f126706e67e4752c1813d0cc74739d3c900ceb09031e3e2f32953fcb0"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.2/dawn-linux-x64.tar.gz"
      sha256 "4d1e978ed1efeab7ec6bb35fe3515f6a6193526a059c6afc528c798e1698b841"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
