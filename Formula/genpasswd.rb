class Genpasswd < Formula
  desc 'Generates iOS style strong password suggested by Safari'
  homepage ''
  url 'https://github.com/everdrone/genpasswd-ruby/archive/v0.1.4.tar.gz'
  sha256 'c12a39578b0f4433bf8445c1706fd5cb1ce58b05ba453f4a7f5cbe41f3a29ac1'

  depends_on "ruby" if MacOS.version <= :sierra

  def install
    system "rake", "mklink", "prefix=#{prefix}"
  end
end
