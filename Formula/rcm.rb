require 'formula'

class Rcm < Formula
  homepage 'http://mike-burns.github.io/rcm'
  url 'https://github.com/mike-burns/rcm/archive/v1.1.0.tar.gz'
  sha1 '66d91635405d178a3f405df3e8198b62'

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
