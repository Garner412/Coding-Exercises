# Look at the tests in `spec/social_security_numbers_spec.rb`
# to see a description of how these methods should behave.


# Determine whether a string contains a Social Security Number.
def has_ssn?(string)
  ssn_index = string =~/\d{3}-\d{2}-\d{4}/
  !!ssn_index
end

# Find and return a Social Security Number.
def grab_ssn(string)
  string.match(/\d{3}-\d{2}-\d{4}/).to_s
end

# Find and return all Social Security Numbers.
def grab_all_ssns(string)
  string.scan(/\d{3}-\d{2}-\d{4}/)
end

# Obfuscate all Social Security Numbers. Example: XXX-XX-4430.
def hide_all_ssns(string)\
  string.gsub(/\d{3}-\d{2}/,"XXX-XX")
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)
end
