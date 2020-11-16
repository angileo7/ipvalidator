module Reader
  def has_valid_number_of_segments?(ip)
    ip.split('.').count == 4
  end

  def has_valid_separators?(ip)
    (/^[0-9.]*$/ =~ ip) == 0 ? true : false
  end

  def has_valid_range_segments?(ip)
    all_segments_valid = true
    ip.split('.').each do |integer|
      number = integer.to_i
      all_segments_valid = false unless number.to_s == integer
      if(!number.between?(0,255))
        all_segments_valid = false
      end
    end
    all_segments_valid
  end

  def error_message
    "Invalid address"
  end

  def is_valid?(ip)
    return error_message unless has_valid_separators? ip

    return error_message unless has_valid_number_of_segments? ip

    return error_message unless has_valid_range_segments? ip

    ip
  end

  def validate_ip_address(ip)
    is_valid? ip ? ip : error_message
  end
end