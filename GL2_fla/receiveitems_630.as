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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24875")]
   public dynamic class receiveitems_630 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var itemx:MovieClip;
      
      public function receiveitems_630()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,10,this.frame11,20,this.frame21);
      }
      
      public function itemgo() : void
      {
         this.itemx.itemx.gotoAndPlay(3);
         this.itemx.itemx.itemx.numx.text = parent.getgemsx;
         this.itemx.itemx.itemx.numxx.text = parent.getgemsx;
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         this.itemx.itemx.gotoAndStop("end");
         parent.sfx = 1;
         parent.playsfx();
         gotoAndPlay("close");
      }
      
      internal function frame1() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame3() : *
      {
         this.itemx.itemx.gotoAndStop(2);
      }
      
      internal function frame11() : *
      {
         stop();
         this.itemgo();
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
      }
      
      internal function frame21() : *
      {
         gotoAndStop(2);
      }
   }
}

