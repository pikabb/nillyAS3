package com.company.util
{
   import flash.geom.Point;
   
   public class _0eI_
   {
       
      
      public function _0eI_()
      {
         super();
      }
      
      public static function _1T_p(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:Number, param8:Number) : Point
      {
         var _loc9_:Number = (param8 - param6) * (param3 - param1) - (param7 - param5) * (param4 - param2);
         if(_loc9_ == 0)
         {
            return null;
         }
         var _loc10_:Number = ((param7 - param5) * (param2 - param6) - (param8 - param6) * (param1 - param5)) / _loc9_;
         var _loc11_:Number = ((param3 - param1) * (param2 - param6) - (param4 - param2) * (param1 - param5)) / _loc9_;
         if(_loc10_ > 1 || _loc10_ < 0 || _loc11_ > 1 || _loc11_ < 0)
         {
            return null;
         }
         var _loc12_:Point = new Point(param1 + _loc10_ * (param3 - param1),param2 + _loc10_ * (param4 - param2));
         return _loc12_;
      }
      
      public static function _sq(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : Number
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = param5 - param3;
         var _loc11_:Number = param6 - param4;
         var _loc12_:Number = _loc10_ * _loc10_ + _loc11_ * _loc11_;
         if(_loc12_ < 0.001)
         {
            _loc7_ = param3;
            _loc8_ = param4;
         }
         else
         {
            _loc9_ = ((param1 - param3) * _loc10_ + (param2 - param4) * _loc11_) / _loc12_;
            if(_loc9_ < 0)
            {
               _loc7_ = param3;
               _loc8_ = param4;
            }
            else if(_loc9_ > 1)
            {
               _loc7_ = param5;
               _loc8_ = param6;
            }
            else
            {
               _loc7_ = param3 + _loc9_ * _loc10_;
               _loc8_ = param4 + _loc9_ * _loc11_;
            }
         }
         _loc10_ = param1 - _loc7_;
         _loc11_ = param2 - _loc8_;
         return Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
      }
   }
}
