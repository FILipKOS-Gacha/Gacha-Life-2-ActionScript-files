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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol22620")]
   public dynamic class fadeouut_13 extends MovieClip
   {
      
      public var loadxx:MovieClip;
      
      public var starx:MovieClip;
      
      public function fadeouut_13()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3,10,this.frame11,22,this.frame23,32,this.frame33,40,this.frame41,41,this.frame42,59,this.frame60,72,this.frame73,73,this.frame74,81,this.frame82,91,this.frame92);
      }
      
      internal function frame1() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame3() : *
      {
         if(parent.mapx == 4)
         {
            parent.quitall();
         }
      }
      
      internal function frame11() : *
      {
         stop();
         parent.exitmap();
      }
      
      internal function frame23() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame33() : *
      {
         stop();
      }
      
      internal function frame41() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame42() : *
      {
         this.starx.gotoAndStop(parent.gachabest);
      }
      
      internal function frame60() : *
      {
         stop();
         parent.exitmap();
      }
      
      internal function frame73() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame74() : *
      {
         this.starx.gotoAndStop(parent.gachabest);
      }
      
      internal function frame82() : *
      {
         if(parent.gachabest == 1)
         {
            parent.sfx = 6;
            parent.playsfx();
         }
         else if(parent.gachabest == 2)
         {
            parent.sfx = 9;
            parent.playsfx();
         }
         else if(parent.gachabest == 3)
         {
            parent.sfx = 10;
            parent.playsfx();
         }
      }
      
      internal function frame92() : *
      {
         stop();
         parent.exitmap();
      }
   }
}

