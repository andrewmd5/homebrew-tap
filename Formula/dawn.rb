class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.2/dawn-macos-arm64.tar.gz"
      sha256 "0930a44c43ee799e75ee00f4111248770f7c2773cc8a3f0a82a6aabb37c2f0f1"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.2/dawn-macos-x64.tar.gz"
      sha256 "c042caec9a568976739e3001b9e0bb0a4f707e89a59d1c7ac0259b254135ce43"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn --help")
  end
end
