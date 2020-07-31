matrix_display = Object:extend()

function matrix_display:new(column,row)
  self.txt = "NADA"
  self.column = column or nil
  self.row = row or nil
  self.M = {}          -- create the matrix
    for i=1, self.column do
      self.M[i] = {}     -- create a new row
      for j=1, self.row do
        self.M[i][j] = nil
      end
    end
end

function matrix_display:ping(string)
  --self.txt = string
  print(self.txt)
end
