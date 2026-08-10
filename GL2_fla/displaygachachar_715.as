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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25710")]
   public dynamic class displaygachachar_715 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var quotex:MovieClip;
      
      public var revealx:MovieClip;
      
      public var endani:*;
      
      public function displaygachachar_715()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         if(this.endani == 1)
         {
            this.endani = 2;
            this.revealx.gotoAndStop("end");
         }
         else
         {
            parent.skipbt.visible = true;
            parent.gachas.visible = true;
            parent.gresu.visible = true;
            parent.resumegacha();
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
         parent.gachas.visible = false;
         parent.gresu.visible = false;
         this.endani = 1;
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
      }
   }
}

