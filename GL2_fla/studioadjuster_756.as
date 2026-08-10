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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25930")]
   public dynamic class studioadjuster_756 extends MovieClip
   {
      
      public var adjustblocker:MovieClip;
      
      public var adjusthold:MovieClip;
      
      public var adjx:TextField;
      
      public var closebt:MovieClip;
      
      public var flipxbt:MovieClip;
      
      public var flipybt:MovieClip;
      
      public var freemoveblocker:MovieClip;
      
      public var movex:MovieClip;
      
      public var resetbt:MovieClip;
      
      public var rotateleftbt:MovieClip;
      
      public var rotaterightbt:MovieClip;
      
      public var rotationshow:MovieClip;
      
      public var rotationx:MovieClip;
      
      public var xpos:TextField;
      
      public var xscaleleftbt:MovieClip;
      
      public var xscalerightbt:MovieClip;
      
      public var xscalex:MovieClip;
      
      public var ypos:TextField;
      
      public var yscaleleftbt:MovieClip;
      
      public var yscalerightbt:MovieClip;
      
      public var yscalex:MovieClip;
      
      public var changetimes:*;
      
      public var changetimer:*;
      
      public var changedir:*;
      
      public var changepick:*;
      
      public var startX:*;
      
      public var startY:*;
      
      public function studioadjuster_756()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         stage.removeEventListener(Event.ENTER_FRAME,this.freemove);
         stage.removeEventListener(Event.ENTER_FRAME,this.rotatecircle);
         parent.savestudiostring();
         gotoAndStop(2);
      }
      
      public function freemove(event:Event) : void
      {
         var offsetX:Number = stage.mouseX - this.startX;
         var offsetY:Number = stage.mouseY - this.startY;
         if(parent.openstudiopage == 1)
         {
            if(parent.bgstudiopage == 1)
            {
               parent.sbgxpos = int(offsetX + parent.oldxpos);
               parent.sbgypos = int(offsetY + parent.oldypos);
            }
            else if(parent.bgstudiopage == 3)
            {
               parent.sgradxpos = int(offsetX + parent.oldxpos);
               parent.sgradypos = int(offsetY + parent.oldypos);
            }
         }
         else if(parent.openstudiopage == 4)
         {
            parent.smainchatxpos = int(offsetX + parent.oldxpos);
            parent.smainchatypos = int(offsetY + parent.oldypos);
         }
         else if(parent.openstudiopage == 6)
         {
            parent["semotexpos" + parent.spick] = int(offsetX + parent.oldxpos);
            parent["semoteypos" + parent.spick] = int(offsetY + parent.oldypos);
         }
         else if(parent.openstudiopage == 7)
         {
            parent["schatxpos" + parent.spick] = int(offsetX + parent.oldxpos);
            parent["schatypos" + parent.spick] = int(offsetY + parent.oldypos);
         }
         this.goadjust();
         trace("freemove");
      }
      
      public function freemoveblockerx(event:MouseEvent) : void
      {
         this.freemoveblocker.gotoAndStop(2);
         stage.removeEventListener(Event.ENTER_FRAME,this.freemove);
         stage.removeEventListener(Event.ENTER_FRAME,this.rotatecircle);
         trace("remove events");
      }
      
      public function goadjust() : void
      {
         if(parent.openstudiopage == 1)
         {
            if(parent.bgstudiopage == 1)
            {
               this.adjx.text = "Background Adjust";
               this.xpos.text = "X +" + parent.sbgxpos;
               this.ypos.text = "Y +" + parent.sbgypos;
               this.rotationx.namex.text = parent.sbgrot + "°";
               this.xscalex.namex.text = "X Scale " + parent.sbgxscale + "/40";
               this.yscalex.namex.text = "Y Scale " + parent.sbgyscale + "/40";
            }
            else if(parent.bgstudiopage == 3)
            {
               this.adjx.text = "Gradient Adjust";
               this.xpos.text = "X +" + parent.sgradxpos;
               this.ypos.text = "Y +" + parent.sgradypos;
               this.rotationx.namex.text = parent.sgradrot + "°";
               this.xscalex.namex.text = "X Scale " + parent.sgradxscale + "/40";
               this.yscalex.namex.text = "Y Scale " + parent.sgradyscale + "/40";
            }
            parent.updatestudiobg();
         }
         else if(parent.openstudiopage == 4)
         {
            this.adjx.text = "Text Adjustment";
            this.xpos.text = "X +" + parent.smainchatxpos;
            this.ypos.text = "Y +" + parent.smainchatypos;
            this.rotationx.namex.text = parent.smainchatrot + "°";
            this.xscalex.namex.text = "Scale " + parent.smainchatscale + "/20";
            this.yscalex.visible = false;
            this.flipxbt.visible = false;
            this.flipybt.visible = false;
            parent.updatetext();
         }
         else if(parent.openstudiopage == 6)
         {
            this.adjx.text = "Emote Adjustment";
            this.xpos.text = "X +" + parent["semotexpos" + parent.spick];
            this.ypos.text = "Y +" + parent["semoteypos" + parent.spick];
            this.rotationx.namex.text = parent["semoterot" + parent.spick] + "°";
            this.xscalex.namex.text = "Scale " + parent["semotescale" + parent.spick] + "/20";
            this.yscalex.visible = false;
            this.flipxbt.visible = false;
            this.flipybt.visible = false;
            parent.movechat();
            parent.depthgo();
         }
         else if(parent.openstudiopage == 7)
         {
            this.adjx.text = "Chat Adjustment";
            this.xpos.text = "X +" + parent["schatxpos" + parent.spick];
            this.ypos.text = "Y +" + parent["schatypos" + parent.spick];
            this.rotationx.namex.text = parent["schatrot" + parent.spick] + "°";
            this.xscalex.namex.text = "Scale " + parent["schatscale" + parent.spick] + "/20";
            this.yscalex.visible = false;
            this.flipxbt.visible = false;
            this.flipybt.visible = false;
            parent.movechat();
            parent.depthgo();
         }
         parent.updatestudio();
      }
      
      public function changego() : void
      {
         this.changetimer = 0;
         this.changetimes = 3;
         if(this.changedir == 1)
         {
            stage.addEventListener(Event.ENTER_FRAME,this.changingleft);
         }
         else if(this.changedir == 2)
         {
            stage.addEventListener(Event.ENTER_FRAME,this.changingright);
         }
         this.adjusthold.gotoAndStop(3);
      }
      
      public function adjustholdx(event:MouseEvent) : void
      {
         stage.removeEventListener(Event.ENTER_FRAME,this.changingleft);
         stage.removeEventListener(Event.ENTER_FRAME,this.changingright);
         this.adjusthold.gotoAndStop(2);
      }
      
      public function changetiming() : void
      {
         if(this.changetimes == 3)
         {
            this.changetimes = 2;
            this.changetimer = 5;
         }
         else if(this.changetimes == 2)
         {
            this.changetimes = 1;
            this.changetimer = 3;
         }
         else if(this.changetimes == 1)
         {
            this.changetimes = 0;
            this.changetimer = 2;
         }
         else if(this.changetimes == 0)
         {
            this.changetimer = 1;
         }
      }
      
      public function changingleft(e:Event) : void
      {
         --this.changetimer;
         if(this.changetimer < 1)
         {
            if(this.changepick == 1)
            {
               parent.sbgxpos -= 2;
               if(parent.sbgxpos < -1000)
               {
                  parent.sbgxpos = 1000;
               }
            }
            else if(this.changepick == 2)
            {
               parent.sgradxpos -= 2;
               if(parent.sgradxpos < -1000)
               {
                  parent.sgradxpos = 1000;
               }
            }
            else if(this.changepick == 3)
            {
               parent.smainchatxpos -= 2;
               if(parent.smainchatxpos < -1000)
               {
                  parent.smainchatxpos = 1000;
               }
            }
            else if(this.changepick == 4)
            {
               parent["schatxpos" + parent.spick] = parent["schatxpos" + parent.spick] - 1;
               if(parent["schatxpos" + parent.spick] < -1000)
               {
                  parent["schatxpos" + parent.spick] = 1000;
               }
            }
            else if(this.changepick == 5)
            {
               parent.sbgypos += 2;
               if(parent.sbgypos > 1000)
               {
                  parent.sbgypos = -1000;
               }
            }
            else if(this.changepick == 6)
            {
               parent.sgradypos += 2;
               if(parent.sgradypos > 1000)
               {
                  parent.sgradypos = -1000;
               }
            }
            else if(this.changepick == 7)
            {
               parent.smainchatypos += 2;
               if(parent.smainchatypos > 1000)
               {
                  parent.smainchatypos = -1000;
               }
            }
            else if(this.changepick == 8)
            {
               parent["schatypos" + parent.spick] += 1;
               if(parent["schatypos" + parent.spick] > 1000)
               {
                  parent["schatypos" + parent.spick] = -1000;
               }
            }
            else if(this.changepick == 9)
            {
               --parent.sbgxscale;
               if(parent.sbgxscale < -40)
               {
                  parent.sbgxscale = 40;
               }
            }
            else if(this.changepick == 10)
            {
               --parent.sgradxscale;
               if(parent.sgradxscale < -40)
               {
                  parent.sgradxscale = 40;
               }
            }
            else if(this.changepick == 11)
            {
               --parent.smainchatscale;
               if(parent.smainchatscale < 0)
               {
                  parent.smainchatscale = 20;
               }
            }
            else if(this.changepick == 12)
            {
               parent["schatscale" + parent.spick] = parent["schatscale" + parent.spick] - 1;
               if(parent["schatscale" + parent.spick] < 0)
               {
                  parent["schatscale" + parent.spick] = 20;
               }
            }
            else if(this.changepick == 13)
            {
               parent.sbgyscale += 1;
               if(parent.sbgyscale > 40)
               {
                  parent.sbgyscale = -40;
               }
            }
            else if(this.changepick == 14)
            {
               parent.sgradyscale += 1;
               if(parent.sgradyscale > 40)
               {
                  parent.sgradyscale = -40;
               }
            }
            else if(this.changepick == 15)
            {
               parent.sbgrot -= 2;
               if(parent.sbgrot < 0)
               {
                  parent.sbgrot = 358;
               }
            }
            else if(this.changepick == 16)
            {
               parent.sgradrot -= 2;
               if(parent.sgradrot < 0)
               {
                  parent.sgradrot = 358;
               }
            }
            else if(this.changepick == 17)
            {
               parent.smainchatrot -= 2;
               if(parent.smainchatrot < 0)
               {
                  parent.smainchatrot = 358;
               }
            }
            else if(this.changepick == 18)
            {
               parent["schatrot" + parent.spick] -= 2;
               if(parent["schatrot" + parent.spick] < 0)
               {
                  parent["schatrot" + parent.spick] = 358;
               }
            }
            else if(this.changepick == 19)
            {
               parent["semotexpos" + parent.spick] = parent["semotexpos" + parent.spick] - 1;
               if(parent["semotexpos" + parent.spick] < -1000)
               {
                  parent["semotexpos" + parent.spick] = 1000;
               }
            }
            else if(this.changepick == 20)
            {
               parent["semoteypos" + parent.spick] += 1;
               if(parent["semoteypos" + parent.spick] > 1000)
               {
                  parent["semoteypos" + parent.spick] = -1000;
               }
            }
            else if(this.changepick == 21)
            {
               parent["semotescale" + parent.spick] = parent["semotescale" + parent.spick] - 1;
               if(parent["semotescale" + parent.spick] < 0)
               {
                  parent["semotescale" + parent.spick] = 20;
               }
            }
            else if(this.changepick == 22)
            {
               parent["semoterot" + parent.spick] -= 2;
               if(parent["semoterot" + parent.spick] < 0)
               {
                  parent["semoterot" + parent.spick] = 358;
               }
            }
            this.changetiming();
            this.goadjust();
         }
      }
      
      public function changingright(e:Event) : void
      {
         --this.changetimer;
         if(this.changetimer < 1)
         {
            if(this.changepick == 1)
            {
               parent.sbgxpos += 2;
               if(parent.sbgxpos > 1000)
               {
                  parent.sbgxpos = -1000;
               }
            }
            else if(this.changepick == 2)
            {
               parent.sgradxpos += 2;
               if(parent.sgradxpos > 1000)
               {
                  parent.sgradxpos = -1000;
               }
            }
            else if(this.changepick == 3)
            {
               parent.smainchatxpos += 2;
               if(parent.smainchatxpos > 1000)
               {
                  parent.smainchatxpos = -1000;
               }
            }
            else if(this.changepick == 4)
            {
               parent["schatxpos" + parent.spick] += 1;
               if(parent["schatxpos" + parent.spick] > 1000)
               {
                  parent["schatxpos" + parent.spick] = -1000;
               }
            }
            else if(this.changepick == 5)
            {
               parent.sbgypos -= 2;
               if(parent.sbgypos < -1000)
               {
                  parent.sbgypos = 1000;
               }
            }
            else if(this.changepick == 6)
            {
               parent.sgradypos -= 2;
               if(parent.sgradypos < -1000)
               {
                  parent.sgradypos = 1000;
               }
            }
            else if(this.changepick == 7)
            {
               parent.smainchatypos -= 2;
               if(parent.smainchatypos < -1000)
               {
                  parent.smainchatypos = 1000;
               }
            }
            else if(this.changepick == 8)
            {
               parent["schatypos" + parent.spick] = parent["schatypos" + parent.spick] - 1;
               if(parent["schatypos" + parent.spick] < -1000)
               {
                  parent["schatypos" + parent.spick] = 1000;
               }
            }
            else if(this.changepick == 9)
            {
               parent.sbgxscale += 1;
               if(parent.sbgxscale > 40)
               {
                  parent.sbgxscale = -40;
               }
            }
            else if(this.changepick == 10)
            {
               parent.sgradxscale += 1;
               if(parent.sgradxscale > 40)
               {
                  parent.sgradxscale = -40;
               }
            }
            else if(this.changepick == 11)
            {
               parent.smainchatscale += 1;
               if(parent.smainchatscale > 20)
               {
                  parent.smainchatscale = 0;
               }
            }
            else if(this.changepick == 12)
            {
               parent["schatscale" + parent.spick] += 1;
               if(parent["schatscale" + parent.spick] > 20)
               {
                  parent["schatscale" + parent.spick] = 0;
               }
            }
            else if(this.changepick == 13)
            {
               --parent.sbgyscale;
               if(parent.sbgyscale < -40)
               {
                  parent.sbgyscale = 40;
               }
            }
            else if(this.changepick == 14)
            {
               --parent.sgradyscale;
               if(parent.sgradyscale < -40)
               {
                  parent.sgradyscale = 40;
               }
            }
            else if(this.changepick == 15)
            {
               parent.sbgrot += 2;
               if(parent.sbgrot > 358)
               {
                  parent.sbgrot = 0;
               }
            }
            else if(this.changepick == 16)
            {
               parent.sgradrot += 2;
               if(parent.sgradrot > 358)
               {
                  parent.sgradrot = 0;
               }
            }
            else if(this.changepick == 17)
            {
               parent.smainchatrot += 2;
               if(parent.smainchatrot > 358)
               {
                  parent.smainchatrot = 0;
               }
            }
            else if(this.changepick == 18)
            {
               parent["schatrot" + parent.spick] += 2;
               if(parent["schatrot" + parent.spick] > 358)
               {
                  parent["schatrot" + parent.spick] = 0;
               }
            }
            else if(this.changepick == 19)
            {
               parent["semotexpos" + parent.spick] += 1;
               if(parent["semotexpos" + parent.spick] > 1000)
               {
                  parent["semotexpos" + parent.spick] = -1000;
               }
            }
            else if(this.changepick == 20)
            {
               parent["semoteypos" + parent.spick] = parent["semoteypos" + parent.spick] - 1;
               if(parent["semoteypos" + parent.spick] < -1000)
               {
                  parent["semoteypos" + parent.spick] = 1000;
               }
            }
            else if(this.changepick == 21)
            {
               parent["semotescale" + parent.spick] += 1;
               if(parent["semotescale" + parent.spick] > 20)
               {
                  parent["semotescale" + parent.spick] = 0;
               }
            }
            else if(this.changepick == 22)
            {
               parent["semoterot" + parent.spick] += 2;
               if(parent["semoterot" + parent.spick] > 358)
               {
                  parent["semoterot" + parent.spick] = 0;
               }
            }
            this.changetiming();
            this.goadjust();
         }
      }
      
      public function startrotate() : void
      {
         this.freemoveblocker.gotoAndStop(3);
         stage.addEventListener(Event.ENTER_FRAME,this.rotatecircle);
      }
      
      public function rotatecircle(e:Event) : void
      {
         var dx:Number = NaN;
         var dy:Number = NaN;
         if(parent.layout == 1)
         {
            dx = mouseX - 96;
            dy = mouseY - 774;
         }
         else if(parent.layout == 2)
         {
            dx = mouseX - 96;
            dy = mouseY - 774;
         }
         else if(parent.layout == 3)
         {
            dx = mouseX - 96;
            dy = mouseY - 774;
         }
         var radians:Number = Math.atan2(dy,dx);
         var degrees:int = radians * 180 / Math.PI + 90;
         this.rotationshow.rotx.rotation = degrees;
         if(degrees < 0)
         {
            degrees += 360;
         }
         if(parent.openstudiopage == 1)
         {
            if(parent.bgstudiopage == 1)
            {
               parent.sbgrot = degrees;
            }
            else if(parent.bgstudiopage == 3)
            {
               parent.sgradrot = degrees;
            }
         }
         else if(parent.openstudiopage == 4)
         {
            parent.smainchatrot = degrees;
         }
         else if(parent.openstudiopage == 6)
         {
            parent["semoterot" + parent.spick] = degrees;
         }
         else if(parent.openstudiopage == 7)
         {
            parent["schatrot" + parent.spick] = degrees;
         }
         this.goadjust();
         trace("rotating");
      }
      
      public function adjustblockerx(event:MouseEvent) : void
      {
         if(this.movex.freemovebt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            this.freemoveblocker.gotoAndStop(3);
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  parent.oldxpos = parent.sbgxpos;
                  parent.oldypos = parent.sbgypos;
               }
               else if(parent.bgstudiopage == 3)
               {
                  parent.oldxpos = parent.sgradxpos;
                  parent.oldypos = parent.sgradypos;
               }
            }
            else if(parent.openstudiopage == 4)
            {
               parent.oldxpos = parent.smainchatxpos;
               parent.oldypos = parent.smainchatypos;
            }
            else if(parent.openstudiopage == 6)
            {
               parent.oldxpos = parent["semotexpos" + parent.spick];
               parent.oldypos = parent["semoteypos" + parent.spick];
            }
            else if(parent.openstudiopage == 7)
            {
               parent.oldxpos = parent["schatxpos" + parent.spick];
               parent.oldypos = parent["schatypos" + parent.spick];
            }
            this.startX = stage.mouseX;
            this.startY = stage.mouseY;
            stage.addEventListener(Event.ENTER_FRAME,this.freemove);
         }
         else if(this.rotationshow.bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            this.startrotate();
         }
         else if(this.movex.leftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 1;
                  this.changedir = 1;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 2;
                  this.changedir = 1;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 3;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 4;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 19;
               this.changedir = 1;
               this.changego();
            }
         }
         else if(this.movex.rightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 1;
                  this.changedir = 2;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 2;
                  this.changedir = 2;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 3;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 4;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 19;
               this.changedir = 2;
               this.changego();
            }
         }
         else if(this.movex.downbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 5;
                  this.changedir = 1;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 6;
                  this.changedir = 1;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 7;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 8;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 20;
               this.changedir = 1;
               this.changego();
            }
            this.goadjust();
         }
         else if(this.movex.upbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 5;
                  this.changedir = 2;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 6;
                  this.changedir = 2;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 7;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 8;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 20;
               this.changedir = 2;
               this.changego();
            }
            this.goadjust();
         }
         else if(this.xscaleleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 9;
                  this.changedir = 1;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 10;
                  this.changedir = 1;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 11;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 12;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 21;
               this.changedir = 1;
               this.changego();
            }
            this.goadjust();
         }
         else if(this.xscalerightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 9;
                  this.changedir = 2;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 10;
                  this.changedir = 2;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 11;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 12;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 21;
               this.changedir = 2;
               this.changego();
            }
            this.goadjust();
         }
         else if(this.yscalerightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 13;
                  this.changedir = 1;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 14;
                  this.changedir = 1;
                  this.changego();
               }
            }
            this.goadjust();
         }
         else if(this.yscaleleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 13;
                  this.changedir = 2;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 14;
                  this.changedir = 2;
                  this.changego();
               }
            }
            this.goadjust();
         }
         else if(this.flipxbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  parent.sbgxscale = -parent.sbgxscale;
               }
               else if(parent.bgstudiopage == 3)
               {
                  parent.sgradxscale = -parent.sgradxscale;
               }
            }
            this.goadjust();
         }
         else if(this.flipybt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  parent.sbgyscale = -parent.sbgyscale;
               }
               else if(parent.bgstudiopage == 3)
               {
                  parent.sgradyscale = -parent.sgradyscale;
               }
            }
            this.goadjust();
         }
         else if(this.rotateleftbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 15;
                  this.changedir = 1;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 16;
                  this.changedir = 1;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 17;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 18;
               this.changedir = 1;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 22;
               this.changedir = 1;
               this.changego();
            }
            this.goadjust();
         }
         else if(this.rotaterightbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  this.changepick = 15;
                  this.changedir = 2;
                  this.changego();
               }
               else if(parent.bgstudiopage == 3)
               {
                  this.changepick = 16;
                  this.changedir = 2;
                  this.changego();
               }
            }
            else if(parent.openstudiopage == 4)
            {
               this.changepick = 17;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 7)
            {
               this.changepick = 18;
               this.changedir = 2;
               this.changego();
            }
            else if(parent.openstudiopage == 6)
            {
               this.changepick = 22;
               this.changedir = 2;
               this.changego();
            }
            this.goadjust();
         }
         else if(this.resetbt.hitTestPoint(stage.mouseX,stage.mouseY,true))
         {
            if(parent.openstudiopage == 1)
            {
               if(parent.bgstudiopage == 1)
               {
                  parent.sbgxpos = 0;
                  parent.sbgypos = 0;
                  parent.sbgrot = 0;
                  parent.sbgxscale = 20;
                  parent.sbgyscale = 20;
               }
               else if(parent.bgstudiopage == 3)
               {
                  parent.sgradxpos = 0;
                  parent.sgradypos = 0;
                  parent.sgradrot = 0;
                  parent.sgradxscale = 20;
                  parent.sgradyscale = 20;
               }
            }
            else if(parent.openstudiopage == 4)
            {
               parent.smainchatxpos = 0;
               parent.smainchatypos = 0;
               parent.smainchatrot = 0;
               parent.smainchatscale = 10;
            }
            else if(parent.openstudiopage == 6)
            {
               parent["semotexpos" + parent.spick] = 0;
               parent["semoteypos" + parent.spick] = 0;
               parent["semoterot" + parent.spick] = 0;
               parent["semotescale" + parent.spick] = 10;
            }
            else if(parent.openstudiopage == 7)
            {
               parent["schatxpos" + parent.spick] = 0;
               parent["schatypos" + parent.spick] = 0;
               parent["schatrot" + parent.spick] = 0;
               parent["schatscale" + parent.spick] = 10;
            }
            this.goadjust();
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
         this.changetimes = 0;
         this.changetimer = 0;
         this.changedir = 0;
         this.changepick = 1;
         this.startX = 0;
         this.startY = 0;
         this.freemoveblocker.addEventListener(MouseEvent.MOUSE_UP,this.freemoveblockerx);
         this.goadjust();
         this.adjusthold.addEventListener(MouseEvent.MOUSE_UP,this.adjustholdx);
         this.adjustblocker.addEventListener(MouseEvent.MOUSE_DOWN,this.adjustblockerx);
      }
   }
}

