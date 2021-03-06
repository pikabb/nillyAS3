package com.company.assembleegameclient.objects
{
   import flash.utils.Dictionary;
   import com.company.assembleegameclient.util.ConditionEffect;
   
   public class ProjectileProperties
   {
       
      
      public var bulletType_:int;
      
      public var objectId_:String;
      
      public var lifetime_:int;
      
      public var speed_:int;
      
      public var size_:int;
      
      public var minDamage_:int;
      
      public var maxDamage_:int;
      
      public var effects_:Vector.<uint> = null;
      
      public var multiHit_:Boolean;
      
      public var passesCover_:Boolean;
      
      public var armorPiercing:Boolean;
      
      public var particleTrail_:Boolean;
      
      public var particleTrailColor_:int = 16711935;
      
      public var wavy_:Boolean;
      
      public var parametric_:Boolean;
      
      public var boomerang_:Boolean;
      
      public var amtitude_:Number;
      
      public var frequency_:Number;
      
      public var magnitude_:Number;
      
      public var conditionEffects_:Dictionary;
      
      public function ProjectileProperties(param1:XML)
      {
         var _loc2_:XML = null;
         super();
         this.bulletType_ = int(param1.@id);
         this.objectId_ = param1.ObjectId;
         this.lifetime_ = int(param1.LifetimeMS);
         this.speed_ = int(param1.Speed);
         this.size_ = !!param1.hasOwnProperty("Size")?int(Number(param1.Size)):-1;
         if(param1.hasOwnProperty("Damage"))
         {
            this.minDamage_ = this.maxDamage_ = int(param1.Damage);
         }
         else
         {
            this.minDamage_ = int(param1.MinDamage);
            this.maxDamage_ = int(param1.MaxDamage);
         }
         for each(_loc2_ in param1.ConditionEffect)
         {
            if(this.effects_ == null)
            {
               this.effects_ = new Vector.<uint>();
            }
            this.effects_.push(ConditionEffect.GetCondEffectIndex(String(_loc2_)));
            if(_loc2_.attribute("target") == "1")
            {
               if(this.conditionEffects_ == null)
               {
                  this.conditionEffects_ = new Dictionary();
               }
               this.conditionEffects_[ConditionEffect.GetCondEffectIndex(String(_loc2_))] = true;
            }
         }
         this.multiHit_ = param1.hasOwnProperty("MultiHit");
         this.passesCover_ = param1.hasOwnProperty("PassesCover");
         this.armorPiercing = param1.hasOwnProperty("ArmorPiercing");
         this.particleTrail_ = param1.hasOwnProperty("ParticleTrail");
         this.particleTrailColor_ = !!this.particleTrail_?int(Number(param1.ParticleTrail)):int(Number(16711935));
         if(this.particleTrailColor_ == 0)
         {
            this.particleTrailColor_ = 16711935;
         }
         this.wavy_ = param1.hasOwnProperty("Wavy");
         this.parametric_ = param1.hasOwnProperty("Parametric");
         this.boomerang_ = param1.hasOwnProperty("Boomerang");
         this.amtitude_ = !!param1.hasOwnProperty("Amplitude")?Number(Number(param1.Amplitude)):Number(0);
         this.frequency_ = !!param1.hasOwnProperty("Frequency")?Number(Number(param1.Frequency)):Number(1);
         this.magnitude_ = !!param1.hasOwnProperty("Magnitude")?Number(Number(param1.Magnitude)):Number(3);
      }
   }
}
