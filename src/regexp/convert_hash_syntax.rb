def convert_hash_syntax(original_syntax)
  original_syntax.gsub(/:(?<key>\w+) *=> */, '\k<key>: ')
  # original_syntax.gsub(/:(?<key>\w+) *=> */) do
  #   "#{$~[:key]}: "
  # end
end