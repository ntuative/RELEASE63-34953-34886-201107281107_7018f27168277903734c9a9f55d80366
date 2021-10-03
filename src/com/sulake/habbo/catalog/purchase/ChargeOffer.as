package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.communication.messages.incoming.catalog.ChargeInfo;
   
   public class ChargeOffer implements IPurchasableOffer
   {
       
      
      private var var_670:ChargeInfo;
      
      private var _disposed:Boolean = false;
      
      public function ChargeOffer(param1:ChargeInfo)
      {
         super();
         this.var_670 = param1;
      }
      
      public function dispose() : void
      {
         if(this.disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_670 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get offerId() : int
      {
         return 0;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_670 != null ? int(this.var_670.priceInActivityPoints) : 0;
      }
      
      public function get activityPointType() : int
      {
         return this.var_670 != null ? int(this.var_670.activityPointType) : 0;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_670 != null ? int(this.var_670.priceInCredits) : 0;
      }
      
      public function get page() : ICatalogPage
      {
         return null;
      }
      
      public function get priceType() : String
      {
         return null;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return null;
      }
   }
}