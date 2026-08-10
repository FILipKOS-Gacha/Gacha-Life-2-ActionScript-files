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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25994")]
   public dynamic class textmodep_768 extends MovieClip
   {
      
      public var adjustx:MovieClip;
      
      public var ccol:MovieClip;
      
      public var chatblocker:MovieClip;
      
      public var chatbt:MovieClip;
      
      public var chatx:MovieClip;
      
      public var closebt:MovieClip;
      
      public var colorbt1:MovieClip;
      
      public var colorbt2:MovieClip;
      
      public var colorbt3:MovieClip;
      
      public var colorbt4:MovieClip;
      
      public var fontleftbt:MovieClip;
      
      public var fontrightbt:MovieClip;
      
      public var fontx:MovieClip;
      
      public var styleleftbt:MovieClip;
      
      public var stylerightbt:MovieClip;
      
      public var stylex:MovieClip;
      
      public function textmodep_768()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.savestudiostring();
         parent.openstudiopage = 0;
         gotoAndStop(2);
      }
      
      public function gochat() : void
      {
         this.stylex.numx.text = parent.smainchat + "/5";
         this.fontx.numx.text = parent.smainchatfont + "/1";
         parent.ggcolor1.setTint("0x" + parent.smainchatcolx1,1);
         parent.ggcolor2.setTint("0x" + parent.smainchatcolx2,1);
         parent.ggcolor3.setTint("0x" + parent.smainchatcolx3,1);
         parent.ggcolor4.setTint("0x" + parent.smainchatcolx4,1);
         this.chatx.c1.text = parent.smainchatmsg;
         if(this.chatx.c1.numLines == 1)
         {
            this.chatx.c1.y = -26;
         }
         for(var ii:* = 2; ii <= 4; ii++)
         {
            if(this.chatx.c1.numLines == 2)
            {
               this.chatx.c1.y = -44;
               this.chatx["c" + ii].gotoAndStop(4);
            }
            else if(this.chatx.c1.numLines >= 3)
            {
               this.chatx.c1.y = -59;
               this.chatx["c" + ii].gotoAndStop(5);
            }
            else if(this.chatx.c1.length <= 10)
            {
               this.chatx["c" + ii].gotoAndStop(1);
            }
            else if(this.chatx.c1.length >= 11 && this.chatx.c1.length <= 20)
            {
               this.chatx["c" + ii].gotoAndStop(2);
            }
            else
            {
               this.chatx["c" + ii].gotoAndStop(3);
            }
         }
         this.chatx.c1.transform.colorTransform = parent.ggcolor1;
         this.chatx.c2.transform.colorTransform = parent.ggcolor2;
         this.chatx.c3.transform.colorTransform = parent.ggcolor3;
         this.chatx.c4.transform.colorTransform = parent.ggcolor4;
         this.ccol.c1.transform.colorTransform = parent.ggcolor1;
         this.ccol.c2.transform.colorTransform = parent.ggcolor2;
         this.ccol.c3.transform.colorTransform = parent.ggcolor3;
         this.ccol.c4.transform.colorTransform = parent.ggcolor4;
         parent.updatetext();
      }
      
      public function chatblockerx(event:MouseEvent) : void
      {
         if(this.chatbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.typingpick = 12;
            parent.typenamego.gotoAndStop(3);
         }
         else if(this.colorbt1.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 7;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.colorbt2.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 8;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.colorbt3.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 9;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.colorbt4.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.choosecolor = 10;
            parent.colorbox.gotoAndStop(3);
         }
         else if(this.adjustx.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.studioadjust.gotoAndStop(3);
         }
         else if(this.styleleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.smainchat;
            if(parent.smainchat < 0)
            {
               parent.smainchat = 5;
            }
            this.gochat();
         }
         else if(this.stylerightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.smainchat += 1;
            if(parent.smainchat > 5)
            {
               parent.smainchat = 0;
            }
            this.gochat();
         }
         else if(this.fontleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --parent.smainchatfont;
            if(parent.smainchatfont < 1)
            {
               parent.smainchatfont = 1;
            }
            this.gochat();
         }
         else if(this.fontrightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.smainchatfont += 1;
            if(parent.smainchatfont > 1)
            {
               parent.smainchatfont = 1;
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

