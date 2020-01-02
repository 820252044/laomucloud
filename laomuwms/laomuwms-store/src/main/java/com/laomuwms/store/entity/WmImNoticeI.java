package com.laomuwms.store.entity;

import java.util.Date;

/**
 * @author laomu
 * @description 
 * @date 2019-12-31
 * @version 1.0
 */
public class WmImNoticeI {
    /**
    * 主键
    */
    private String id;

    /**
    * 创建人名称
    */
    private String createName;

    /**
    * 创建人登录名称
    */
    private String createBy;

    /**
    * 创建日期
    */
    private Date createDate;

    /**
    * 更新人名称
    */
    private String updateName;

    /**
    * 更新人登录名称
    */
    private String updateBy;

    /**
    * 更新日期
    */
    private Date updateDate;

    /**
    * 所属部门
    */
    private String sysOrgCode;

    /**
    * 所属公司
    */
    private String sysCompanyCode;

    /**
    * 到货通知单号
    */
    private String imNoticeId;

    /**
    * 到货通知项目
    */
    private String imNoticeItem;

    /**
    * 商品编码
    */
    private String goodsCode;

    /**
    * 数量
    */
    private String goodsCount;

    /**
    * 生产日期
    */
    private Date goodsPrdData;

    /**
    * 批次
    */
    private String goodsBatch;

    /**
    * 库位整理
    */
    private String binPre;

    /**
    * 体积
    */
    private String goodsFvol;

    /**
    * 重量
    */
    private String goodsWeight;

    /**
    * 计划库位
    */
    private String binPlan;

    /**
    * 单位
    */
    private String goodsUnit;

    /**
    * 未清数量
    */
    private String goodsWqmCount;

    /**
    * 收货登记数量
    */
    private String goodsQmCount;

    /**
    * 行项目状态
    */
    private String noticeiSta;

    /**
    * 基本单位
    */
    private String baseUnit;

    /**
    * 基本单位数量
    */
    private String baseGoodscount;

    /**
    * 基本单位收货数量
    */
    private String baseQmcount;

    private String goodsName;

    private String otherId;

    private String imCusCode;

    private String imBeizhu;

    private String barcode;

    /**
    * 规格
    */
    private String shpGuiGe;

    private String bzhiQi;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreateName() {
        return createName;
    }

    public void setCreateName(String createName) {
        this.createName = createName;
    }

    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public String getUpdateName() {
        return updateName;
    }

    public void setUpdateName(String updateName) {
        this.updateName = updateName;
    }

    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getSysOrgCode() {
        return sysOrgCode;
    }

    public void setSysOrgCode(String sysOrgCode) {
        this.sysOrgCode = sysOrgCode;
    }

    public String getSysCompanyCode() {
        return sysCompanyCode;
    }

    public void setSysCompanyCode(String sysCompanyCode) {
        this.sysCompanyCode = sysCompanyCode;
    }

    public String getImNoticeId() {
        return imNoticeId;
    }

    public void setImNoticeId(String imNoticeId) {
        this.imNoticeId = imNoticeId;
    }

    public String getImNoticeItem() {
        return imNoticeItem;
    }

    public void setImNoticeItem(String imNoticeItem) {
        this.imNoticeItem = imNoticeItem;
    }

    public String getGoodsCode() {
        return goodsCode;
    }

    public void setGoodsCode(String goodsCode) {
        this.goodsCode = goodsCode;
    }

    public String getGoodsCount() {
        return goodsCount;
    }

    public void setGoodsCount(String goodsCount) {
        this.goodsCount = goodsCount;
    }

    public Date getGoodsPrdData() {
        return goodsPrdData;
    }

    public void setGoodsPrdData(Date goodsPrdData) {
        this.goodsPrdData = goodsPrdData;
    }

    public String getGoodsBatch() {
        return goodsBatch;
    }

    public void setGoodsBatch(String goodsBatch) {
        this.goodsBatch = goodsBatch;
    }

    public String getBinPre() {
        return binPre;
    }

    public void setBinPre(String binPre) {
        this.binPre = binPre;
    }

    public String getGoodsFvol() {
        return goodsFvol;
    }

    public void setGoodsFvol(String goodsFvol) {
        this.goodsFvol = goodsFvol;
    }

    public String getGoodsWeight() {
        return goodsWeight;
    }

    public void setGoodsWeight(String goodsWeight) {
        this.goodsWeight = goodsWeight;
    }

    public String getBinPlan() {
        return binPlan;
    }

    public void setBinPlan(String binPlan) {
        this.binPlan = binPlan;
    }

    public String getGoodsUnit() {
        return goodsUnit;
    }

    public void setGoodsUnit(String goodsUnit) {
        this.goodsUnit = goodsUnit;
    }

    public String getGoodsWqmCount() {
        return goodsWqmCount;
    }

    public void setGoodsWqmCount(String goodsWqmCount) {
        this.goodsWqmCount = goodsWqmCount;
    }

    public String getGoodsQmCount() {
        return goodsQmCount;
    }

    public void setGoodsQmCount(String goodsQmCount) {
        this.goodsQmCount = goodsQmCount;
    }

    public String getNoticeiSta() {
        return noticeiSta;
    }

    public void setNoticeiSta(String noticeiSta) {
        this.noticeiSta = noticeiSta;
    }

    public String getBaseUnit() {
        return baseUnit;
    }

    public void setBaseUnit(String baseUnit) {
        this.baseUnit = baseUnit;
    }

    public String getBaseGoodscount() {
        return baseGoodscount;
    }

    public void setBaseGoodscount(String baseGoodscount) {
        this.baseGoodscount = baseGoodscount;
    }

    public String getBaseQmcount() {
        return baseQmcount;
    }

    public void setBaseQmcount(String baseQmcount) {
        this.baseQmcount = baseQmcount;
    }

    public String getGoodsName() {
        return goodsName;
    }

    public void setGoodsName(String goodsName) {
        this.goodsName = goodsName;
    }

    public String getOtherId() {
        return otherId;
    }

    public void setOtherId(String otherId) {
        this.otherId = otherId;
    }

    public String getImCusCode() {
        return imCusCode;
    }

    public void setImCusCode(String imCusCode) {
        this.imCusCode = imCusCode;
    }

    public String getImBeizhu() {
        return imBeizhu;
    }

    public void setImBeizhu(String imBeizhu) {
        this.imBeizhu = imBeizhu;
    }

    public String getBarcode() {
        return barcode;
    }

    public void setBarcode(String barcode) {
        this.barcode = barcode;
    }

    public String getShpGuiGe() {
        return shpGuiGe;
    }

    public void setShpGuiGe(String shpGuiGe) {
        this.shpGuiGe = shpGuiGe;
    }

    public String getBzhiQi() {
        return bzhiQi;
    }

    public void setBzhiQi(String bzhiQi) {
        this.bzhiQi = bzhiQi;
    }
}