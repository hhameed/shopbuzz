class Compare < ActiveRecord::Base
  def self.create_spec_hash(args1,args2)
    #take values of product specification for a given product
    prod1spec = args1.product_specification
    prod2spec = args2.product_specification
    spec1name = []
    specs1final = []
    spec2name = []
    specs2final = []
    #looping over the specfication values for product1
    prod1spec.each do |spec1|
      spec1name << spec1.specification.name;  specs1final << spec1.value
    end
    #create hash of specification name and corresponding value of value of given product1.
    prod1hash = Hash[spec1name.zip specs1final]
    #looping over the specfication values for product2
    prod2spec.each do |spec2|
      spec2name << spec2.specification.name;      specs2final << spec2.value;
    end
    #create hash of specification name and corresponding value of value of given product2.
    prod2hash = Hash[spec2name.zip specs2final]
    # flatten an array of hashes
    keys = [prod1hash, prod2hash].flat_map(&:keys).uniq
    #maping the values if the value is not found, assign it a zero
    keys.map do |k|
      new = {k => [{value1: prod1hash[k] || "0"},
                    {value2: prod2hash[k] || "0"}]}
    end
  end
end