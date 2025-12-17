class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.11/dawn-macos-arm64.tar.gz"
      sha256 "27791757723ddb0d8a439ea9ceb93216a9d12db8bb070e9517a61bcb34de9f87"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.11/dawn-macos-x64.tar.gz"
      sha256 "f838e292c49491ad3b9337d4bd72d147c7933d59def539e102d5fb366f59574c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.11/dawn-linux-arm64.tar.gz"
      sha256 "fd08b6774a1540a12eb096f49a313bd9f2f60594cdd08797206180de2e405903"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.11/dawn-linux-x64.tar.gz"
      sha256 "1451d617b3fcb4e63a8f693cec16cad64f462044763fdd767050023301ec4906"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
