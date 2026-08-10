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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24263")]
   public dynamic class presetpagetypes_495 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var presetbt1:MovieClip;
      
      public var presetbt10:MovieClip;
      
      public var presetbt11:MovieClip;
      
      public var presetbt12:MovieClip;
      
      public var presetbt13:MovieClip;
      
      public var presetbt14:MovieClip;
      
      public var presetbt15:MovieClip;
      
      public var presetbt16:MovieClip;
      
      public var presetbt17:MovieClip;
      
      public var presetbt2:MovieClip;
      
      public var presetbt3:MovieClip;
      
      public var presetbt4:MovieClip;
      
      public var presetbt5:MovieClip;
      
      public var presetbt6:MovieClip;
      
      public var presetbt7:MovieClip;
      
      public var presetbt8:MovieClip;
      
      public var presetbt9:MovieClip;
      
      public var touchpresetbt:MovieClip;
      
      public function presetpagetypes_495()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function touchpresetbtx(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 16; i++)
         {
            if(this["presetbt" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               MovieClip(root).presettypepage = i;
               MovieClip(root).presetpage = 1;
               MovieClip(root).updatecustinfo();
               parent.channelbt.visible = false;
               gotoAndStop(2);
               break;
            }
         }
      }
      
      public function presetbt17x(evt:MouseEvent) : void
      {
         if(MovieClip(root).cheese == 2)
         {
            MovieClip(root).presettypepage = 17;
            MovieClip(root).presetpage = 1;
            MovieClip(root).updatecustinfo();
            parent.channelbt.visible = false;
            gotoAndStop(2);
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
         stop();
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
         this.closebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.closebt2x);
         this.touchpresetbt.addEventListener(MouseEvent.MOUSE_DOWN,this.touchpresetbtx);
         this.presetbt17.addEventListener(MouseEvent.MOUSE_DOWN,this.presetbt17x);
      }
   }
}

