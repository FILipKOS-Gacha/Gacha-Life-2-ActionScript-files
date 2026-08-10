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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24663")]
   public dynamic class fontcharchoice_571 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var fontbt1:MovieClip;
      
      public var fontbt2:MovieClip;
      
      public var fontbt3:MovieClip;
      
      public var fontbt4:MovieClip;
      
      public var fontbt5:MovieClip;
      
      public var fontbt6:MovieClip;
      
      public var touchfontbt:MovieClip;
      
      public function fontcharchoice_571()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function touchfontbtx(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 6; i++)
         {
            if(this["fontbt" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               MovieClip(root).fontx = 2;
               MovieClip(root).saveplayerstring();
               break;
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
         stop();
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
         this.touchfontbt.addEventListener(MouseEvent.MOUSE_DOWN,this.touchfontbtx);
      }
   }
}

