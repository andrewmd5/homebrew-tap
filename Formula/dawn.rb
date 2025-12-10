class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.1/dawn-macos-arm64.tar.gz"
      sha256 "7f5bb3a0f9bea66235c98b7bf53947aeccc7191aaf1221470837d5194b9c3d85"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.1/dawn-macos-x64.tar.gz"
      sha256 "d15a479b2163e3a2d582cee398f1558e25c3e968a1a24b71714690639dc247fe"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn --help")
  end
end
