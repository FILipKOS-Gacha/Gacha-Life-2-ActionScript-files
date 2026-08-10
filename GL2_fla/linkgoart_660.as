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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25434")]
   public dynamic class linkgoart_660 extends MovieClip
   {
      
      public var cancelbt:MovieClip;
      
      public var linkbt:MovieClip;
      
      public var linkx:TextField;
      
      public function linkgoart_660()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function golink() : void
      {
         var request:URLRequest = new URLRequest(parent["imglink" + parent.linkpick]);
         navigateToURL(request,"_blank");
      }
      
      public function linkbtx(evt:MouseEvent) : void
      {
         this.golink();
      }
      
      public function cancelbtx(evt:MouseEvent) : void
      {
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
         this.linkx.text = parent["imglink" + parent.linkpick];
         this.linkbt.addEventListener(MouseEvent.MOUSE_UP,this.linkbtx);
         this.cancelbt.addEventListener(MouseEvent.MOUSE_UP,this.cancelbtx);
      }
   }
}

