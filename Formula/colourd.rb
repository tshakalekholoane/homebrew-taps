class Colourd < Formula
  desc "Automatic theme switching for terminal applications on macOS"
  homepage "https://tshaka.dev/x/colourd"
  url "https://github.com/tshakalekholoane/colourd/archive/refs/tags/0.1.0.tar.gz"
  sha256 "d3ceca9c5ec98b0baa8d2d8bc6c39a04429e9639781bbce507f55d884ff9fa94"
  license "ISC"

  def install
    system "swift", "build", "--disable-sandbox", "--configuration", "release"
    bin.install ".build/release/colourd"
  end
end
