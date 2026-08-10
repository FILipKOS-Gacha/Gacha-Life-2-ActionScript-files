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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24475")]
   public dynamic class custimportexpo_544 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var copied:MovieClip;
      
      public var exportbt:MovieClip;
      
      public var exportbt2:MovieClip;
      
      public var exportid:MovieClip;
      
      public var importbt:MovieClip;
      
      public var importcodebt:MovieClip;
      
      public var importcodebt2:MovieClip;
      
      public var importid:MovieClip;
      
      public var importshowx1:MovieClip;
      
      public var importshowx2:MovieClip;
      
      public var exported:*;
      
      public function custimportexpo_544()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3,3,this.frame4);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function getimport() : void
      {
         MovieClip(root).getposeimport();
      }
      
      public function importcodebtx(evt:MouseEvent) : void
      {
         MovieClip(root).typingpick = 10;
         MovieClip(root).typenamego.gotoAndStop(3);
      }
      
      public function importbtx(evt:MouseEvent) : void
      {
         MovieClip(root).updateposes = 2;
         MovieClip(root)["posestring" + MovieClip(root).posex] = this.importid.stringx.text;
         MovieClip(root).posepick = MovieClip(root).posex;
         MovieClip(root).getposestring();
         MovieClip(root).saveplayerstring();
         MovieClip(root).updatecustinfo();
         MovieClip(root).updatechar();
         gotoAndStop(2);
      }
      
      public function exportbtx(evt:MouseEvent) : void
      {
         System.setClipboard(this.exportid.stringx.text);
         this.copied.gotoAndPlay("copied2");
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function importcodebtx2(evt:MouseEvent) : void
      {
         MovieClip(root).typingpick = 14;
         MovieClip(root).typenamego.gotoAndStop(3);
      }
      
      public function exportbtx2(evt:MouseEvent) : void
      {
         if(this.exported == 1)
         {
            MovieClip(root).exportani();
         }
         else
         {
            System.setClipboard(this.exportid.idx.text);
            this.copied.gotoAndPlay("copied2");
         }
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
         stop();
         this.importshowx1.gotoAndStop(4);
         this.importshowx2.gotoAndStop(3);
         MovieClip(root).typeposecode = "";
         this.importid.stringx.text = MovieClip(root).typeposecode;
         this.importbt.visible = false;
         this.getimport();
         this.importcodebt.addEventListener(MouseEvent.MOUSE_DOWN,this.importcodebtx);
         this.importbt.addEventListener(MouseEvent.MOUSE_DOWN,this.importbtx);
         this.exportbt.addEventListener(MouseEvent.MOUSE_DOWN,this.exportbtx);
      }
      
      internal function frame4() : *
      {
         this.closebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.closebt2x);
         stop();
         this.importshowx1.gotoAndStop(1);
         this.importid.idx.text = "";
         this.importshowx2.gotoAndStop(2);
         this.exportid.idx.text = "";
         MovieClip(root).typeposecode = "";
         this.exported = 1;
         this.importcodebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.importcodebtx2);
         this.exportbt2.addEventListener(MouseEvent.MOUSE_DOWN,this.exportbtx2);
      }
   }
}

