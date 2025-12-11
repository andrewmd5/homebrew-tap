class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.3/dawn-macos-arm64.tar.gz"
      sha256 "3590bcb90a75c32ba8b10d692d26838caedbc267a57db23931694abc9598c873"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.3/dawn-macos-x64.tar.gz"
      sha256 "45d4014319f9d23f1f40e77f9d472cf069246e44c1db56836e4612846d202262"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
