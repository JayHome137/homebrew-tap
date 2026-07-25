cask "deepseekmonitor" do
  version "1.4.9"
  sha256 "46495355b56361dc611d859448ad35a79bf0eb69e95b618e1b8d9ec00e66aa36"

  url "https://github.com/JayHome137/DeepSeekMonitor/releases/download/v#{version}/DeepSeekMonitor-v#{version}.dmg"
  name "DeepSeek Monitor"
  desc "Menu bar app for monitoring DeepSeek V4 Flash and Pro usage"
  homepage "https://github.com/JayHome137/DeepSeekMonitor"

  depends_on macos: :sonoma

  app "DeepSeekMonitor.app"

  zap trash: [
    "~/Library/Application Support/DeepSeekMonitor",
    "~/Library/Containers/com.deepseek.monitor.widget",
    "~/Library/Group Containers/N5YV5FV235.group.com.deepseek.monitor",
    "~/Library/Preferences/com.deepseek.monitor.plist",
  ]
end
