use_bpm 98

a = [0,1,2,2,1,0,1,2,1,0,1,0,1,0,0,0]

live_loop :drum1 do
  16.times do |i|
    puts a[i], i
    sample :bass_thick_c if a[i] == 1
    sample :bass_trance_c if a[i] == 2
    sample :ambi_piano if a[i] == 3
    sleep 0.25
    
  end
  
  b = [0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0]
  
  
  live_loop :drum2 do
    16.times do |i|
      puts b[i], i
      sample :ambi_lunar_land if b[i] == 1
      sample :ambi_piano if b[i] == 2
      sleep 0.25
      
    end
  end
  
  c = [0,1,0,1,0,1,0,0,1,0,0,0,0,1,2,0]
  live_loop :drum3 do
    16.times do |i|
      puts c[i], i
      sample :loop_perc1 if c[i] == 1
      sample :ambi_piano if c[i] == 2
      sleep 0.25
      
    end
  end
  
  use_synth :pluck
  d = [1,1,3,1,3,1,3,1,3,1,2,0,1,2,3]
  live_loop :drum4 do
    16.times do |i|
      sleep 4
      puts d[i], i
      play [79] if d[i] == 1
      play [75] if d[i] == 3
      sample :ambi_piano if d[i] == 2
      
      
    end
  end
  
end
