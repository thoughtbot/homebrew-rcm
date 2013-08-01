require 'formula'

class Rcm < Formula
  homepage 'http://mike-burns.github.io/rcm'
  url 'https://github.com/mike-burns/rcm/archive/v0.0.2.tar.gz'
  sha1 'f8d27d676347f4fd7a87d9c19ffed4486e0d47d8'

  depends_on "autoconf"
  depends_on "automake"

  def install
    system "aclocal"
    system "automake --add-missing --copy"
    system "autoconf"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "lsrc"
  end
end
