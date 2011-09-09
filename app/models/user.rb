class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :rememberable, :trackable

  validates_length_of :diaspora_id, :maximum => 127

  has_one :access_token, :class_name => "DiasporaClient::AccessToken", :dependent => :destroy

  # Create a new user account with data from a diaspora pod
  # @option opts [String] :diaspora_id The new user's diaspora id
  def self.find_or_create_with_diaspora opts
    puts opts.inspect
    if user = self.find_by_diaspora_id(opts[:diaspora_id])
      user
    else
      self.create!(opts)
    end
  end

end
