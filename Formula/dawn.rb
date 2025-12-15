class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.6/dawn-macos-arm64.tar.gz"
      sha256 "822b9ec78775f0ebb5b6ed213ada4d6a9960fddbd724071e9ff1423b5bfd7873"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.6/dawn-macos-x64.tar.gz"
      sha256 "8543988bfb3f45b25171e843d418e7bcb54e5b5ce67c3e2433fd63a98c15478f"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
