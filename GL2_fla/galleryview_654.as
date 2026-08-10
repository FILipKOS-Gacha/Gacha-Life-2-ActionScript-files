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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25429")]
   public dynamic class galleryview_654 extends MovieClip
   {
      
      public var art1:MovieClip;
      
      public var art2:MovieClip;
      
      public var bts:MovieClip;
      
      public var closebt:MovieClip;
      
      public var clickx:*;
      
      public var i:*;
      
      public function galleryview_654()
      {
         super();
         addFrameScript(0,this.frame1,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         if(this.clickx == 1)
         {
            this.art1.visible = false;
            this.art2.visible = true;
            this.clickx = 2;
         }
         else
         {
            gotoAndStop(2);
         }
      }
      
      public function bt1x(evt:MouseEvent) : void
      {
         parent.linkpick = 1;
         parent.linkx.gotoAndStop(3);
      }
      
      public function bt2x(evt:MouseEvent) : void
      {
         parent.linkpick = 2;
         parent.linkx.gotoAndStop(3);
      }
      
      internal function frame1() : *
      {
         stop();
      }
      
      internal function frame3() : *
      {
         this.clickx = 1;
         this.closebt.addEventListener(MouseEvent.MOUSE_UP,this.closebtx);
         this.bts.bt1.addEventListener(MouseEvent.MOUSE_UP,this.bt1x);
         this.bts.bt2.addEventListener(MouseEvent.MOUSE_UP,this.bt2x);
         this.art1.gotoAndStop(parent.imgpick);
         this.art1.visible = true;
         this.art2.gotoAndStop(parent.imgpick + 1);
         this.art2.visible = false;
         this.bts.namex.text = parent.imgname;
         for(this.i = 1; this.i <= 2; ++this.i)
         {
            if(parent["lx" + this.i] == "youtube")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(1);
            }
            else if(parent["lx" + this.i] == "tiktok")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(2);
            }
            else if(parent["lx" + this.i] == "x")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(3);
            }
            else if(parent["lx" + this.i] == "instagram")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(4);
            }
            else if(parent["lx" + this.i] == "facebook")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(5);
            }
            else if(parent["lx" + this.i] == "carrd")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(6);
            }
            else if(parent["lx" + this.i] == "other")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(7);
            }
            else if(parent["lx" + this.i] == "")
            {
               this.bts["bt" + this.i].picx.gotoAndStop(8);
            }
         }
         if(parent.imglink1 == "" && parent.imglink2 == "")
         {
            this.bts.bt1.visible = false;
            this.bts.bt2.visible = false;
         }
         else if(parent.imglink2 == "")
         {
            this.bts.bt1.x = 149;
            this.bts.bt1.visible = true;
            this.bts.bt2.visible = false;
         }
         else
         {
            this.bts.bt1.x = 114;
            this.bts.bt1.visible = true;
            this.bts.bt2.x = 184;
            this.bts.bt2.visible = true;
         }
      }
   }
}

