class ComparesController < ApplicationController

  def compare
    @product1 = Product.find(1)
    @product2 = Product.find(7)

    @prod1spec = @product1.product_specification
    @prod2spec = @product2.product_specification
    @spec1name = []
    @specs1final = []
    @spec2name = []
    @specs2final = []
    @prod1spec.each do |spec1|
      @spec1name << spec1.specification.name
      @specs1final << spec1.value
    end
    @prod1hash = Hash[@spec1name.zip @specs1final]

    @prod2spec.each do |spec2|
      @spec2name << spec2.specification.name
      @specs2final << spec2.value
    end
    @prod2hash = Hash[@spec2name.zip @specs2final]
    #h1=@prod1hash.reduce(&:merge)
    # h2=@prod2hash.reduce(&:merge)
    @keys = [@prod1hash, @prod2hash].flat_map(&:keys).uniq

    @finalhash= @keys.map do |k|
      @new = {k => [{value1: @prod1hash[k] || "0"},
                    {value2: @prod2hash[k] || "0"}]}
    end

  end

end