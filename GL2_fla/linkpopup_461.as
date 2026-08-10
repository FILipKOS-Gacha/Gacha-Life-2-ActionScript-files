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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24077")]
   public dynamic class linkpopup_461 extends MovieClip
   {
      
      public var avatarx:MovieClip;
      
      public var cancelbt:MovieClip;
      
      public var datex:TextField;
      
      public var descx:TextField;
      
      public var gemsx:TextField;
      
      public var linkbt:MovieClip;
      
      public var linkx:TextField;
      
      public var titlex:TextField;
      
      public function linkpopup_461()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function golink() : void
      {
         var request:URLRequest = null;
         if(MovieClip(root)["gift" + int(parent.idx)] == 1)
         {
            MovieClip(root).returngems = 2;
            MovieClip(root).giftpick = int(parent.idx);
            gotoAndStop(2);
            MovieClip(root).getgemsx = int(parent.gemsx);
            request = new URLRequest(parent.linkx);
            navigateToURL(request,"_blank");
         }
         else
         {
            gotoAndStop(2);
            request = new URLRequest(parent.linkx);
            navigateToURL(request,"_blank");
         }
      }
      
      public function linkbtx(evt:MouseEvent) : void
      {
         this.golink();
      }
      
      public function cancelbtx(evt:MouseEvent) : void
      {
         if(MovieClip(root)["gift" + int(parent.idx)] == 1)
         {
            MovieClip(root).getgemsx = int(parent.gemsx);
            MovieClip(root)["gift" + int(parent.idx)] = 2;
            MovieClip(root).getgems();
            parent.updategifts();
            MovieClip(root).checkgreen();
            gotoAndStop(2);
         }
         else
         {
            gotoAndStop(2);
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
         stop();
         this.linkx.text = parent.linkx;
         this.titlex.text = parent.titlex;
         this.descx.text = parent.descx;
         this.datex.text = parent.datex;
         this.gemsx.text = parent.gemsx;
         this.avatarx.gotoAndStop(parent.avatarx);
         this.linkbt.addEventListener(MouseEvent.MOUSE_DOWN,this.linkbtx);
         this.cancelbt.addEventListener(MouseEvent.MOUSE_DOWN,this.cancelbtx);
      }
   }
}

