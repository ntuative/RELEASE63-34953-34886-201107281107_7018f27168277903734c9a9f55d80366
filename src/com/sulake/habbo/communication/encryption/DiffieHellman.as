package com.sulake.habbo.communication.encryption
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.communication.handshake.IKeyExchange;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1104:BigInteger;
      
      private var var_2578:BigInteger;
      
      private var var_2003:BigInteger;
      
      private var var_2681:BigInteger;
      
      private var var_1576:BigInteger;
      
      private var var_2004:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1576 = param1;
         this.var_2004 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1576.toString() + ",generator: " + this.var_2004.toString() + ",secret: " + param1);
         this.var_1104 = new BigInteger();
         this.var_1104.fromRadix(param1,param2);
         this.var_2578 = this.var_2004.modPow(this.var_1104,this.var_1576);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_2003 = new BigInteger();
         this.var_2003.fromRadix(param1,param2);
         this.var_2681 = this.var_2003.modPow(this.var_1104,this.var_1576);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2578.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2681.toRadix(param1);
      }
   }
}
