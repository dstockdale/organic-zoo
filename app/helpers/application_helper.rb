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
  
end