package com.shopvite.web.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;


	@Entity
	@Table(name="carts")
	public class Carts {
		
		@Id
		@GeneratedValue
		@Column(name = "cartId")
		private Integer id;
		
		@Column(name = "name")
		private String name;
		
		@Column(name = "qty")
		private Integer qty;
		
		
		@Column(name = "price")
		private Integer price;
		
		@Column(name = "discount")
		private Integer discount;
		
		
		public Integer getDiscount() {
			return discount;
		}

		public void setDiscount(Integer discount) {
			this.discount = discount;
		}

		public Integer getItemId() {
			return itemId;
		}

		public void setItemId(Integer itemId) {
			this.itemId = itemId;
		}

		@Column(name = "itemId")
		private Integer itemId;
		
		@JsonIgnore
		@ManyToOne(fetch = FetchType.EAGER)
		@JoinColumn(name = "userId", nullable = false)
		private Users users;

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public Integer getQty() {
			return qty;
		}

		public void setQty(Integer qty) {
			this.qty = qty;
		}

		public Integer getPrice() {
			return price;
		}

		public void setPrice(Integer price) {
			this.price = price;
		}


		public Users getUsers() {
			return users;
		}

		public void setUsers(Users users) {
			this.users = users;
		}


}
