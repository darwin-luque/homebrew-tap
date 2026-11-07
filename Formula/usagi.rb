class Usagi < Formula
  desc "Show the usage limits of your AI agent harnesses"
  homepage "https://github.com/darwin-luque/usagi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.2/usagi-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "2625d8226fae7ebac885b12be878e2efda9af84079e4541c93102796cc2c0571"
    end
    on_intel do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.2/usagi-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "863c9cae87d6f7a55b7a5f52f5666488ba22da9fef1362e6e95ed1fb19d2aba4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.2/usagi-v0.1.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9ef1975f087b72ad68d78649e8a82e9e907e9c20e03e78e722cc027ef6feb86"
    end
    on_intel do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.2/usagi-v0.1.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "283b6bd0f92852e80bb2a7a9832a6d75d0e15b84212600e029db7a055ee2c48e"
    end
  end

  def install
    bin.install "usagi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/usagi --version")
  end
end
