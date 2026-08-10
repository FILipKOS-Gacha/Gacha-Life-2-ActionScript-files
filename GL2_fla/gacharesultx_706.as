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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25684")]
   public dynamic class gacharesultx_706 extends MovieClip
   {
      
      public var gachax:MovieClip;
      
      public var talix:MovieClip;
      
      public function gacharesultx_706()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,5,this.frame6,10,this.frame11,17,this.frame18,29,this.frame30);
      }
      
      internal function frame1() : *
      {
         this.gachax.visible = false;
         gotoAndStop(2);
      }
      
      internal function frame2() : *
      {
         this.gachax.visible = false;
         stop();
      }
      
      internal function frame6() : *
      {
         stop();
      }
      
      internal function frame11() : *
      {
         this.gachax.visible = true;
      }
      
      internal function frame18() : *
      {
         stop();
      }
      
      internal function frame30() : *
      {
         stop();
         this.gachax.visible = true;
         MovieClip(root).showgachachar();
      }
   }
}

