namespace java com.jfshare.finagle.thrift.manager

include "slotImage.thrift"
include "result.thrift"

struct ProductOpt {

	/*商品id*/
	1:string productId,
	
	/*修改后的商品状态*/
	2:i32 activeState,
	
	/*原因或内容描述*/
	3:optional string desc,
	
	/*操作员id， 卖家-sellerId, 管理员-managerId*/
	4:string operatorId,
	
	/*1-卖家， 2-管理员， 3-系统*/
	5:i32 operatorType,
	
	6:optional string createTime
}

/*订单查询条件*/
struct QueryConditions{

	/*商品ID*/
	1: string productId,          

	/*记录条数*/
	2: i32 recordCount,          

	/*商品状态*/
	3: i32 state
}


struct ProductOptResult{
	1:result.Result result,
	2:list<ProductOpt> productOptRecords
}

struct Commissioner {
    1:i32 csId,
    2:string loginName,
    3:string csName,
	4:string pwdEnc
}

/*登陆请求参数*/
struct LoginLog {
    1:i32 csId,
    2:string tokenId, /*令牌标识*/
    3:string ip,
    4:string browser, /*浏览器标识*/
    5:i32 fromSource, /*终端标识*/
    6:i32 loginAuto, /*是否自动登录*/
    7:string loginTime,
    8:string logoutTime,
}

struct CommissionerResult {
      1:result.Result result,
      2:optional Commissioner cs,
	  3:LoginLog loginLog,
	  4:optional bool value,
}

/*service*/
service ManagerServ{
	/*记录变更商品状态变更日志*/
	result.Result logProductOpt(1:ProductOpt productOpt)
	
	/*查询商品状态变更日志*/
	ProductOptResult queryProductOptRecords(1:QueryConditions conditions)
	
	/*查询登录名是否存在*/
    result.BoolResult isLoginNameExist(1:string loginName);

    /*注册*/
    result.Result signup(1:Commissioner cs);

    /*登陆*/
    CommissionerResult signin(1:Commissioner cs, 2:LoginLog loginLog);

    /*注销*/
    result.Result signout(1:LoginLog loginLog);

    /*是否登陆*/
    CommissionerResult isOnline(1:LoginLog loginLog);
	
	/* 保存广告图片 */
	result.StringResult saveSlotImage(1:slotImage.SlotImage slotImage);
	
	/* 修改广告图片 */
	result.StringResult updateSlotImage(1:slotImage.SlotImage slotImage);
	
	/* 查询广告图片列表 */
	slotImage.QuerySlotImageResult querySlotImageList(1:slotImage.QuerySlotImageParam querySlotImageParam);
	
	/* 查询广告图 */
	slotImage.QuerySlotImageResult querySlotImageOne(1:i32 id);
	
}