class UploadController< ApplicationController
require 'rubygems'
require 'sinatra'
require 'haml'

# Handle GET-request (Show the upload form)
get "/upload" do
  haml :upload
end      

# Handle POST-request (Receive and save the uploaded file)
def create
  params[:activity]='shopping'
  user = User.find_by_diaspora_id('communityawvej@idea.itu.dk:3000')
  request.env["warden"].set_user(user, :scope => :user, :store => true)
  message = {
    :original_filename => params['myfile'].original_filename,
    :file => params['myfile'].tempfile
  }
#  message = {'myfile'=>
#                  { 'original_filename'=>params['myfile'].original_filename,
#                     'tempfile' =>File.new(params['myfile'].tempfile)
#                     }
#              } 
      
      #payload = { :myfile => Faraday::UploadIO.new(params['myfile'].tempfile, 'image/jpeg'),:original_filename => params['myfile'].original_filename } # this might be cool but I don't know how to use it
      body,head = Post.new.prepare_query(message)
      current_user.access_token.token.post('/api/v0/aspects/'+params[:activity]+'/upload', body, head)
#      @response = JSON.parse(current_user.access_token.token.post('/api/v0/aspects/'+params[:activity]+'/upload', message))
    
      File.open('public/images/' + params['myfile'].original_filename, "wb") do |f|
        f.write(params['myfile'].tempfile.read)
      end
    
 
  
  return "The file was successfully uploaded!"
end
end

# Takes a hash of string and file parameters and returns a string of text
# formatted to be sent as a multipart form post.
#
# Author:: Cody Brimhall <mailto:cbrimhall@ucdavis.edu>
# Created:: 22 Feb 2008

require 'rubygems'
require 'mime/types'
require 'cgi'



  # Formats a given hash as a multipart form post
  # If a hash value responds to :string or :read messages, then it is
  # interpreted as a file and processed accordingly; otherwise, it is assumed
  # to be a string
  class Post
    # We have to pretend like we're a web browser...
    USERAGENT = "Mozilla/5.0 (Macintosh; U; PPC Mac OS X; en-us) AppleWebKit/523.10.6 (KHTML, like Gecko) Version/3.0.4 Safari/523.10.6"
    BOUNDARY = "0123456789ABLEWASIEREISAWELBA9876543210"
    CONTENT_TYPE = "multipart/form-data; boundary=#{ BOUNDARY }"
    HEADER = { "Content-Type" => CONTENT_TYPE, "User-Agent" => USERAGENT }

    def self.prepare_query(params)
      fp = []

      params.each do |k, v|
        # Are we trying to make a file parameter?
        if v.respond_to?(:path) and v.respond_to?(:read) then
          fp.push(FileParam.new(k, v.path, v.read))
        # We must be trying to make a regular parameter
        else
          fp.push(StringParam.new(k, v))
        end
      end

      # Assemble the request body using the special multipart format
      query = fp.collect {|p| "--" + BOUNDARY + "\r\n" + p.to_multipart }.join("")  + "--" + BOUNDARY + "--"
      return query, HEADER
    end
  end

  private

  # Formats a basic string key/value pair for inclusion with a multipart post
  class StringParam
    attr_accessor :k, :v

    def initialize(k, v)
      @k = k
      @v = v
    end

    def to_multipart
      return "Content-Disposition: form-data; name=\"#{CGI::escape(k)}\"\r\n\r\n#{v}\r\n"
    end
  end

  # Formats the contents of a file or string for inclusion with a multipart
  # form post
  class FileParam
    attr_accessor :k, :filename, :content

    def initialize(k, filename, content)
      @k = k
      @filename = filename
      @content = content
    end

    def to_multipart
      # If we can tell the possible mime-type from the filename, use the
      # first in the list; otherwise, use "application/octet-stream"
      mime_type = MIME::Types.type_for(filename)[0] || MIME::Types["application/octet-stream"][0]
      return "Content-Disposition: form-data; name=\"#{CGI::escape(k)}\"; filename=\"#{ filename }\"\r\n" +
             "Content-Type: #{ mime_type.simplified }\r\n\r\n#{ content }\r\n"
    end
  end
