module ApplicationHelper
  def title(title)
    content_for(:title) { title }
    content_tag :h1, title
  end

  def markdown(text)
    if text.present?
      options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
      text.gsub!(/^\s*#/, '##')
      Redcarpet.new(text, *options).to_html.html_safe
    end
  end

  def image_art(url, options = {})
    options.merge!({:class => 'art'})
    width = options.delete(:width)
    height = options.delete(:height)
    style = ';'
    style << "width: #{width}px;" if width
    style << "height: #{height}px;" if height
    options[:style] = style
    content_tag(:div, image_tag(url), options)
  end

end
