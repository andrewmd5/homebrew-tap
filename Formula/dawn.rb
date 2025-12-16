class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.9/dawn-macos-arm64.tar.gz"
      sha256 "bef140a1a96994029153dca8c00b1750b9a5a764fb9db2dc68d7bb40e8a29e8a"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.9/dawn-macos-x64.tar.gz"
      sha256 "bfbec9980a6e6a42812713883ae605cb1d2808ffc2042eb445aa9e0a7282ed21"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
