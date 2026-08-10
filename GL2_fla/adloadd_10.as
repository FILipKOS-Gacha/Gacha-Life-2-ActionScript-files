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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol22610")]
   public dynamic class adloadd_10 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public function adloadd_10()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.quickshow();
         gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame2() : *
      {
         stop();
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
      }
   }
}

