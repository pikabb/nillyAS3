package _17B_
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import _P_N_.CaretakerQueryDialog;
   import flash.display.BitmapData;
   
   public class _1uS_ extends Sprite
   {
       
      
      private const _0O_S_:_17B_._1O_B_ = _oy();
      
      private const _0kY_:_17B_._1tT_ = _A_c();
      
      private const icon:Bitmap = _05V_();
      
      public function _1uS_()
      {
         super();
      }
      
      private function _oy() : _17B_._1O_B_
      {
         var _loc1_:_17B_._1O_B_ = null;
         _loc1_ = new _17B_._1O_B_(CaretakerQueryDialog._08t);
         _loc1_.x = 60;
         addChild(_loc1_);
         return _loc1_;
      }
      
      private function _A_c() : _17B_._1tT_
      {
         var _loc1_:_17B_._1tT_ = null;
         _loc1_ = new _17B_._1tT_();
         _loc1_.y = 60;
         return _loc1_;
      }
      
      private function _05V_() : Bitmap
      {
         var _loc1_:Bitmap = null;
         _loc1_ = new Bitmap(this._0b4());
         _loc1_.x = -16;
         _loc1_.y = -32;
         addChild(_loc1_);
         return _loc1_;
      }
      
      private function _0b4() : BitmapData
      {
         return new _1wr(42,42,true,4278255360);
      }
      
      public function _070(param1:String) : void
      {
         this._0kY_._0D_S_(param1);
         removeChild(this._0O_S_);
         addChild(this._0kY_);
      }
      
      public function _14E_() : void
      {
         removeChild(this._0kY_);
         addChild(this._0O_S_);
      }
      
      public function _0K_L_(param1:BitmapData) : void
      {
         this.icon.bitmapData = param1;
      }
   }
}
