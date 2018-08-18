class Obfus < Formula
  desc "File compression and encryption tool"
  homepage "https://github.com/everdrone/obfus"
  url "https://github.com/everdrone/obfus/archive/v0.1.2.tar.gz"
  sha256 "6d12d80a619c50945f87a439f24263b1999cbd419af5baa2577608d8dc9c2857"

  def install
    system "rake", "install", "prefix=#{prefix}"
  end

  # test do
  # end
end
