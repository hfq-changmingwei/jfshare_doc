2016-12-23 17:33:37,735 [pool-2-thread-20] [INFO] [FinagleServer.java][apply(158)] --> FinagleProxy call method[payState], params[[PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:iLv6mU/tYV1Vu9zhav4XcA==, retCode:0, cancelTime:0)]] success:ret[PayStateResult(result:Result(code:0), payState:PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:null, retCode:0, cancelTime:0))], Time consuming[0 ms] 
2016-12-23 17:33:37,735 [pool-2-thread-20] [INFO] [FinagleServer.java][onSuccess(111)] --> 方法调用成功，payState 
2016-12-23 17:33:38,215 [pool-2-thread-18] [INFO] [FinagleServer.java][apply(158)] --> FinagleProxy call method[payState], params[[PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:iLv6mU/tYV1Vu9zhav4XcA==, retCode:0, cancelTime:0)]] success:ret[PayStateResult(result:Result(code:0), payState:PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:null, retCode:0, cancelTime:0))], Time consuming[0 ms] 
2016-12-23 17:33:38,215 [pool-2-thread-18] [INFO] [FinagleServer.java][onSuccess(111)] --> 方法调用成功，payState 
2016-12-23 17:33:38,387 [pool-2-thread-23] [INFO] [FinagleServer.java][apply(158)] --> FinagleProxy call method[payState], params[[PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:iLv6mU/tYV1Vu9zhav4XcA==, retCode:0, cancelTime:0)]] success:ret[PayStateResult(result:Result(code:0), payState:PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:null, retCode:0, cancelTime:0))], Time consuming[1 ms] 
2016-12-23 17:33:38,387 [pool-2-thread-23] [INFO] [FinagleServer.java][onSuccess(111)] --> 方法调用成功，payState 
JDBC Connection [com.mchange.v2.c3p0.impl.NewProxyConnection@1744737e] will not be managed by Spring
==>  Preparing: select a.order_id, a.trade_code, a.user_id, a.user_name, a.create_time, a.cancel_time, a.pay_time, a.pay_account, a.seller_id, a.seller_name, a.pay_channel, a.pay_id, a.closing_price, a.third_id, a.express_id, a.express_no, a.province_id, a.city_id, a.county_id, a.receiver_address, a.receiver_name, a.receiver_mobile, a.receiver_tele, a.order_state, a.seller_comment, a.buyer_comment, a.last_update_time, a.last_update_user_id, a.create_user_id, a.pay_state, a.address_id, a.province_name, a.city_name, a.county_name, a.post_code, a.deliver_time, a.success_time, a.settlement_state, a.postage, a.order_state_type, a.order_state_type_desc, a.settlement_time, a.order_tag, a.express_name, a.wi, a.from_source, a.trade_pay_id, a.order_delete_state, a.exchange_score, a.exchange_cash, a.order_batch, a.active_state, a.third_score,a.postageExt,a.order_type,a.third_price, b.order_id, b.product_id, b.product_name, b.vice_name, b.product_snapshoot_id, b.sku_num, b.sku_desc, b.seller_class_num, b.cur_price, b.org_price, b.images_url, b.last_update_user_id, b.create_time, b.create_user_id, b.type, b.shelf, b.count, b.last_update_time, b.subject_id, b.brand_id, b.wi, b.exchange_score, b.exchange_cash, b.exchange_rule, b.third_score, b.postage_template_id, b.storehouse_id, b.thirdexchangerate, b.postageExt, b.ref_price, b.ext1, b.ext2, b.ext3, b.weight from (select a.order_id FROM tb_order_user_48 a WHERE a.order_id in ( ? ) and a.user_id = ? )c,tb_order_user_48 a,tb_order_info_user_48 b where c.order_id = a.order_id AND c.order_id = b.order_id 
==> Parameters: 221950112(String), 112(Integer)
<==    Columns: order_id, trade_code, user_id, user_name, create_time, cancel_time, pay_time, pay_account, seller_id, seller_name, pay_channel, pay_id, closing_price, third_id, express_id, express_no, province_id, city_id, county_id, receiver_address, receiver_name, receiver_mobile, receiver_tele, order_state, seller_comment, buyer_comment, last_update_time, last_update_user_id, create_user_id, pay_state, address_id, province_name, city_name, county_name, post_code, deliver_time, success_time, settlement_state, postage, order_state_type, order_state_type_desc, settlement_time, order_tag, express_name, wi, from_source, trade_pay_id, order_delete_state, exchange_score, exchange_cash, order_batch, active_state, third_score, postageExt, order_type, third_price, order_id, product_id, product_name, vice_name, product_snapshoot_id, sku_num, sku_desc, seller_class_num, cur_price, org_price, images_url, last_update_user_id, create_time, create_user_id, type, shelf, count, last_update_time, subject_id, brand_id, wi, exchange_score, exchange_cash, exchange_rule, third_score, postage_template_id, storehouse_id, thirdexchangerate, postageExt, ref_price, ext1, ext2, ext3, weight
<==        Row: 221950112, Z0003, 112, null, 2016-12-23 17:24:03.0, 2016-12-25 17:24:03.0, null, null, 1, 聚分享旗舰店, 0, , 990, , 0, , 110000, 110100, 110105, 北京市朝阳区北苑路甲13号院北辰泰岳大厦18层, 郭瑶瑶, 18810870935, , 10, , , 2016-12-23 17:24:03.0, 0, 0, 0, 1509, 北京市, 北京市, 朝阳区, 000000, null, null, 0, 0, 0, 0, null, 0, , , 3, , 0, 0, 0, 2-221950112-1, 0, 0, [{"supportProvince":"110000,120000,310000,500000,130000,140000,150000,210000,220000,230000,320000,330000,340000,350000,360000,370000,410000,420000,430000,440000,450000,460000,510000,520000,530000,540000,610000,620000,630000,640000,650000","rule":"{\"number\":\"2\",\"amount\":\"2\",\"limit\":1,\"postage\":\"2\"}"}], 0, 0, 221950112, ze160824142940000670, 1938 I.R POLO CUB POLO 厨房五宝IR－5A, , zs161128142238000204, , , , 990, 6800, 4B7FC35D306FAD4F59A91537FD9E47E7.jpg, 0, null, 1, 2, , 1, 2016-12-23 17:24:03.0, 3144, 433, , 0, 0, null, 0, 1, 1, 0, , 100, null, null, null, 
<==      Total: 1
2016-12-23 17:33:40,510 [pool-2-thread-22] [INFO] [OrderHandler.java][payApply(551)] --> 申请支付----payApply获取订单信息:[{"activeState":0,"addressId":1509,"buyerComment":"","cancelTime":{"afterNow":true,"beforeNow":false,"centuryOfEra":20,"chronology":{"zone":{"fixed":false,"iD":"Asia/Shanghai","uncachedZone":{"cachable":true,"fixed":false,"iD":"Asia/Shanghai"}}},"dayOfMonth":25,"dayOfWeek":7,"dayOfYear":360,"equalNow":false,"era":1,"hourOfDay":17,"millis":1482657843000,"millisOfDay":62643000,"millisOfSecond":0,"minuteOfDay":1044,"minuteOfHour":24,"monthOfYear":12,"secondOfDay":62643,"secondOfMinute":3,"weekOfWeekyear":51,"weekyear":2016,"year":2016,"yearOfCentury":16,"yearOfEra":2016,"zone":{"$ref":"$[0].cancelTime.chronology.zone"}},"cityId":110100,"cityName":"北京市","closingPrice":990,"countyId":110105,"countyName":"朝阳区","createTime":{"afterNow":false,"beforeNow":true,"centuryOfEra":20,"chronology":{"$ref":"$[0].cancelTime.chronology"},"dayOfMonth":23,"dayOfWeek":5,"dayOfYear":358,"equalNow":false,"era":1,"hourOfDay":17,"millis":1482485043000,"millisOfDay":62643000,"millisOfSecond":0,"minuteOfDay":1044,"minuteOfHour":24,"monthOfYear":12,"secondOfDay":62643,"secondOfMinute":3,"weekOfWeekyear":51,"weekyear":2016,"year":2016,"yearOfCentury":16,"yearOfEra":2016,"zone":{"$ref":"$[0].cancelTime.chronology.zone"}},"createUserId":0,"exchangeCash":0,"exchangeScore":0,"expressId":0,"expressName":"","expressNo":"","fromSource":3,"lastUpdateTime":{"afterNow":false,"beforeNow":true,"centuryOfEra":20,"chronology":{"$ref":"$[0].cancelTime.chronology"},"dayOfMonth":23,"dayOfWeek":5,"dayOfYear":358,"equalNow":false,"era":1,"hourOfDay":17,"millis":1482485043000,"millisOfDay":62643000,"millisOfSecond":0,"minuteOfDay":1044,"minuteOfHour":24,"monthOfYear":12,"secondOfDay":62643,"secondOfMinute":3,"weekOfWeekyear":51,"weekyear":2016,"year":2016,"yearOfCentury":16,"yearOfEra":2016,"zone":{"$ref":"$[0].cancelTime.chronology.zone"}},"lastUpdateUserId":0,"orderBatch":"2-221950112-1","orderDeleteState":0,"orderId":"221950112","orderState":10,"orderStateType":0,"orderStateTypeDesc":0,"orderTag":0,"orderType":0,"payChannel":0,"payId":"","payState":0,"postCode":"000000","postage":0,"postageext":"[{\"supportProvince\":\"110000,120000,310000,500000,130000,140000,150000,210000,220000,230000,320000,330000,340000,350000,360000,370000,410000,420000,430000,440000,450000,460000,510000,520000,530000,540000,610000,620000,630000,640000,650000\",\"rule\":\"{\\\"number\\\":\\\"2\\\",\\\"amount\\\":\\\"2\\\",\\\"limit\\\":1,\\\"postage\\\":\\\"2\\\"}\"}]","provinceId":110000,"provinceName":"北京市","receiverAddress":"北京市朝阳区北苑路甲13号院北辰泰岳大厦18层","receiverMobile":"18810870935","receiverName":"郭瑶瑶","receiverTele":"","sellerComment":"","sellerId":1,"sellerName":"聚分享旗舰店","settlementState":0,"tbOrderInfoList":[{"brandId":433,"count":1,"createTime":{"afterNow":false,"beforeNow":true,"centuryOfEra":20,"chronology":{"$ref":"$[0].cancelTime.chronology"},"dayOfMonth":23,"dayOfWeek":5,"dayOfYear":358,"equalNow":false,"era":1,"hourOfDay":17,"millis":1482485043000,"millisOfDay":62643000,"millisOfSecond":0,"minuteOfDay":1044,"minuteOfHour":24,"monthOfYear":12,"secondOfDay":62643,"secondOfMinute":3,"weekOfWeekyear":51,"weekyear":2016,"year":2016,"yearOfCentury":16,"yearOfEra":2016,"zone":{"$ref":"$[0].cancelTime.chronology.zone"}},"createUserId":0,"curPrice":990,"exchangeCash":0,"exchangeScore":0,"imagesUrl":"4B7FC35D306FAD4F59A91537FD9E47E7.jpg","lastUpdateTime":{"afterNow":false,"beforeNow":true,"centuryOfEra":20,"chronology":{"$ref":"$[0].cancelTime.chronology"},"dayOfMonth":23,"dayOfWeek":5,"dayOfYear":358,"equalNow":false,"era":1,"hourOfDay":17,"millis":1482485043000,"millisOfDay":62643000,"millisOfSecond":0,"minuteOfDay":1044,"minuteOfHour":24,"monthOfYear":12,"secondOfDay":62643,"secondOfMinute":3,"weekOfWeekyear":51,"weekyear":2016,"year":2016,"yearOfCentury":16,"yearOfEra":2016,"zone":{"$ref":"$[0].cancelTime.chronology.zone"}},"lastUpdateUserId":0,"orderId":"221950112","orgPrice":6800,"postage":0,"postageTemplateId":1,"postageext":"[{\"supportProvince\":\"110000,120000,310000,500000,130000,140000,150000,210000,220000,230000,320000,330000,340000,350000,360000,370000,410000,420000,430000,440000,450000,460000,510000,520000,530000,540000,610000,620000,630000,640000,650000\",\"rule\":\"{\\\"number\\\":\\\"2\\\",\\\"amount\\\":\\\"2\\\",\\\"limit\\\":1,\\\"postage\\\":\\\"2\\\"}\"}]","productId":"ze160824142940000670","productName":"1938 I.R POLO CUB POLO 厨房五宝IR－5A","productSnapshootId":"zs161128142238000204","refPrice":100,"sellerClassNum":"","shelf":"","skuDesc":"","skuNum":"","storehouseId":1,"subjectId":3144,"thirdScore":0,"thirdexchangerate":"0","type":2,"viceName":"","weight":"","wi":""}],"thirdId":"","thirdPrice":0,"thirdScore":0,"tradeCode":"Z0003","tradePayId":"","userId":112,"wi":""}] 
2016-12-23 17:33:40,511 [pool-2-thread-22] [INFO] [OrderHandler.java][payApply(564)] --> 申请支付----积分参数校验, lockScore=0, useScore=989 
2016-12-23 17:33:40,511 [pool-2-thread-22] [INFO] [TradeClient.java][score2cash(73)] --> 1.buyInfo==>BuyInfo(userId:112, userName:null, amount:9.90, payChannel:null, deliverInfo:null, sellerDetailList:null, fromSource:0, wi:null, exchangeScore:989, exchangeCash:9.90) 
2016-12-23 17:33:40,511 [pool-2-thread-22] [INFO] [TradeClient.java][score2cash(91)] --> 2.param==>ExchangeParam(userId:112, productList:[ExchangeProduct(productId:ze160824142940000670, skuNum:, price:9.90)], amount:9.90, score:989) 
2016-12-23 17:33:40,525 [pool-2-thread-22] [ERROR] [OrderHandler.java][payApply(581)] --> 申请支付----扣减积分失败！fails=[FailDesc(name:payscore, failCode:3027, desc:抵现积分与金额不等)] 
2016-12-23 17:33:40,525 [pool-2-thread-22] [INFO] [FinagleServer.java][apply(158)] --> FinagleProxy call method[payApply], params[[PayParam(userId:112, orderIdList:[221950112], payChannel:PayChannel(payChannel:0, payIp:null, returnUrl:null, custId:null, custType:null), exchangeScore:989, exchangeCash:9.90)]] success:ret[StringResult(result:Result(code:1, failDescList:[FailDesc(name:payscore, failCode:3025, desc:积分校验失败)]))], Time consuming[25 ms] 
2016-12-23 17:33:40,525 [pool-2-thread-22] [INFO] [FinagleServer.java][onSuccess(111)] --> 方法调用成功，payApply 
2016-12-23 17:33:40,733 [pool-2-thread-24] [INFO] [FinagleServer.java][apply(158)] --> FinagleProxy call method[payState], params[[PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:iLv6mU/tYV1Vu9zhav4XcA==, retCode:0, cancelTime:0)]] success:ret[PayStateResult(result:Result(code:0), payState:PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:null, retCode:0, cancelTime:0))], Time consuming[1 ms] 
2016-12-23 17:33:40,733 [pool-2-thread-24] [INFO] [FinagleServer.java][onSuccess(111)] --> 方法调用成功，payState 
2016-12-23 17:33:41,390 [pool-2-thread-25] [INFO] [FinagleServer.java][apply(158)] --> FinagleProxy call method[payState], params[[PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:iLv6mU/tYV1Vu9zhav4XcA==, retCode:0, cancelTime:0)]] success:ret[PayStateResult(result:Result(code:0), payState:PayState(payId:6ffedffa5d193c44a708cee5e0bf8e90, tokenId:null, retCode:0, cancelTime:0))], Time consuming[0 ms] 
2016-12-23 17:33:41,390 [pool-2-thread-25] [INFO] [FinagleServer.java][onSuccess(111)] --> 方法调用成功，payState 