def build_matrix file
  data = File.open(file).read
  matrix = []
  data.each_line do |l|
    matrix.push(l.gsub(/\n/,'').split(" ").collect(&:to_i))
  end
  matrix
end

def maxpathsum matrix
  return [0][0] if matrix.length == 1

  last_line = []
  i,j = matrix.length - 2, 0
  while j < matrix[i].length
    current = matrix[i][j]
    down = matrix[i+1][j]
    right = matrix[i+1][j+1]
    down > right ? l = down : l = right
    last_line.push(current + l)
    j += 1
  end
  matrix.pop(2)
  matrix.push(last_line)
  return maxpathsum(matrix)
end

m = build_matrix("euler18.dat")
maxpathsum(m)
p m[0][0]
