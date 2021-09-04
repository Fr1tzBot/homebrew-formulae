cask "qdriverstation" do
  version "21.04"
  sha256 "1549157d3d79e68631f38b5af675d2c84bfd1946980cd9aed10f2849ddd74ff6"
  url "https://github.com/FRC-Utilities/QDriverStation/releases/download/v#{version}/QDriverStation-#{version}-macOS.zip",
  name "qdriverstation"
  desc "a cross-platform and open-source alternative to the FRC Driver Station"
  homepage "https://frc-utilities.github.io/"

  depends_on "fr1tzbot/homebrew-cask/360controller" => :optional

  app "QDriverStation.app"
  binary "#{appdir}/QDriverStation.app/Contents/MacOS/QDriverStation"

end
