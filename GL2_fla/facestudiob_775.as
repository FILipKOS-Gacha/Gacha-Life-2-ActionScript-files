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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol26033")]
   public dynamic class facestudiob_775 extends MovieClip
   {
      
      public var closebt:MovieClip;
      
      public var defaultbt:MovieClip;
      
      public var faceblocker:MovieClip;
      
      public var facebt1:MovieClip;
      
      public var facebt2:MovieClip;
      
      public var facebt3:MovieClip;
      
      public var faceeditbt:MovieClip;
      
      public var facepages:MovieClip;
      
      public var itemx1:MovieClip;
      
      public var itemx10:MovieClip;
      
      public var itemx11:MovieClip;
      
      public var itemx12:MovieClip;
      
      public var itemx2:MovieClip;
      
      public var itemx3:MovieClip;
      
      public var itemx4:MovieClip;
      
      public var itemx5:MovieClip;
      
      public var itemx6:MovieClip;
      
      public var itemx7:MovieClip;
      
      public var itemx8:MovieClip;
      
      public var itemx9:MovieClip;
      
      public var selx:MovieClip;
      
      public var facepage:*;
      
      public var eyepage:*;
      
      public var mouthpage:*;
      
      public var emotepage:*;
      
      public function facestudiob_775()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.openstudiopage = 0;
         gotoAndStop(2);
      }
      
      public function updatefaces() : void
      {
         var i:* = undefined;
         var ai:* = undefined;
         if(this.facepage == 1)
         {
            this.defaultbt.gotoAndStop(2);
            if(parent["schareyes" + parent.spick] > this.eyepage * 12 - 12 && parent["schareyes" + parent.spick] <= this.eyepage * 12)
            {
               this.selx.visible = true;
               this.selx.x = this["itemx" + (parent["schareyes" + parent.spick] - (this.eyepage * 12 - 12))].x;
               this.selx.y = this["itemx" + (parent["schareyes" + parent.spick] - (this.eyepage * 12 - 12))].y;
            }
            else
            {
               this.selx.visible = false;
            }
            for(i = 1; i <= 12; i++)
            {
               this["itemx" + i].visible = true;
               this["itemx" + i].bt.scaleX = 1;
               this["itemx" + i].bt.scaleY = 0.7;
               this["itemx" + i].gotoAndStop(i + (this.eyepage * 12 - 12));
            }
            if(this.eyepage == 2)
            {
               for(i = 10; i <= 12; i++)
               {
                  this["itemx" + i].visible = false;
                  this["itemx" + i].bt.scaleX = 0;
                  this["itemx" + i].bt.scaleY = 0;
               }
            }
            this.facepages.pagex.text = this.eyepage + "/2";
         }
         else if(this.facepage == 2)
         {
            this.defaultbt.gotoAndStop(3);
            if(parent["scharmouth" + parent.spick] > this.mouthpage * 12 - 12 && parent["scharmouth" + parent.spick] <= this.mouthpage * 12)
            {
               this.selx.visible = true;
               this.selx.x = this["itemx" + (parent["scharmouth" + parent.spick] - (this.mouthpage * 12 - 12))].x;
               this.selx.y = this["itemx" + (parent["scharmouth" + parent.spick] - (this.mouthpage * 12 - 12))].y;
            }
            else
            {
               this.selx.visible = false;
            }
            for(ai = 1; ai <= 12; ai++)
            {
               for(i = 1; i <= 5; i++)
               {
                  this["itemx" + ai].mouth["c" + i].gotoAndStop(this.mouthpage * 12 - 12 + ai);
               }
               for(i = 1; i <= 4; i++)
               {
                  parent["ggcolor" + i].setTint("0x" + parent["smouthcol" + i],1);
                  this["itemx" + ai].mouth["c" + i].transform.colorTransform = parent["ggcolor" + i];
               }
               this["itemx" + ai].mouth.c3.alpha = parent.smouthalpha * 0.05;
               this["itemx" + ai].visible = true;
               this["itemx" + ai].bt.scaleX = 1;
               this["itemx" + ai].bt.scaleY = 0.7;
            }
            if(this.mouthpage == 20)
            {
               for(i = 6; i <= 12; i++)
               {
                  this["itemx" + i].visible = false;
                  this["itemx" + i].bt.scaleX = 0;
                  this["itemx" + i].bt.scaleY = 0;
               }
            }
            this.facepages.pagex.text = this.mouthpage + "/20";
         }
         else if(this.facepage == 3)
         {
            this.defaultbt.gotoAndStop(4);
            if(parent["scharemote" + parent.spick] > this.emotepage * 12 - 12 && parent["scharemote" + parent.spick] <= this.emotepage * 12)
            {
               this.selx.visible = true;
               this.selx.x = this["itemx" + (parent["scharemote" + parent.spick] - (this.emotepage * 12 - 12))].x;
               this.selx.y = this["itemx" + (parent["scharemote" + parent.spick] - (this.emotepage * 12 - 12))].y;
            }
            else
            {
               this.selx.visible = false;
            }
            for(i = 1; i <= 12; i++)
            {
               this["itemx" + i].visible = true;
               this["itemx" + i].bt.scaleX = 1;
               this["itemx" + i].bt.scaleY = 0.7;
               this["itemx" + i].emotex.gotoAndStop(i + (this.emotepage * 12 - 12));
            }
            if(this.emotepage == 4)
            {
               for(i = 11; i <= 12; i++)
               {
                  this["itemx" + i].visible = false;
                  this["itemx" + i].bt.scaleX = 0;
                  this["itemx" + i].bt.scaleY = 0;
               }
            }
            this.facepages.pagex.text = this.emotepage + "/4";
         }
      }
      
      public function facebt1x(event:MouseEvent) : void
      {
         this.facepage = 1;
         gotoAndStop(3);
         this.updatefaces();
      }
      
      public function facebt2x(event:MouseEvent) : void
      {
         this.facepage = 2;
         parent.updatecurrentstudiochar();
         gotoAndStop(4);
         this.updatefaces();
      }
      
      public function facebt3x(event:MouseEvent) : void
      {
         this.facepage = 3;
         gotoAndStop(5);
         this.updatefaces();
      }
      
      public function faceblockerx(event:MouseEvent) : void
      {
         for(var i:* = 1; i <= 12; i++)
         {
            if(this["itemx" + i].bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               if(this.facepage == 1)
               {
                  parent["schareyes" + parent.spick] = i + (this.eyepage * 12 - 12);
               }
               else if(this.facepage == 2)
               {
                  parent["scharmouth" + parent.spick] = i + (this.mouthpage * 12 - 12);
               }
               else if(this.facepage == 3)
               {
                  parent["scharemote" + parent.spick] = i + (this.emotepage * 12 - 12);
               }
               parent.updateallstudiochar();
               parent.updatestudio();
               this.updatefaces();
            }
         }
         trace(this.itemx4.bt.scaleX);
         trace(this.itemx4.bt.scaleY);
         if(this.facepages.rightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(this.facepage == 1)
            {
               this.eyepage += 1;
               if(this.eyepage > 2)
               {
                  this.eyepage = 1;
               }
            }
            else if(this.facepage == 2)
            {
               this.mouthpage += 1;
               if(this.mouthpage > 20)
               {
                  this.mouthpage = 1;
               }
            }
            else if(this.facepage == 3)
            {
               this.emotepage += 1;
               if(this.emotepage > 4)
               {
                  this.emotepage = 1;
               }
            }
            this.updatefaces();
         }
         else if(this.facepages.leftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(this.facepage == 1)
            {
               --this.eyepage;
               if(this.eyepage < 1)
               {
                  this.eyepage = 2;
               }
            }
            else if(this.facepage == 2)
            {
               --this.mouthpage;
               if(this.mouthpage < 1)
               {
                  this.mouthpage = 20;
               }
            }
            else if(this.facepage == 3)
            {
               --this.emotepage;
               if(this.emotepage < 1)
               {
                  this.emotepage = 4;
               }
            }
            this.updatefaces();
         }
         else if(this.defaultbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(this.facepage == 1)
            {
               parent["schareyes" + parent.spick] = 0;
               this.updatefaces();
               parent.updateallstudiochar();
            }
            else if(this.facepage == 2)
            {
               parent["scharmouth" + parent.spick] = 0;
               this.updatefaces();
               parent.updateallstudiochar();
            }
            else if(this.facepage == 3)
            {
               parent.studioadjust.gotoAndStop(3);
            }
         }
         else if(this.faceeditbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            parent.slotmain = 1;
            parent.goedit = 3;
            parent.oldslot = parent.spick;
            parent.slot = parent.spick;
            gotoAndStop(2);
            parent.exitstudio();
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
         this.facepage = 1;
         this.eyepage = 1;
         this.mouthpage = 1;
         this.emotepage = 1;
         this.eyepage = Math.ceil(parent["schareyes" + parent.spick] / 12);
         this.mouthpage = Math.ceil(parent["scharmouth" + parent.spick] / 12);
         this.emotepage = Math.ceil(parent["scharemote" + parent.spick] / 12);
         if(this.eyepage == 0)
         {
            this.eyepage = 1;
         }
         if(this.mouthpage == 0)
         {
            this.mouthpage = 1;
         }
         if(this.emotepage == 0)
         {
            this.emotepage = 1;
         }
         this.faceeditbt.gotoAndStop(2);
         this.updatefaces();
         this.facebt1.addEventListener(MouseEvent.MOUSE_DOWN,this.facebt1x);
         this.facebt2.addEventListener(MouseEvent.MOUSE_DOWN,this.facebt2x);
         this.facebt3.addEventListener(MouseEvent.MOUSE_DOWN,this.facebt3x);
         this.faceblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.faceblockerx);
      }
   }
}

