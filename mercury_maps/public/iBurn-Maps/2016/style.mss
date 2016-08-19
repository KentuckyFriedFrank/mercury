//Color and Font Palette
@background: #E8E0D8;
@sans: "Tahoma Regular";
@streets_fill_light: #EBDED1;
@streets_fill: #D9CCBE;
@streets_fill2: #C3B8AB;
@cafe_brown: #803C15;
@streets_text_color: #3F3F3F;
@temple_color: #FFA851;
@toilets:#00AFD4;
@recycle:#0AB636;

Map {
  background-color: @background;
  buffer-size: 256;
}

#fence [name="Fence"] { 
  line-width:1;
  line-color:@streets_fill;
}

#outline {
  polygon-fill:@streets_fill2;
}

#entrance-road [zoom > 10] {
  line-width: 1;
  line-color:@streets_fill2;
  
  [zoom > 13] {
  	line-width: 3;
  }

  [zoom > 15] {
  	line-width: 5;
  }
  
  [zoom > 16] {
  	line-width: 18;
  }
  
  [zoom > 17] {
  	line-width: 16;
  }
}
 
#streets {
  ::labels [zoom > 14] {
    text-name: [name];
    text-size: 12;
  	text-face-name: @sans;
     //"Tahoma Small Cap Bold";
  	text-placement: line;
  	text-halo-fill: @streets_fill_light;
  	text-halo-radius: 2px;
  	text-fill: @streets_text_color;
  	text-allow-overlap:false;
  	text-min-padding: 10;
  	text-transform: uppercase;
  	text-character-spacing: 3;
  }
  
  //::labels [zoom > 15] {
  //	text-name: [name];
  //}
}

#layout {
  marker-width:6;
  marker-fill:@temple_color;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
}


#airport [zoom > 11] {
  line-width:1;
  line-color: @streets_fill2;
  [zoom > 13] {
  marker-file: url(maki/airport-24.svg);
  marker-allow-overlap: true;
  marker-transform:"rotate(249), scale(0.7)";
  text-size: 8;
  text-face-name: @sans;
      //"Tahoma Small Cap Bold";
  text-placement: line;
  text-halo-fill: @streets_fill_light;
  text-halo-radius: 2px;
  text-fill: @streets_text_color;
  text-name: "'RUNWAY ' + [ref]";
  text-min-padding: 10;
  text-character-spacing: 3;
  text-placement: line;
  }
}


#dmz [zoom > 14] {
  polygon-opacity:1;
  polygon-fill:darken(@background, 15%);
  text-size: 8;
  text-face-name: @sans;
      //"Tahoma Small Cap Bold";
  text-halo-fill: @streets_fill_light;
  text-halo-radius: 2px;
  text-fill: @streets_text_color;
  text-name: "'D M Z '";
  text-character-spacing: 4;
  text-orientation: -12;
  text-dy: -0.5;
  marker-file: url(maki/music-12.svg);
  marker-transform:"translate(-28, -4)";
}
