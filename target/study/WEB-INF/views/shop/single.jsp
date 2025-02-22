<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<%@ include file="/WEB-INF/views/include/head2.jsp"  %>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Moschino | Minimalist Free HTML Portfolio by WowThemes.net</title>

<link rel='stylesheet' href='/resources/css/woocommerce-layout.css' type='text/css' media='all'/>
<link rel='stylesheet' href='/resources/css/woocommerce-smallscreen.css' type='text/css' media='only screen and (max-width: 768px)'/>
<link rel='stylesheet' href='/resources/css/woocommerce.css' type='text/css' media='all'/>
<link rel='stylesheet' href='/resources/css/font-awesome.min.css' type='text/css' media='all'/>
<link rel='stylesheet' href='/resources/css/style.css' type='text/css' media='all'/>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Oswald:400,500,700%7CRoboto:400,500,700%7CHerr+Von+Muellerhoff:400,500,700%7CQuattrocento+Sans:400,500,700' type='text/css' media='all'/>
<link rel='stylesheet' href='/resources/css/easy-responsive-shortcodes.css' type='text/css' media='all'/>

<style>

</style>

<script>
$(document).ready(function(){

});

function fn_tag(category){
	document.itemForm.itemCate.value = category;
	document.itemForm.action = "/shop/shop";
	document.itemForm.submit();
}

function fn_single(itemSeq) {
	document.itemForm.itemSeq.value = itemSeq;
	document.itemForm.action = "/shop/single";
	document.itemForm.submit();
}

</script>


</head>
<body class="single single-product woocommerce woocommerce-page">

<form id="itemForm" name="itemForm" method="post" action ="/shop/single">
	<input type="hidden" id="itemSeq" name="itemSeq" value="1" />
	<input type="hidden" id="itemCate" name="itemCate" value="${item.itemCate}"/>
</form>

<div id="page">
	<div class="container">
		<header id="masthead" class="site-header">
		<div class="site-branding">
			<h1 class="site-title"><a href="index.html" rel="home">Moschino</a></h1>
			<h2 class="site-description">Minimalist Portfolio HTML Template</h2>
		</div>
		<nav id="site-navigation" class="main-navigation">
		<button class="menu-toggle">Menu</button>
		<a class="skip-link screen-reader-text" href="#content">Skip to content</a>
		<div class="menu-menu-1-container">
			<ul id="menu-menu-1" class="menu">
				<li><a href="index.html">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="shop.html">Shop</a></li>
				<li><a href="blog.html">Blog</a></li>
				<li><a href="elements.html">Elements</a></li>
				<li><a href="#">Pages</a>
				<ul class="sub-menu">
					<li><a href="portfolio-item.html">Portfolio Item</a></li>
					<li><a href="blog-single.html">Blog Article</a></li>
					<li><a href="shop-single.html">Shop Item</a></li>
					<li><a href="portfolio-category.html">Portfolio Category</a></li>
				</ul>
				</li>
				<li><a href="contact.html">Contact</a></li>
			</ul>
		</div>
		</nav>
		</header>
		
		<!-- #masthead -->
		<div id="content" class="site-content">
			<div id="primary" class="content-area column full">
				<main id="main" class="site-main" role="main">
				<div id="container">
					<div id="content" role="main">
						<nav class="woocommerce-breadcrumb" itemprop="breadcrumb"><a href="/">Home</a> / <a href="/shop/shop">Clothing</a> / <a href="#" onclick="fn_tag('${itemData.itemCate}')">${itemData.itemCate}</a></nav>
						<div itemscope itemtype="http://schema.org/Product" class="product">

	<c:forEach begin="1" end="1" varStatus="loop"> 
							<div class="images">
								<a itemprop="image" class="woocommerce-main-image zoom" title="" data-rel="prettyPhoto">								
								<img src="/resources/upload/${itemData.fileName}" class="slide"></img>
								</a>
							</div>
 	</c:forEach> 

							<div class="summary entry-summary">
								<h1 itemprop="name" class="product_title entry-title">${itemData.itemName}</h1>
								<div class="woocommerce-product-rating" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i>
									<a href="#reviews" class="woocommerce-review-link" rel="nofollow">(<span itemprop="reviewCount" class="count">2</span> customer reviews)</a>
								</div>
								<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
									<p class="price">
										<span class="amount">${itemData.itemPrice}원</span>
									</p>
									<meta itemprop="price" content="35"/>
									<meta itemprop="priceCurrency" content="USD"/>
									<link itemprop="availability" href="http://schema.org/InStock"/>
								</div>
								<div itemprop="description">
									<p>
										${itemData.itemIntro}
									</p>
								</div>
								<form class="cart" method="post" enctype='multipart/form-data'>
									<div class="quantity">
										<input type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4"/>
									</div>									
									<button type="submit" class="single_add_to_cart_button button alt">Add to cart</button>
								</form>
								<div class="product_meta">
									<span class="posted_in">Categories: 
									<a href="#" onclick="fn_tag('')" rel="tag">all</a>
									<a href="#" onclick="fn_tag('${itemData.itemCate}')" rel="tag">${itemData.itemCate}</a>, 
									</span>
								</div>
							</div>
							<!-- .summary -->
							<div class="woocommerce-tabs wc-tabs-wrapper">
									<div class="panel entry-content wc-tab" id="tab-description">
										<button>문의하기</button>
									</div>
									<div class="panel entry-content wc-tab" id="tab-description">
										<h2>Product Description</h2>
										<p>
											${itemData.itemIntro}
										</p>
									</div>
<!-- 								<div class="panel entry-content wc-tab" id="tab-reviews"> -->
<!-- 									<div id="reviews"> -->
<!-- 										<div id="comments"> -->
<!-- 											<h2>2 Reviews for Beige Jacket</h2> -->
<!-- 											<ol class="commentlist"> -->
<!-- 												<li itemprop="review" itemscope itemtype="http://schema.org/Review" class="comment"> -->
<!-- 												<div id="comment-3" class="comment_container"> -->
<!-- 													<img alt='' src='http://0.gravatar.com/avatar/c7cab278a651f438795c2a9ebf02b5ae?s=60&#038;d=mm&#038;r=g' srcset='http://0.gravatar.com/avatar/c7cab278a651f438795c2a9ebf02b5ae?s=120&amp;d=mm&amp;r=g 2x' class='avatar avatar-60 photo' height='60' width='60'/> -->
<!-- 													<div class="comment-text">	 -->
<!-- 														<p class="meta"> -->
<!-- 															<strong itemprop="author">Steve</strong> &ndash; <time itemprop="datePublished" datetime="2013-06-07T15:54:25+00:00">June 7, 2013</time>: -->
<!-- 														</p> -->
<!-- 														<div itemprop="description" class="description"> -->
<!-- 															<p> -->
<!-- 																I like the logo but not the color. -->
<!-- 															</p> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 												</li> -->
<!-- 												#comment-## -->
<!-- 												<li itemprop="review" itemscope itemtype="http://schema.org/Review" class="comment"> -->
<!-- 												<div id="comment-4" class="comment_container"> -->
<!-- 													<img alt='' src='http://2.gravatar.com/avatar/59c82b1d2c60537f900fb191b3cb611b?s=60&#038;d=mm&#038;r=g' srcset='http://2.gravatar.com/avatar/59c82b1d2c60537f900fb191b3cb611b?s=120&amp;d=mm&amp;r=g 2x' class='avatar avatar-60 photo' height='60' width='60'/> -->
<!-- 													<div class="comment-text">													 -->
<!-- 														<p class="meta"> -->
<!-- 															<strong itemprop="author">Maria</strong> &ndash; <time itemprop="datePublished" datetime="2013-06-07T15:54:25+00:00">June 7, 2013</time>: -->
<!-- 														</p> -->
<!-- 														<div itemprop="description" class="description"> -->
<!-- 															<p> -->
<!-- 																Three letters, one word: WOO! -->
<!-- 															</p> -->
<!-- 														</div> -->
<!-- 													</div> -->
<!-- 												</div> -->
<!-- 												</li> -->
<!-- 												#comment-## -->
<!-- 											</ol> -->
<!-- 										</div> -->
<!-- 										<div id="review_form_wrapper"> -->
<!-- 											<div id="review_form"> -->
<!-- 												<div id="respond" class="comment-respond"> -->
<!-- 													<h3 style="margin-bottom:10px;" id="reply-title" class="comment-reply-title">Add a review <small><a rel="nofollow" id="cancel-comment-reply-link" href="/demo-moschino/product/woo-logo-2/#respond" style="display:none;">Cancel reply</a></small></h3> -->
<!-- 													<form action="#" method="post" id="commentform" class="comment-form" novalidate> -->
<!-- 														<p class="comment-form-rating"> -->
<!-- 															<label for="rating">Your Rating</label> -->
<!-- 															<select name="rating" id="rating"> -->
<!-- 																<option value="">Rate&hellip;</option> -->
<!-- 																<option value="5">Perfect</option> -->
<!-- 																<option value="4">Good</option> -->
<!-- 																<option value="3">Average</option> -->
<!-- 																<option value="2">Not that bad</option> -->
<!-- 																<option value="1">Very Poor</option> -->
<!-- 															</select> -->
<!-- 														</p> -->
<!-- 														<p class="comment-form-comment"> -->
<!-- 															<label for="comment">Your Review</label><textarea id="comment" name="comment" cols="45" rows="8" aria-required="true"></textarea> -->
<!-- 														</p> -->
<!-- 														<p class="comment-form-author"> -->
<!-- 															<label for="author">Name <span class="required">*</span></label><input id="author" name="author" type="text" value="" size="30" aria-required="true"/> -->
<!-- 														</p> -->
<!-- 														<p class="comment-form-email"> -->
<!-- 															<label for="email">Email <span class="required">*</span></label><input id="email" name="email" type="text" value="" size="30" aria-required="true"/> -->
<!-- 														</p> -->
<!-- 														<p class="form-submit"> -->
<!-- 															<input name="submit" type="submit" id="submit" class="submit" value="Submit"/><input type='hidden' name='comment_post_ID' value='60' id='comment_post_ID'/>															 -->
<!-- 														</p> -->
<!-- 													</form> -->
<!-- 												</div> -->
<!-- 												#respond -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 										<div class="clear"> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
							</div>
							
							
							<div class="related products">
								<h2>Related Products</h2>
								<ul class="products">
		<c:forEach var="item" items="${itemRecList}" varStatus="status">
			<c:if test="${status.index%4 == 0}">
									<li class="first product">
										<a onclick="fn_single('${item.itemSeq}')" style="cursor: pointer;"> 
											<img src="/resources/upload/${item.fileName}" alt="">
											<h3>${item.itemName}</h3> 
											<span class="price"><span class="amount">${item.itemPrice}원</span></span>
										</a>
										<a href="#" class="button">Add to cart</a>
									</li>
			</c:if>
			<c:if test="${status.index%4 == 1}">
									<li class="product">
										<a onclick="fn_single('${item.itemSeq}')" style="cursor: pointer;"> 
											<img src="/resources/upload/${item.fileName}" alt="">
											<h3>${item.itemName}</h3> 
											<span class="price"><span class="amount">${item.itemPrice}원</span></span>
										</a>
										<a href="#" class="button">Add to cart</a>
									</li>
			</c:if>
			<c:if test="${status.index%4 == 2}">
									<li class="product">
										<a onclick="fn_single('${item.itemSeq}')" style="cursor: pointer;"> 
											<img src="/resources/upload/${item.fileName}" alt="">
											<h3>${item.itemName}</h3> 
											<span class="price"><span class="amount">${item.itemPrice}원</span></span>
										</a>
										<a href="#" class="button">Add to cart</a>
									</li>
			</c:if>
			<c:if test="${status.index%4 == 3}">
									<li class="last product">
										<a onclick="fn_single('${item.itemSeq}')" style="cursor: pointer;"> 
											<img src="/resources/upload/${item.fileName}" alt="">
											<h3>${item.itemName}</h3> 
											<span class="price"><span class="amount">${item.itemPrice}원</span></span>
										</a>
										<a href="#" class="button">Add to cart</a>
									</li>
			</c:if>
		</c:forEach>
								</ul>
							</div>
							
							
						</div>
					</div>
				</div>
				</main>
				<!-- #main -->
			</div>
			<!-- #primary -->
		</div>
		<!-- #content -->
	</div>
	<!-- .container -->
	<footer id="colophon" class="site-footer">
	<div class="container">
		<div class="site-info">
			<h1 style="font-family: 'Herr Von Muellerhoff';color: #ccc;font-weight:300;text-align: center;margin-bottom:0;margin-top:0;line-height:1.4;font-size: 46px;">Moschino</h1>
			Shared by <i class="fa fa-love"></i><a href="https://bootstrapthemes.co">BootstrapThemes</a>

		</div>
	</div>
	</footer>
	<a href="#top" class="smoothup" title="Back to top"><span class="genericon genericon-collapse"></span></a>
</div>
<!-- #page -->
<!-- <script src='js/jquery.js'></script> -->
<!-- <script src='js/plugins.js'></script> -->
<!-- <script src='js/scripts.js'></script> -->
<!-- <script src='js/masonry.pkgd.min.js'></script> -->
</body>
</html>