Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '100x100>', # thumbs under image
    :small => '300x300>', # images on category view
    :product => '500x500>', # full product image
    :large => '1100x1100>' # light box image
  }
end