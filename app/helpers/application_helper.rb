module ApplicationHelper

  def taxons_navbar(root_taxon, current_taxon, max_level = 3, root = true)
    return '' if max_level < 1 || root_taxon.leaf?
    root_class = root ? 'sf-menu' : nil
    content_tag :ul, class: root_class do   
      root_taxon.children.map do |taxon|
        css_class = (current_taxon && current_taxon.self_and_ancestors.include?(taxon)) ? 'current' : nil
        content_tag :li, class: css_class do
          link_to(taxon.name, seo_url(taxon)) + taxons_navbar(taxon, current_taxon, max_level - 1, false)
        end
      end.join("\n").html_safe
    end
  end

  def cycle_thumb(product)
    if product.images.size > 2
      small_image(product, itemprop: "image", class: "img-responsive")
    else
      thumbs = product.images.map do |img|
        img.attachment.url(:small)
      end
      first_thumb = thumbs.shift
      thumbs.push(first_thumb)

      image_tag(first_thumb, itemprop: "image", class: "img-responsive cycle-thumb", data: {
        thumbs: thumbs
      }, alt: product.name)
    end
  end

  def current_locale
    "#{Spree.t(:'i18n.this_file_language', locale: I18n.locale )}"
  end

  def current_currency_label
    currency = ::Money::Currency.find(current_currency.strip)
    "#{currency.symbol} (#{currency.iso_code})"
  end

  def locale_option_links
    supported_locales_options.map do |locale|
      url = URI.parse(request.original_url)
      path = url.path.split("/")
      path.shift

      if SpreeI18n::Config.supported_locales.map(&:to_s).include?(path[0])
        path[0] = locale[1].to_s
        path.unshift('')
      else
        path.unshift('',locale[1])
      end  
      
      url.path = path.join("/")
      
      link_to locale[0], url.to_s
    end
  end

end