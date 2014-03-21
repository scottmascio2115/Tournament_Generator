module ApplicationHelper

  def add_query_param(url, key, value, key2, value2)
    url = URI.parse(url)
    param = [[key, value], [key2, value2]]
    url.query = URI.encode_www_form(URI.decode_www_form(url.query || "") + param)
    url.to_s
  end

end
