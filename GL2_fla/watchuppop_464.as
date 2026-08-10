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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24099")]
   public dynamic class watchuppop_464 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var startadbt:MovieClip;
      
      public function watchuppop_464()
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
            parent.char.visible = true;
         }
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         if(parent.mapx == 4)
         {
            parent.char.visible = true;
         }
         gotoAndStop(2);
      }
      
      public function startadbtx(evt:MouseEvent) : void
      {
         if(parent.adready == 2)
         {
            parent.handleRewardedVideoAd();
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
            parent.char.visible = false;
         }
         this.startadbt.addEventListener(MouseEvent.MOUSE_DOWN,this.startadbtx);
      }
   }
}

