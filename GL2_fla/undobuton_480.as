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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24168")]
   public dynamic class undobuton_480 extends MovieClip
   {
      
      public var copybt:MovieClip;
      
      public var copybt2:MovieClip;
      
      public var posebt:MovieClip;
      
      public var undobt:MovieClip;
      
      public function undobuton_480()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function undobtx(evt:MouseEvent) : void
      {
         MovieClip(root).chartype = 11;
         MovieClip(root).onlyicon = 1;
         MovieClip(root).onlycolor = 1;
         MovieClip(root).doskew = 2;
         MovieClip(root).docolor = 2;
         MovieClip(root).getplayerstring();
         MovieClip(root).updatechar();
         MovieClip(root).saveplayerstring();
         MovieClip(root).chartype = 1;
         MovieClip(root).updatecustinfo();
      }
      
      public function posebtx(evt:MouseEvent) : void
      {
         if(MovieClip(root).defaultpose == 1)
         {
            MovieClip(root).defaultpose = 2;
         }
         else
         {
            MovieClip(root).defaultpose = 1;
         }
         MovieClip(root).chartype = 1;
         MovieClip(root).onlyicon = 1;
         MovieClip(root).onlycolor = 1;
         MovieClip(root).doskew = 1;
         MovieClip(root).docolor = 2;
         MovieClip(root).getplayerstring();
         MovieClip(root).updatechar();
         MovieClip(root).chartype = 1;
         MovieClip(root).updatecustinfo();
      }
      
      public function copybtx(evt:MouseEvent) : void
      {
         MovieClip(root).getcopystring();
         System.setClipboard(MovieClip(root).newText);
         trace(MovieClip(root).newText);
      }
      
      public function copybt2x(evt:MouseEvent) : void
      {
         MovieClip(root).getcopyposeimport();
         System.setClipboard(MovieClip(root).copyposestring);
         trace(MovieClip(root).copyposestring);
      }
      
      internal function frame1() : *
      {
         this.undobt.addEventListener(MouseEvent.MOUSE_DOWN,this.undobtx);
         this.posebt.addEventListener(MouseEvent.MOUSE_DOWN,this.posebtx);
         if(MovieClip(root).showcopy == 1)
         {
            this.copybt.visible = false;
            this.copybt2.visible = false;
         }
         else
         {
            this.copybt.visible = true;
            this.copybt2.visible = true;
         }
         this.copybt.addEventListener(MouseEvent.MOUSE_DOWN,this.copybtx);
         this.copybt2.addEventListener(MouseEvent.MOUSE_DOWN,this.copybt2x);
      }
   }
}

