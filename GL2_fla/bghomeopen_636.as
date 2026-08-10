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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25067")]
   public dynamic class bghomeopen_636 extends MovieClip
   {
      
      public var bg1:MovieClip;
      
      public var bg10:MovieClip;
      
      public var bg11:MovieClip;
      
      public var bg12:MovieClip;
      
      public var bg2:MovieClip;
      
      public var bg3:MovieClip;
      
      public var bg4:MovieClip;
      
      public var bg5:MovieClip;
      
      public var bg6:MovieClip;
      
      public var bg7:MovieClip;
      
      public var bg8:MovieClip;
      
      public var bg9:MovieClip;
      
      public var bgblocker:MovieClip;
      
      public var bgbt1:MovieClip;
      
      public var bgbt10:MovieClip;
      
      public var bgbt11:MovieClip;
      
      public var bgbt12:MovieClip;
      
      public var bgbt2:MovieClip;
      
      public var bgbt3:MovieClip;
      
      public var bgbt4:MovieClip;
      
      public var bgbt5:MovieClip;
      
      public var bgbt6:MovieClip;
      
      public var bgbt7:MovieClip;
      
      public var bgbt8:MovieClip;
      
      public var bgbt9:MovieClip;
      
      public var bgnamex:TextField;
      
      public var bgpagebt:MovieClip;
      
      public var c1alphaleftbt:MovieClip;
      
      public var c1alpharightbt:MovieClip;
      
      public var c1bt:MovieClip;
      
      public var c2alphaleftbt:MovieClip;
      
      public var c2alpharightbt:MovieClip;
      
      public var c2bt:MovieClip;
      
      public var c3alphaleftbt:MovieClip;
      
      public var c3alpharightbt:MovieClip;
      
      public var c3bt:MovieClip;
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var gradleftbt:MovieClip;
      
      public var gradrightbt:MovieClip;
      
      public var gradx:MovieClip;
      
      public var musicleftbt:MovieClip;
      
      public var musicrightbt:MovieClip;
      
      public var musicx:MovieClip;
      
      public var selx:MovieClip;
      
      public var bgpage:*;
      
      public var maxbgpage:*;
      
      public var bgname:*;
      
      public function bghomeopen_636()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.bgopen = 1;
         parent.sfx = 2;
         parent.playsfx();
         parent.savex();
         parent.quickshow();
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         parent.bgopen = 1;
         parent.sfx = 2;
         parent.playsfx();
         parent.savex();
         parent.quickshow();
         gotoAndStop(2);
      }
      
      public function bgnamego() : void
      {
         if(parent.bg == 25)
         {
            this.bgname = "DITZEE";
         }
         else if(parent.bg == 26)
         {
            this.bgname = "maya.silver";
         }
         else if(parent.bg == 27)
         {
            this.bgname = "KeNnyMc";
         }
         else if(parent.bg == 28)
         {
            this.bgname = "Milky Chocc";
         }
         else if(parent.bg == 29)
         {
            this.bgname = "Milky Chocc";
         }
         else if(parent.bg == 30)
         {
            this.bgname = "pewe";
         }
         else if(parent.bg == 31)
         {
            this.bgname = "spourk";
         }
         else if(parent.bg == 32)
         {
            this.bgname = "victaton";
         }
         else if(parent.bg == 33)
         {
            this.bgname = "spourk";
         }
         else if(parent.bg == 34)
         {
            this.bgname = "pewe";
         }
         else if(parent.bg == 35)
         {
            this.bgname = "Nao_flipnote";
         }
         else if(parent.bg == 36)
         {
            this.bgname = "victaton";
         }
         else if(parent.bg == 37)
         {
            this.bgname = "Asher";
         }
         else if(parent.bg == 38)
         {
            this.bgname = "ReiNil";
         }
         else if(parent.bg == 39)
         {
            this.bgname = "RikoArtz13";
         }
         else if(parent.bg == 40)
         {
            this.bgname = "Krixa_";
         }
         else if(parent.bg == 41)
         {
            this.bgname = "Krixa_";
         }
         else if(parent.bg == 42)
         {
            this.bgname = "Suzume Knight";
         }
         else if(parent.bg == 43)
         {
            this.bgname = "spourk";
         }
         else if(parent.bg == 44)
         {
            this.bgname = "Avirls";
         }
         else if(parent.bg == 45)
         {
            this.bgname = "killu";
         }
         else if(parent.bg == 46)
         {
            this.bgname = "Moonlit Window";
         }
         else if(parent.bg == 47)
         {
            this.bgname = "KeNnyMc";
         }
         else if(parent.bg == 48)
         {
            this.bgname = "maya.silver";
         }
         else if(parent.bg == 49)
         {
            this.bgname = "maya.silver";
         }
         else if(parent.bg == 50)
         {
            this.bgname = "wapa";
         }
         else if(parent.bg == 51)
         {
            this.bgname = "wawa, vri, spourk";
         }
         else if(parent.bg == 52)
         {
            this.bgname = "mafinmuu";
         }
         else if(parent.bg == 53)
         {
            this.bgname = "shininghatsya";
         }
         else if(parent.bg == 54)
         {
            this.bgname = "Suzume Knight";
         }
         else if(parent.bg == 55)
         {
            this.bgname = "DITZEE";
         }
         else if(parent.bg == 56)
         {
            this.bgname = "feqthers";
         }
         else if(parent.bg == 57)
         {
            this.bgname = "spourk";
         }
         else if(parent.bg == 58)
         {
            this.bgname = "editor_zephyr";
         }
         else if(parent.bg == 59)
         {
            this.bgname = "editor_zephyr";
         }
         else if(parent.bg == 60)
         {
            this.bgname = "Asher";
         }
         else if(parent.bg == 61)
         {
            this.bgname = "Creator Daiten";
         }
         else if(parent.bg == 62)
         {
            this.bgname = "Milky Chocc";
         }
         else if(parent.bg == 63)
         {
            this.bgname = "victaton";
         }
         else if(parent.bg == 64)
         {
            this.bgname = "qukuit";
         }
         else if(parent.bg == 65)
         {
            this.bgname = "Starlight";
         }
         else if(parent.bg == 66)
         {
            this.bgname = "Aiichoo";
         }
         else if(parent.bg == 67)
         {
            this.bgname = "X3AN";
         }
         else if(parent.bg == 68)
         {
            this.bgname = "Arish";
         }
         else if(parent.bg == 69)
         {
            this.bgname = "KirlynEver";
         }
         else if(parent.bg == 70)
         {
            this.bgname = "Asher, Skylar";
         }
         else if(parent.bg == 71)
         {
            this.bgname = "Makushine";
         }
         else if(parent.bg == 72)
         {
            this.bgname = "Avirls";
         }
         else if(parent.bg == 73)
         {
            this.bgname = "editor_zephyr";
         }
         else if(parent.bg == 74)
         {
            this.bgname = "editor_zephyr";
         }
         else if(parent.bg == 75)
         {
            this.bgname = "Criminy (Meowcri)";
         }
         else if(parent.bg == 76)
         {
            this.bgname = "The Silent One";
         }
         else if(parent.bg == 77)
         {
            this.bgname = "alrylixx";
         }
         else if(parent.bg == 78)
         {
            this.bgname = "CHOSHASHI";
         }
         else if(parent.bg == 79)
         {
            this.bgname = "Asher";
         }
         else if(parent.bg == 80)
         {
            this.bgname = "Suzume Knight & meowcri";
         }
         else if(parent.bg == 81)
         {
            this.bgname = "Eva\'s Stuff";
         }
         else if(parent.bg == 82)
         {
            this.bgname = "alrylixx";
         }
         else if(parent.bg == 83)
         {
            this.bgname = "Makushine";
         }
         else if(parent.bg == 84)
         {
            this.bgname = "Arish";
         }
         else if(parent.bg == 85)
         {
            this.bgname = "Eva\'s Stuff";
         }
         else if(parent.bg == 86)
         {
            this.bgname = "Flocktheclock";
         }
         else if(parent.bg == 87)
         {
            this.bgname = "alrylixx";
         }
         else if(parent.bg == 88)
         {
            this.bgname = "Moonlit Window";
         }
         else if(parent.bg == 89)
         {
            this.bgname = "Nomu_Ottilie";
         }
         else if(parent.bg == 90)
         {
            this.bgname = "Flocktheclock";
         }
         else if(parent.bg == 91)
         {
            this.bgname = "X3AN";
         }
         else if(parent.bg == 92)
         {
            this.bgname = "beanbug.";
         }
         else if(parent.bg == 93)
         {
            this.bgname = "KirlynEver";
         }
         else if(parent.bg == 94)
         {
            this.bgname = "Rei_Nil";
         }
         else if(parent.bg == 95)
         {
            this.bgname = "143";
         }
         else if(parent.bg == 96)
         {
            this.bgname = "Alrylixx";
         }
         else if(parent.bg == 97)
         {
            this.bgname = "Maya.Silver";
         }
         else if(parent.bg == 98)
         {
            this.bgname = "wapa";
         }
         else if(parent.bg == 99)
         {
            this.bgname = "itu (qukuit)";
         }
         else if(parent.bg == 100)
         {
            this.bgname = "itu (qukuit)";
         }
         else if(parent.bg == 101)
         {
            this.bgname = "Alrylixx";
         }
         else if(parent.bg == 102)
         {
            this.bgname = "Alrylixx";
         }
         else if(parent.bg == 103)
         {
            this.bgname = "Alrylixx";
         }
         else if(parent.bg == 104)
         {
            this.bgname = "Asher";
         }
         else if(parent.bg == 105)
         {
            this.bgname = "Asher";
         }
         else if(parent.bg == 106)
         {
            this.bgname = "auroraelois";
         }
         else if(parent.bg == 107)
         {
            this.bgname = "Avirls";
         }
         else if(parent.bg == 108)
         {
            this.bgname = "Birds";
         }
         else if(parent.bg == 109)
         {
            this.bgname = "Birds";
         }
         else if(parent.bg == 110)
         {
            this.bgname = "Creator Daiten";
         }
         else if(parent.bg == 111)
         {
            this.bgname = "Creator Daiten";
         }
         else if(parent.bg == 112)
         {
            this.bgname = "editor_zephyr";
         }
         else if(parent.bg == 113)
         {
            this.bgname = "flocktheclock";
         }
         else if(parent.bg == 114)
         {
            this.bgname = "KeNnyMc";
         }
         else if(parent.bg == 115)
         {
            this.bgname = "KeNnyMc";
         }
         else if(parent.bg == 116)
         {
            this.bgname = "killu";
         }
         else if(parent.bg == 117)
         {
            this.bgname = "killu";
         }
         else if(parent.bg == 118)
         {
            this.bgname = "Maya.Silver";
         }
         else if(parent.bg == 119)
         {
            this.bgname = "Maya.Silver";
         }
         else if(parent.bg == 120)
         {
            this.bgname = "Maya.Silver";
         }
         else if(parent.bg == 121)
         {
            this.bgname = "Maya.Silver";
         }
         else if(parent.bg == 122)
         {
            this.bgname = "Moonlit Window";
         }
         else if(parent.bg == 123)
         {
            this.bgname = "nao_flipnote";
         }
         else if(parent.bg == 124)
         {
            this.bgname = "nostalgik.AI";
         }
         else if(parent.bg == 125)
         {
            this.bgname = "rienaka";
         }
         else if(parent.bg == 126)
         {
            this.bgname = "Sam_ix";
         }
         else if(parent.bg == 127)
         {
            this.bgname = "Sam_ix";
         }
         else if(parent.bg == 128)
         {
            this.bgname = "ScryL";
         }
         else if(parent.bg == 129)
         {
            this.bgname = "ScryL";
         }
         else if(parent.bg == 130)
         {
            this.bgname = "starfinder";
         }
         else if(parent.bg == 131)
         {
            this.bgname = "starfinder";
         }
         else if(parent.bg == 132)
         {
            this.bgname = "Starlight";
         }
         else if(parent.bg == 133)
         {
            this.bgname = "Starlight";
         }
         else if(parent.bg == 134)
         {
            this.bgname = "Starlight, MoonlitWindow, Zephyr";
         }
         else if(parent.bg == 135)
         {
            this.bgname = "Suzume Knight";
         }
         if(parent.bg >= 1 && parent.bg <= 24)
         {
            this.bgnamex.text = "BG #" + parent.bg;
         }
         else
         {
            this.bgnamex.text = "BG #" + parent.bg + " by: " + this.bgname;
         }
      }
      
      public function uibg() : void
      {
         this.selx.gotoAndStop(parent.bg);
         this.gradx.numx.text = "Gradient " + parent.bggrad + "/20";
         this.gradx.opac1.text = "Opacity: " + parent.bggradalpha1 * 5 + "%";
         this.gradx.opac2.text = "Opacity: " + parent.bggradalpha2 * 5 + "%";
         this.gradx.opac3.text = "Opacity: " + parent.bggradalpha3 * 5 + "%";
         parent.ggcolor1.setTint("0x" + parent.bgcol1,1);
         parent.ggcolor2.setTint("0x" + parent.bgcol2,1);
         parent.ggcolor3.setTint("0x" + parent.bgcol3,1);
         this.gradx.gradx.gradx.gotoAndStop("none");
         this.gradx.gradx.gradx.gotoAndStop(parent.bggrad);
         this.gradx.gradx.gradx.c1.transform.colorTransform = parent.ggcolor1;
         this.gradx.c1.transform.colorTransform = parent.ggcolor1;
         this.gradx.gradx.gradx.c2.transform.colorTransform = parent.ggcolor2;
         this.gradx.c2.transform.colorTransform = parent.ggcolor2;
         this.gradx.gradx.sqx.transform.colorTransform = parent.ggcolor3;
         this.gradx.c3.transform.colorTransform = parent.ggcolor3;
         if(parent.bgmusic == 0)
         {
            this.musicx.numx.text = "None";
         }
         else
         {
            this.musicx.numx.text = "#" + parent.bgmusic + "/" + parent.maxmusic;
         }
         for(var i:* = 1; i <= 12; i++)
         {
            this["bg" + i].gotoAndStop(i + (this.bgpage * 12 - 12));
            if(this.bgpage == this.maxbgpage && parent.maxbg == this.maxbgpage * 12)
            {
               this["bg" + i].visible = true;
               this["bgbt" + i].scaleX = 0.88;
               this["bgbt" + i].scaleY = 0.88;
            }
            else if(this.bgpage < this.maxbgpage || this.bgpage == this.maxbgpage && i <= parent.maxbg % 12)
            {
               this["bg" + i].visible = true;
               this["bgbt" + i].scaleX = 0.88;
               this["bgbt" + i].scaleY = 0.88;
            }
            else
            {
               this["bg" + i].visible = false;
               this["bgbt" + i].scaleX = 0;
               this["bgbt" + i].scaleY = 0;
            }
         }
         if(parent.bg > this.bgpage * 12 - 12 && parent.bg <= this.bgpage * 12)
         {
            this.selx.visible = true;
            this.selx.x = this["bgbt" + (parent.bg - (this.bgpage * 12 - 12))].x;
            this.selx.y = this["bgbt" + (parent.bg - (this.bgpage * 12 - 12))].y;
         }
         else
         {
            this.selx.visible = false;
         }
         this.bgnamego();
         this.bgpagebt.pagex.text = this.bgpage + "/" + this.maxbgpage;
      }
      
      public function changemusic() : void
      {
         parent.musicplay = 2;
         parent.musicpick = parent.bgmusic;
         parent.musicplayer();
      }
      
      public function bgblockerx(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 12; i++)
         {
            if(this["bgbt" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               parent.bg = i + (this.bgpage * 12 - 12);
               parent.updatebg();
               this.uibg();
            }
         }
         if(this.bgpagebt.leftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --this.bgpage;
            if(this.bgpage < 1)
            {
               this.bgpage = this.maxbgpage;
            }
            this.uibg();
         }
         else if(this.bgpagebt.rightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            this.bgpage += 1;
            if(this.bgpage > this.maxbgpage)
            {
               this.bgpage = 1;
            }
            this.uibg();
         }
         if(this.gradleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.bggrad;
            if(parent.bggrad < 1)
            {
               parent.bggrad = 20;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.gradrightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.bggrad += 1;
            if(parent.bggrad > 20)
            {
               parent.bggrad = 1;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.c1bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 1;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c2bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 2;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c3bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 3;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c1alphaleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.bggradalpha1;
            if(parent.bggradalpha1 < 0)
            {
               parent.bggradalpha1 = 20;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.c1alpharightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.bggradalpha1 += 1;
            if(parent.bggradalpha1 > 20)
            {
               parent.bggradalpha1 = 0;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.c2alphaleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.bggradalpha2;
            if(parent.bggradalpha2 < 0)
            {
               parent.bggradalpha2 = 20;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.c2alpharightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.bggradalpha2 += 1;
            if(parent.bggradalpha2 > 20)
            {
               parent.bggradalpha2 = 0;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.c3alphaleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.bggradalpha3;
            if(parent.bggradalpha3 < 0)
            {
               parent.bggradalpha3 = 20;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.c3alpharightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.bggradalpha3 += 1;
            if(parent.bggradalpha3 > 20)
            {
               parent.bggradalpha3 = 0;
            }
            parent.updatebg();
            this.uibg();
         }
         else if(this.musicleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.bgmusic;
            if(parent.bgmusic < 0)
            {
               parent.bgmusic = parent.maxmusic;
            }
            this.uibg();
            this.changemusic();
         }
         else if(this.musicrightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.bgmusic += 1;
            if(parent.bgmusic > parent.maxmusic)
            {
               parent.bgmusic = 0;
            }
            this.uibg();
            this.changemusic();
         }
      }
      
      internal function frame1() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame2() : *
      {
         stop();
      }
      
      internal function frame3() : *
      {
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
         this.closebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.closebt2x);
         this.bgpage = 1;
         this.maxbgpage = Math.ceil(parent.maxbg / 12);
         this.bgname = "";
         this.bgpage = Math.ceil(parent.bg / 12);
         parent.quickhide();
         this.uibg();
         this.bgblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.bgblockerx);
      }
   }
}

