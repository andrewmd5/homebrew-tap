class Dawn < Formula
  desc "Distraction-free terminal writing environment with live markdown rendering"
  homepage "https://github.com/andrewmd5/dawn"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.0/dawn-macos-arm64.tar.gz"
      sha256 "3f48c33a2a001be66584f8c5fdf63df194406d32bc109ef475bc11b26aa78f42"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.0/dawn-macos-x64.tar.gz"
      sha256 "1b02fdf576a6fe9af11043081af9bf9e9d6430157969aa7d0d4b0c878c7cae85"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.0/dawn-linux-arm64.tar.gz"
      sha256 "1e82107bc3576f45af18cc746cea7359ac46fd97d05cb20c576a53592fe40c17"
    end
    on_intel do
      url "https://github.com/andrewmd5/dawn/releases/download/v0.1.0/dawn-linux-x64.tar.gz"
      sha256 "d3638de711ff9fd92ea21f7b46a25d1cc701cf55611f74cd23540acc1de8a50f"
    end
  end

  def install
    bin.install "dawn"
  end

  test do
    assert_match "dawn", shell_output("#{bin}/dawn -h")
  end
end
