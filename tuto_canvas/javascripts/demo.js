function draw(x, y){
  var canvas = document.getElementById('canvas');
  var ctx = canvas.getContext('2d');
  ctx.save();
  ctx.clearRect(0, 0, 550, 400);
  ctx.fillStyle = "rgba(0, 200, 0, 1)";
  ctx.fillRect(x, 20, 50, 50);
  ctx.restore();
  x += 5;
  var loopTimer = setTimeout(200);
};
