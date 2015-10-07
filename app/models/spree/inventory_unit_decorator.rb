module Spree
  InventoryUnit.class_eval do
    def exists_active_return_authorization?
      # any existing return authorization that's not canceled means active
      return_items.map(&:return_authorization).map(&:canceled?).include?(false)
    end
  end
end
