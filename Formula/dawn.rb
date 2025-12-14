class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.5/dawn-macos-arm64.tar.gz"
      sha256 "687329cd701d91b8ee161bc558604e27ad5926663686bcf8b3cac00860f15210"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.5/dawn-macos-x64.tar.gz"
      sha256 "477899fcd870cb1aab5ab64b4da66bd5e3bd5dd63f93015efb37f6a504de8741"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
