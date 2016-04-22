namespace java com.zhe800.finagle.thrift.baseTemplate

include "result.thrift"


/*********************** 以下是仓库相关结构 ***********************/
/* 仓库信息 */
struct Storehouse {
    /* 记录ID */
	1:i32 id,
	/* 卖家ID */
	2:i32 sellerId,
	/* 仓库名称 */
	3:string name,
	/* 支持的省份 多个以英文 “,” 隔开 */
	4:string supportProvince,
}

/* 查询仓库参数 */
struct StorehouseQureyParam {
    /* 记录ID */
    1:i32 id,
    /* 卖家ID */
    2:i32 sellerId
}

/*********************** 以下是邮费相关结构 ***********************/
/* 邮费信息 */
struct Postage {
    /* 记录ID */
	1:i32 id,
	/* 卖家ID */
	2:i32 sellerId,
	/* 邮费名称 */
	3:string name,
	/* 支持的省份 多个以英文 “,” 隔开*/
	4:string supportProvince,
    /* 计费规则 */
    5:string rule,
    /* 类型 1：按件数  2：按件数上不封顶  3：按重量  4：按重量上不封顶*/
    6:i32 type
}
/* 查询邮费参数 */
struct PostageQureyParam {
    /* 记录ID */
    1:i32 id,
    /* 卖家ID */
    2:i32 sellerId,
    /* 类型 1：按件数  2：按件数上不封顶  3：按重量  4：按重量上不封顶*/
    3:i32 type,
    /* 邮费名称 */
    4:optional string name
}

/* 仓库接口返回值 */
struct StorehouseResult {
	1:result.Result result,
	2:optional list<Storehouse> storehouseList
}

/* 邮费接口返回值 */
struct PostageResult {
	1:result.Result result,
	2:optional list<Postage> postageList
}



service BaseTamplateServ{
/*********************** 以下是仓库相关接口 ***********************/
    /* 添加仓库 */
	result.StringResult addStorehouse(1:Storehouse storehouse);
	/* 修改仓库 */
	result.Result updateStorehouse(1:Storehouse storehouse);
	/* 删除仓库 */
	result.Result deleteStorehouse(1:i32 sellerId, 2:i32 id);
	/* 删除仓库 Storehouse实体中需要给sellerId和id赋值，否则删除失败 */
	result.Result deleteStorehouseBatch(1:list<Storehouse> storehouseList);
	/* 查询仓库 */
	StorehouseResult queryStorehouse(1:StorehouseQureyParam param);


/*********************** 以下是邮费相关结构 ***********************/
    /* 添加仓库 */
	result.StringResult addPostage(1:Postage postage);
	/* 修改仓库 */
	result.Result updatePostage(1:Postage postage);
	/* 删除仓库 */
	result.Result deletePostage(1:i32 sellerId, 2:i32 id);
	/* 删除仓库 Postage实体中需要给sellerId和id赋值，否则删除失败 */
	result.Result deletePostageBatch(1:list<Postage> postageList);
	/* 查询仓库 */
	StorehouseResult queryPostage(1:PostageQureyParam param);
	
}