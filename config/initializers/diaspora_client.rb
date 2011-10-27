DiasporaClient.config do |d|
  d.test_mode = true
  d.application_base_url = "http://192.168.1.103:3000/" #"https://www.awesomeapp.com:443/"

  d.manifest_field(:name, "SampleApp")
  d.manifest_field(:description, "This is a description of this Salmple App")
  d.manifest_field(:icon_url, "/images/icon48.png")

  d.manifest_field(:permissions_overview, "SampleApp wants to post back to your Diaspora account.")

  d.permission(:profile, :read, "SampleApp wants to view your profile so that it can show it to other users.")
  d.permission(:profile, :write, "SampleApp wants this other permission")
  #d.permission(:photos, :read, "SampleApp wants this other permission")
  #d.permission(:photos, :write, "SampleApp wants this other permission")
  #d.permission(:posts, :read, "SampleApp wants this other permission")
  #d.permission(:posts, :write, "SampleApp wants this other permission")
  #d.permission(:aspects, :read, "SampleApp wants this other permission")
  #d.permission(:aspects, :write, "SampleApp wants this other permission")
  #d.permission(:comments, :read, "SampleApp wants this other permission")
  #d.permission(:comments, :write, "SampleApp wants this other permission")
  
  d.account_class = User

end
