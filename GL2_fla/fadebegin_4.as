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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol22601")]
   public dynamic class fadebegin_4 extends MovieClip
   {
      
      public var loadxx:MovieClip;
      
      public function fadebegin_4()
      {
         super();
         addFrameScript(0,this.frame1,9,this.frame10,33,this.frame34,54,this.frame55);
      }
      
      internal function frame1() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame10() : *
      {
         parent.changeload();
         stop();
      }
      
      internal function frame34() : *
      {
         gotoAndStop(2);
      }
      
      internal function frame55() : *
      {
         parent.exithome();
         stop();
      }
   }
}

