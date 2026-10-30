class Usagi < Formula
  desc "Show the usage limits of your AI agent harnesses"
  homepage "https://github.com/darwin-luque/usagi"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.0/usagi-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "9734a0d0b590856f24e5363f7e0f95b3cdfea2a3681f628ca68b5300569f8332"
    end
    on_intel do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.0/usagi-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "e35a06f7e0fdef3cf89b962d05a70ccb7b330867692168d1a3a43d0e4210bcc5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.0/usagi-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "507d8db6c97c982a0ea15cb257dbce6cc2c50a985dd0948086725a1649c701f0"
    end
    on_intel do
      url "https://github.com/darwin-luque/usagi/releases/download/v0.1.0/usagi-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9efefa59c820242474d465ed20cd5e39907739465319676ef1e02119f3d5443"
    end
  end

  def install
    bin.install "usagi"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/usagi --version")
  end
end
