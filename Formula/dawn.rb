class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.0.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.7/dawn-macos-arm64.tar.gz"
      sha256 "fc7077d551c3bb87ec4c98f20e40285732cf405cde8ba2271944a3e750d38fda"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.0.7/dawn-macos-x64.tar.gz"
      sha256 "56f244c97f39ce323e97606b8efe5b14e952215725099e21a40ef8d4f2ce89e5"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
