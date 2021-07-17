class Doas < Formula
    desc "A portable fork of the OpenBSD `doas` command"
    homepage "https://github.com/Fr1tzBot/OpenDoas"
    url "https://github.com/Fr1tzBot/OpenDoas/archive/refs/tags/v6.8.1.1.tar.gz"
    sha256 "0484d1fac69b89aac003a6e405641bb86cfe660b77670d90dd428c4dcba2a9d3"
    head "https://github.com/Fr1tzBot/OpenDoas.git"
  
  
    def install
        system "./configure", "--prefix=#{prefix}"
        system "make", "install"
    end

    def caveats; <<~EOS
    You will need to manually set a couple of permissions on the installed executable:
    chown root:wheel <path to doas executable>
    chmod u+s <path to doas executable>
    This means that the file won't be writable by brew, so you will need to revert these changes when uninstalling/updating
    place your doas.conf file in /etc and run the above chown command in order to ensure only permitted users can edit it.

    EOS
  end
end
