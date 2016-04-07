var casper;

casper = require('casper').create({
  verbose: true,
  logLevel: "debug"
});

urls = [
  "https://github.com/adutta91",
  "https://github.com/agee6/",
  "https://github.com/MrMicrowaveOven",
  "https://github.com/bradneal14",
  "https://github.com/brianpgerson",
  "https://github.com/bmhayzlett",
  "https://github.com/keldonia",
  "https://github.com/carsonswope",
  "https://github.com/garura",
  "https://github.com/ChristopherVH",
  "https://github.com/JustFocus",
  "https://github.com/rdavidreid",
  "https://github.com/devin-dominguez",
  "https://github.com/edwin-lai",
  "https://github.com/3ricliu",
  "https://github.com/Blink18260000",
  "https://github.com/joshhwang1125",
  "https://github.com/McMenemy",
  "https://github.com/juliemiller",
  "https://github.com/JTung1104",
  "https://github.com/calmcentralia/capstone",
  "https://github.com/kmccallsdsu",
  "https://github.com/kithaca",
  "https://github.com/LaurieOu",
  "https://github.com/medubin",
  "https://github.com/mattyshen",
  "https://github.com/mexxxxx",
  "https://github.com/MeredithAnya",
  "https://github.com/RangerDane",
  "https://github.com/wsmars/CarBnB",
  "https://github.com/nmatte",
  "https://github.com/nhatho89",
  "https://github.com/pardhaponugoti",
  "https://github.com/patwalls",
  "https://github.com/Pawandeeprai",
  "https://github.com/pyi891",
  "https://github.com/rafrex",
  "https://github.com/chongr",
  "https://github.com/SamGerber",
  "https://github.com/sameerank",
  "https://github.com/ScottKwang",
  "https://github.com/sean-connor",
  "https://github.com/sdc2152",
  "https://github.com/stanams",
  "https://github.com/ssaekoo",
  "https://github.com/stevejk31",
  "https://github.com/ted-eckel",
  "https://github.com/timsunpang",
  "https://github.com/timhwang21",
  "https://github.com/vwb",
  "https://github.com/yianlo"
  // miss wen
]

// url.forEach(function(i){
//   var index = i;
//   casper.start(url[i]);

casper.start("https://github.com/yianlo");

  casper.then(function(){
    this.evaluate(function() {
      // this.clickLabel("Follow", "button");
      this.click('.header-nav-link.tooltipped.tooltipped-s.js-menu-target');
      console.log("followed");
    }.bind(this));
  });

  // casper.wait(5000, function(){
  //   console.log(index);
  // });
// })

casper.run();

//
// $('.btn.btn-sm.btn-primary').click(function(){
// console.log("hey");
// })
