cask "360controller" do
  version "0.16.11"
  sha256 "540c995554462af788f89e9bfa82e2fa3e6d1ff523dc2cbb7aa52415ecd3134f"
  url "https://github.com/360Controller/360Controller/releases/download/v#{version}/360ControllerInstall_#{version}.dmg"
  name "360controller"
  desc "TattieBogle Xbox 360 Driver (with improvements) "
  homepage "https://github.com/360Controller/360Controller"

  depends_on macos: ">= :el_capitan"

  pkg "Install360Controller.pkg", allow_untrusted: true
  binary "#{appdir}/QDriverStation.app/Contents/MacOS/QDriverStation"
end
