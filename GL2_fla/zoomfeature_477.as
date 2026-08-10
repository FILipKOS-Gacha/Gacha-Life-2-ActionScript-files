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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24157")]
   public dynamic class zoomfeature_477 extends MovieClip
   {
      
      public var anibt:MovieClip;
      
      public var downbt:MovieClip;
      
      public var hidebt:MovieClip;
      
      public var upbt:MovieClip;
      
      public var xx:MovieClip;
      
      public var yposx:MovieClip;
      
      public var zoombts:MovieClip;
      
      public var zoominbt:MovieClip;
      
      public var zoomoutbt:MovieClip;
      
      public var zoomx:MovieClip;
      
      public function zoomfeature_477()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function hidebtx(event:MouseEvent) : void
      {
         MovieClip(root).hideui = 2;
         MovieClip(root).updatezoom();
      }
      
      public function anibtx(event:MouseEvent) : void
      {
         if(MovieClip(root).custpage <= 18)
         {
            if(MovieClip(root).anion == 1)
            {
               MovieClip(root).onani();
            }
            else if(MovieClip(root).custpage == 3)
            {
               parent.goposepage();
            }
            else
            {
               MovieClip(root).offani();
            }
         }
      }
      
      public function zoombtsx(event:MouseEvent) : void
      {
         if(this.zoominbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoom = MovieClip(root).zoom + 1;
            if(MovieClip(root).zoom > 10)
            {
               MovieClip(root).zoom = 1;
            }
            MovieClip(root).updatezoom();
         }
         else if(this.zoomoutbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --MovieClip(root).zoom;
            if(MovieClip(root).zoom < 1)
            {
               MovieClip(root).zoom = 10;
            }
            MovieClip(root).updatezoom();
         }
         else if(this.upbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).ypos = MovieClip(root).ypos + 1;
            if(MovieClip(root).ypos > 10)
            {
               MovieClip(root).ypos = 1;
            }
            MovieClip(root).updatezoom();
         }
         else if(this.downbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            --MovieClip(root).ypos;
            if(MovieClip(root).ypos < 1)
            {
               MovieClip(root).ypos = 10;
            }
            MovieClip(root).updatezoom();
         }
      }
      
      internal function frame1() : *
      {
         this.hidebt.addEventListener(MouseEvent.MOUSE_UP,this.hidebtx);
         this.anibt.addEventListener(MouseEvent.MOUSE_DOWN,this.anibtx);
         this.zoombts.addEventListener(MouseEvent.MOUSE_DOWN,this.zoombtsx);
      }
   }
}

