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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol23206")]
   public dynamic class optionspage_68 extends MovieClip
   {
      
      public var assetsbt:MovieClip;
      
      public var creditsbt:MovieClip;
      
      public var discordbt:MovieClip;
      
      public var discordbt2:MovieClip;
      
      public var drivebt1:MovieClip;
      
      public var drivebt2:MovieClip;
      
      public var drivebt3:MovieClip;
      
      public var lunimelogo:MovieClip;
      
      public var optionsbt:MovieClip;
      
      public var optx:MovieClip;
      
      public var translatorsbt:MovieClip;
      
      public var pick:*;
      
      public var linkx:*;
      
      public var opage:*;
      
      public function optionspage_68()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,3,this.frame4);
      }
      
      public function golink() : void
      {
         if(this.pick == 1)
         {
            this.linkx = "https://discord.gg/GachaLife2";
         }
         else if(this.pick == 2)
         {
            this.linkx = "https://drive.google.com/drive/u/0/folders/1bnmuzlwAf0wsPjacjPlaE0UF2DTEtwDO";
         }
         else if(this.pick == 3)
         {
            this.linkx = "https://drive.google.com/drive/u/0/folders/1on6wgKw-HZwW0NDYeXxEUgdAVDGbM_p9";
         }
         else if(this.pick == 4)
         {
            this.linkx = "https://drive.google.com/drive/u/0/folders/1RwT-LjKjxUzKjDpgjWo5slfVbwlaTPvR";
         }
         var request:URLRequest = new URLRequest(this.linkx);
         navigateToURL(request,"_blank");
      }
      
      public function optionsbtx(evt:MouseEvent) : void
      {
         if(this.opage != 1)
         {
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            this.opage = 1;
            gotoAndStop(1);
         }
      }
      
      public function creditsbtx(evt:MouseEvent) : void
      {
         if(this.opage != 2)
         {
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            this.opage = 2;
            gotoAndStop(2);
         }
      }
      
      public function translatorsbtx(evt:MouseEvent) : void
      {
         if(this.opage != 3)
         {
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            this.opage = 3;
            gotoAndStop(3);
         }
      }
      
      public function assetsbtx(evt:MouseEvent) : void
      {
         if(this.opage != 4)
         {
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            this.opage = 4;
            gotoAndStop(4);
         }
      }
      
      public function discordbtx(evt:MouseEvent) : void
      {
         this.pick = 1;
         this.golink();
      }
      
      public function drivebt1x(evt:MouseEvent) : void
      {
         this.pick = 2;
         this.golink();
      }
      
      public function drivebt2x(evt:MouseEvent) : void
      {
         this.pick = 3;
         this.golink();
      }
      
      public function drivebt3x(evt:MouseEvent) : void
      {
         this.pick = 4;
         this.golink();
      }
      
      public function discordbt2x(evt:MouseEvent) : void
      {
         this.pick = 1;
         this.golink();
      }
      
      internal function frame1() : *
      {
         stop();
         this.pick = "";
         this.linkx = "";
         this.opage = 1;
         this.optionsbt.addEventListener(MouseEvent.MOUSE_DOWN,this.optionsbtx);
         this.creditsbt.addEventListener(MouseEvent.MOUSE_DOWN,this.creditsbtx);
         this.translatorsbt.addEventListener(MouseEvent.MOUSE_DOWN,this.translatorsbtx);
         this.assetsbt.addEventListener(MouseEvent.MOUSE_DOWN,this.assetsbtx);
      }
      
      internal function frame2() : *
      {
         this.discordbt.addEventListener(MouseEvent.MOUSE_DOWN,this.discordbtx);
      }
      
      internal function frame4() : *
      {
         this.drivebt1.addEventListener(MouseEvent.MOUSE_DOWN,this.drivebt1x);
         this.drivebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.drivebt2x);
         this.drivebt3.addEventListener(MouseEvent.MOUSE_DOWN,this.drivebt3x);
         this.discordbt2.addEventListener(MouseEvent.MOUSE_DOWN,this.discordbt2x);
      }
   }
}

