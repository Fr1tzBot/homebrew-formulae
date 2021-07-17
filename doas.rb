class doas < Formula
    desc "A portable fork of the OpenBSD `doas` command"
    homepage "https://github.com/Duncaen/opendoas"
    url "https://github.com/Duncaen/OpenDoas/releases/download/v6.8.1/opendoas-6.8.1.tar.gz"
    sha256 "fce3f5e3fd3e1287bdc5666abf3f433980b1c08e7381343c33ae3a8697d7c20c"
    head "https://github.com/Duncaen/opendoas.git"
  
  
    def install
        system "./configure", "--prefix=#{prefix}"
        system "make", "install"
    end
end
