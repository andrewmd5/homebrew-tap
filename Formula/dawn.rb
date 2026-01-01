class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.3/dawn-macos-arm64.tar.gz"
      sha256 "53b9118e1d521781157d003e6ed51828c2263fe391e9c1be17cea80c5ab18c09"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.3/dawn-macos-x64.tar.gz"
      sha256 "1b6d7c9a28c1d1e452e330781ff06f404407684cba0c8d2ae9cf23844ff8204d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.3/dawn-linux-arm64.tar.gz"
      sha256 "81b78c08c9280d0ebcb7af392ff72b01b9d3f844cfb0e2d524a2eaf2b0181f54"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.3/dawn-linux-x64.tar.gz"
      sha256 "a9a59e3cfe24bc935be11a9638123bb100bd7c4f3901db23b379a83778430d61"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
