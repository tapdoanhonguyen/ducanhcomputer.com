<!-- BEGIN: main -->
<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/lightSlider/css/lightslider.min.css" rel="stylesheet" type="text/css">
<script type="application/ld+json">
{
  "@context": "https://schema.org/",
  "@type": "Product",
  "name": "{TITLE}",
  "image": "{SRC_PRO_FULL}",
  "description": "{TITLE}",
  "sku": "{PRODUCT_CODE}",
  "mpn": "{PRODUCT_CODE}",
  "brand": {
    "@type": "Thing",
    "name": "{CAT_TITLE}"
  },
  "review": {
    "@type": "Review",
    "reviewRating": {
      "@type": "Rating",
      "ratingValue": "{RW.rating}",
      "bestRating": "5"
    },
    "author": {
      "@type": "Person",
      "name": "{RW.sender}"
    }
  },
  "aggregateRating": {
    "@type": "AggregateRating",
    "ratingValue": "{RATINGTB}",
    "reviewCount": "{RATE_TOTAL}"
  },
  "offers": {
    "@type": "Offer",
    "url": "{SELFURL}",
    "priceCurrency": "{PRICE.money_unit}",
    "price": "{PRICE.sale}",
    "priceValidUntil": "{DATE_UP}",
    "itemCondition": "https://schema.org/UsedCondition",
    "availability": "https://schema.org/InStock",
    "seller": {
      "@type": "Organization",
      "name": "Đức Anh Computer"
    }
  }
}
</script>
<div id="detail"<!-- BEGIN: popupid --> class="prodetail-popup"<!-- END: popupid -->>
    <div class="clearfix">
        <div class="details-product ">
            <div class="row">
                <div class="product-detail-left product-images col-xs-24 col-sm-12 col-md-10 col-lg-10">
                    <!-- BEGIN: image -->
                    <div class="image">
                        <ul id="imageGallery" class="gallery">
                            <!-- BEGIN: loop -->
                            <li data-thumb="{IMAGE.thumb}" data-src="{IMAGE.file}"><img src="{IMAGE.file}" /></li>
                            <!-- END: loop -->
                        </ul>
                    </div>
                    <!-- END: image -->
                    <a href="" data-src="{SRC_PRO_LAGE}" data-width="{SRC_PRO_LAGE_INFO.width}" class="open_modal" title="{TITLE}"><img src="{SRC_PRO}" alt="" class="img-thumbnail" id="imageproduct"></a> <br />
                    <!-- BEGIN: adminlink -->
                    <p class="tab-pane">{ADMINLINK}</p>
                    <!-- END: adminlink -->
					<hr/>
                    <p class="alert alert-{product_status_class} text-center"><span itemprop="description"><strong>{product_status}</strong></span></p>
                </div>
                <div class="col-xs-24 col-sm-12 col-md-14 col-lg-14 details-pro">
                    <ul class="product_info">
                        <li>
                            <h1 class="title-product">{TITLE}</h1>
                        </li>
						<li>
							<!-- BEGIN: social_icon -->
							<div class="clearfix">
								<div class="socialicon">
									<div class="fb-like" data-href="{SELFURL}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true">&nbsp;</div>
									<a rel="nofollow" href="http://twitter.com/share" class="twitter-share-button">Tweet</a>
								</div>
							</div>
							<!-- END: social_icon -->
						</li>
                        <!-- BEGIN: product_code -->
                        <li>{LANG.product_code}: <strong>{PRODUCT_CODE}</strong>
                        </li>
                        <!-- END: product_code -->
                        <!-- BEGIN: price -->
                        <li>
                            <div class="price-box clearfix">
								<!-- BEGIN: discounts -->
								<span class="special-price">
									<span class="price product-price">{PRICE.sale_format} {PRICE.unit}</span>
								</span>
								<span class="old-price" itemprop="priceSpecification">
									<del class="price product-price-old sale">{PRICE.price_format} {PRICE.unit}</del>
								</span>
								<!-- END: discounts -->
								<!-- BEGIN: no_discounts -->
								<span class="special-price">
									<span class="price product-price">{PRICE.price_format} {PRICE.unit}</span>
								</span>
								<!-- END: no_discounts -->
								<!-- BEGIN: contact -->
								<span class="special-price">
									<span class="price product-price">{LANG.price_contact}</span>
								</span>
								<!-- END: contact -->
							</div>
                        </li>
                        <!-- END: price -->
						<!-- BEGIN: contact -->
						<li>
                            <div class="price-box clearfix">
								<span class="special-price">
									<span class="price product-price">{LANG.price_contact}</span>
								</span>
							</div>
                        </li>
						<!-- END: contact -->
                        <!-- BEGIN: product_weight -->
                        <li>{LANG.weights}: <strong>{PRODUCT_WEIGHT}</strong>&nbsp<span>{WEIGHT_UNIT}</span>
                        </li>
                        <!-- END: product_weight -->
                        <!-- BEGIN: group_detail -->
                        <li>
                            <!-- BEGIN: loop --> <!-- BEGIN: maintitle -->
                            <div class="pull-left">
                                <strong>{MAINTITLE}:</strong>&nbsp;
                            </div> <!-- END: maintitle --> <!-- BEGIN: subtitle -->
                            <ul class="pull-left list-inline" style="padding: 0 10px 0">
                                <!-- BEGIN: loop -->
                                <li>{SUBTITLE.title}</li>
                                <!-- END: loop -->
                            </ul>
                            <div class="clear"></div> <!-- END: subtitle --> <!-- END: loop -->
                        </li>
                        <!-- END: group_detail -->
                        <!-- BEGIN: custom_data -->
                        {CUSTOM_DATA}
                        <!-- END: custom_data -->
                        <!-- BEGIN: hometext -->
                        <li>
                            <div class="rte description  rte-summary">{hometext}</div>
                        </li>
                        <!-- END: hometext -->
                        <!-- BEGIN: promotional -->
                        <li><strong>{LANG.detail_promotional}:</strong> {promotional}</li>
                        <!-- END: promotional -->
                        <!-- BEGIN: warranty -->
                        <li><strong>{LANG.detail_warranty}:</strong> {warranty}</li>
                        <!-- END: warranty -->
						
                    </ul>
                    <!-- BEGIN: gift -->
                    <div class="alert alert-info">
                        <div class="pull-left">
                            <em class="fa fa-gift fa-3x">&nbsp;</em>
                        </div>
                        <div class="pull-left">
                            <h4>{gift_content}</h4>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <!-- END: gift -->
                    <!-- BEGIN: group -->
                    <div class="well">
                        <div class="filter_product">
                            <!-- BEGIN: items -->
                            <div class="row">
                                <!-- BEGIN: header -->
                                <div class="col-xs-8 col-sm-5" style="margin-top: 4px">{HEADER}</div>
                                <!-- END: header -->
                                <div class="col-xs-16 col-sm-19 itemsgroup" data-groupid="{GROUPID}" data-header="{HEADER}">
                                    <!-- BEGIN: loop -->
                                    <label class="label_group <!-- BEGIN: active -->active<!-- END: active -->"> <input type="radio" class="groupid" onclick="check_quantity( $(this) )" name="groupid[{GROUPID}]" value="{GROUP.groupid}"
                                    <!-- BEGIN: checked -->checked="checked" <!-- END: checked -->>{GROUP.title}
                                    </label>
                                    <!-- END: loop -->
                                </div>
                            </div>
                            <!-- END: items -->
                        </div>
                        <span id="group_error">&nbsp;</span>
                    </div>
                    <!-- END: group -->
					<hr/>
					<div class="row">
						<!-- BEGIN: order_number -->
						<div class="col-xs-24 col-sm-10">
							<div class="ssl-box">
								<input type="number" name="num" value="1" min="1" id="pnum" class="inline-block form-control">
							</div>
						</div>
						<!-- END: order_number -->
						<div class="col-xs-24 col-sm-14">
							<div class="btn-order-box">
								<!-- BEGIN: order -->
								<button class="btn btn-danger btn-order" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 0); return !1;">
									<em class="fa fa-shopping-cart fa-lg">&nbsp;</em> {LANG.add_cart}
								</button>
								<button class="btn btn-success btn-order" data-id="{proid}" onclick="cartorder_detail(this, {POPUP}, 1); return !1;">
									<em class="fa fa-paper-plane-o fa-lg">&nbsp;</em> {LANG.buy_now}
								</button>
								<!-- END: order -->
								<!-- BEGIN: product_empty -->
								<button class="btn btn-danger disabled">{LANG.product_empty}</button>
								<!-- END: product_empty -->
							</div>
						</div>
					</div>
                    <div class="clearfix"></div>
                    <!-- BEGIN: typepeice -->
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th class="text-right">{LANG.detail_pro_number}</th>
                                <th class="text-left">{LANG.cart_price} ({money_unit})</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: items -->
                            <tr>
                                <td class="text-right">{ITEMS.number_from} -> {ITEMS.number_to}</td>
                                <td class="text-left">{ITEMS.price}</td>
                            </tr>
                            <!-- END: items -->
                        </tbody>
                    </table>
                    <!-- END: typepeice -->
                    
                </div>
            </div>
        </div>
    </div>
    <!-- BEGIN: product_detail -->
    <!-- BEGIN: tabs -->
    <div class="product-tab e-tabs">
        <ul class="tabs tabs-title clearfix">
            <!-- BEGIN: tabs_title -->
            <li class="tab-link <!-- BEGIN: active -->current<!-- END: active -->" data-tab="tab-{TABS_ID}">
				<h3><span>{TABS_TITLE}</span></h3>
            </li>
            <!-- END: tabs_title -->
			<li class="tab-link" data-tab="tab-12456789">
				<h3><span>Hướng dẫn mua hàng</span></h3>
            </li>
        </ul>
		<!-- BEGIN: tabs_content -->
        <div id="tab-{TABS_ID}" class="tab-content <!-- BEGIN: active -->current<!-- END: active -->">
			<div class="rte">
				<div class="product-well">
					<div class="ba-text-fpt">
						{TABS_CONTENT}
					</div>
					<div class="show-more">
						<a rel="nofollow" class="btn btn-default btn--view-more btn--view-more-{TABS_ID}">
							<span class="more-text">Xem đầy đủ</span>
							<span class="less-text">Thu gọn</span>
						</a>
					</div>
				</div>
			</div>
			<script>
			$(document).ready(function(e){
				$('.btn--view-more-{TABS_ID}').on('click', function(e){
					e.preventDefault();
					var $this = $(this);
					$this.parents('#tab-{TABS_ID}').find('.product-well').toggleClass('expanded');
					$(this).toggleClass('active');
					return false;
				});
			});
			</script>
        </div>
		<!-- END: tabs_content -->
		<div id="tab-12456789" class="tab-content">
			<div class="rte">
				<div class="product-well">
					<div class="ba-text-fpt">
						[CUSTOM_DETAIL]
					</div>
					<div class="show-more">
						<a class="btn btn-default btn--view-more btn--view-more-12456789">
							<span class="more-text">Xem đầy đủ</span>
							<span class="less-text">Thu gọn</span>
						</a>
					</div>
				</div>
			</div>
        </div>
    </div>
    <!-- END: tabs -->
    <!-- BEGIN: keywords -->
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="keywords">
                <em class="fa fa-tags">&nbsp;</em><strong>{LANG.keywords}: </strong>
                <!-- BEGIN: loop -->
                <a title="{KEYWORD}" href="{LINK_KEYWORDS}"><em>{KEYWORD}</em></a>{SLASH}
                <!-- END: loop -->
            </div>
        </div>
    </div>
    <!-- END: keywords -->
    <!-- BEGIN: other -->
    <div class="section_base">
		<div class="border_bottom_title clearfix"></div>
        <div class="title_top_menu"><h3>{LANG.detail_others}</h3></div>
        <div class="clearfix">{OTHER}</div>
    </div>
    <!-- END: other -->
    <!-- BEGIN: other_view -->
    <div class="section_base">
		<div class="border_bottom_title clearfix"></div>
        <div class="title_top_menu"><h3>{LANG.detail_others_view}</h3></div>
        <div class="clearfix">{OTHER_VIEW}</div>
    </div>
    <!-- END: other_view -->
    <!-- END: product_detail -->
</div>
<div class="modal fade" id="idmodals" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                &nbsp;
            </div>
            <div class="modal-body">
                <p class="text-center">
                    <em class="fa fa-spinner fa-spin fa-3x">&nbsp;</em>
                </p>
            </div>
        </div>
    </div>
</div>
<!-- BEGIN: allowed_print_js -->
<script type="text/javascript" data-show="after">
	$(function() {
		$('#click_print').click(function(event) {
			var href = $(this).attr("href");
			event.preventDefault();
			nv_open_browse(href, '', 640, 500, 'resizable=no,scrollbars=yes,toolbar=no,location=no,status=no');
			return false;
		});
	});
</script>
<!-- END: allowed_print_js -->
<!-- BEGIN: imagemodal -->
<script type="text/javascript" data-show="after">
	$('.open_modal').click(function(e){
		e.preventDefault();
 		$('#idmodals .modal-body').html( '<img src="' + $(this).data('src') + '" alt="" class="img-responsive" />' );
 		$('#idmodals').modal('show');
	});
</script>
<!-- END: imagemodal -->
<!-- BEGIN: order_number_limit -->
<script type="text/javascript" data-show="after">
	$('#pnum').attr( 'max', '{PRODUCT_NUMBER}' );
	$('#pnum').change(function(){
		if( intval($(this).val()) > intval($(this).attr('max')) ){
			alert('{LANG.detail_error_number} ' + $(this).attr('max') );
			$(this).val( $(this).attr('max') );
		}
	});
</script>
<!-- END: order_number_limit -->
<script type="text/javascript">
	var detail_error_group = '{LANG.detail_error_group}';
	function check_quantity( _this ){
		$('input[name="'+_this.attr('name')+'"]').parent().css('border-color', '#ccc');
		if( _this.is(':checked') ) {
		    _this.parent().css('border-color', 'blue');
		}
		$('#group_error').css( 'display', 'none' );
		<!-- BEGIN: check_price -->
		check_price( '{proid}', '{pro_unit}' );
		<!-- END: check_price -->
        resize_popup();
	}
</script>
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/lightSlider/js/lightslider.min.js"></script>
<script src="{NV_BASE_SITEURL}themes/{TEMPLATE}/js/bootstrap-number-input.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#imageGallery').lightSlider({
        gallery:true,
        item:1,
        loop:true,
        thumbItem:4,
        slideMargin:0,
        enableDrag: false,
        currentPagerPosition:'left',
        onSliderLoad: function(el) {
            //el.lightGallery({
            //    selector: '#imageGallery .lslide'
            //});
        }
    });
  });
</script>
<!-- BEGIN: popup -->
<script type="text/javascript">
$(window).on('load', function() {
    resize_popup();
});
</script>
<!-- END: popup -->
<script>
$(document).ready(function(e){
	$('.btn--view-more-12456789').on('click', function(e){
		e.preventDefault();
		var $this = $(this);
		$this.parents('#tab-12456789').find('.product-well').toggleClass('expanded');
		$(this).toggleClass('active');
		return false;
	});
});
</script>
<script type="text/javascript">
$(window).on('load', function() {
    $('#pnum').bootstrapNumber();
});
</script>
<!-- END: main -->