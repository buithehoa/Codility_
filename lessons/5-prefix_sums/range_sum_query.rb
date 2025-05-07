require_relative "prefix_sum"

def query_range_sum(arr, from, to)
  prefix_sum = calculate_prefix_sum arr

  prefix_sum[to + 1] - prefix_sum[from]
end

