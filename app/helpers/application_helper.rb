require 'digest/md5'

module ApplicationHelper
  def gravatar_url(email, options={})
    digest = Digest::MD5.hexdigest(email)
    url_options = {host: "www.gravatar.com/avatar/#{digest}", d: "retro"}.merge(options)
    url = url_for(url_options)
    url
  end
end
