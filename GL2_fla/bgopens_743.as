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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25914")]
   public dynamic class bgopens_743 extends MovieClip
   {
      
      public var adjustgradbt:MovieClip;
      
      public var bg1:MovieClip;
      
      public var bg2:MovieClip;
      
      public var bg3:MovieClip;
      
      public var bg4:MovieClip;
      
      public var bg5:MovieClip;
      
      public var bg6:MovieClip;
      
      public var bg7:MovieClip;
      
      public var bg8:MovieClip;
      
      public var bgadjustbt:MovieClip;
      
      public var bgblocker1:MovieClip;
      
      public var bgblocker3:MovieClip;
      
      public var bgblocker4:MovieClip;
      
      public var bgbt1:MovieClip;
      
      public var bgbt2:MovieClip;
      
      public var bgbt3:MovieClip;
      
      public var bgbt4:MovieClip;
      
      public var bgbt5:MovieClip;
      
      public var bgbt6:MovieClip;
      
      public var bgbt7:MovieClip;
      
      public var bgbt8:MovieClip;
      
      public var bgpagebt:MovieClip;
      
      public var bgpagebt1:MovieClip;
      
      public var bgpagebt2:MovieClip;
      
      public var bgpagebt3:MovieClip;
      
      public var bgpagebt4:MovieClip;
      
      public var bgpagebt5:MovieClip;
      
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
      
      public var gradleftbt:MovieClip;
      
      public var gradrightbt:MovieClip;
      
      public var gradx:MovieClip;
      
      public var savepages:MovieClip;
      
      public var saveselx:MovieClip;
      
      public var saveslot1:MovieClip;
      
      public var saveslot10:MovieClip;
      
      public var saveslot2:MovieClip;
      
      public var saveslot3:MovieClip;
      
      public var saveslot4:MovieClip;
      
      public var saveslot5:MovieClip;
      
      public var saveslot6:MovieClip;
      
      public var saveslot7:MovieClip;
      
      public var saveslot8:MovieClip;
      
      public var saveslot9:MovieClip;
      
      public var selx:MovieClip;
      
      public var bgpage:*;
      
      public var maxbgpage:*;
      
      public var savepage:*;
      
      public function bgopens_743()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4,4,this.frame5,5,this.frame6,6,this.frame7);
      }
      
      public function uibg1() : void
      {
         var i:* = undefined;
         this.selx.gotoAndStop(parent.sbgx);
         for(i = 1; i <= 8; i++)
         {
            this["bg" + i].gotoAndStop(i + (this.bgpage * 8 - 8));
         }
         if(parent.sbgx > this.bgpage * 8 - 8 && parent.sbgx <= this.bgpage * 8)
         {
            this.selx.visible = true;
            this.selx.x = this["bgbt" + (parent.sbgx - (this.bgpage * 8 - 8))].x;
            this.selx.y = this["bgbt" + (parent.sbgx - (this.bgpage * 8 - 8))].y;
         }
         else
         {
            this.selx.visible = false;
         }
         this.bgpagebt.pagex.text = this.bgpage + "/" + this.maxbgpage;
         for(i = 1; i <= 8; i++)
         {
            this["bg" + i].gotoAndStop(i + (this.bgpage * 8 - 8));
            if(this.bgpage == this.maxbgpage && parent.maxbg == this.maxbgpage * 8)
            {
               this["bg" + i].visible = true;
               this["bgbt" + i].scaleX = 0.88;
               this["bgbt" + i].scaleY = 0.88;
            }
            else if(this.bgpage < this.maxbgpage || this.bgpage == this.maxbgpage && i <= parent.maxbg % 8)
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
      }
      
      public function bgblocker1x(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 8; i++)
         {
            if(this["bgbt" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               parent.sbgx = i + (this.bgpage * 8 - 8);
               parent.updatestudiobg();
               this.uibg1();
            }
         }
         if(this.bgpagebt.leftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --this.bgpage;
            if(this.bgpage < 1)
            {
               this.bgpage = this.maxbgpage;
            }
            this.uibg1();
         }
         else if(this.bgpagebt.rightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            this.bgpage += 1;
            if(this.bgpage > this.maxbgpage)
            {
               this.bgpage = 1;
            }
            this.uibg1();
         }
         else if(this.bgadjustbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.studioadjust.gotoAndStop(3);
         }
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.savestudiostring();
         parent.openstudiopage = 0;
         gotoAndStop(2);
      }
      
      public function bgpagebt1x(evt:MouseEvent) : void
      {
         parent.savestudiostring();
         gotoAndStop(3);
      }
      
      public function bgpagebt2x(evt:MouseEvent) : void
      {
         parent.savestudiostring();
      }
      
      public function bgpagebt3x(evt:MouseEvent) : void
      {
         parent.savestudiostring();
         gotoAndStop(5);
      }
      
      public function bgpagebt4x(evt:MouseEvent) : void
      {
         parent.savestudiostring();
         gotoAndStop(6);
      }
      
      public function bgpagebt5x(evt:MouseEvent) : void
      {
         parent.savestudiostring();
      }
      
      public function uibg3() : void
      {
         this.gradx.numx.text = "Gradient " + parent.sgrad + "/20";
         this.gradx.opac1.text = "Opacity: " + parent.sgradalpha1 * 5 + "%";
         this.gradx.opac2.text = "Opacity: " + parent.sgradalpha2 * 5 + "%";
         this.gradx.opac3.text = "Opacity: " + parent.sgradalpha3 * 5 + "%";
         parent.ggcolor1.setTint("0x" + parent.scol1,1);
         parent.ggcolor2.setTint("0x" + parent.scol2,1);
         parent.ggcolor3.setTint("0x" + parent.scol3,1);
         this.gradx.gradx.gradx.gotoAndStop("none");
         this.gradx.gradx.gradx.gotoAndStop(parent.sgrad);
         this.gradx.gradx.gradx.c1.transform.colorTransform = parent.ggcolor1;
         this.gradx.c1.transform.colorTransform = parent.ggcolor1;
         this.gradx.gradx.gradx.c2.transform.colorTransform = parent.ggcolor2;
         this.gradx.c2.transform.colorTransform = parent.ggcolor2;
         this.gradx.gradx.sqx.transform.colorTransform = parent.ggcolor3;
         this.gradx.c3.transform.colorTransform = parent.ggcolor3;
      }
      
      public function bgblocker3x(event:MouseEvent) : void
      {
         if(this.gradleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.sgrad;
            if(parent.sgrad < 1)
            {
               parent.sgrad = 20;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
         else if(this.gradrightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.sgrad += 1;
            if(parent.sgrad > 20)
            {
               parent.sgrad = 1;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
         else if(this.adjustgradbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.studioadjust.gotoAndStop(3);
         }
         else if(this.c1bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 4;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c2bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 5;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c3bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 6;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c1alphaleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.sgradalpha1;
            if(parent.sgradalpha1 < 0)
            {
               parent.sgradalpha1 = 20;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
         else if(this.c1alpharightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.sgradalpha1 += 1;
            if(parent.sgradalpha1 > 20)
            {
               parent.sgradalpha1 = 0;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
         else if(this.c2alphaleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.sgradalpha2;
            if(parent.sgradalpha2 < 0)
            {
               parent.sgradalpha2 = 20;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
         else if(this.c2alpharightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.sgradalpha2 += 1;
            if(parent.sgradalpha2 > 20)
            {
               parent.sgradalpha2 = 0;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
         else if(this.c3alphaleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.sgradalpha3;
            if(parent.sgradalpha3 < 0)
            {
               parent.sgradalpha3 = 20;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
         else if(this.c3alpharightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.sgradalpha3 += 1;
            if(parent.sgradalpha3 > 20)
            {
               parent.sgradalpha3 = 0;
            }
            parent.updatestudiobg();
            this.uibg3();
         }
      }
      
      public function updatesaves() : void
      {
         if(parent.studiobgslot > this.savepage * 10 - 10 && parent.studiobgslot <= this.savepage * 10)
         {
            this.saveselx.visible = true;
            this.saveselx.x = this["saveslot" + (parent.studiobgslot - (this.savepage * 10 - 10))].x;
            this.saveselx.y = this["saveslot" + (parent.studiobgslot - (this.savepage * 10 - 10))].y;
         }
         else
         {
            this.saveselx.visible = false;
         }
         var sarray1:Array = parent["bgstring" + (1 + this.savepage * 10 - 10)].split("|");
         var sarray2:Array = parent["bgstring" + (2 + this.savepage * 10 - 10)].split("|");
         var sarray3:Array = parent["bgstring" + (3 + this.savepage * 10 - 10)].split("|");
         var sarray4:Array = parent["bgstring" + (4 + this.savepage * 10 - 10)].split("|");
         var sarray5:Array = parent["bgstring" + (5 + this.savepage * 10 - 10)].split("|");
         var sarray6:Array = parent["bgstring" + (6 + this.savepage * 10 - 10)].split("|");
         var sarray7:Array = parent["bgstring" + (7 + this.savepage * 10 - 10)].split("|");
         var sarray8:Array = parent["bgstring" + (8 + this.savepage * 10 - 10)].split("|");
         var sarray9:Array = parent["bgstring" + (9 + this.savepage * 10 - 10)].split("|");
         var sarray10:Array = parent["bgstring" + (10 + this.savepage * 10 - 10)].split("|");
         this.saveslot1.bgx.gotoAndStop(int(sarray1[0]));
         this.saveslot2.bgx.gotoAndStop(int(sarray2[0]));
         this.saveslot3.bgx.gotoAndStop(int(sarray3[0]));
         this.saveslot4.bgx.gotoAndStop(int(sarray4[0]));
         this.saveslot5.bgx.gotoAndStop(int(sarray5[0]));
         this.saveslot6.bgx.gotoAndStop(int(sarray6[0]));
         this.saveslot7.bgx.gotoAndStop(int(sarray7[0]));
         this.saveslot8.bgx.gotoAndStop(int(sarray8[0]));
         this.saveslot9.bgx.gotoAndStop(int(sarray9[0]));
         this.saveslot10.bgx.gotoAndStop(int(sarray10[0]));
         this.saveslot1.totalx.text = "x" + int(sarray1[864]);
         this.saveslot2.totalx.text = "x" + int(sarray2[864]);
         this.saveslot3.totalx.text = "x" + int(sarray3[864]);
         this.saveslot4.totalx.text = "x" + int(sarray4[864]);
         this.saveslot5.totalx.text = "x" + int(sarray5[864]);
         this.saveslot6.totalx.text = "x" + int(sarray6[864]);
         this.saveslot7.totalx.text = "x" + int(sarray7[864]);
         this.saveslot8.totalx.text = "x" + int(sarray8[864]);
         this.saveslot9.totalx.text = "x" + int(sarray9[864]);
         this.saveslot10.totalx.text = "x" + int(sarray10[864]);
         for(var i:* = 1; i <= 10; i++)
         {
            this["saveslot" + i].numx.text = "#" + (i + (this.savepage * 10 - 10));
         }
         this.savepages.pagex.text = this.savepage + "/10";
      }
      
      public function bgblocker4x(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 10; i++)
         {
            if(this["saveslot" + i].bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               parent.studiobgslot = i + (this.savepage * 10 - 10);
               parent.updatestudiobg();
               parent.getstudiostring();
               parent.updatestudiobg();
               parent.updatetext();
               parent.updateallstudiochar();
               parent.updatestudio();
               this.updatesaves();
            }
         }
         if(this.savepages.rightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            this.savepage += 1;
            if(this.savepage > 10)
            {
               this.savepage = 1;
            }
            this.updatesaves();
         }
         if(this.savepages.leftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --this.savepage;
            if(this.savepage < 1)
            {
               this.savepage = 10;
            }
            this.updatesaves();
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
         this.bgpage = 1;
         this.maxbgpage = Math.ceil(parent.maxbg / 8);
         parent.bgstudiopage = 1;
         this.bgpage = Math.ceil(parent.sbgx / 8);
         this.uibg1();
         this.bgblocker1.addEventListener(MouseEvent.MOUSE_DOWN,this.bgblocker1x);
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
         this.bgpagebt1.addEventListener(MouseEvent.MOUSE_DOWN,this.bgpagebt1x);
         this.bgpagebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.bgpagebt2x);
         this.bgpagebt3.addEventListener(MouseEvent.MOUSE_DOWN,this.bgpagebt3x);
         this.bgpagebt4.addEventListener(MouseEvent.MOUSE_DOWN,this.bgpagebt4x);
         this.bgpagebt5.addEventListener(MouseEvent.MOUSE_DOWN,this.bgpagebt5x);
      }
      
      internal function frame4() : *
      {
         parent.bgstudiopage = 2;
      }
      
      internal function frame5() : *
      {
         this.uibg3();
         parent.bgstudiopage = 3;
         this.bgblocker3.addEventListener(MouseEvent.MOUSE_DOWN,this.bgblocker3x);
      }
      
      internal function frame6() : *
      {
         parent.bgstudiopage = 4;
         this.savepage = 1;
         this.updatesaves();
         this.bgblocker4.addEventListener(MouseEvent.MOUSE_DOWN,this.bgblocker4x);
      }
      
      internal function frame7() : *
      {
         parent.bgstudiopage = 5;
      }
   }
}

