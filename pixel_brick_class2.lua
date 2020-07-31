Matrix_display = class:new()

function Matrix_display:init(column,row)
  self.txt = "Progit!!!"
  self.column = column
  self.row = row
  self.M = {}          -- create the matrix
    for i=1, self.column do
      self.M[i] = {}     -- create a new row
      for j=1, self.row do
        self.M[i][j] = nil
      end
    end
end

function Matrix_display:get()
  print(self.column)
  print(self.row)
end
function Matrix_display:update(dt)

end

function Matrix_display:draw()

end

function Matrix_display:ping()
  print("actualizado")
end
