package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1837:String = "pricing_model_unknown";
      
      public static const const_423:String = "pricing_model_single";
      
      public static const const_452:String = "pricing_model_multi";
      
      public static const const_653:String = "pricing_model_bundle";
      
      public static const const_1884:String = "price_type_none";
      
      public static const const_790:String = "price_type_credits";
      
      public static const const_1215:String = "price_type_activitypoints";
      
      public static const const_1180:String = "price_type_credits_and_activitypoints";
       
      
      private var var_810:String;
      
      private var var_1236:String;
      
      private var var_1231:int;
      
      private var var_1866:String;
      
      private var var_1235:int;
      
      private var var_1234:int;
      
      private var var_1867:int;
      
      private var var_246:ICatalogPage;
      
      private var var_660:IProductContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_1746:int = 0;
      
      private var var_2484:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:int, param7:Array, param8:ICatalogPage)
      {
         super();
         this.var_1231 = param1;
         this.var_1866 = param2;
         this.var_1235 = param3;
         this.var_1234 = param4;
         this.var_1867 = param5;
         this.var_246 = param8;
         this.var_1746 = param6;
         this.analyzePricingModel(param7);
         this.analyzePriceType();
         this.createProductContainer(param7);
      }
      
      public function get clubLevel() : int
      {
         return this.var_1746;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_246;
      }
      
      public function get offerId() : int
      {
         return this.var_1231;
      }
      
      public function get localizationId() : String
      {
         return this.var_1866;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1235;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1234;
      }
      
      public function get activityPointType() : int
      {
         return this.var_1867;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_660;
      }
      
      public function get pricingModel() : String
      {
         return this.var_810;
      }
      
      public function get priceType() : String
      {
         return this.var_1236;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2484;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2484 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_1231 = 0;
         this.var_1866 = "";
         this.var_1235 = 0;
         this.var_1234 = 0;
         this.var_1867 = 0;
         this.var_246 = null;
         if(this.var_660 != null)
         {
            this.var_660.dispose();
            this.var_660 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_810)
         {
            case const_423:
               this.var_660 = new SingleProductContainer(this,param1);
               break;
            case const_452:
               this.var_660 = new MultiProductContainer(this,param1);
               break;
            case const_653:
               this.var_660 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_810);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_810 = const_423;
            }
            else
            {
               this.var_810 = const_452;
            }
         }
         else if(param1.length > 1)
         {
            this.var_810 = const_653;
         }
         else
         {
            this.var_810 = const_1837;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1235 > 0 && this.var_1234 > 0)
         {
            this.var_1236 = const_1180;
         }
         else if(this.var_1235 > 0)
         {
            this.var_1236 = const_790;
         }
         else if(this.var_1234 > 0)
         {
            this.var_1236 = const_1215;
         }
         else
         {
            this.var_1236 = const_1884;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_246.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_660.products)
         {
            _loc4_ = this.var_246.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,this.clubLevel,_loc1_,this.page);
      }
   }
}
