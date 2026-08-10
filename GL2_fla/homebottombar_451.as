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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24018")]
   public dynamic class homebottombar_451 extends MovieClip
   {
      
      public var gachabt:MovieClip;
      
      public var homebt:MovieClip;
      
      public var langx:MovieClip;
      
      public var lifebt:MovieClip;
      
      public var studiobt:MovieClip;
      
      public function homebottombar_451()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function homebtx(evt:MouseEvent) : void
      {
         if(parent.mapx != 4)
         {
            parent.goscene = 4;
            parent.fadex.gotoAndPlay("fadeout");
            parent.sfx = 1;
            parent.playsfx();
         }
      }
      
      public function studiobtx(evt:MouseEvent) : void
      {
         if(parent.mapx != 10)
         {
            parent.goscene = 10;
            parent.fadex.gotoAndPlay("fadeout");
            parent.sfx = 1;
            parent.playsfx();
         }
      }
      
      public function gachabtx(evt:MouseEvent) : void
      {
         if(parent.mapx != 7)
         {
            parent.goscene = 7;
            parent.fadex.gotoAndPlay("fadeout");
            parent.sfx = 1;
            parent.playsfx();
         }
      }
      
      public function lifebtx(evt:MouseEvent) : void
      {
         if(parent.mapx != 6)
         {
            parent.goscene = 6;
            parent.fadex.gotoAndPlay("fadeout");
            parent.sfx = 1;
            parent.playsfx();
         }
      }
      
      internal function frame1() : *
      {
         stop();
         this.homebt.addEventListener(MouseEvent.MOUSE_DOWN,this.homebtx);
         this.studiobt.addEventListener(MouseEvent.MOUSE_DOWN,this.studiobtx);
         this.gachabt.addEventListener(MouseEvent.MOUSE_DOWN,this.gachabtx);
         this.lifebt.addEventListener(MouseEvent.MOUSE_DOWN,this.lifebtx);
      }
   }
}

