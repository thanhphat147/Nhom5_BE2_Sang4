<div class="product-sec1">
    <h3 class="heading-tittle">THỊT, CÁ, TRỨNG</h3>
    @foreach($products as $product)
    <div class="col-md-4 product-men">
        <div class="men-pro-item simpleCart_shelfItem">
            <div class="men-thumb-item">
                <img src="{{ asset('/images/' . $product->image ) }}" alt=""> 
                <div class="men-cart-pro">
                    <div class="inner-men-cart-pro">
                        <a href="single.html" class="link-product-add-cart">Quick View</a>
                    </div>
                </div>
                <span class="product-new-top">New</span>
            </div>
            <div class="item-info-product ">
                <h4>
                    <a href="single.html">{{ $product->productname }}</a>
                </h4>
                <div class="info-product-price">
                    <span class="item_price">{{ $product->price }}</span>
                </div>
                <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                    <form action="#" method="post">
                        <fieldset>
                            <input type="hidden" name="cmd" value="_cart" />
                            <input type="hidden" name="add" value="1" />
                            <input type="hidden" name="business" value=" " />
                            <input type="hidden" name="item_name" value="Almonds, 100g" />
                            <input type="hidden" name="amount" value="149.00" />
                            <input type="hidden" name="discount_amount" value="1.00" />
                            <input type="hidden" name="currency_code" value="USD" />
                            <input type="hidden" name="return" value=" " />
                            <input type="hidden" name="cancel_return" value=" " />
                            <input type="submit" name="submit" value="Add to cart" class="button" />
                        </fieldset>
                    </form>
                </div>

            </div>
        </div>
    </div>
    @endforeach
    <div class="clearfix"></div>
</div>