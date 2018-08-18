class Obfus < Formula
  desc "File compression and encryption tool"
  homepage "https://github.com/everdrone/obfus"
  url "https://github.com/everdrone/obfus/archive/v0.1.3.tar.gz"
  sha256 "91a54166bd1b9d7350f489e8894720e4f91eff9a4430f144593195d68dcd91ae"

  epends_on "ruby" if MacOS.version <= :sierra

  def install
    system "rake", "install", "prefix=#{prefix}"
  end

  # test do
  # end
end
