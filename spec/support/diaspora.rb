
class Diaspora
  PORT = 1234

  def self.run
    @pid = fork do
      Process.exec "(cd ~/workspace/diaspora && RAILS_ENV=development bundle exec rails s -p #{PORT})"
    end

    at_exit do
      Diaspora.kill
    end

    while(!running?) do
      sleep(1)
    end
  end

  def self.kill
    puts "I am trying to kill the server"
    `kill -9 #{get_pid}`
  end

  def self.nullify
    ENV["CI"] ? '' : "2> /dev/null 1> /dev/null"
  end

  def self.ensure_killed
    if !(@killed) && self.running?
      self.kill
      @killed = true
    end
  end

  def self.running?
    begin
      begin
      RestClient.get("localhost:#{PORT}/users/sign_in")
      rescue RestClient::ResourceNotFound
      end
      true
    rescue Errno::ECONNREFUSED
      false
    end
  end

  def get_pid
    @pid = lambda {
      processes = `ps ax -o pid,command | grep "#{run_command}"`.split("\n")
      processes = processes.select{|p| !p.include?("grep") }
      processes.first.split(" ").first
    }.call
  end
end
