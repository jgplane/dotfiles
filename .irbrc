def latt(model)
  model.columns_hash.sort.to_h.each { |k,v| puts "#{k} => #{v.type.upcase}" } 
  return model.attribute_names.length
end
