package _I_w
{
   import _1__8._11Y_;
   import flash.utils.Dictionary;
   
   public final class MessageDispatcher implements _11Y_
   {
       
      
      private const _handlers:Dictionary = new Dictionary();
      
      public function MessageDispatcher()
      {
         super();
      }
      
      public function _0gF_(param1:Object, param2:Function) : void
      {
         var _loc3_:Array = this._handlers[param1];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param2) == -1)
            {
               _loc3_.push(param2);
            }
         }
         else
         {
            this._handlers[param1] = [param2];
         }
      }
      
      public function _0A_G_(param1:Object) : Boolean
      {
         return this._handlers[param1];
      }
      
      public function _oQ_(param1:Object, param2:Function) : void
      {
         var _loc3_:Array = null;
         _loc3_ = this._handlers[param1];
         var _loc4_:int = !!_loc3_?int(_loc3_.indexOf(param2)):-1;
         if(_loc4_ != -1)
         {
            _loc3_.splice(_loc4_,1);
            if(_loc3_.length == 0)
            {
               delete this._handlers[param1];
            }
         }
      }
      
      public function _1R_6(param1:Object, param2:Function = null, param3:Boolean = false) : void
      {
         var _loc4_:Array = this._handlers[param1];
         if(_loc4_)
         {
            _loc4_ = _loc4_.concat();
            param3 || _loc4_.reverse();
            new MessageRunner(param1,_loc4_,param2).run();
         }
         else
         {
            param2 && safelyCallBack(param2);
         }
      }
   }
}

import _I_w.safelyCallBack;

class MessageRunner
{
    
   
   private var _message:Object;
   
   private var _handlers:Array;
   
   private var _callback:Function;
   
   function MessageRunner(param1:Object, param2:Array, param3:Function)
   {
      super();
      this._message = param1;
      this._handlers = param2;
      this._callback = param3;
   }
   
   public function run() : void
   {
      this.next();
   }
   
   private function next() : void
   {
      var handler:Function = null;
      var handled:Boolean = false;
      while(handler = this._handlers.pop())
      {
         if(handler.length == 0)
         {
            handler();
            continue;
         }
         if(handler.length == 1)
         {
            handler(this._message);
            continue;
         }
         if(handler.length == 2)
         {
            handler(this._message,function(param1:Object = null, param2:Object = null):void
            {
               if(handled)
               {
                  return;
               }
               handled = true;
               if(param1 || _handlers.length == 0)
               {
                  _callback && safelyCallBack(_callback,param1,_message);
               }
               else
               {
                  next();
               }
            });
            return;
         }
         throw new Error("Bad handler signature");
      }
      this._callback && safelyCallBack(this._callback,null,this._message);
   }
}
