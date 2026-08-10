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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol23149")]
   public dynamic class languagepick_81 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var langblocker:MovieClip;
      
      public var langbt1:MovieClip;
      
      public var langbt10:MovieClip;
      
      public var langbt11:MovieClip;
      
      public var langbt12:MovieClip;
      
      public var langbt13:MovieClip;
      
      public var langbt14:MovieClip;
      
      public var langbt15:MovieClip;
      
      public var langbt16:MovieClip;
      
      public var langbt17:MovieClip;
      
      public var langbt18:MovieClip;
      
      public var langbt19:MovieClip;
      
      public var langbt2:MovieClip;
      
      public var langbt20:MovieClip;
      
      public var langbt21:MovieClip;
      
      public var langbt22:MovieClip;
      
      public var langbt3:MovieClip;
      
      public var langbt4:MovieClip;
      
      public var langbt5:MovieClip;
      
      public var langbt6:MovieClip;
      
      public var langbt7:MovieClip;
      
      public var langbt8:MovieClip;
      
      public var langbt9:MovieClip;
      
      public var selx:MovieClip;
      
      public function languagepick_81()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function langblockerx(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 22; i++)
         {
            if(this["langbt" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               MovieClip(root).lang = i;
               parent.updateoptions();
               MovieClip(root).translate();
               gotoAndStop(2);
               break;
            }
         }
      }
      
      public function closebtx(event:MouseEvent) : void
      {
         gotoAndStop(2);
      }
      
      public function updatetranslate() : *
      {
         this.selx.x = this["langbt" + MovieClip(root).lang].x;
         this.selx.y = this["langbt" + MovieClip(root).lang].y;
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
         this.langblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.langblockerx);
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtx);
         this.updatetranslate();
      }
   }
}

