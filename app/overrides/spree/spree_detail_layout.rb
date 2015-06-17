Deface::Override.new(
  virtual_path: "spree/products/show",
  set_attributes: "[data-hook='product_left_part']",
  attributes: { class: "col-md-6" },
  name: "spree_detail_layout_left"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  set_attributes: "[data-hook='product_right_part']",
  attributes: { class: "col-md-6" },
  name: "spree_detail_layout_right"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  set_attributes: "#main-image",
  attributes: { class: "panel" },
  name: "spree_detail_main_image"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  replace_contents: "#main-image .panel-body",
  partial: "spree/products/oz_image",
  name: "spree_detail_img_responsive"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  replace_contents: "#product-description",
  partial: "spree/products/oz_description",
  name: "spree_detail_oz_description"
)