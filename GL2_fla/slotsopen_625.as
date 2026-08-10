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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24858")]
   public dynamic class slotsopen_625 extends MovieClip
   {
      
      public var charpreview:MovieClip;
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var descx:TextField;
      
      public var mainblocker:MovieClip;
      
      public var mainslot1:MovieClip;
      
      public var mainslot2:MovieClip;
      
      public var mainslot3:MovieClip;
      
      public var mainslot4:MovieClip;
      
      public var mainslot5:MovieClip;
      
      public var mainslot6:MovieClip;
      
      public var mainslot7:MovieClip;
      
      public var mainslot8:MovieClip;
      
      public var selx:MovieClip;
      
      public var selx2:MovieClip;
      
      public var sideblocker:MovieClip;
      
      public var slotspage:MovieClip;
      
      public var slotx1:MovieClip;
      
      public var slotx10:MovieClip;
      
      public var slotx11:MovieClip;
      
      public var slotx12:MovieClip;
      
      public var slotx13:MovieClip;
      
      public var slotx14:MovieClip;
      
      public var slotx15:MovieClip;
      
      public var slotx16:MovieClip;
      
      public var slotx17:MovieClip;
      
      public var slotx18:MovieClip;
      
      public var slotx19:MovieClip;
      
      public var slotx2:MovieClip;
      
      public var slotx20:MovieClip;
      
      public var slotx3:MovieClip;
      
      public var slotx4:MovieClip;
      
      public var slotx5:MovieClip;
      
      public var slotx6:MovieClip;
      
      public var slotx7:MovieClip;
      
      public var slotx8:MovieClip;
      
      public var slotx9:MovieClip;
      
      public var studiobts:MovieClip;
      
      public var swapbt:MovieClip;
      
      public var swapx:MovieClip;
      
      public var swapmode:*;
      
      public var addnum:*;
      
      public var string1:*;
      
      public var string2:*;
      
      public var pick1:*;
      
      public var pick2:*;
      
      public var pickmode1:*;
      
      public var pickmode2:*;
      
      public function slotsopen_625()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         if(parent.mapx == 4)
         {
            parent.quickshow();
            parent.openslots = 1;
            parent.updatesloticons();
            parent.saveplayerstring();
            if(MovieClip(root).custpage >= 1)
            {
               MovieClip(root).saveundostring();
            }
         }
         parent.specialslot = 1;
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         if(parent.mapx == 4)
         {
            parent.quickshow();
            parent.openslots = 1;
            parent.updatesloticons();
            parent.saveplayerstring();
            if(MovieClip(root).custpage >= 1)
            {
               MovieClip(root).saveundostring();
            }
         }
         parent.specialslot = 1;
         gotoAndStop(2);
      }
      
      public function mainbtx(evt:MouseEvent) : void
      {
         parent.sfx = 1;
         parent.playsfx();
         parent.studiopage = 1;
         this.updateicons();
      }
      
      public function studiobtx(evt:MouseEvent) : void
      {
         parent.sfx = 1;
         parent.playsfx();
         parent.studiopage = 2;
         this.updateicons();
      }
      
      public function goswapmode() : void
      {
         if(this.swapmode == 1)
         {
            this.descx.text = "Additional Back-up Slots";
         }
         else if(this.swapmode == 2)
         {
            this.descx.text = "Choose two characters to switch";
         }
         else if(this.swapmode == 4)
         {
            this.descx.text = "Select a slot for the Featured Character";
         }
         else if(this.swapmode == 5)
         {
            this.descx.text = "Select a slot for the Gacha Character";
         }
         this.swapx.gotoAndStop(this.swapmode);
      }
      
      public function swapbtx(evt:MouseEvent) : void
      {
         parent.sfx = 1;
         parent.playsfx();
         if(this.swapmode == 1)
         {
            this.swapmode = 2;
         }
         else if(this.swapmode == 2 || this.swapmode == 3)
         {
            this.swapmode = 1;
         }
         this.goswapmode();
      }
      
      public function updateicons() : void
      {
         parent.openslots = 2;
         parent.updatesloticons();
         parent.openslots = 3;
         parent.updatesloticons();
         this.studiobts.gotoAndStop(parent.studiopage);
         parent.loadthumbnail = 2;
         parent.updateslotthumbail();
         trace("thumb");
         this.slotspage.pagex.text = "#" + (parent.slotspage * 20 - 19) + "-" + parent.slotspage * 20;
         if(parent.custpage >= 1)
         {
            parent.changeicon = 2;
            parent.updatecustinfo();
         }
      }
      
      public function slotsrightbtx(evt:MouseEvent) : void
      {
         parent.sfx = 4;
         parent.playsfx();
         parent.slotspage += 1;
         if(parent.slotspage > 15)
         {
            parent.slotspage = 1;
         }
         this.updateicons();
      }
      
      public function slotsleftbtx(evt:MouseEvent) : void
      {
         parent.sfx = 4;
         parent.playsfx();
         --parent.slotspage;
         if(parent.slotspage < 1)
         {
            parent.slotspage = 15;
         }
         this.updateicons();
      }
      
      public function mainblockerx(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 8; i++)
         {
            if(this["mainslot" + i].bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               parent.sfx = 4;
               parent.playsfx();
               parent.slotmain = 1;
               parent.oldslot = i + (parent.studiopage * 8 - 8);
               parent.slot = parent.oldslot;
               this.updateicons();
               if(this.swapmode == 2)
               {
                  this.string1 = parent["charstring" + parent.slot];
                  this.pick1 = parent.slot;
                  this.swapmode = 3;
                  this.pickmode1 = 1;
               }
               else if(this.swapmode == 3)
               {
                  this.string2 = parent["charstring" + parent.slot];
                  parent["charstring" + parent.slot] = this.string1;
                  if(this.pickmode1 == 1)
                  {
                     parent["charstring" + this.pick1] = this.string2;
                  }
                  else
                  {
                     parent["slotstring" + this.pick1] = this.string2;
                  }
                  parent.slotmain = 1;
                  parent.oldslot = i + (parent.studiopage * 8 - 8);
                  parent.slot = parent.oldslot;
                  this.updateicons();
                  this.swapmode = 2;
               }
               else
               {
                  if(this.swapmode == 4)
                  {
                     parent["charstring" + parent.slot] = parent.featstring;
                     parent.slotmain = 1;
                     parent.oldslot = i + (parent.studiopage * 8 - 8);
                     parent.slot = parent.oldslot;
                     parent.openslots = 1;
                     parent.specialslot = 1;
                     parent.saveplayerstring();
                     gotoAndStop(2);
                     break;
                  }
                  if(this.swapmode == 5)
                  {
                     parent["charstring" + parent.slot] = parent.unitstring;
                     parent.slotmain = 1;
                     parent.oldslot = i + (parent.studiopage * 8 - 8);
                     parent.slot = parent.oldslot;
                     parent.openslots = 1;
                     parent.specialslot = 1;
                     parent.saveplayerstring();
                     gotoAndStop(2);
                     break;
                  }
               }
               if(parent.mapx == 10)
               {
                  parent.loadstudio();
               }
            }
         }
      }
      
      public function sideblockerx(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 20; i++)
         {
            if(this["slotx" + i].bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               parent.sfx = 4;
               parent.playsfx();
               parent.slotmain = 2;
               parent.oldslot = i + (parent.slotspage * 20 - 20);
               parent.slot = parent.oldslot;
               this.updateicons();
               if(this.swapmode == 2)
               {
                  this.string1 = parent["slotstring" + parent.slot];
                  this.pick1 = parent.slot;
                  this.swapmode = 3;
                  this.pickmode1 = 2;
               }
               else if(this.swapmode == 3)
               {
                  this.string2 = parent["slotstring" + parent.slot];
                  parent["slotstring" + parent.slot] = this.string1;
                  if(this.pickmode1 == 1)
                  {
                     parent["charstring" + this.pick1] = this.string2;
                  }
                  else
                  {
                     parent["slotstring" + this.pick1] = this.string2;
                  }
                  parent.slotmain = 2;
                  parent.oldslot = i + (parent.slotspage * 20 - 20);
                  parent.slot = parent.oldslot;
                  this.updateicons();
                  this.swapmode = 2;
               }
               else
               {
                  if(this.swapmode == 4)
                  {
                     parent["slotstring" + parent.slot] = parent.featstring;
                     trace(parent.featstring);
                     parent.slotmain = 2;
                     parent.oldslot = i + (parent.slotspage * 20 - 20);
                     parent.slot = parent.oldslot;
                     parent.openslots = 1;
                     parent.specialslot = 1;
                     parent.saveplayerstring();
                     gotoAndStop(2);
                     break;
                  }
                  if(this.swapmode == 5)
                  {
                     parent["slotstring" + parent.slot] = parent.unitstring;
                     trace(parent.unitstring);
                     parent.slotmain = 2;
                     parent.oldslot = i + (parent.slotspage * 20 - 20);
                     parent.slot = parent.oldslot;
                     parent.openslots = 1;
                     parent.specialslot = 1;
                     parent.saveplayerstring();
                     gotoAndStop(2);
                     break;
                  }
               }
               if(parent.mapx == 10)
               {
                  parent.loadstudio();
               }
            }
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
         if(parent.mapx == 4)
         {
            parent.quickhide();
         }
         this.swapmode = 1;
         if(parent.specialslot == 2)
         {
            this.swapbt.visible = false;
            this.swapx.visible = false;
            this.swapmode = 4;
         }
         else if(parent.specialslot == 3)
         {
            this.swapbt.visible = false;
            this.swapx.visible = false;
            this.swapmode = 5;
         }
         this.addnum = 0;
         this.string1 = "";
         this.string2 = "";
         this.pick1 = 0;
         this.pick2 = 0;
         this.pickmode1 = 0;
         this.pickmode2 = 0;
         this.updateicons();
         this.studiobts.mainbt.addEventListener(MouseEvent.MOUSE_DOWN,this.mainbtx);
         this.studiobts.studiobt.addEventListener(MouseEvent.MOUSE_DOWN,this.studiobtx);
         this.goswapmode();
         this.swapbt.addEventListener(MouseEvent.MOUSE_DOWN,this.swapbtx);
         this.slotspage.rightbt.addEventListener(MouseEvent.MOUSE_DOWN,this.slotsrightbtx);
         this.slotspage.leftbt.addEventListener(MouseEvent.MOUSE_DOWN,this.slotsleftbtx);
         this.mainblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.mainblockerx);
         this.sideblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.sideblockerx);
      }
   }
}

