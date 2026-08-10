package GL2_fla
{
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.ui.*;
   import flash.utils.*;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24785")]
   public dynamic class colorpicker_594 extends MovieClip
   {
      
      public var ccolor:MovieClip;
      
      public var copyani:MovieClip;
      
      public var copybt:MovieClip;
      
      public var fadecol:MovieClip;
      
      public var favblocker:MovieClip;
      
      public var favbt:MovieClip;
      
      public var favleftbt:MovieClip;
      
      public var favrightbt:MovieClip;
      
      public var favselectgo:MovieClip;
      
      public var favsetx:TextField;
      
      public var fcol1:MovieClip;
      
      public var fcol10:MovieClip;
      
      public var fcol11:MovieClip;
      
      public var fcol12:MovieClip;
      
      public var fcol13:MovieClip;
      
      public var fcol14:MovieClip;
      
      public var fcol15:MovieClip;
      
      public var fcol16:MovieClip;
      
      public var fcol17:MovieClip;
      
      public var fcol18:MovieClip;
      
      public var fcol19:MovieClip;
      
      public var fcol2:MovieClip;
      
      public var fcol20:MovieClip;
      
      public var fcol21:MovieClip;
      
      public var fcol22:MovieClip;
      
      public var fcol23:MovieClip;
      
      public var fcol24:MovieClip;
      
      public var fcol3:MovieClip;
      
      public var fcol4:MovieClip;
      
      public var fcol5:MovieClip;
      
      public var fcol6:MovieClip;
      
      public var fcol7:MovieClip;
      
      public var fcol8:MovieClip;
      
      public var fcol9:MovieClip;
      
      public var hexx:TextField;
      
      public var hshow:MovieClip;
      
      public var inputbt:MovieClip;
      
      public var lightx:MovieClip;
      
      public var mc1:MovieClip;
      
      public var mc2:MovieClip;
      
      public var mc3:MovieClip;
      
      public var rcol1:MovieClip;
      
      public var rcol10:MovieClip;
      
      public var rcol11:MovieClip;
      
      public var rcol12:MovieClip;
      
      public var rcol13:MovieClip;
      
      public var rcol14:MovieClip;
      
      public var rcol15:MovieClip;
      
      public var rcol16:MovieClip;
      
      public var rcol17:MovieClip;
      
      public var rcol18:MovieClip;
      
      public var rcol19:MovieClip;
      
      public var rcol2:MovieClip;
      
      public var rcol20:MovieClip;
      
      public var rcol3:MovieClip;
      
      public var rcol4:MovieClip;
      
      public var rcol5:MovieClip;
      
      public var rcol6:MovieClip;
      
      public var rcol7:MovieClip;
      
      public var rcol8:MovieClip;
      
      public var rcol9:MovieClip;
      
      public var recblocker:MovieClip;
      
      public var rgbcol:MovieClip;
      
      public var selx:MovieClip;
      
      public var mcpick:*;
      
      public var xcolorpick:*;
      
      public var favon:*;
      
      public function colorpicker_594()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function favbtx(evt:MouseEvent) : void
      {
         if(this.favon == 1)
         {
            this.favselectgo.gotoAndStop(3);
            this.favon = 2;
         }
         else
         {
            this.favselectgo.gotoAndStop(2);
            this.favon = 1;
         }
      }
      
      public function copybtx(evt:MouseEvent) : void
      {
         System.setClipboard(this.hexx.text.substr(1));
         this.copyani.gotoAndPlay(2);
      }
      
      public function inputbtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
         MovieClip(root).typingpick = 13;
         MovieClip(root).typenamego.gotoAndStop(3);
      }
      
      public function favleftbtx(event:MouseEvent) : void
      {
         --MovieClip(root).favset;
         if(MovieClip(root).favset < 1)
         {
            MovieClip(root).favset = 15;
         }
         this.showcolors();
         this.selx.visible = false;
      }
      
      public function favrightbtx(event:MouseEvent) : void
      {
         MovieClip(root).favset = MovieClip(root).favset + 1;
         if(MovieClip(root).favset > 15)
         {
            MovieClip(root).favset = 1;
         }
         this.showcolors();
         this.selx.visible = false;
      }
      
      public function recblockerx(event:MouseEvent) : void
      {
         MovieClip(root).docolor = 2;
         MovieClip(root).doskew = 1;
         for(var i:* = 1; i <= 20; i++)
         {
            if(this["rcol" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               this.xcolorpick = MovieClip(root)["rcolor" + i];
               this.changehexcol();
               this.selx.visible = true;
               this.selx.x = this["rcol" + i].x;
               this.selx.y = this["rcol" + i].y;
            }
         }
      }
      
      public function favblockerx(event:MouseEvent) : void
      {
         MovieClip(root).docolor = 2;
         MovieClip(root).doskew = 1;
         for(var i:* = 1; i <= 24; i++)
         {
            if(this["fcol" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               if(this.favon == 1)
               {
                  this.xcolorpick = MovieClip(root)["fcolor" + MovieClip(root).favset + "x" + i];
                  this.changehexcol();
                  this.selx.visible = true;
                  this.selx.x = this["fcol" + i].x;
                  this.selx.y = this["fcol" + i].y;
               }
               else
               {
                  MovieClip(root)["fcolor" + MovieClip(root).favset + "x" + i] = this.hexx.text.substr(1);
                  this.selx.x = this["fcol" + i].x;
                  this.selx.y = this["fcol" + i].y;
                  this.showcolors();
                  this.favselectgo.gotoAndStop(2);
                  this.favon = 1;
               }
            }
         }
      }
      
      public function showcolors() : void
      {
         var i:* = undefined;
         this.favsetx.text = MovieClip(root).favset + "/15";
         for(i = 1; i <= 20; i++)
         {
            MovieClip(root).reccolor.setTint("0x" + MovieClip(root)["rcolor" + i],1);
            this["rcol" + i].transform.colorTransform = MovieClip(root).reccolor;
         }
         for(i = 1; i <= 24; i++)
         {
            MovieClip(root).reccolor.setTint("0x" + MovieClip(root)["fcolor" + MovieClip(root).favset + "x" + i],1);
            this["fcol" + i].transform.colorTransform = MovieClip(root).reccolor;
         }
      }
      
      public function startcol() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Deobfuscate code" option in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function inputhexcol() : void
      {
         this.xcolorpick = MovieClip(root).inputhex;
         this.changehexcol();
         this.adjustLight();
         this.selx.visible = false;
      }
      
      public function changehexcol() : void
      {
         var hexColor:String = this.xcolorpick;
         var colorValue:uint = uint(parseInt(hexColor,16));
         var hsl:Object = this.hexToHSL(colorValue);
         this.mc1.x = hsl.h / 360 * 360;
         this.mc2.x = hsl.s / 100 * 360;
         this.mc3.x = hsl.l / 100 * 360;
         this.updateHexCode();
      }
      
      public function hexToHSL(hexColor:uint) : Object
      {
         var h:Number = NaN;
         var s:Number = NaN;
         var d:Number = NaN;
         var r:Number = (hexColor >> 16 & 0xFF) / 255;
         var g:Number = (hexColor >> 8 & 0xFF) / 255;
         var b:Number = (hexColor & 0xFF) / 255;
         var max:Number = Math.max(r,g,b);
         var min:Number = Math.min(r,g,b);
         var l:Number = (max + min) / 2;
         if(max == min)
         {
            h = s = 0;
         }
         else
         {
            d = max - min;
            s = l > 0.5 ? d / (2 - max - min) : d / (max + min);
            switch(max)
            {
               case r:
                  h = (g - b) / d + (g < b ? 6 : 0);
                  break;
               case g:
                  h = (b - r) / d + 2;
                  break;
               case b:
                  h = (r - g) / d + 4;
            }
            h /= 6;
         }
         return {
            "h":h * 360,
            "s":s * 100,
            "l":l * 100
         };
      }
      
      public function startDragging(event:MouseEvent) : void
      {
         var mc:MovieClip = event.currentTarget as MovieClip;
         MovieClip(root).docolor = 2;
         MovieClip(root).doskew = 1;
         if(mc == this.mc1)
         {
            this.mcpick = 1;
         }
         else if(mc == this.mc2)
         {
            this.mcpick = 2;
         }
         else if(mc == this.mc3)
         {
            this.mcpick = 3;
         }
         this.selx.visible = false;
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.updateValues);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
      }
      
      public function stopDragging(event:MouseEvent) : void
      {
         for(var i:* = 20; i >= 2; i--)
         {
            MovieClip(root)["rcolor" + i] = MovieClip(root)["rcolor" + (i - 1)];
         }
         MovieClip(root).rcolor1 = this.hexx.text.substr(1);
         this.showcolors();
         this.selx.visible = true;
         this.selx.x = this.rcol1.x;
         this.selx.y = this.rcol2.y;
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.updateValues);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.stopDragging);
      }
      
      public function updateValues(event:MouseEvent) : void
      {
         var mc:MovieClip = this["mc" + this.mcpick];
         var newValue:Number = mouseX - x + parent.mcmain.x;
         newValue = Math.max(0,Math.min(360,newValue));
         mc.x = newValue;
         this.updateHexCode();
      }
      
      public function updateHexCode() : void
      {
         var h:Number = this.mc1.x / 360 * 360;
         var s:Number = this.mc2.x / 360 * 100;
         var l:Number = this.mc3.x / 360 * 100;
         var color:uint = this.hslToHex(h,s / 100,l / 100);
         this.hexx.text = "#" + color.toString(16).toUpperCase();
         parent.hexc = this.hexx.text.substr(1);
         this.updateColorDisplay(color);
         this.updateRGBColor(this.mc1.x);
         parent.colorchange();
         parent.colupdate();
         this.adjustLight();
         MovieClip(root).updatechar();
      }
      
      public function updateColorDisplay(color:uint) : void
      {
         var colorTransform:ColorTransform = this.ccolor.transform.colorTransform;
         colorTransform.color = color;
         this.ccolor.transform.colorTransform = colorTransform;
      }
      
      public function updateRGBColor(xPos:Number) : void
      {
         var offsetAngle:Number = 235;
         var angle:Number = (xPos / 360 * 360 + offsetAngle) % 360;
         var r:Number = this.calculateRainbowColor(angle + 120);
         var g:Number = this.calculateRainbowColor(angle);
         var b:Number = this.calculateRainbowColor(angle - 120);
         var rgbColor:uint = uint(int(r) << 16 | int(g) << 8 | int(b));
         var rgbTransform:ColorTransform = new ColorTransform();
         rgbTransform.color = rgbColor;
         this.rgbcol.transform.colorTransform = rgbTransform;
      }
      
      public function calculateRainbowColor(angle:Number) : Number
      {
         angle = (angle % 360 + 360) % 360;
         var sector:Number = angle / 60;
         var percent:Number = angle / 60 - Math.floor(angle / 60);
         switch(Math.floor(sector))
         {
            case 0:
               return 255;
            case 1:
               return 255 * (1 - percent);
            case 2:
               return 0;
            case 3:
               return 0;
            case 4:
               return 255 * percent;
            case 5:
               return 255;
            default:
               return 0;
         }
      }
      
      public function hslToHex(h:Number, s:Number, l:Number) : uint
      {
         var r:Number = NaN;
         var g:Number = NaN;
         var b:Number = NaN;
         var q:Number = NaN;
         var p:Number = NaN;
         if(s == 0)
         {
            r = g = b = l * 255;
         }
         else
         {
            q = l < 0.5 ? l * (1 + s) : l + s - l * s;
            p = 2 * l - q;
            r = this.hueToRGB(p,q,h + 120) * 255;
            g = this.hueToRGB(p,q,h) * 255;
            b = this.hueToRGB(p,q,h - 120) * 255;
         }
         return int(r) << 16 | int(g) << 8 | int(b);
      }
      
      public function hueToRGB(p:Number, q:Number, t:Number) : Number
      {
         if(t < 0)
         {
            t += 360;
         }
         if(t > 360)
         {
            t -= 360;
         }
         if(t < 60)
         {
            return p + (q - p) * t / 60;
         }
         if(t < 180)
         {
            return q;
         }
         if(t < 240)
         {
            return p + (q - p) * (240 - t) / 60;
         }
         return p;
      }
      
      public function adjustLight() : void
      {
         var normalizedPosition:Number = this.mc3.x % 361 / 361;
         if(normalizedPosition <= 0.5)
         {
            this.lightx.gotoAndStop(1);
            this.lightx.alpha = 1 - normalizedPosition * 2;
         }
         else
         {
            this.lightx.gotoAndStop(2);
            this.lightx.alpha = (normalizedPosition - 0.5) * 2;
         }
      }
      
      internal function frame1() : *
      {
         this.mcpick = 0;
         this.xcolorpick = "";
         this.favon = 1;
         this.favbt.addEventListener(MouseEvent.MOUSE_DOWN,this.favbtx);
         this.copybt.addEventListener(MouseEvent.MOUSE_DOWN,this.copybtx);
         this.inputbt.addEventListener(MouseEvent.MOUSE_DOWN,this.inputbtx);
         this.favleftbt.addEventListener(MouseEvent.MOUSE_DOWN,this.favleftbtx);
         this.favrightbt.addEventListener(MouseEvent.MOUSE_DOWN,this.favrightbtx);
         this.recblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.recblockerx);
         this.favblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.favblockerx);
         this.showcolors();
         this.startcol();
      }
   }
}

