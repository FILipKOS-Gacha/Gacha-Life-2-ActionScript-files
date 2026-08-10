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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol23150")]
   public dynamic class optionsin_71 extends MovieClip
   {
      
      public var bgmdownbt:MovieClip;
      
      public var bgmupbt:MovieClip;
      
      public var bgmx:TextField;
      
      public var datatransferbt:MovieClip;
      
      public var deletex:MovieClip;
      
      public var exitbt:MovieClip;
      
      public var langbt:MovieClip;
      
      public var langdisplay:MovieClip;
      
      public var langpick:MovieClip;
      
      public var layoutbt1:MovieClip;
      
      public var layoutbt2:MovieClip;
      
      public var layoutx:MovieClip;
      
      public var qualbt1:MovieClip;
      
      public var qualbt2:MovieClip;
      
      public var qualx:MovieClip;
      
      public var ratiox:MovieClip;
      
      public var resetbt:MovieClip;
      
      public var sfxdownbt:MovieClip;
      
      public var sfxupbt:MovieClip;
      
      public var sfxx:TextField;
      
      public var termsbt:MovieClip;
      
      public var titlebt:MovieClip;
      
      public function optionsin_71()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function termsbtx(evt:MouseEvent) : void
      {
         MovieClip(root).termsx.gotoAndStop(3);
      }
      
      public function bgmupbtx(evt:MouseEvent) : void
      {
         if(MovieClip(root).musicvolume < 10)
         {
            MovieClip(root).musicvolume = MovieClip(root).musicvolume + 1;
         }
         this.updateoptions();
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
      }
      
      public function bgmdownbtx(evt:MouseEvent) : void
      {
         if(MovieClip(root).musicvolume >= 1)
         {
            --MovieClip(root).musicvolume;
         }
         this.updateoptions();
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
      }
      
      public function sfxupbtx(evt:MouseEvent) : void
      {
         if(MovieClip(root).sfxvolume < 10)
         {
            MovieClip(root).sfxvolume = MovieClip(root).sfxvolume + 1;
         }
         this.updateoptions();
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
      }
      
      public function sfxdownbtx(evt:MouseEvent) : void
      {
         if(MovieClip(root).sfxvolume >= 1)
         {
            --MovieClip(root).sfxvolume;
         }
         this.updateoptions();
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
      }
      
      public function langbtx(evt:MouseEvent) : void
      {
         this.langpick.gotoAndStop(3);
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
      }
      
      public function qualbt1x(evt:MouseEvent) : void
      {
         stage.quality = StageQuality.MEDIUM;
         MovieClip(root).lag = 1;
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
         this.updateoptions();
      }
      
      public function qualbt2x(evt:MouseEvent) : void
      {
         stage.quality = StageQuality.LOW;
         MovieClip(root).lag = 2;
         MovieClip(root).sfx = 4;
         MovieClip(root).playsfx();
         this.updateoptions();
      }
      
      public function layoutbt1x(evt:MouseEvent) : void
      {
         if(MovieClip(root).layout >= 2)
         {
            MovieClip(root).layout = 1;
            MovieClip(root).sfx = 4;
            MovieClip(root).playsfx();
            if(MovieClip(root).mapx == 4)
            {
               MovieClip(root).updatelayout();
            }
            if(MovieClip(root).app == 2)
            {
               stage.setOrientation(StageOrientation.DEFAULT);
               MovieClip(root).changelayout();
            }
            this.updateoptions();
         }
      }
      
      public function layoutbt2x(evt:MouseEvent) : void
      {
         if(MovieClip(root).layout == 1)
         {
            MovieClip(root).layout = 2;
            MovieClip(root).sfx = 4;
            MovieClip(root).playsfx();
            if(MovieClip(root).mapx == 4)
            {
               MovieClip(root).updatelayout();
            }
            if(MovieClip(root).app == 2)
            {
               stage.setOrientation(StageOrientation.ROTATED_RIGHT);
               MovieClip(root).changelayout();
            }
            this.updateoptions();
         }
      }
      
      public function datatransferbtx(evt:MouseEvent) : void
      {
         MovieClip(root).comingsoon.gotoAndPlay(3);
         MovieClip(root).sfx = 1;
         MovieClip(root).playsfx();
      }
      
      public function resetbtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 1;
         MovieClip(root).playsfx();
         this.deletex.gotoAndStop(3);
      }
      
      public function titlebtx(evt:MouseEvent) : void
      {
         if(MovieClip(root).mapx != 3)
         {
            MovieClip(root).goscene = 3;
            MovieClip(root).fadex.gotoAndPlay("fadeout");
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
         }
      }
      
      public function ratiorightbtx(evt:MouseEvent) : void
      {
         MovieClip(root).layout = MovieClip(root).layout + 1;
         if(MovieClip(root).layout > 3)
         {
            MovieClip(root).layout = 2;
         }
         this.updateoptions();
         MovieClip(root).updatelayout();
      }
      
      public function ratioleftbtx(evt:MouseEvent) : void
      {
         --MovieClip(root).layout;
         if(MovieClip(root).layout < 2)
         {
            MovieClip(root).layout = 3;
         }
         this.updateoptions();
         MovieClip(root).updatelayout();
      }
      
      public function exitbtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 1;
         MovieClip(root).playsfx();
         NativeApplication.nativeApplication.exit(0);
      }
      
      public function updateoptions() : *
      {
         this.bgmx.text = MovieClip(root).musicvolume * 10 + "%";
         this.sfxx.text = MovieClip(root).sfxvolume * 10 + "%";
         this.qualx.gotoAndStop(MovieClip(root).lag);
         this.layoutx.gotoAndStop(MovieClip(root).layout);
         if(MovieClip(root).layout >= 2)
         {
            this.ratiox.visible = true;
            if(MovieClip(root).layout == 2)
            {
               this.ratiox.numx.text = "4:3";
            }
            else if(MovieClip(root).layout == 3)
            {
               this.ratiox.numx.text = "16:9";
            }
         }
         else
         {
            this.ratiox.visible = false;
         }
         this.langdisplay.gotoAndStop(MovieClip(root).lang);
         MovieClip(root).myTransform1.volume = MovieClip(root).musicvolume / 10;
         MovieClip(root).myChannel1.soundTransform = MovieClip(root).myTransform1;
         MovieClip(root).myTransform2.volume = MovieClip(root).sfxvolume / 10;
         MovieClip(root).myChannel2.soundTransform = MovieClip(root).myTransform2;
         MovieClip(root).savex();
      }
      
      internal function frame1() : *
      {
         this.termsbt.addEventListener(MouseEvent.MOUSE_DOWN,this.termsbtx);
         this.bgmupbt.addEventListener(MouseEvent.MOUSE_DOWN,this.bgmupbtx);
         this.bgmdownbt.addEventListener(MouseEvent.MOUSE_DOWN,this.bgmdownbtx);
         this.sfxupbt.addEventListener(MouseEvent.MOUSE_DOWN,this.sfxupbtx);
         this.sfxdownbt.addEventListener(MouseEvent.MOUSE_DOWN,this.sfxdownbtx);
         this.langbt.addEventListener(MouseEvent.MOUSE_DOWN,this.langbtx);
         this.qualbt1.addEventListener(MouseEvent.MOUSE_DOWN,this.qualbt1x);
         this.qualbt2.addEventListener(MouseEvent.MOUSE_DOWN,this.qualbt2x);
         this.layoutbt1.addEventListener(MouseEvent.MOUSE_DOWN,this.layoutbt1x);
         this.layoutbt2.addEventListener(MouseEvent.MOUSE_DOWN,this.layoutbt2x);
         this.datatransferbt.addEventListener(MouseEvent.MOUSE_DOWN,this.datatransferbtx);
         this.resetbt.addEventListener(MouseEvent.MOUSE_DOWN,this.resetbtx);
         this.titlebt.addEventListener(MouseEvent.MOUSE_DOWN,this.titlebtx);
         this.ratiox.rightbt.addEventListener(MouseEvent.MOUSE_DOWN,this.ratiorightbtx);
         this.ratiox.leftbt.addEventListener(MouseEvent.MOUSE_DOWN,this.ratioleftbtx);
         this.exitbt.addEventListener(MouseEvent.MOUSE_DOWN,this.exitbtx);
         this.updateoptions();
      }
   }
}

