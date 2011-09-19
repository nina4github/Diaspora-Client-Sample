Given /^Diaspora is running$/ do
  Diaspora.run unless Diaspora.running?
end

Given /^Diaspora has been killed$/ do
  Diaspora.kill
end

And /^there is only one Diaspora$/ do
  OAuth2::Provider.client_class.where(:name => "Diaspora").count.should == 1
end

And /^I remove all traces of Diaspora on the pod$/ do
  OAuth2::Provider.client_class.destroy_all
end

When /^I visit "([^"]+)" on Diaspora$/ do |path|
  former_host = Capybara.app_host
  Capybara.app_host = "localhost:#{Diaspora::PORT}"
  visit(path)
  Capybara.app_host = former_host
end

class Diaspora
  PORT = 3000

  def self.run
    @pid = fork do
      command = "/bin/bash -l -c '" +
               " unset BUNDLE_GEMFILE" +
               " && unset RAILS_ENV" +
               " && unset RUBYOPT" +
               " && unset BUNDLE_BIN_PATH" +
               " && cd #{Rails.root}/../diaspora/ " +

               #" && rvm use ree-1.8.7-2011.03@diaspora" +
               " && bundle install" +
               " && bundle exec rake db:reset" +
               " && bundle exec #{run_command} #{nullify}'"

      Process.exec command
    end

    at_exit do
      Diaspora.kill
    end

    while(!running?) do
      sleep(1)
    end
  end

  def self.nullify
    #"2> /dev/null > /dev/null"
  end

  def self.kill
    pid = self.get_pid
    `kill -9 #{pid}` if pid.present?
  end

  def self.running?
    begin
      begin
      RestClient.get("localhost:#{PORT}/running")
      rescue RestClient::ResourceNotFound
      end
      true
    rescue Errno::ECONNREFUSED, Errno::ECONNRESET
      false
    end
  end

  def self.run_command
    "thin start -p #{PORT}"
  end

  def self.get_pid
    processes = `ps ax -o pid,command | grep "#{run_command}"`.split("\n")
    processes = processes.select{|p| !p.include?("grep") }
    if processes.any?
      processes.first.split(" ").first
    else
      nil
    end
  end
end
