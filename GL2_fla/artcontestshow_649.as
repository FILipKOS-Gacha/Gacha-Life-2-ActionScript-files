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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25435")]
   public dynamic class artcontestshow_649 extends MovieClip
   {
      
      public var allimg:MovieClip;
      
      public var blocker:MovieClip;
      
      public var closebt:MovieClip;
      
      public var closebt2:MovieClip;
      
      public var discordbt:MovieClip;
      
      public var galleryx:MovieClip;
      
      public var linkx:MovieClip;
      
      public var maxheight:int;
      
      public var checky:*;
      
      public var isDragging:Boolean;
      
      public var startMouseY:Number;
      
      public var startListY:Number;
      
      public var inertiaY:Number;
      
      public var timer:*;
      
      public var touchbutton:*;
      
      public var touchbuttonx:*;
      
      public var touchbuttony:*;
      
      public var imgpick:*;
      
      public var imgname:*;
      
      public var imglink1:*;
      
      public var imglink2:*;
      
      public var linkpick:*;
      
      public var lx1:*;
      
      public var lx2:*;
      
      public const scrollx:Number = 30;
      
      public function artcontestshow_649()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function closebtx(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         parent.char.visible = true;
         gotoAndStop(2);
      }
      
      public function closebt2x(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         parent.char.visible = true;
         gotoAndStop(2);
      }
      
      public function loadimg() : void
      {
         for(var i:* = 1; i <= 60; i++)
         {
            this.allimg["img" + i].gotoAndStop(i);
         }
      }
      
      public function checkinfo() : void
      {
         if(this.imgpick == 1)
         {
            this.imgname = "Chidory ";
            this.imglink1 = "https://instagram.com/idk3.006";
            this.lx1 = "instagram";
            this.imglink2 = "https://youtube.com/@thisisnot_OwO";
            this.lx2 = "youtube";
         }
         else if(this.imgpick == 2)
         {
            this.imgname = "talic_0999";
            this.imglink1 = "";
            this.lx1 = "";
            this.imglink2 = "";
            this.lx2 = "";
         }
         else if(this.imgpick == 3)
         {
            this.imgname = "Sleepy";
            this.imglink1 = "https://www.youtube.com/@Sleep_deprivedd";
            this.lx1 = "youtube";
            this.imglink2 = "";
            this.lx2 = "";
         }
         else if(this.imgpick == 4)
         {
            this.imgname = "Kanon";
            this.imglink1 = "https://instagram.com/1k4bk0n546o";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 5)
         {
            this.imgname = "Alehart";
            this.imglink1 = "https://instagram.com/aleh_artt?igshid=OGQ5ZDc2ODk2ZA==";
            this.imglink2 = "https://www.youtube.com/@Alehartt";
            this.lx1 = "instagram";
            this.lx2 = "youtube";
         }
         else if(this.imgpick == 6)
         {
            this.imgname = "Alrylixx";
            this.imglink1 = "https://www.tiktok.com/@alrylixx?_t=8hrjfQlZfwO&_r=1";
            this.imglink2 = "https://youtube.com/@alrylixx";
            this.lx1 = "tiktok";
            this.lx2 = "youtube";
         }
         else if(this.imgpick == 7)
         {
            this.imgname = "Lil Kisses";
            this.imglink1 = "https://youtube.com/@LilKiSsEs";
            this.imglink2 = "https://instagram.com/lil.kisses_";
            this.lx1 = "youtube";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 8)
         {
            this.imgname = "Arauffa_";
            this.imglink1 = "https://www.youtube.com/@Arauffa_";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 9)
         {
            this.imgname = "Atiredidot";
            this.imglink1 = "https://ibispaint.com/artist3/7281404545537384338/";
            this.imglink2 = "https://www.deviantart.com/atiredidiot";
            this.lx1 = "other";
            this.lx2 = "other";
         }
         else if(this.imgpick == 10)
         {
            this.imgname = "Aster !";
            this.imglink1 = "https://www.instagram.com/aster.oid_1/";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 11)
         {
            this.imgname = "BellDrops";
            this.imglink1 = "https://youtube.com/@belldrops";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 12)
         {
            this.imgname = "Birds";
            this.imglink1 = "https://www.instagram.com/appreciative_mug";
            this.imglink2 = "https://youtube.com/@mug_sh0t";
            this.lx1 = "instagram";
            this.lx2 = "youtube";
         }
         else if(this.imgpick == 13)
         {
            this.imgname = "Black_Angel";
            this.imglink1 = "https://www.youtube.com/@Black_Angel_";
            this.imglink2 = "https://www.instagram.com/black_angel_is_drawing/";
            this.lx1 = "youtube";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 14)
         {
            this.imgname = "boynetd0w0r";
            this.imglink1 = "https://www.youtube.com/@KA1SH1Nx3";
            this.imglink2 = "https://x.com/yes04662869";
            this.lx1 = "youtube";
            this.lx2 = "x";
         }
         else if(this.imgpick == 15)
         {
            this.imgname = "Bunnylos";
            this.imglink1 = "https://youtube.com/@bunnylosyomama";
            this.imglink2 = "https://x.com/bunnylos1";
            this.lx1 = "youtube";
            this.lx2 = "x";
         }
         else if(this.imgpick == 16)
         {
            this.imgname = "_s.o.h.i.n.i._p";
            this.imglink1 = "https://www.instagram.com/_s.o.h.i.n.i._p/";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 17)
         {
            this.imgname = "ChensCheese";
            this.imglink1 = "https://www.youtube.com/@ChensCheese";
            this.imglink2 = "https://x.com/ChensCheese";
            this.lx1 = "youtube";
            this.lx2 = "x";
         }
         else if(this.imgpick == 18)
         {
            this.imgname = "Cxrysxme";
            this.imglink1 = "https://www.instagram.com/_cxrysxme/";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 19)
         {
            this.imgname = "coff_toffee";
            this.imglink1 = "https://www.instagram.com/coff_toffee/";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 20)
         {
            this.imgname = "Winterkat";
            this.imglink1 = "https://www.youtube.com/@katmakesart430";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 21)
         {
            this.imgname = "Dovee";
            this.imglink1 = "https://www.instagram.com/dovecafe_/";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 22)
         {
            this.imgname = "Elana Chibi/Jarachi Wolf";
            this.imglink1 = "https://youtube.com/@elanachibi";
            this.imglink2 = "https://youtube.com/@Jarachiwolf";
            this.lx1 = "youtube";
            this.lx2 = "youtube";
         }
         else if(this.imgpick == 23)
         {
            this.imgname = "emsyue";
            this.imglink1 = "https://www.tiktok.com/@emsyue";
            this.imglink2 = "https://x.com/emsyue";
            this.lx1 = "tiktok";
            this.lx2 = "x";
         }
         else if(this.imgpick == 24)
         {
            this.imgname = "Chata";
            this.imglink1 = "https://www.instagram.com/f.vchata/";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 25)
         {
            this.imgname = "meowpotion";
            this.imglink1 = "https://x.com/meowpotionn";
            this.imglink2 = "";
            this.lx1 = "x";
            this.lx2 = "";
         }
         else if(this.imgpick == 26)
         {
            this.imgname = "FluVette";
            this.imglink1 = "https://instagram.com/cana.syuu";
            this.imglink2 = "https://www.facebook.com/profile.php?id=61554352464344";
            this.lx1 = "instagram";
            this.lx2 = "facebook";
         }
         else if(this.imgpick == 27)
         {
            this.imgname = "atundra_s0da404";
            this.imglink1 = "https://x.com/atundra_s0da404";
            this.imglink2 = "";
            this.lx1 = "x";
            this.lx2 = "";
         }
         else if(this.imgpick == 28)
         {
            this.imgname = "G.OveriX01";
            this.imglink1 = "https://youtube.com/@G_OveriX01";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 29)
         {
            this.imgname = "Dollet !";
            this.imglink1 = "https://www.youtube.com/@honeysugardoll";
            this.imglink2 = "https://www.instagram.com/honeysugardoll_/";
            this.lx1 = "youtube";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 30)
         {
            this.imgname = "k_kyokaii";
            this.imglink1 = "https://instagram.com/k_kyokaii";
            this.imglink2 = "https://x.com/k_kyokaii";
            this.lx1 = "instagram";
            this.lx2 = "x";
         }
         else if(this.imgpick == 31)
         {
            this.imgname = "JustAGentlewoman";
            this.imglink1 = "https://youtube.com/@Presidentpinemelon";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 32)
         {
            this.imgname = "Kathechin2";
            this.imglink1 = "https://youtube.com/@Kathechin2";
            this.imglink2 = "https://x.com/waimelowye";
            this.lx1 = "youtube";
            this.lx2 = "x";
         }
         else if(this.imgpick == 33)
         {
            this.imgname = "Katherine Yashurio";
            this.imglink1 = "https://x.com/KathYashu";
            this.imglink2 = "";
            this.lx1 = "x";
            this.lx2 = "";
         }
         else if(this.imgpick == 34)
         {
            this.imgname = "Koishifr";
            this.imglink1 = "https://youtube.com/@koishifr";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 35)
         {
            this.imgname = "lamb / zevpon";
            this.imglink1 = "https://instagram.com/nasigorengpedasgurihenak";
            this.imglink2 = "https://x.com/jusbuahjeruk";
            this.lx1 = "instagram";
            this.lx2 = "x";
         }
         else if(this.imgpick == 36)
         {
            this.imgname = "LenxNyght";
            this.imglink1 = "https://www.youtube.com/@LenxNyght";
            this.imglink2 = "https://www.instagram.com/lenxnyght";
            this.lx1 = "youtube";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 37)
         {
            this.imgname = "Leoleyline";
            this.imglink1 = "https://instagram.com/leoleyline";
            this.imglink2 = "https://www.tiktok.com/@leoleyline";
            this.lx1 = "instagram";
            this.lx2 = "tiktok";
         }
         else if(this.imgpick == 38)
         {
            this.imgname = "Lapixiachan";
            this.imglink1 = "https://x.com/Lapixiachan";
            this.imglink2 = "https://epiccommission.carrd.co/";
            this.lx1 = "x";
            this.lx2 = "carrd";
         }
         else if(this.imgpick == 39)
         {
            this.imgname = "Makushine";
            this.imglink1 = "https://youtube.com/@Makushine";
            this.imglink2 = "https://instagram.com/makushinewastaken";
            this.lx1 = "youtube";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 40)
         {
            this.imgname = "Mika rou";
            this.imglink1 = "https://www.youtube.com/@Mikarou2";
            this.imglink2 = "https://instagram.com/mika_rou2";
            this.lx1 = "youtube";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 41)
         {
            this.imgname = "ocean_hairuuu";
            this.imglink1 = "https://x.com/ocean_hairuuu";
            this.imglink2 = "https://www.instagram.com/ocean_hairu";
            this.lx1 = "x";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 42)
         {
            this.imgname = "Oūrion";
            this.imglink1 = "";
            this.imglink2 = "";
            this.lx1 = "";
            this.lx2 = "";
         }
         else if(this.imgpick == 43)
         {
            this.imgname = "comi";
            this.imglink1 = "https://x.com/yanTb5";
            this.imglink2 = "";
            this.lx1 = "x";
            this.lx2 = "";
         }
         else if(this.imgpick == 44)
         {
            this.imgname = "Pastel Clouds";
            this.imglink1 = "https://www.youtube.com/@pasteledclouds/";
            this.imglink2 = "https://www.instagram.com/pastelclpudslove/";
            this.lx1 = "youtube";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 45)
         {
            this.imgname = "Wapa";
            this.imglink1 = "https://instagram.com/pewepewes";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 46)
         {
            this.imgname = "piemon";
            this.imglink1 = "https://instagram.com/piemomu";
            this.imglink2 = "";
            this.lx1 = "instagram";
            this.lx2 = "";
         }
         else if(this.imgpick == 47)
         {
            this.imgname = "rcart";
            this.imglink1 = "https://www.tiktok.com/@rcart_?_t=8hrmftSPsC7&_r=1";
            this.imglink2 = "";
            this.lx1 = "tiktok";
            this.lx2 = "";
         }
         else if(this.imgpick == 48)
         {
            this.imgname = "qinoka_";
            this.imglink1 = "https://youtube.com/@qinoka";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 49)
         {
            this.imgname = "Purple Rozy";
            this.imglink1 = "https://youtube.com/@PurpleRozy";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 50)
         {
            this.imgname = "Sirus_333";
            this.imglink1 = "https://sirus333.carrd.co/";
            this.imglink2 = "https://www.instagram.com/sirus_333/";
            this.lx1 = "carrd";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 51)
         {
            this.imgname = "Star";
            this.imglink1 = "https://www.tiktok.com/@stardropletts?_t=8hskFiRl4Uv&_r=1";
            this.imglink2 = "";
            this.lx1 = "tiktok";
            this.lx2 = "";
         }
         else if(this.imgpick == 52)
         {
            this.imgname = "Kiri";
            this.imglink1 = "https://x.com/kiriko_hk";
            this.imglink2 = "";
            this.lx1 = "x";
            this.lx2 = "";
         }
         else if(this.imgpick == 53)
         {
            this.imgname = "Thorn";
            this.imglink1 = "";
            this.imglink2 = "";
            this.lx1 = "";
            this.lx2 = "";
         }
         else if(this.imgpick == 54)
         {
            this.imgname = "Touyun";
            this.imglink1 = "https://discord.com/channels/1056908809513226250/1168842125329301555/1178141689999806585";
            this.imglink2 = "";
            this.lx1 = "other";
            this.lx2 = "";
         }
         else if(this.imgpick == 55)
         {
            this.imgname = "Moochi";
            this.imglink1 = "https://youtube.com/@moochiyourmostepikcreator";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 56)
         {
            this.imgname = "Yaeshii";
            this.imglink1 = "https://youtube.com/@yaeshii_";
            this.imglink2 = "";
            this.lx1 = "youtube";
            this.lx2 = "";
         }
         else if(this.imgpick == 57)
         {
            this.imgname = "Princess";
            this.imglink1 = "https://yrovorii.carrd.co/";
            this.imglink2 = "https://youtube.com/@yrovori";
            this.lx1 = "carrd";
            this.lx2 = "youtube";
         }
         else if(this.imgpick == 58)
         {
            this.imgname = "Kleewony";
            this.imglink1 = "https://www.facebook.com/Kleewony.ow3";
            this.imglink2 = "https://www.youtube.com/@yukinon68851";
            this.lx1 = "facebook";
            this.lx2 = "youtube";
         }
         else if(this.imgpick == 59)
         {
            this.imgname = "Yume Esmeray";
            this.imglink1 = "https://yume-esmeray.carrd.co/";
            this.imglink2 = "https://instagram.com/yume_esmeray";
            this.lx1 = "carrd";
            this.lx2 = "instagram";
         }
         else if(this.imgpick == 60)
         {
            this.imgname = "yume_yusume";
            this.imglink1 = "https://www.instagram.com/yume_yusume/";
            this.imglink2 = "https://www.youtube.com/@yuh1me";
            this.lx1 = "instagram";
            this.lx2 = "youtube";
         }
         else
         {
            this.imgname = "None";
            this.imglink1 = "";
            this.imglink2 = "";
            this.lx1 = "";
            this.lx2 = "";
         }
      }
      
      public function discordbtx(evt:MouseEvent) : void
      {
         this.imglink1 = "https://discord.com/channels/1056908809513226250/1180530486771187762";
         this.linkpick = 1;
         this.linkx.gotoAndStop(3);
      }
      
      public function handleMouseDown(event:MouseEvent) : void
      {
         this.blocker.gotoAndStop(2);
         this.isDragging = true;
         this.startMouseY = mouseY;
         this.timer = 3;
         this.startListY = this.allimg.y;
         for(var i:* = 1; i <= 60; i++)
         {
            if(this.allimg["img" + i].bt.hitTestPoint(stage.mouseX,stage.mouseY,true))
            {
               this.touchbutton = 2;
               this.touchbuttonx = stage.mouseX;
               this.touchbuttony = stage.mouseY;
            }
         }
      }
      
      public function handleMouseUp(event:MouseEvent) : void
      {
         var i:* = undefined;
         if(this.isDragging == true)
         {
            this.blocker.gotoAndStop(1);
            this.isDragging = false;
            this.inertiaY = mouseY - this.startMouseY;
            if(this.timer < 1)
            {
               this.inertiaY = 0;
            }
            for(i = 1; i <= 60; i++)
            {
               if(this.touchbutton == 2 && Boolean(this.allimg["img" + i].bt.hitTestPoint(stage.mouseX,stage.mouseY,true)))
               {
                  this.imgpick = i;
                  this.checkinfo();
                  this.galleryx.gotoAndStop(3);
                  break;
               }
            }
         }
      }
      
      public function handleEnterFrame(event:Event) : void
      {
         var scrollDistance:Number = NaN;
         if(this.isDragging)
         {
            if(this.touchbutton == 2 && (stage.mouseY > this.touchbuttony + 10 || stage.mouseY < this.touchbuttony - 10 || stage.mouseX > this.touchbuttonx + 10 || stage.mouseX < this.touchbuttonx - 10))
            {
               this.touchbutton = 1;
            }
            if(this.timer == 3)
            {
               this.checky = mouseY;
            }
            else if(this.timer < 3)
            {
               if(mouseY > this.checky + 30 || mouseY < this.checky - 30)
               {
                  this.timer = 3;
                  this.checky = mouseY;
               }
            }
            --this.timer;
            scrollDistance = mouseY - this.startMouseY;
            this.allimg.y = this.startListY + scrollDistance;
            if(this.allimg.y > 0)
            {
               this.allimg.y = 0;
            }
            else if(this.allimg.y < this.maxheight)
            {
               this.allimg.y = this.maxheight;
            }
         }
         else if(Math.abs(this.inertiaY) > 0.1)
         {
            this.inertiaY *= 0.5;
            this.allimg.y += this.inertiaY;
            if(this.allimg.y > 0)
            {
               this.allimg.y = 0;
            }
            else if(this.allimg.y < this.maxheight)
            {
               this.allimg.y = this.maxheight;
            }
         }
      }
      
      public function removeevent() : *
      {
         stage.removeEventListener(Event.ENTER_FRAME,this.handleEnterFrame);
      }
      
      public function handleMouseWheel(event:MouseEvent) : void
      {
         var newY:Number = this.allimg.y + event.delta * this.scrollx;
         if(newY > 0)
         {
            newY = 0;
         }
         else if(newY < this.maxheight)
         {
            newY = this.maxheight;
         }
         this.allimg.y = newY;
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
         this.maxheight = 0;
         this.maxheight = -2600;
         this.checky = 0;
         this.isDragging = false;
         this.inertiaY = 0;
         this.timer = 0;
         this.touchbutton = 1;
         this.touchbuttonx = 1;
         this.touchbuttony = 1;
         this.imgpick = 1;
         this.imgname = "";
         this.imglink1 = "";
         this.imglink2 = "";
         this.linkpick = 1;
         this.lx1 = "";
         this.lx2 = "";
         this.loadimg();
         this.discordbt.addEventListener(MouseEvent.MOUSE_UP,this.discordbtx);
         this.blocker.addEventListener(MouseEvent.MOUSE_DOWN,this.handleMouseDown);
         this.blocker.addEventListener(MouseEvent.MOUSE_UP,this.handleMouseUp);
         stage.addEventListener(Event.ENTER_FRAME,this.handleEnterFrame);
         stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.handleMouseWheel);
      }
   }
}

