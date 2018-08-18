class Obfus < Formula
  desc "File compression and encryption tool"
  homepage "https://github.com/everdrone/obfus"
  url "https://github.com/everdrone/obfus/archive/v0.1.4.tar.gz"
  sha256 "083f14d0327d6bbb8b9c0cebb838755999020105b4eaf404f1031d201766836d"

  epends_on "ruby" if MacOS.version <= :sierra

  def install
    system "rake", "mklink", "prefix=#{prefix}"
  end

  # test do
  # end
end
