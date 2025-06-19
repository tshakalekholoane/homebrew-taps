class Can < Formula
  desc     "macOS command-line utility that provides an alternative to the rm command"
  homepage "https://tshaka.dev/x/can"
  url      "https://github.com/tshakalekholoane/can/archive/refs/tags/0.1.0.tar.gz"
  sha256   "147f6029e205668cc2d6fe71b002765e51bfa2c6d2b3aad25b483e2d68929cd8"
  license  "ISC"

  head "https://github.com/tshakalekholoane/can.git", branch: "main"

  depends_on :macos

  def install
    system "make", "BUILD=#{version} (Homebrew)" if build.stable?
    system "make" if build.head?
    bin.install "bin/can"
  end

  test do
    system "bin/can", "-V"
  end
end
