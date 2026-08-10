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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25494")]
   public dynamic class tutorialguide_666 extends MovieClip
   {
      
      public var charx:MovieClip;
      
      public var chatx:MovieClip;
      
      public var nextbt:MovieClip;
      
      public var skipbt:MovieClip;
      
      public function tutorialguide_666()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,8,this.frame9,30,this.frame31,41,this.frame42,61,this.frame62);
      }
      
      public function skipbtx(evt:MouseEvent) : void
      {
         parent.tutorialx1 == 11;
         parent.savex();
         gotoAndStop("end");
      }
      
      public function nextbtx(evt:MouseEvent) : void
      {
         parent.tutorialx1 += 1;
         if(parent.tutorialx1 == 4)
         {
            gotoAndStop("tut2");
            this.charx.gotoAndPlay("hop2");
         }
         else if(parent.tutorialx1 == 5)
         {
            gotoAndStop("tut3");
            this.charx.gotoAndPlay("hop1");
         }
         else if(parent.tutorialx1 == 6)
         {
            gotoAndStop("tut4");
            this.charx.gotoAndPlay("hop2");
         }
         else if(parent.tutorialx1 == 7)
         {
            gotoAndStop("tut5");
            this.charx.gotoAndPlay("hop1");
         }
         else if(parent.tutorialx1 == 8)
         {
            gotoAndStop("tut6");
            this.charx.gotoAndPlay("hop2");
         }
         else if(parent.tutorialx1 == 11)
         {
            this.nextbt.removeEventListener(MouseEvent.MOUSE_DOWN,this.nextbtx);
            gotoAndPlay("tut7");
            this.charx.gotoAndPlay("hop1");
            this.chatx.visible = false;
            parent.savex();
         }
         this.chatx.gotoAndStop(parent.tutorialx1);
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
         this.skipbt.addEventListener(MouseEvent.MOUSE_DOWN,this.skipbtx);
      }
      
      internal function frame9() : *
      {
         this.charx.gotoAndStop("hop2");
      }
      
      internal function frame31() : *
      {
         this.charx.gotoAndPlay("hop1");
         this.chatx.gotoAndStop(1);
      }
      
      internal function frame42() : *
      {
         stop();
         this.nextbt.addEventListener(MouseEvent.MOUSE_DOWN,this.nextbtx);
      }
      
      internal function frame62() : *
      {
         gotoAndStop(2);
      }
   }
}

