function fn = frame_writer(d)
  
  fn = @write;
  
  [succ msg] = mkdir(d);
  i = 1;
  function write
    print('-dpng', sprintf('%s/%08d.png', d, i));
    i = i + 1;
  end
end
