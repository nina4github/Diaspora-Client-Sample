#PUT http://tiger.itu.dk:8004/informationbus/register/listener
#url=<callbackUrl>&pattern=<tokens>[&sendform=<true|false>]
#Returns: Json( {registration: <registrationId>} ), the registrationId for the listener.

## production
conn = Faraday.new(:url => 'http://idea.itu.dk:8000') do |builder|
## development 
#conn = Faraday.new(:url => 'http://localhost:8000') do |builder|
  builder.request  :url_encoded
  builder.response :logger
  builder.adapter  :net_http
end

## POST ##

json = JSON.generate [{"field"=>"activity","operator"=>"=","value"=>"*"},{"field"=>"actor","operator"=>"=","value"=>"*"}]

## development informationbus callback url -- local host
#response=conn.put '/informationbus/register/listener', { :url => 'http://localhost:3000/geniehub/listener', :pattern => json }  # POST "name=maguro" to http://sushi.com/nigiri

## "[production] informationbus callback url -- server where the DIASPORA CLIENT SAMPLE application resides on port 8080"
response=conn.put '/informationbus/register/listener', { :url => 'http://idea.itu.dk:8080/geniehub/listener', :pattern => json }  # POST "name=maguro" to http://sushi.com/nigiri
puts response.body


# GENERATOR
#PUT http://tiger.itu.dk:8004/informationbus/register/generator/<name>
# url=<callbackUrl>&specs=<specs>[&sendform=<true|false>]
# Ignore results

name = 'twitterIdoServer'
response2 = conn.put '/informationbus/register/generator/twitterIdoServer', {:url=>'http://idea.itu.dk:8080/geniehub/generator',:specs=>['activity','actor','content','timestamp','generator']}
puts response2.body