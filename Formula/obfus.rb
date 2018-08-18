class Obfus < Formula
  desc "File compression and encryption tool"
  homepage ""
  url "https://github.com/everdrone/obfus/archive/v0.1.1.tar.gz"
  sha256 "33dfe9736edcb3229e07af7aaf8328445324c28702dcf07de98aef5c1c5bd301"

  def install
    system "rake", "install", "prefix=#{prefix}"
  end

  # test do
  # end
end
