class User < ActiveRecord::Base
  devise :registerable, :rememberable, :trackable

  validates_length_of :diaspora_id, :maximum => 127

  has_one :access_token, :class_name => "DiasporaClient::AccessToken", :dependent => :destroy
  

  # Create a new user account with data from a diaspora pod
  # @option opts [String] :diaspora_id The new user's diaspora id
  def self.find_or_create_with_diaspora opts
    puts "DEBUG find or create with diaspora opts:: "+ opts.inspect
    if user = self.find_by_diaspora_id(opts[:diaspora_id])
      logger.info("DEBUG:: found a user from diaspora")
      user
    else
      logger.info("DEBUG:: NOT found a user from diaspora, I create one with id= "+opts[:diaspora_id])
      self.create!(opts)
    end
  end
  
  

end
