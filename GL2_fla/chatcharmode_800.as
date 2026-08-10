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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol26049")]
   public dynamic class chatcharmode_800 extends MovieClip
   {
      
      public var adjustbt:MovieClip;
      
      public var bubbleleftbt:MovieClip;
      
      public var bubblerightbt:MovieClip;
      
      public var bubblex:MovieClip;
      
      public var c1bt:MovieClip;
      
      public var c2bt:MovieClip;
      
      public var c3bt:MovieClip;
      
      public var c4bt:MovieClip;
      
      public var c5bt:MovieClip;
      
      public var ccol:MovieClip;
      
      public var chatblocker:MovieClip;
      
      public var chatx:chata;
      
      public var closebt:MovieClip;
      
      public var deletebt:MovieClip;
      
      public var fontleftbt:MovieClip;
      
      public var fontrightbt:MovieClip;
      
      public var fontx:MovieClip;
      
      public var namedisplayx:MovieClip;
      
      public var nameleftbt:MovieClip;
      
      public var namerightbt:MovieClip;
      
      public var typechatbt:MovieClip;
      
      public function chatcharmode_800()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.openstudiopage = 0;
         gotoAndStop(2);
      }
      
      public function gochat() : void
      {
         this.namedisplayx.numx.text = parent["schatname" + parent.spick] + "/1";
         this.bubblex.numx.text = parent["scharchat" + parent.spick] + "/4";
         this.fontx.numx.text = parent["schatfont" + parent.spick] + "/1";
         if(parent["schatname" + parent.spick] == 0)
         {
            this.chatx.namex.visible = false;
         }
         else
         {
            this.chatx.namex.visible = true;
         }
         parent.ggcolor1.setTint("0x" + parent["schat" + parent.spick + "colx1"],1);
         parent.ggcolor2.setTint("0x" + parent["schat" + parent.spick + "colx2"],1);
         parent.ggcolor3.setTint("0x" + parent["schat" + parent.spick + "colx3"],1);
         parent.ggcolor4.setTint("0x" + parent["schat" + parent.spick + "colx4"],1);
         parent.ggcolor5.setTint("0x" + parent["schat" + parent.spick + "colx5"],1);
         this.chatx.namex.namex.text = parent["stuname" + parent.spick];
         this.chatx.namex.namex2.text = parent["stuname" + parent.spick];
         this.chatx.chatx.c1.text = parent["schatmsg" + parent.spick];
         if(parent["schatmsg" + parent.spick] == "")
         {
            this.deletebt.visible = false;
         }
         else
         {
            this.deletebt.visible = true;
         }
         if(this.chatx.chatx.c1.numLines == 1)
         {
            this.chatx.chatx.c1.y = -16.5;
         }
         for(var i:* = 2; i <= 4; i++)
         {
            if(this.chatx.chatx.c1.numLines == 2)
            {
               this.chatx.chatx.c1.y = -33;
               this.chatx.chatx["c" + i].gotoAndStop(7 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.numLines == 3)
            {
               this.chatx.chatx.c1.y = -46;
               this.chatx.chatx["c" + i].gotoAndStop(8 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.numLines == 4)
            {
               this.chatx.chatx.c1.y = -63;
               this.chatx.chatx["c" + i].gotoAndStop(9 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.numLines >= 5)
            {
               this.chatx.chatx.c1.y = -79;
               this.chatx.chatx["c" + i].gotoAndStop(10 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.length <= 4)
            {
               this.chatx.chatx["c" + i].gotoAndStop(1 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.length >= 5 && this.chatx.chatx.c1.length <= 6)
            {
               this.chatx.chatx["c" + i].gotoAndStop(2 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.length >= 7 && this.chatx.chatx.c1.length <= 8)
            {
               this.chatx.chatx["c" + i].gotoAndStop(3 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.length >= 9 && this.chatx.chatx.c1.length <= 10)
            {
               this.chatx.chatx["c" + i].gotoAndStop(4 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else if(this.chatx.chatx.c1.length >= 11 && this.chatx.chatx.c1.length <= 12)
            {
               this.chatx.chatx["c" + i].gotoAndStop(5 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
            else
            {
               this.chatx.chatx["c" + i].gotoAndStop(6 + (parent["scharchat" + parent.spick] * 10 - 10));
            }
         }
         this.chatx.chatx.c1.transform.colorTransform = parent.ggcolor1;
         this.chatx.chatx.c2.transform.colorTransform = parent.ggcolor2;
         this.chatx.chatx.c3.transform.colorTransform = parent.ggcolor3;
         this.chatx.chatx.c4.transform.colorTransform = parent.ggcolor4;
         this.chatx.namex.namex.transform.colorTransform = parent.ggcolor5;
         this.ccol.c1.transform.colorTransform = parent.ggcolor1;
         this.ccol.c2.transform.colorTransform = parent.ggcolor2;
         this.ccol.c3.transform.colorTransform = parent.ggcolor3;
         this.ccol.c4.transform.colorTransform = parent.ggcolor4;
         this.ccol.c5.transform.colorTransform = parent.ggcolor5;
         parent.updatestudio();
      }
      
      public function chatblockerx(event:MouseEvent) : void
      {
         if(this.deletebt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent["schatmsg" + parent.spick] = "";
            this.gochat();
         }
         else if(this.typechatbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.typingpick = 11;
            parent.typenamego.gotoAndStop(3);
         }
         else if(this.c1bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 11;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c2bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 12;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c3bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 13;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c4bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 14;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.c5bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 15;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.adjustbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.studioadjust.gotoAndStop(3);
         }
         else if(this.nameleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent["schatname" + parent.spick] = parent["schatname" + parent.spick] - 1;
            if(parent["schatname" + parent.spick] < 0)
            {
               parent["schatname" + parent.spick] = 1;
            }
            this.gochat();
         }
         else if(this.namerightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent["schatname" + parent.spick] += 1;
            if(parent["schatname" + parent.spick] > 1)
            {
               parent["schatname" + parent.spick] = 0;
            }
            this.gochat();
         }
         else if(this.bubbleleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent["scharchat" + parent.spick] = parent["scharchat" + parent.spick] - 1;
            if(parent["scharchat" + parent.spick] < 1)
            {
               parent["scharchat" + parent.spick] = 4;
            }
            this.gochat();
         }
         else if(this.bubblerightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent["scharchat" + parent.spick] += 1;
            if(parent["scharchat" + parent.spick] > 4)
            {
               parent["scharchat" + parent.spick] = 1;
            }
            this.gochat();
         }
         else if(this.fontleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent["schatfont" + parent.spick] = parent["schatfont" + parent.spick] - 1;
            if(parent["schatfont" + parent.spick] < 1)
            {
               parent["schatfont" + parent.spick] = 1;
            }
            this.gochat();
         }
         else if(this.fontrightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent["schatfont" + parent.spick] += 1;
            if(parent["schatfont" + parent.spick] > 1)
            {
               parent["schatfont" + parent.spick] = 1;
            }
            this.gochat();
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
         this.gochat();
         this.chatblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.chatblockerx);
      }
   }
}

