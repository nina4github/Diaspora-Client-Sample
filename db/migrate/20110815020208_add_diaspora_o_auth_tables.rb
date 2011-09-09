class AddDiasporaOAuthTables < ActiveRecord::Migration
  def self.up
    create_table :resource_servers do |t|
      t.string :client_id,     :limit => 40,  :null => false
      t.string :client_secret, :limit => 40,  :null => false
      t.string :host,          :limit => 127, :null => false
      t.timestamps
    end
    add_index :resource_servers, :host, :unique => true

    create_table :access_tokens do |t|
      t.integer :user_id, :null => false
      t.integer :resource_server_id, :null => false
      t.string  :access_token, :limit => 40, :null => false
      t.string  :refresh_token, :limit => 40, :null => false
      t.string  :uid, :limit => 40, :null => false
      t.datetime :expires_at
      t.timestamps
    end
    add_index :access_tokens, :user_id, :unique => true
    add_index :access_tokens, [:uid, :resource_server_id], :unique => true
  end

  def self.down
    remove_index :access_tokens, :column => [:uid, :resource_server_id]
    remove_index :access_tokens, :column => :user_id
    drop_table :access_tokens

    remove_index :resource_servers, :column => :host
    drop_table :resource_servers
  end
end
