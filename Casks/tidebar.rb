cask "tidebar" do
  version "1.0.2"
  sha256 "d7f3ecd07ac452c47e9f9ad9b1099b5ddcffe16f57030577101e6b3b0842e4bd"

  url "https://github.com/JustinFay01/Tidebar/releases/download/v#{version}/Tidebar-#{version}.zip"
  name "Tidebar"
  desc "Menu bar app showing live Dexcom glucose readings"
  homepage "https://github.com/JustinFay01/Tidebar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tidebar.app"

  uninstall quit: "com.jnfcorp.Tidebar"

  zap trash: [
    "~/Library/Application Scripts/com.jnfcorp.Tidebar",
    "~/Library/Containers/com.jnfcorp.Tidebar",
  ]
end
