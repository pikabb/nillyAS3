package _00v
{
   import flash.display.Graphics;
   
   public class _1yN_
   {
       
      
      public function _1yN_()
      {
         super();
      }
      
      public function _18h(param1:int, param2:int, param3:_1cz, param4:Graphics) : void
      {
         var _loc5_:int = param1 + param3.width;
         var _loc6_:int = param2 + param3.height;
         var _loc7_:int = param3._07u;
         if(param3._st)
         {
            param4.moveTo(param1,param2 + _loc7_);
            param4.lineTo(param1 + _loc7_,param2);
         }
         else
         {
            param4.moveTo(param1,param2);
         }
         if(param3._1cH_)
         {
            param4.lineTo(_loc5_ - _loc7_,param2);
            param4.lineTo(_loc5_,param2 + _loc7_);
         }
         else
         {
            param4.lineTo(_loc5_,param2);
         }
         if(param3._0qe)
         {
            param4.lineTo(_loc5_,_loc6_ - _loc7_);
            param4.lineTo(_loc5_ - _loc7_,_loc6_);
         }
         else
         {
            param4.lineTo(_loc5_,_loc6_);
         }
         if(param3._1u7)
         {
            param4.lineTo(param1 + _loc7_,_loc6_);
            param4.lineTo(param1,_loc6_ - _loc7_);
         }
         else
         {
            param4.lineTo(param1,_loc6_);
         }
      }
   }
}
