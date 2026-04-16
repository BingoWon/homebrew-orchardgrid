cask "orchardgrid" do
  version "1.20.1"
  sha256 "809aa0e1dbee9900e9ac24b0324b49b7acd7f7e354f91588256b6227e5046bd9"

  url "https://github.com/BingoWon/orchardgrid-apple/releases/download/v#{version}/OrchardGrid-v#{version}-macos.dmg",
      verified: "github.com/BingoWon/orchardgrid-apple/"
  name "OrchardGrid"
  desc "Share Apple Intelligence Anywhere"
  homepage "https://orchardgrid.com/"

  app "OrchardGrid.app"
  binary "#{appdir}/OrchardGrid.app/Contents/Resources/og"

  zap trash: [
    "~/.config/orchardgrid",
    "~/Library/Application Support/com.orchardgrid.app",
    "~/Library/Containers/com.orchardgrid.app",
    "~/Library/Group Containers/group.com.orchardgrid.shared",
  ]
end
