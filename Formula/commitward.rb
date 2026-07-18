class Commitward < Formula
  desc "Deterministic, fail-open HITL gate for high-stakes agentic commits"
  homepage "https://github.com/Barnett-Studios/commitward"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-aarch64-apple-darwin.tar.gz"
      sha256 "184ab8f441af3066e9afae7a682ede3a99899d1204a425515beeee2fc73ea250"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-x86_64-apple-darwin.tar.gz"
      sha256 "51d3964448f265b83d4eb83cc4729e05ec160bf85600d221b4d74f3a1ed5f539"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0710ceaf6980af62925fc61e7a1e514e367ad39cea21b89575cb12e3595e5b7c"
    else
      url "https://github.com/Barnett-Studios/commitward/releases/download/v0.2.0/commitward-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6ac38dd9b4177a88983216eb581603cb0de1e3250c3ca0178e55c262df68994"
    end
  end

  def install
    bin.install "commitward"
  end

  test do
    system "#{bin}/commitward", "--help"
  end
end
