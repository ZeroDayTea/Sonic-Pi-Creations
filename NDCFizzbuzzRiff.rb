use_bpm 244
use_synth :tech_saws

live_loop :main do
    i = 1
    16.times do
      if factor?(i,15)
        play :G3
      elsif factor?(i,5)
        play :D4
      elsif factor?(i,3)
        play :C4
      else
        play :A3
      end
      
      sleep 1
      i = i + 1
    end
end      
      
live_loop :cymbals do
    sync :main
    15.times do
      sample :drum_cymbal_closed
      sleep 1
    end
    sample :drum_cymbal_open
end
