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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol24137")]
   public dynamic class pageopen_469 extends MovieClip
   {
      
      public var arrowsx:MovieClip;
      
      public var bodybt:MovieClip;
      
      public var botbts:MovieClip;
      
      public var closebt:MovieClip;
      
      public var custbar:MovieClip;
      
      public var extrabt:MovieClip;
      
      public var facebt:MovieClip;
      
      public var hairbt:MovieClip;
      
      public var leftbt:MovieClip;
      
      public var lowerbt:MovieClip;
      
      public var namex:TextField;
      
      public var otherbt:MovieClip;
      
      public var pageon:MovieClip;
      
      public var presetsbt:MovieClip;
      
      public var profilebt:MovieClip;
      
      public var rightbt:MovieClip;
      
      public var upperbt:MovieClip;
      
      public function pageopen_469()
      {
         super();
         addFrameScript(0,this.frame1);
      }
      
      public function closebtz(evt:MouseEvent) : void
      {
         MovieClip(root).offani();
         MovieClip(root).sfx = 2;
         MovieClip(root).playsfx();
         MovieClip(root).saveplayerstring();
         parent.playani = 2;
         if(MovieClip(root).custpage == 3)
         {
            MovieClip(root).saveposestring();
         }
         MovieClip(root).chartype = 1;
         MovieClip(root).onlyicon = 1;
         MovieClip(root).onlycolor = 1;
         MovieClip(root).doskew = 1;
         MovieClip(root).docolor = 2;
         MovieClip(root).defaultpose = 1;
         MovieClip(root).getplayerstring();
         MovieClip(root).updatechar();
         MovieClip(root).openslots = 1;
         MovieClip(root).updatesloticons();
         MovieClip(root).custpage = 0;
         MovieClip(root).updatelayout();
         MovieClip(root).savex();
         MovieClip(root).checkshowad();
         MovieClip(root).saveposeani2();
         MovieClip(root).updatecustinfo();
      }
      
      public function slotbtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 1;
         MovieClip(root).playsfx();
         MovieClip(root).saveplayerstring();
         MovieClip(root).slotsgo.gotoAndStop(3);
      }
      
      public function rightbtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 1;
         MovieClip(root).playsfx();
         MovieClip(root).saveplayerstring();
         MovieClip(root).custpage = MovieClip(root).custpage + 1;
         MovieClip(root).zoomonce = 2;
         if(MovieClip(root).custpage > 18)
         {
            MovieClip(root).custpage = 1;
         }
         MovieClip(root).updatecustinfo();
         if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
         {
            parent.checkswitch();
            MovieClip(root).saveundostring();
         }
      }
      
      public function leftbtx(evt:MouseEvent) : void
      {
         MovieClip(root).sfx = 1;
         MovieClip(root).playsfx();
         MovieClip(root).saveplayerstring();
         --MovieClip(root).custpage;
         MovieClip(root).zoomonce = 2;
         if(MovieClip(root).custpage < 1)
         {
            MovieClip(root).custpage = 18;
         }
         MovieClip(root).updatecustinfo();
         if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
         {
            parent.checkswitch();
            MovieClip(root).saveundostring();
         }
      }
      
      public function botbtsx(event:MouseEvent) : void
      {
         if(this.presetsbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 1;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.bodybt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 2;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.hairbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 5;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.facebt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 7;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.otherbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 9;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.upperbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 11;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.lowerbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 13;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.extrabt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 15;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
         else if(this.profilebt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            MovieClip(root).zoomonce = 2;
            MovieClip(root).saveplayerstring();
            MovieClip(root).sfx = 1;
            MovieClip(root).playsfx();
            MovieClip(root).custpage = 18;
            MovieClip(root).updatecustinfo();
            if(MovieClip(root).custpage >= 5 && MovieClip(root).custpage <= 17)
            {
               parent.checkswitch();
            }
         }
      }
      
      internal function frame1() : *
      {
         this.closebt.addEventListener(MouseEvent.MOUSE_DOWN,this.closebtz);
         parent.slotx.bt.addEventListener(MouseEvent.MOUSE_DOWN,this.slotbtx);
         this.rightbt.addEventListener(MouseEvent.MOUSE_DOWN,this.rightbtx);
         this.leftbt.addEventListener(MouseEvent.MOUSE_DOWN,this.leftbtx);
         this.botbts.addEventListener(MouseEvent.MOUSE_DOWN,this.botbtsx);
      }
   }
}

