var r = new Rune({
  container: "#canvas",
  width: 200,
  height: 200
});

r.rect(0, 0, r.width, r.height/2).fill(255, 0, 0).stroke(false);

r.draw();