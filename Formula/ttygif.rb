require 'formula'

class Ttygif < Formula
  homepage 'https://github.com/icholy/ttygif'

  head do
    url 'https://github.com/icholy/ttygif.git'
  end

  depends_on 'ttyrec'
  depends_on 'imagemagick'

  def install
    system 'make'
    system "install -d #{prefix}/bin"
    system "install -m 755 ttygif #{prefix}/bin/"
    system "install -m 755 concat_osx.sh #{prefix}/bin/"
  end
end
