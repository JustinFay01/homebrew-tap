cask "tidebar" do
  version "1.0.4"
  sha256 "1da1366a9557fcf5c5310a4ac11a4fd17411cfa2eab12de8f4af4eff3f1c25d9"

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
