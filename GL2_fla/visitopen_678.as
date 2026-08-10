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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25556")]
   public dynamic class visitopen_678 extends MovieClip
   {
      
      public var chardata1:MovieClip;
      
      public var chardata10:MovieClip;
      
      public var chardata11:MovieClip;
      
      public var chardata12:MovieClip;
      
      public var chardata13:MovieClip;
      
      public var chardata14:MovieClip;
      
      public var chardata15:MovieClip;
      
      public var chardata16:MovieClip;
      
      public var chardata2:MovieClip;
      
      public var chardata3:MovieClip;
      
      public var chardata4:MovieClip;
      
      public var chardata5:MovieClip;
      
      public var chardata6:MovieClip;
      
      public var chardata7:MovieClip;
      
      public var chardata8:MovieClip;
      
      public var chardata9:MovieClip;
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var viewx:MovieClip;
      
      public function visitopen_678()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         this.quickshow();
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         this.quickshow();
         gotoAndStop(2);
      }
      
      public function quickhide() : *
      {
         for(var i:* = 1; i <= 8; i++)
         {
            parent["lchar" + i].visible = false;
         }
      }
      
      public function quickshow() : *
      {
         for(var i:* = 1; i <= 8; i++)
         {
            parent["lchar" + i].visible = true;
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
         this.viewx.visible = false;
         this.quickhide();
      }
   }
}

