class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.1/dawn-macos-arm64.tar.gz"
      sha256 "a9fcc2e0346e864299186e34827645a992621807361827d6c9f654a4216bbd72"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.1/dawn-macos-x64.tar.gz"
      sha256 "897141c64ebfb0e52b56cc4b2838a7ee7a6f9e7336a9733395b6afce0b7c02e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.1/dawn-linux-arm64.tar.gz"
      sha256 "5a15be5c9c869cd08e6c185595344dbc9f64e003539005e4f450327628018d75"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.1/dawn-linux-x64.tar.gz"
      sha256 "855857699bda6985ff6a7450eec79eb144b7a2835d0162b2758a4fb1d41e3067"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
