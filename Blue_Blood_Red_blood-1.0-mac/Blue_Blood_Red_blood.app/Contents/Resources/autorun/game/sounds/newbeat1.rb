use_bpm 98

d = [1,1,0,0,1,0,1,0,1,0,1,0,1,0,1]
live_loop :drum4 do
  16.times do |i|
    sleep 4
    puts d[i], i
    sample :loop_compus if d[i] == 1
    
  end
  
  a = [2,2,4,4,2,4,2,0,2,0,2,0,2,0,2]
  live_loop :drum2 do
    16.times do |w|
      sleep 4
      puts a[w], w
      sample :perc_snap if a[w] == 2
      sample :perc_impact1 if a[w] == 4
      
    end
    
  end
end