class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.4/dawn-macos-arm64.tar.gz"
      sha256 "0c34b0efefcbede35750f6af22200d29be9201065e99ec6b833f527c5831a3f5"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.4/dawn-macos-x64.tar.gz"
      sha256 "af10c4322019d90c6f05928a29e3691d1d5ca67683b31a3408226456b457d572"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
