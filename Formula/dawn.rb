class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.10/dawn-macos-arm64.tar.gz"
      sha256 "0d7853caed729a9c195b679e08c729b6ae9f60ab56a5d697cf881a41deb78609"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.10/dawn-macos-x64.tar.gz"
      sha256 "dfce919a1e11538f9d9fc329bbe742aafff3f98853d077964e53f4d5a28a3e49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.10/dawn-linux-arm64.tar.gz"
      sha256 "3970d2d1cab31a8b4e2007a46ae5adc12317f74169d080a6e60355319627da09"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.10/dawn-linux-x64.tar.gz"
      sha256 "791b92041e0da73dd044a6e779af1777a6a43cdc9a41807f2832acd2c321aa09"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
