class ComparesController < ApplicationController

  def compare
    begin
      @product1 = Product.find_by_id(1)
      @product2 = Product.find_by_id(7)
      #check extreme cases
    if(@product1.nil? ||@product1==0 || @product2.nil? ||@product2==0)
      raise "Invalid Request"
    elsif(@product1.category_id!=@product2.category_id)
      raise "Products should be of same category"
    elsif(@product1==@product2)
      raise "Same products cannot be compared"
    else
      @final_hash=Compare.create_spec_hash(@product1,@product2)
    end
    rescue Exception => e
      @error= e.message
    end
  end
end