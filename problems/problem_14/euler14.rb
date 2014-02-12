def problem14 limit
  lchain, lstart = 0,0
  1.upto(limit) do |i|
    n = i
    chain = 1
    while n > 1
      n.even? ? n /= 2 : n = (n*3) + 1
      chain += 1
    end
    if chain > lchain
      lchain = chain
      lstart = i
    end
  end
  lstart
end

p problem14 10**6
