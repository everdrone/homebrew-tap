class Genpasswd < Formula
  desc 'Generates iOS style strong password suggested by Safari'
  homepage ''
  url 'https://github.com/everdrone/genpasswd/archive/v0.1.2.tar.gz'
  sha256 'b74cb0b957df9a88eac76dba9908f01156a8125edb7f73d19ffde5465cedae24'

  depends_on 'ruby' if MacOS.version <= :sierra
  depends_on 'genpasswd' => :ruby

  def install
    # system "rake", "mklink", "prefix=#{prefix}"
    bin.install 'bin/genpasswd'
  end
end
