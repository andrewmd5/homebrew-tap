class Dawn < Formula
  desc "Distraction-free writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  url "https://github.com/andrewmd5/dawn/archive/refs/tags/vVERSION.tar.gz"
  sha256 "SHA256"
  license "MIT"

  depends_on "automake" => :build
  depends_on "autoconf" => :build
  depends_on "libtool" => :build

  def install
    system "make"
    bin.install "build/dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn --help")
  end
end
