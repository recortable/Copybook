module ApplicationHelper
  def title(title)
    content_tag :h1, title
  end

  def image_art(publication, options = {})
    options.merge!({:class => 'art'})
    width = options.delete(:width)
    height = options.delete(:height)
    style = ';'
    style  <<  "width: #{width}px;" if width
    style  <<  "height: #{height}px;" if height
    options[:style] = style
    url = '/white.png'
    url = publication.art_url if publication.art_url.present?
    url = publication.art.url  if publication.art?
    content_tag(:div, image_tag(url), options)
  end

end
