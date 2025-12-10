class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.2/dawn-macos-arm64.tar.gz"
      sha256 "125d20efd8d884540a3f36149e66ec5b06a1ab6413ea8bfabbec1aa911bfc1e7"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.2/dawn-macos-x64.tar.gz"
      sha256 "f3ce71e0e22d7982a081724ed21e8853952654406f651da9cd07a2990daf1a24"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn --help")
  end
end
