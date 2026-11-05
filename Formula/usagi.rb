class Usagi < Formula
  desc "Show the usage limits of your AI agent harnesses"
  homepage "https://github.com/darwin-luque/usagi"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.1/usagi-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "cb29d9901d78d5f3186a3b323fc9d9eac85ea1e52cb590b1ce90064c371a10e5"
    end
    on_intel do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.1/usagi-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "55e3e153d3944b849c6f40d42ed0f067dc01f0818a3e88d4af3126259e51780f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.1/usagi-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "691806573099f16ad05d55009232782fa6b8e419414693bba85d46d39bc9783d"
    end
    on_intel do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.1/usagi-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0e780726eb2a3a76d0024acbcb8d986f96f28d7d7f603cd91491be4da29b801a"
    end
  end

  def install
    bin.install "usagi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/usagi --version")
  end
end
