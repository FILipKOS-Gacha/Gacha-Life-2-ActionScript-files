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
   
   [Embed(source="/_assets/assets.swf", symbol="symbol25465")]
   public dynamic class typenameplace_662 extends MovieClip
   {
      
      public var cancelbt:MovieClip;
      
      public var dontswear:MovieClip;
      
      public var ex:MovieClip;
      
      public var regex:*;
      
      public var s:*;
      
      public function typenameplace_662()
      {
         super();
         addFrameScript(0,this.frame1,1,this.frame2,2,this.frame3);
      }
      
      public function getMatchCount(search:String, target:String) : int
      {
         return target.split(search).length - 1;
      }
      
      public function checkposecount() : void
      {
         parent.totalspace = this.getMatchCount("|",parent.typeposecode);
         if(parent.totalspace == 80)
         {
            parent.custx.poseexport.importbt.visible = true;
            parent.custx.poseexport.importshowx1.gotoAndStop(1);
         }
         else
         {
            parent.custx.poseexport.importbt.visible = false;
            parent.custx.poseexport.importshowx1.gotoAndStop(4);
         }
      }
      
      public function savebtx(evt:MouseEvent) : void
      {
         this.finishtype();
      }
      
      public function typexx(event:KeyboardEvent) : *
      {
         if(event.charCode == 13 && parent.typingpick != 6 && parent.mapx != 10)
         {
            this.finishtype();
         }
      }
      
      public function finishtype() : void
      {
         parent.sfx = 1;
         parent.playsfx();
         if(this.ex.typetextx.text == "")
         {
            if(parent.typingpick == 1)
            {
               this.s = "Player";
            }
            else if(parent.typingpick == 2)
            {
               this.s = "Name";
            }
            else if(parent.typingpick == 3)
            {
               this.s = "Creator";
            }
            else if(parent.typingpick == 4)
            {
               this.s = "1/1";
            }
            else if(parent.typingpick == 5)
            {
               this.s = "20";
            }
            else
            {
               this.s = "";
            }
         }
         else
         {
            this.s = this.ex.typetextx.text;
            this.s = this.s.replace(this.regex,function(match:*):*
            {
               return match.replace(/./g,"*");
            });
         }
         if(this.s.indexOf("***") >= 0)
         {
            this.dontswear.gotoAndPlay(3);
            this.ex.typetextx.text = "";
         }
         else
         {
            if(parent.typingpick == 1)
            {
               parent.accname = this.s;
               parent.updatelifename();
               parent.updatedatax.updatelifename();
            }
            else if(parent.typingpick == 2)
            {
               parent.namex = this.s;
            }
            else if(parent.typingpick == 3)
            {
               parent.creatorx = this.s;
            }
            else if(parent.typingpick == 4)
            {
               parent.birthdayx = this.s;
            }
            else if(parent.typingpick == 5)
            {
               parent.agex = this.s;
            }
            else if(parent.typingpick == 6)
            {
               parent.profilex = this.s;
            }
            else if(parent.typingpick == 7)
            {
               parent.typeimportid = this.s;
               if(parent.typeimportid.length >= 8)
               {
                  parent.importoc();
               }
            }
            else if(parent.typingpick == 14)
            {
               parent.typeimportid = this.s;
               if(parent.typeimportid.length >= 8)
               {
                  parent.importani();
               }
            }
            else if(parent.typingpick == 8)
            {
               parent.typeofflinecode = this.s;
               parent.totalspace = this.getMatchCount("|",parent.typeofflinecode);
               if(parent.totalspace == 1036)
               {
                  parent.importoc2();
               }
            }
            else if(parent.typingpick == 9)
            {
               parent.pronounsx = this.s;
            }
            else if(parent.typingpick == 10)
            {
               parent.typeposecode = this.s;
               parent.custx.poseexport.importid.stringx.text = MovieClip(root).typeposecode;
               this.checkposecount();
            }
            else if(parent.typingpick == 11)
            {
               parent["schatmsg" + parent.spick] = this.s;
               parent.studiochat.gochat();
            }
            else if(parent.typingpick == 12)
            {
               parent.smainchatmsg = this.s;
               parent.studiotext.gochat();
            }
            else if(parent.typingpick == 13)
            {
               parent.inputhex = this.s;
               if(parent.inputhex.length >= 3)
               {
                  if(parent.mapx == 4)
                  {
                     if(parent.bgopen == 1)
                     {
                        parent.custx.mcmain.inputhexcol();
                     }
                     else
                     {
                        parent.colorbox.mcmain.inputhexcol();
                     }
                  }
                  else if(parent.mapx == 10)
                  {
                     parent.colorbox.mcmain.inputhexcol();
                  }
               }
            }
            if(parent.mapx == 4)
            {
               parent.updatecustinfo();
               parent.saveplayerstring();
               if(parent.custpage >= 1)
               {
                  parent.changeicon = 2;
                  parent.updatecustinfo();
               }
            }
            parent.typingpick = 0;
            gotoAndStop(2);
         }
      }
      
      public function typebtx(evt:MouseEvent) : void
      {
         parent.sfx = 1;
         parent.playsfx();
         this.ex.typetextx.requestSoftKeyboard();
      }
      
      public function deletebtx(evt:MouseEvent) : void
      {
         parent.sfx = 1;
         parent.playsfx();
         this.ex.typetextx.requestSoftKeyboard();
         this.ex.typetextx.text = "";
      }
      
      public function cancelbtx(evt:MouseEvent) : void
      {
         parent.sfx = 2;
         parent.playsfx();
         parent.typingpick = 0;
         gotoAndStop(2);
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
         this.regex = /(nigger|boner|s3x|sh1t|womb|raping|orgy|nazi|bullshit|beaner|scrotum|nipple|ballsack|pregz|erect|nigga| rape|r4pe|rap3|r4p3|niggg|f@ck|@nal|4ss|d1ck|@ss|n1gg3r|p3nis|p3n1s|penis|asshole| ass |vagina|bitch|cock| anal |blowjob|dildo|pussy|whore|fellatio| sex |molester|masterbate|orgasm|slut|h0e|$ex|$3x| cum|fuck|shit|retard|faggot|dick|fu ck|b1tch|b!tch|c0ck|piss|n i g g a|n i g g e r|nibba|porn|p0rn|anus|bastard|horny|horney|condom|ejacul|screw me|virgin|pedo |pedop|chastity|fetish|bondage|bdsm|blow job|assf|buttf|creampie|cream pie|cunnil|fingerin|mastur|panties|milf|spoonin|squirtin|strap-on|suck my|threesom|vibrator|sex toy|gangbang|handjob|jerk off|jack off|jerkin|tits|titty|suck your|fukk|fū|fü|fù|fû|fú,boob,boobs,fag,dyke,jizz,twat,wank,cunt,clitor,buttp,incest,kkk,mastab,masterb,hentai)/gi;
         this.s = "";
         this.s = this.s.replace(this.regex,function(match:*):*
         {
            return match.replace(/./g,"*");
         });
         if(parent.typingpick == 6 || parent.typingpick == 8 || parent.typingpick == 10 || parent.typingpick == 11 || parent.typingpick == 12)
         {
            this.ex.gotoAndStop(2);
         }
         else
         {
            this.ex.gotoAndStop(1);
         }
         if(parent.typingpick == 8 || parent.typingpick == 10)
         {
            this.ex.typetextx.restrict = "^¦\"";
         }
         else
         {
            this.ex.typetextx.restrict = "^|¦\"";
         }
         this.ex.typetextx.needsSoftKeyboard = true;
         this.ex.typetextx.requestSoftKeyboard();
         if(parent.typingpick == 1)
         {
            this.ex.typetextx.text = parent.accname;
            this.ex.titlex.text = "Enter Account Name";
            this.ex.typetextx.maxChars = 20;
            this.ex.maxlengthx.text = "Max Length: 20";
         }
         else if(parent.typingpick == 2)
         {
            this.ex.typetextx.text = parent.namex;
            this.ex.titlex.text = "Enter Character Name";
            this.ex.typetextx.maxChars = 20;
            this.ex.maxlengthx.text = "Max Length: 20";
         }
         else if(parent.typingpick == 3)
         {
            this.ex.typetextx.text = parent.creatorx;
            this.ex.titlex.text = "Enter Creator Name";
            this.ex.typetextx.maxChars = 20;
            this.ex.maxlengthx.text = "Max Length: 20";
         }
         else if(parent.typingpick == 4)
         {
            this.ex.typetextx.text = parent.birthdayx;
            this.ex.titlex.text = "Enter Character\'s Birthday";
            this.ex.typetextx.maxChars = 8;
            this.ex.maxlengthx.text = "Max Length: 8";
         }
         else if(parent.typingpick == 5)
         {
            this.ex.typetextx.text = parent.agex;
            this.ex.titlex.text = "Enter Character\'s Age";
            this.ex.typetextx.maxChars = 8;
            this.ex.maxlengthx.text = "Max Length: 8";
         }
         else if(parent.typingpick == 6)
         {
            this.ex.typetextx.text = parent.profilex;
            this.ex.titlex.text = "Enter Profile";
            this.ex.typetextx.maxChars = 200;
            this.ex.maxlengthx.text = "Max Length: 200";
         }
         else if(parent.typingpick == 7)
         {
            this.ex.typetextx.text = parent.typeimportid;
            this.ex.titlex.text = "Enter Import ID";
            this.ex.typetextx.maxChars = 9;
            this.ex.maxlengthx.text = "Max Length: 9";
         }
         else if(parent.typingpick == 8)
         {
            this.ex.typetextx.text = parent.typeofflinecode;
            this.ex.titlex.text = "Enter Offline Code";
            this.ex.typetextx.maxChars = 4000;
            this.ex.maxlengthx.text = "";
         }
         else if(parent.typingpick == 9)
         {
            this.ex.typetextx.text = parent.pronounsx;
            this.ex.titlex.text = "Enter Pronouns";
            this.ex.typetextx.maxChars = 20;
            this.ex.maxlengthx.text = "Max Length: 20";
         }
         else if(parent.typingpick == 10)
         {
            this.ex.typetextx.text = parent.typeposecode;
            this.ex.titlex.text = "Enter Offline Code";
            this.ex.typetextx.maxChars = 500;
            this.ex.maxlengthx.text = "";
         }
         else if(parent.typingpick == 11)
         {
            this.ex.typetextx.text = parent["schatmsg" + parent.spick];
            this.ex.titlex.text = "Enter Chat";
            this.ex.typetextx.maxChars = 90;
            this.ex.maxlengthx.text = "Max Length: 90";
         }
         else if(parent.typingpick == 12)
         {
            this.ex.typetextx.text = parent.smainchatmsg;
            this.ex.titlex.text = "Enter Text";
            this.ex.typetextx.maxChars = 120;
            this.ex.maxlengthx.text = "Max Length: 120";
         }
         else if(parent.typingpick == 13)
         {
            this.ex.typetextx.text = "";
            this.ex.titlex.text = "Enter Hex Code (without #)";
            this.ex.typetextx.maxChars = 6;
            this.ex.maxlengthx.text = "Max Length: 6";
         }
         else if(parent.typingpick == 14)
         {
            this.ex.typetextx.text = parent.typeimportid;
            this.ex.titlex.text = "Enter Animation ID";
            this.ex.typetextx.maxChars = 9;
            this.ex.maxlengthx.text = "Max Length: 9";
         }
         this.ex.savebt.addEventListener(MouseEvent.MOUSE_DOWN,this.savebtx);
         this.ex.typetextx.addEventListener(KeyboardEvent.KEY_DOWN,this.typexx);
         this.ex.typebt.addEventListener(MouseEvent.MOUSE_DOWN,this.typebtx);
         this.ex.deletebt.addEventListener(MouseEvent.MOUSE_DOWN,this.deletebtx);
         this.cancelbt.addEventListener(MouseEvent.MOUSE_DOWN,this.cancelbtx);
      }
   }
}

