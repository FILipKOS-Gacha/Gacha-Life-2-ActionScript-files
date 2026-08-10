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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24078")]
   public dynamic class partychoosehome_455 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var giftx1:MovieClip;
      
      public var giftx2:MovieClip;
      
      public var giftx3:MovieClip;
      
      public var giftx4:MovieClip;
      
      public var giftx5:MovieClip;
      
      public var giftx6:MovieClip;
      
      public var leftbt:MovieClip;
      
      public var linkgo:MovieClip;
      
      public var mailpagex:MovieClip;
      
      public var rightbt:MovieClip;
      
      public var linkpick:*;
      
      public var linkx:*;
      
      public var titlex:*;
      
      public var descx:*;
      
      public var datex:*;
      
      public var gemsx:*;
      
      public var idx:*;
      
      public var avatarx:*;
      
      public var giftpage:*;
      
      public var addnum:*;
      
      public var maxpage:*;
      
      public function partychoosehome_455()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         parent.checkgreen();
         parent.char.visible = true;
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         parent.checkgreen();
         parent.char.visible = true;
         gotoAndStop(2);
      }
      
      public function claimbt1x(evt:MouseEvent) : void
      {
         this.linkpick = 1;
         this.openlink();
      }
      
      public function claimbt2x(evt:MouseEvent) : void
      {
         this.linkpick = 2;
         this.openlink();
      }
      
      public function claimbt3x(evt:MouseEvent) : void
      {
         this.linkpick = 3;
         this.openlink();
      }
      
      public function claimbt4x(evt:MouseEvent) : void
      {
         this.linkpick = 4;
         this.openlink();
      }
      
      public function claimbt5x(evt:MouseEvent) : void
      {
         this.linkpick = 5;
         this.openlink();
      }
      
      public function claimbt6x(evt:MouseEvent) : void
      {
         this.linkpick = 6;
         this.openlink();
      }
      
      public function openlink() : void
      {
         this.idx = this["giftx" + this.linkpick].idx.text;
         this.linkx = this["giftx" + this.linkpick].linkx.text;
         this.titlex = this["giftx" + this.linkpick].titlex.text;
         this.descx = this["giftx" + this.linkpick].descx.text;
         this.datex = this["giftx" + this.linkpick].datex.text;
         this.gemsx = this["giftx" + this.linkpick].gemsx.text;
         this.avatarx = this["giftx" + this.linkpick].avatarx.currentFrame;
         this.linkgo.gotoAndStop(3);
      }
      
      public function updategifts() : void
      {
         var giftIndex:int = 0;
         var giftDisplayIndex:int = 0;
         var totalGifts:int = int(parent.maxgifts);
         var giftsPerPage:int = 6;
         this.maxpage = Math.ceil(totalGifts / giftsPerPage);
         this.mailpagex.pagex.text = this.giftpage + "/" + this.maxpage;
         var startIndex:int = totalGifts - (this.giftpage - 1) * giftsPerPage + 1;
         var endIndex:int = Math.max(1,startIndex - giftsPerPage);
         for(var i:int = 1; i <= giftsPerPage; i++)
         {
            giftIndex = startIndex - i;
            giftDisplayIndex = i;
            if(giftIndex >= endIndex && giftIndex <= totalGifts)
            {
               this["giftx" + giftDisplayIndex].visible = true;
               this["giftx" + giftDisplayIndex].claimbt.gotoAndStop(parent["gift" + parent["giftidx" + giftIndex]]);
               this["giftx" + giftDisplayIndex].idx.text = parent["giftidx" + giftIndex];
               this["giftx" + giftDisplayIndex].titlex.text = parent["gifttitleen" + giftIndex];
               this["giftx" + giftDisplayIndex].descx.text = parent["giftdescen" + giftIndex];
               this["giftx" + giftDisplayIndex].datex.text = parent["giftdateen" + giftIndex];
               this["giftx" + giftDisplayIndex].gemsx.text = parent["giftgems" + giftIndex];
               this["giftx" + giftDisplayIndex].linkx.text = parent["giftlink" + giftIndex];
               this["giftx" + giftDisplayIndex].avatarx.gotoAndStop(parent["avatarx" + giftIndex]);
            }
            else
            {
               this["giftx" + giftDisplayIndex].visible = false;
            }
         }
      }
      
      public function leftbtx(evt:MouseEvent) : void
      {
         --this.giftpage;
         if(this.giftpage < 1)
         {
            this.giftpage = this.maxpage;
         }
         this.updategifts();
      }
      
      public function rightbtx(evt:MouseEvent) : void
      {
         this.giftpage += 1;
         if(this.giftpage > this.maxpage)
         {
            this.giftpage = 1;
         }
         this.updategifts();
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
         this.closebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.closebt2x);
         parent.char.visible = false;
         this.linkpick = 1;
         this.linkx = "";
         this.titlex = "";
         this.descx = "";
         this.datex = "";
         this.gemsx = "";
         this.idx = "";
         this.avatarx = 1;
         this.giftx1.claimbt.addEventListener(MouseEvent.MOUSE_DOWN,this.claimbt1x);
         this.giftx2.claimbt.addEventListener(MouseEvent.MOUSE_DOWN,this.claimbt2x);
         this.giftx3.claimbt.addEventListener(MouseEvent.MOUSE_DOWN,this.claimbt3x);
         this.giftx4.claimbt.addEventListener(MouseEvent.MOUSE_DOWN,this.claimbt4x);
         this.giftx5.claimbt.addEventListener(MouseEvent.MOUSE_DOWN,this.claimbt5x);
         this.giftx6.claimbt.addEventListener(MouseEvent.MOUSE_DOWN,this.claimbt6x);
         stop();
         this.giftpage = 1;
         this.addnum = 0;
         this.maxpage = 1;
         this.updategifts();
         this.leftbt.addEventListener(MouseEvent.MOUSE_DOWN,this.leftbtx);
         this.rightbt.addEventListener(MouseEvent.MOUSE_DOWN,this.rightbtx);
      }
   }
}

