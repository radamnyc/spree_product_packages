Deface::Override.new(:virtual_path => 'spree/admin/taxons/_form',
                     :name => 'add_is_package_node_checkbox_to_taxon_edit',
                     :insert_before => "erb[loud]:contains('f.field_container :meta_title')",
                     :text => '
    <div data-hook="is_package_node" class="checkbox">
    <label>
      <%= f.check_box :is_package_node, { checked: @taxon.is_package_node } %>
      <%= Spree.t("Is A Set") %>
    </label>
  </div>
  ')