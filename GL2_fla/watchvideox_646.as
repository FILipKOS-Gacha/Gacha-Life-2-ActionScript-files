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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25096")]
   public dynamic class watchvideox_646 extends MovieClip
   {
      
      public var charpreview:MovieClip;
      
      public var chx:MovieClip;
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var linkbt:MovieClip;
      
      public var linkx:TextField;
      
      public function watchvideox_646()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         this.closethis();
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         this.closethis();
      }
      
      public function golink() : void
      {
         var request:URLRequest = new URLRequest(parent.glinkx);
         navigateToURL(request,"_blank");
         this.closethis();
      }
      
      public function linkbtx(evt:MouseEvent) : void
      {
         this.golink();
      }
      
      public function closethis() : void
      {
         parent.specialslot = 1;
         if(parent.mapx == 4)
         {
            parent.char.visible = true;
            parent.custx.visible = true;
         }
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
         stop();
         this.closebt.addEventListener(MouseEvent.MOUSE_UP,this.closebtx);
         this.closebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.closebt2x);
         parent.loadthumbnail = 2;
         parent.updateslotthumbail();
         this.charpreview.namexx.text = this.charpreview.namex.text;
         if(parent.mapx == 4)
         {
            this.chx.gotoAndStop(2);
            parent.char.visible = false;
            parent.custx.visible = false;
         }
         else
         {
            this.chx.gotoAndStop(1);
         }
         this.linkx.text = parent.glinkx;
         this.linkbt.addEventListener(MouseEvent.MOUSE_DOWN,this.linkbtx);
         parent.specialslot = 1;
      }
   }
}

