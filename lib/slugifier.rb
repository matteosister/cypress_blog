module Slugifier
  def generate_slug(value)
    # remove trailing whitespace
    ret = value.strip
    # remove everything apart of words and - and replace with -
    ret.gsub! /[^\w-]/, '-'
    # remove multiple occurrences of -
    ret.gsub! /-{1,}/, '-'
    # ending -
    if ret.ends_with?('-')
      ret = ret[0, ret.length - 1]
    end
    # starting -
    while ret.start_with?('-') do
      ret = ret[1, ret.length]
    end
    # lovercase
    ret.downcase!
    # defaults to n-a
    if ret.empty?
      ret = 'n-a'
    end
    ret
  end
end