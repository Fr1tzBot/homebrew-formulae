class Doas < Formula
    desc "A portable fork of the OpenBSD `doas` command"
    homepage "https://github.com/Fr1tzBot/OpenDoas"
    url "https://github.com/Duncaen/OpenDoas/releases/download/v6.8.1/opendoas-6.8.1.tar.gz"
    sha256 "fce3f5e3fd3e1287bdc5666abf3f433980b1c08e7381343c33ae3a8697d7c20c"
    head "https://github.com/Fr1tzBot/OpenDoas.git"
  
  
    def install
        system "./configure", "--prefix=#{prefix}"
        system "make", "install"
    end

    def caveats; <<~EOS
    You will need to manually set the permissions for the doas executable:
    chown root:wheel (homebrew prefix)/doas/6.8.1/bin/doas
    EOS
  end
end
