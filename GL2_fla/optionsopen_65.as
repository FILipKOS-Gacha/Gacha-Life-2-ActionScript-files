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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol23207")]
   public dynamic class optionsopen_65 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public function optionsopen_65()
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
         }
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         if(parent.mapx == 4)
         {
            parent.quickshow();
         }
         gotoAndStop(2);
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
      }
   }
}

