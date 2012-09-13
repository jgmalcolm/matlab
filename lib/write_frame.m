function wr = write_frame
  wr = @write_it;
  
  i = 1;
  [suc msg] = mkdir('/tmp/out');
  
  function write_it
    print('-dpng', sprintf('/tmp/out/frame_%08d.png', i));
    i = i + 1;
  end
end
