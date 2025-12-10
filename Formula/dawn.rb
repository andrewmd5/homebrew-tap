class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  url "https://github.com/andrewmd5/dawn/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "23f2fc9c467fc8a02872853a7f843929bcb2c6bc16e98c2e0a05f11300cf0988"
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
