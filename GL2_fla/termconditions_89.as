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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol23223")]
   public dynamic class termconditions_89 extends MovieClip
   {
      
      public var agreebt:MovieClip;
      
      public var agreex:MovieClip;
      
      public var closebt:MovieClip;
      
      public var playbt:MovieClip;
      
      public var agreed:*;
      
      public function termconditions_89()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function agreebtx(evt:MouseEvent) : void
      {
         if(parent.mapx == 3)
         {
            if(parent.firsttime == 1)
            {
               parent.sfx = 1;
               parent.playsfx();
               if(this.agreed == 1)
               {
                  this.agreed = 2;
               }
               else
               {
                  this.agreed = 1;
               }
               this.checkterms();
            }
         }
      }
      
      public function playbtx(evt:MouseEvent) : void
      {
         if(parent.mapx == 3)
         {
            if(this.agreed == 2)
            {
               gotoAndStop(2);
               parent.firsttime = 2;
               parent.sfx = 1;
               parent.playsfx();
               parent.goscene = 4;
               parent.savex();
               parent.savex1();
               parent.savex2();
               parent.savex3();
               parent.savex4();
               parent.savex5();
               parent.savex6();
               parent.fadex.gotoAndPlay("fadeout");
            }
         }
         else
         {
            gotoAndStop(2);
         }
      }
      
      public function checkterms() : void
      {
         if(parent.firsttime == 2)
         {
            this.agreed = 2;
         }
         this.agreex.gotoAndStop(this.agreed);
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
         this.agreebt.addEventListener(MouseEvent.MOUSE_DOWN,this.agreebtx);
         this.playbt.addEventListener(MouseEvent.MOUSE_DOWN,this.playbtx);
         stop();
         this.agreed = 1;
         this.checkterms();
      }
   }
}

