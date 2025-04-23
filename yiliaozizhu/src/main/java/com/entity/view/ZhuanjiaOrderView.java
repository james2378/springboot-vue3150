package com.entity.view;

import com.entity.ZhuanjiaOrderEntity;
import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;
import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
import java.util.Date;

/**
 * 专家挂号订单
 * 后端返回视图实体辅助类
 * （通常后端关联的表或者自定义的字段需要返回使用）
 */
@TableName("zhuanjia_order")
public class ZhuanjiaOrderView extends ZhuanjiaOrderEntity implements Serializable {
    private static final long serialVersionUID = 1L;

		/**
		* 时间段的值
		*/
		private String shijianduanValue;
		/**
		* 预约状态的值
		*/
		private String zhuanjiaOrderYuyueValue;



		//级联表 huanzhe
			/**
			* 患者姓名
			*/
			private String huanzheName;
			/**
			* 患者手机号
			*/
			private String huanzhePhone;
			/**
			* 患者身份证号
			*/
			private String huanzheIdNumber;
			/**
			* 患者头像
			*/
			private String huanzhePhoto;
			/**
			* 电子邮箱
			*/
			private String huanzheEmail;
			/**
			* 余额
			*/
			private Double newMoney;

		//级联表 zhuanjia
			/**
			* 专家姓名
			*/
			private String zhuanjiaName;
			/**
			* 专家手机号
			*/
			private String zhuanjiaPhone;
			/**
			* 专家身份证号
			*/
			private String zhuanjiaIdNumber;
			/**
			* 专家头像
			*/
			private String zhuanjiaPhoto;
			/**
			* 科室
			*/
			private Integer keshiTypes;
				/**
				* 科室的值
				*/
				private String keshiValue;
			/**
			* 职位
			*/
			private Integer zhiweiTypes;
				/**
				* 职位的值
				*/
				private String zhiweiValue;
			/**
			* 挂号费
			*/
			private Double guahaoMoney;
			/**
			* 电子邮箱
			*/
			private String zhuanjiaEmail;
			/**
			* 专家介绍
			*/
			private String zhuanjiaContent;
			/**
			* 逻辑删除
			*/
			private Integer zhuanjiaDelete;

	public ZhuanjiaOrderView() {

	}

	public ZhuanjiaOrderView(ZhuanjiaOrderEntity zhuanjiaOrderEntity) {
		try {
			BeanUtils.copyProperties(this, zhuanjiaOrderEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



			/**
			* 获取： 时间段的值
			*/
			public String getShijianduanValue() {
				return shijianduanValue;
			}
			/**
			* 设置： 时间段的值
			*/
			public void setShijianduanValue(String shijianduanValue) {
				this.shijianduanValue = shijianduanValue;
			}
			/**
			* 获取： 预约状态的值
			*/
			public String getZhuanjiaOrderYuyueValue() {
				return zhuanjiaOrderYuyueValue;
			}
			/**
			* 设置： 预约状态的值
			*/
			public void setZhuanjiaOrderYuyueValue(String zhuanjiaOrderYuyueValue) {
				this.zhuanjiaOrderYuyueValue = zhuanjiaOrderYuyueValue;
			}








				//级联表的get和set huanzhe

					/**
					* 获取： 患者姓名
					*/
					public String getHuanzheName() {
						return huanzheName;
					}
					/**
					* 设置： 患者姓名
					*/
					public void setHuanzheName(String huanzheName) {
						this.huanzheName = huanzheName;
					}

					/**
					* 获取： 患者手机号
					*/
					public String getHuanzhePhone() {
						return huanzhePhone;
					}
					/**
					* 设置： 患者手机号
					*/
					public void setHuanzhePhone(String huanzhePhone) {
						this.huanzhePhone = huanzhePhone;
					}

					/**
					* 获取： 患者身份证号
					*/
					public String getHuanzheIdNumber() {
						return huanzheIdNumber;
					}
					/**
					* 设置： 患者身份证号
					*/
					public void setHuanzheIdNumber(String huanzheIdNumber) {
						this.huanzheIdNumber = huanzheIdNumber;
					}

					/**
					* 获取： 患者头像
					*/
					public String getHuanzhePhoto() {
						return huanzhePhoto;
					}
					/**
					* 设置： 患者头像
					*/
					public void setHuanzhePhoto(String huanzhePhoto) {
						this.huanzhePhoto = huanzhePhoto;
					}

					/**
					* 获取： 电子邮箱
					*/
					public String getHuanzheEmail() {
						return huanzheEmail;
					}
					/**
					* 设置： 电子邮箱
					*/
					public void setHuanzheEmail(String huanzheEmail) {
						this.huanzheEmail = huanzheEmail;
					}

					/**
					* 获取： 余额
					*/
					public Double getNewMoney() {
						return newMoney;
					}
					/**
					* 设置： 余额
					*/
					public void setNewMoney(Double newMoney) {
						this.newMoney = newMoney;
					}





				//级联表的get和set zhuanjia

					/**
					* 获取： 专家姓名
					*/
					public String getZhuanjiaName() {
						return zhuanjiaName;
					}
					/**
					* 设置： 专家姓名
					*/
					public void setZhuanjiaName(String zhuanjiaName) {
						this.zhuanjiaName = zhuanjiaName;
					}

					/**
					* 获取： 专家手机号
					*/
					public String getZhuanjiaPhone() {
						return zhuanjiaPhone;
					}
					/**
					* 设置： 专家手机号
					*/
					public void setZhuanjiaPhone(String zhuanjiaPhone) {
						this.zhuanjiaPhone = zhuanjiaPhone;
					}

					/**
					* 获取： 专家身份证号
					*/
					public String getZhuanjiaIdNumber() {
						return zhuanjiaIdNumber;
					}
					/**
					* 设置： 专家身份证号
					*/
					public void setZhuanjiaIdNumber(String zhuanjiaIdNumber) {
						this.zhuanjiaIdNumber = zhuanjiaIdNumber;
					}

					/**
					* 获取： 专家头像
					*/
					public String getZhuanjiaPhoto() {
						return zhuanjiaPhoto;
					}
					/**
					* 设置： 专家头像
					*/
					public void setZhuanjiaPhoto(String zhuanjiaPhoto) {
						this.zhuanjiaPhoto = zhuanjiaPhoto;
					}

					/**
					* 获取： 科室
					*/
					public Integer getKeshiTypes() {
						return keshiTypes;
					}
					/**
					* 设置： 科室
					*/
					public void setKeshiTypes(Integer keshiTypes) {
						this.keshiTypes = keshiTypes;
					}


						/**
						* 获取： 科室的值
						*/
						public String getKeshiValue() {
							return keshiValue;
						}
						/**
						* 设置： 科室的值
						*/
						public void setKeshiValue(String keshiValue) {
							this.keshiValue = keshiValue;
						}

					/**
					* 获取： 职位
					*/
					public Integer getZhiweiTypes() {
						return zhiweiTypes;
					}
					/**
					* 设置： 职位
					*/
					public void setZhiweiTypes(Integer zhiweiTypes) {
						this.zhiweiTypes = zhiweiTypes;
					}


						/**
						* 获取： 职位的值
						*/
						public String getZhiweiValue() {
							return zhiweiValue;
						}
						/**
						* 设置： 职位的值
						*/
						public void setZhiweiValue(String zhiweiValue) {
							this.zhiweiValue = zhiweiValue;
						}

					/**
					* 获取： 挂号费
					*/
					public Double getGuahaoMoney() {
						return guahaoMoney;
					}
					/**
					* 设置： 挂号费
					*/
					public void setGuahaoMoney(Double guahaoMoney) {
						this.guahaoMoney = guahaoMoney;
					}

					/**
					* 获取： 电子邮箱
					*/
					public String getZhuanjiaEmail() {
						return zhuanjiaEmail;
					}
					/**
					* 设置： 电子邮箱
					*/
					public void setZhuanjiaEmail(String zhuanjiaEmail) {
						this.zhuanjiaEmail = zhuanjiaEmail;
					}

					/**
					* 获取： 专家介绍
					*/
					public String getZhuanjiaContent() {
						return zhuanjiaContent;
					}
					/**
					* 设置： 专家介绍
					*/
					public void setZhuanjiaContent(String zhuanjiaContent) {
						this.zhuanjiaContent = zhuanjiaContent;
					}

					/**
					* 获取： 逻辑删除
					*/
					public Integer getZhuanjiaDelete() {
						return zhuanjiaDelete;
					}
					/**
					* 设置： 逻辑删除
					*/
					public void setZhuanjiaDelete(Integer zhuanjiaDelete) {
						this.zhuanjiaDelete = zhuanjiaDelete;
					}










}
