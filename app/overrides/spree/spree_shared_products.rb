Deface::Override.new(
  virtual_path: "spree/shared/_products",
  replace: "#products",
  partial: "spree/shared/oz_products",
  name: "spree_shared_products"
)