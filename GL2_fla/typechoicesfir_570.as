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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24652")]
   public dynamic class typechoicesfir_570 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var genderbt1:MovieClip;
      
      public var genderbt2:MovieClip;
      
      public var genderbt3:MovieClip;
      
      public var genderbt4:MovieClip;
      
      public function typechoicesfir_570()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function genderbt1x(event:MouseEvent) : void
      {
         MovieClip(root).pronounsx = "He/Him";
         MovieClip(root).updatecustinfo();
         MovieClip(root).saveplayerstring();
         gotoAndStop(2);
      }
      
      public function genderbt2x(event:MouseEvent) : void
      {
         MovieClip(root).pronounsx = "She/Her";
         MovieClip(root).updatecustinfo();
         MovieClip(root).saveplayerstring();
         gotoAndStop(2);
      }
      
      public function genderbt3x(event:MouseEvent) : void
      {
         MovieClip(root).pronounsx = "They/Them";
         MovieClip(root).updatecustinfo();
         MovieClip(root).saveplayerstring();
         gotoAndStop(2);
      }
      
      public function genderbt4x(event:MouseEvent) : void
      {
         MovieClip(root).typingpick = 9;
         MovieClip(root).typenamego.gotoAndStop(3);
         gotoAndStop(2);
      }
      
      public function closebtx(event:MouseEvent) : void
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
         this.genderbt1.addEventListener(MouseEvent.MOUSE_UP,this.genderbt1x);
         this.genderbt2.addEventListener(MouseEvent.MOUSE_UP,this.genderbt2x);
         this.genderbt3.addEventListener(MouseEvent.MOUSE_UP,this.genderbt3x);
         this.genderbt4.addEventListener(MouseEvent.MOUSE_UP,this.genderbt4x);
         this.closebt.addEventListener(MouseEvent.MOUSE_UP,this.closebtx);
      }
   }
}

