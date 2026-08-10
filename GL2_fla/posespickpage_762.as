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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25947")]
   public dynamic class posespickpage_762 extends MovieClip
   {
      
      public var animatedposesbt:MovieClip;
      
      public var closebt:MovieClip;
      
      public var customposesbt:MovieClip;
      
      public var defaultbt:MovieClip;
      
      public var posebt1:MovieClip;
      
      public var posebt10:MovieClip;
      
      public var posebt2:MovieClip;
      
      public var posebt3:MovieClip;
      
      public var posebt4:MovieClip;
      
      public var posebt5:MovieClip;
      
      public var posebt6:MovieClip;
      
      public var posebt7:MovieClip;
      
      public var posebt8:MovieClip;
      
      public var posebt9:MovieClip;
      
      public var poseeditbt:MovieClip;
      
      public var posepageonx:MovieClip;
      
      public var posepagex:MovieClip;
      
      public var posex1:MovieClip;
      
      public var posex10:MovieClip;
      
      public var posex2:MovieClip;
      
      public var posex3:MovieClip;
      
      public var posex4:MovieClip;
      
      public var posex5:MovieClip;
      
      public var posex6:MovieClip;
      
      public var posex7:MovieClip;
      
      public var posex8:MovieClip;
      
      public var posex9:MovieClip;
      
      public var selectdefault:MovieClip;
      
      public var selx:MovieClip;
      
      public var touchposebt:MovieClip;
      
      public function posespickpage_762()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.openstudiopage = 0;
         gotoAndStop(2);
      }
      
      public function gosel() : void
      {
         if(parent["scharpose" + parent.spick] == 0)
         {
            this.selx.visible = false;
         }
         else if(parent["scharpose" + parent.spick] > parent.posepagex * 10 - 10 && parent["scharpose" + parent.spick] <= parent.posepagex * 10)
         {
            this.selx.visible = true;
            this.selx.x = this["posebt" + (parent["scharpose" + parent.spick] - (parent.posepagex * 10 - 10))].x;
            this.selx.y = this["posebt" + (parent["scharpose" + parent.spick] - (parent.posepagex * 10 - 10))].y;
         }
         else
         {
            this.selx.visible = false;
         }
         if(parent["scharpose" + parent.spick] >= 1)
         {
            this.selectdefault.visible = false;
         }
         else
         {
            this.selectdefault.visible = true;
         }
      }
      
      public function touchposebtx(event:MouseEvent) : void
      {
         parent.docolor = 1;
         parent.doskew = 2;
         parent.playani = 2;
         for(var i:* = 1; i <= 10; i++)
         {
            if(this["posebt" + i].hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               if(parent.posetypepage == 1)
               {
                  parent["scharpose" + parent.spick] = i + (parent.posepagex * 10 - 10);
                  parent.posepick = i + (parent.posepagex * 10 - 10);
               }
               else
               {
                  parent["scharpose" + parent.spick] = i + (parent.posepagex * 10 - 10) + 600;
                  parent.posepick = i + (parent.posepagex * 10 - 10) + 600;
               }
               parent.updateposes = 2;
               parent.updateallstudiochar();
               this.gosel();
            }
         }
         if(!this.customposesbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(!this.animatedposesbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               if(this.defaultbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
               {
                  if(parent["scharpose" + parent.spick] > 0)
                  {
                     parent["scharpose" + parent.spick] = 0;
                     this.selx.visible = false;
                     parent.updateposes = 2;
                     parent.updateallstudiochar();
                     this.gosel();
                  }
               }
               else if(this.poseeditbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
               {
                  parent.slotmain = 1;
                  parent.goedit = 2;
                  parent.oldslot = parent.spick;
                  parent.slot = parent.spick;
                  gotoAndStop(2);
                  parent.exitstudio();
               }
               else if(this.posepagex.leftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
               {
                  --parent.posepagex;
                  if(parent.posepagex < 1)
                  {
                     parent.posepagex = 60;
                  }
                  parent.updateposes = 2;
                  parent.updatestudiopose();
                  this.gosel();
               }
               else if(this.posepagex.rightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
               {
                  parent.posepagex += 1;
                  if(parent.posepagex > 60)
                  {
                     parent.posepagex = 1;
                  }
                  parent.updateposes = 2;
                  parent.updatestudiopose();
                  this.gosel();
               }
            }
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
         if(parent["scharpose" + parent.spick] >= 1)
         {
            this.selectdefault.visible = false;
            parent.posepagex = Math.ceil(parent["scharpose" + parent.spick] / 10);
         }
         else
         {
            this.selectdefault.visible = true;
            parent.posepagex = 1;
         }
         parent.changetype = 1;
         parent.updateposes = 2;
         parent.updatestudiopose();
         this.gosel();
         this.touchposebt.addEventListener(MouseEvent.MOUSE_DOWN,this.touchposebtx);
      }
   }
}

