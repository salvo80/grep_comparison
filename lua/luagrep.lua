
t1 = os.time()
if table.getn(arg) < 2 then
  print('Usage:\nluagrep word_to_look_for file_path')
else
  test = arg[1]
  filename = arg[2]
  for line in io.lines(filename) do 
    if string.find(line, test) then
      print(line)
    end
  end
end
print('done in '..os.difftime (os.time(), t1)..'s')
  
