function playnote(q)
step = 2 * pi / 8192;
  t = 0:step:pi;
  wave = sin(q * t);
  sound(wave)