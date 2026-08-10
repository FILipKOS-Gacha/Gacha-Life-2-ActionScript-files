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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol23114")]
   public dynamic class deletleall_80 extends MovieClip
   {
      
      public var nobt:MovieClip;
      
      public var yesbt:MovieClip;
      
      public var warningpage:*;
      
      public function deletleall_80()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3);
      }
      
      public function yesbtx(evt:MouseEvent) : void
      {
         if(this.warningpage == 1)
         {
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            gotoAndStop(4);
            this.warningpage = 2;
         }
         else if(this.warningpage == 2)
         {
            MovieClip(root).sfx = 4;
            MovieClip(root).playsfx();
            gotoAndStop(2);
            MovieClip(root).resetdata();
         }
      }
      
      public function nobtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
         gotoAndStop(2);
      }
      
      internal function frame1() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame3() : *
      {
         this.warningpage = 1;
         this.yesbt.addEventListener(MouseEvent.MOUSE_DOWN,this.yesbtx);
         this.nobt.addEventListener(MouseEvent.MOUSE_DOWN,this.nobtx);
      }
   }
}

