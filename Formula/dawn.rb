class Dawn < Formula
  desc "Distraction-free writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  url "https://github.com/andrewmd5/dawn/archive/refs/tags/vVERSION.tar.gz"
  sha256 "SHA256"
  license "MIT"

  depends_on "cmake" => :build

  def install
    system "cmake", "-B", "build", "-DCMAKE_BUILD_TYPE=Release", *std_cmake_args
    system "cmake", "--build", "build"
    bin.install "build/dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn --help")
  end
end
