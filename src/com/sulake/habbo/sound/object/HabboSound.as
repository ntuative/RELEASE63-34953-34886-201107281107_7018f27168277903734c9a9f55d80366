package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1196:Sound = null;
      
      private var var_465:SoundChannel = null;
      
      private var var_992:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1196 = param1;
         this.var_1196.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_992 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_465 = this.var_1196.play(0);
         this.volume = this.var_992;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_465.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_992;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_992 = param1;
         if(this.var_465 != null)
         {
            this.var_465.soundTransform = new SoundTransform(this.var_992);
         }
      }
      
      public function get position() : Number
      {
         return this.var_465.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1196.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1196.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
      }
      
      public function get fadeInSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
