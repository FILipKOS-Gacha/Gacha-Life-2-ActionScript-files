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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24239")]
   public dynamic class conformresetal_494 extends MovieClip
   {
      
      public var cancelbt:MovieClip;
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var confirmbt:MovieClip;
      
      public function conformresetal_494()
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
      
      public function cancelbtx(evt:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function confirmbtx(evt:MouseEvent) : void
      {
         if(MovieClip(root).confirmgo == 1)
         {
            parent.confirmed1 = 2;
            parent.confirm1();
         }
         else if(MovieClip(root).confirmgo == 2)
         {
            parent.confirmed2 = 2;
            parent.confirm2();
         }
         else if(MovieClip(root).confirmgo == 3)
         {
            parent.confirmed3 = 2;
            parent.confirm3();
         }
         else if(MovieClip(root).confirmgo == 4)
         {
            parent.confirmed4 = 2;
            parent.confirm4();
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
         stop();
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
         this.closebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.closebt2x);
         this.cancelbt.addEventListener(MouseEvent.MOUSE_DOWN,this.cancelbtx);
         this.confirmbt.addEventListener(MouseEvent.MOUSE_DOWN,this.confirmbtx);
         gotoAndStop(MovieClip(root).confirmgo + 2);
      }
   }
}

