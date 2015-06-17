Deface::Override.new(
  virtual_path: "spree/products/show",
  set_attributes: "[data-hook='product_left_part']",
  attributes: { class: "col-md-6" },
  name: "spree_detail_layout_left",
  original: "b66161ed5e1326e5dc4798f1c224c26c41847c12"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  set_attributes: "[data-hook='product_right_part']",
  attributes: { class: "col-md-6" },
  name: "spree_detail_layout_right",
  original: "9a3be2e75159e2ffc7197b844bb606694bb6475c"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  set_attributes: "#main-image",
  attributes: { class: "panel" },
  name: "spree_detail_main_image",
  original: "8765c76bd20d115a2cf166822487adce87c82c21"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  replace_contents: "#main-image .panel-body",
  partial: "spree/products/oz_image",
  name: "spree_detail_img_responsive",
  original: "86e85ec92bde47206b0ca1bc70fa3c6fc8067f99"
)

Deface::Override.new(
  virtual_path: "spree/products/show",
  replace_contents: "#product-description",
  partial: "spree/products/oz_description",
  name: "spree_detail_oz_description",
  original: "c648a18cec686e1112ec0d3f49f72b0cd8aa4a5f"
)