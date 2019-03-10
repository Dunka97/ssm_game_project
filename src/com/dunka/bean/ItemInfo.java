package com.dunka.bean;

/** 
 * 
 * @author Dunka
 * @Time   2019年3月10日
 * @Todo	游戏列表项目
 */
public class ItemInfo {
	//游戏ID
    private String item_id;
    //游戏名
    private String item_name;
    //游戏标签数组
    private String item_tagids;
    //游戏平台数组
    private String item_platform;
    //折扣
    private Integer item_discount;
    //原价
    private Double item_original_price;
    //图片地址
    private String item_cap_image;
    //发售日期
    private String item_release_date;
    //火热否
    private Boolean is_hot;
    //畅销否
    private Boolean is_hot_sale;
    //免费否
    private Boolean is_free;
    //特价否
    private Boolean is_specials;
    //即将上架否
    private Boolean is_upcoming;
    //新品否
    private Boolean is_new;
    //上架否
    private Boolean is_enable;

	public String getItem_id() {
		return item_id;
	}

	public void setItem_id(String item_id) {
		this.item_id = item_id;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_tagids() {
		return item_tagids;
	}

	public void setItem_tagids(String item_tagids) {
		this.item_tagids = item_tagids;
	}

	public String getItem_platform() {
		return item_platform;
	}

	public void setItem_platform(String item_platform) {
		this.item_platform = item_platform;
	}

	public Integer getItem_discount() {
		return item_discount;
	}

	public void setItem_discount(Integer item_discount) {
		this.item_discount = item_discount;
	}

	public Double getItem_original_price() {
		return item_original_price;
	}

	public void setItem_original_price(Double item_original_price) {
		this.item_original_price = item_original_price;
	}

	public String getItem_cap_image() {
		return item_cap_image;
	}

	public void setItem_cap_image(String item_cap_image) {
		this.item_cap_image = item_cap_image;
	}


	public String getItem_release_date() {
		return item_release_date;
	}

	public void setItem_release_date(String item_release_date) {
		this.item_release_date = item_release_date;
	}

	public Boolean getIs_hot() {
		return is_hot;
	}

	public void setIs_hot(Boolean is_hot) {
		this.is_hot = is_hot;
	}

	public Boolean getIs_hot_sale() {
		return is_hot_sale;
	}

	public void setIs_hot_sale(Boolean is_hot_sale) {
		this.is_hot_sale = is_hot_sale;
	}

	public Boolean getIs_free() {
		return is_free;
	}

	public void setIs_free(Boolean is_free) {
		this.is_free = is_free;
	}

	public Boolean getIs_specials() {
		return is_specials;
	}

	public void setIs_specials(Boolean is_specials) {
		this.is_specials = is_specials;
	}

	public Boolean getIs_upcoming() {
		return is_upcoming;
	}

	public void setIs_upcoming(Boolean is_upcoming) {
		this.is_upcoming = is_upcoming;
	}

	public Boolean getIs_new() {
		return is_new;
	}

	public void setIs_new(Boolean is_new) {
		this.is_new = is_new;
	}

	public Boolean getIs_enable() {
		return is_enable;
	}

	public void setIs_enable(Boolean is_enable) {
		this.is_enable = is_enable;
	}

	@Override
	public String toString() {
		return "ItemInfo [item_id=" + item_id + ", item_name=" + item_name + ", item_tagids=" + item_tagids
				+ ", item_platform=" + item_platform + ", item_discount=" + item_discount + ", item_original_price="
				+ item_original_price + ", item_cap_image=" + item_cap_image + ", item_release_date="
				+ item_release_date + ", is_hot=" + is_hot + ", is_hot_sale=" + is_hot_sale + ", is_free=" + is_free
				+ ", is_specials=" + is_specials + ", is_upcoming=" + is_upcoming + ", is_new=" + is_new
				+ ", is_enable=" + is_enable + "]";
	}

}