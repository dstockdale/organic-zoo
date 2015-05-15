Spree::UserSessionsController.class_eval do
  before_filter :load_taxons, :only => :new

  def load_taxons
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end

end