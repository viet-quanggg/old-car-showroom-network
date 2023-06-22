<%-- 
    Document   : pricingplan
    Created on : May 28, 2023, 11:20:22 AM
    Author     : _viet.quangg
--%>

<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>pricing plan page</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="/ocsn/index.do">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">pricing-plan</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-100">
    <div class="container">
        <div class="row price-slider slider-arrow">
            <c:forEach items="${plan}" var="plan">           
            <div class="col">
                <div class="price-card"><i class="price-icon material-icons">task_alt</i>
                    <h3 class="price-title">${plan.planName}</h3>
                    <p class="price-subtitle">Choose what most suitable for your need</p>
                    <ul class="price-list">
                        <li class="price-item"><span>Plan Period: ${plan.planTime} months</span></li>
                        <li class="price-item"><del>Third Parties Ads</del></li>
                        <li class="price-item"><del>Surcharge</del></li>
                        <li class="price-item"><span>Post Limit: ${plan.planLimit} Posts</span></li>
                        <li class="price-item"><span>Full Support From OCSN</span></li>
                    </ul>
                    <h4 class="price-amount">$${plan.planPrice}/-</h4>
                    <h5 class="price-mode">per advertise post</h5><a class="price-action" href="<c:url value="/login/register.do"/>">get
                        register</a>
                </div>
            </div>
            </c:forEach>            
<!--            <div class="col">
                <div class="price-card active"><i class="price-icon material-icons">task_alt</i>
                    <h3 class="price-title">business plan</h3>
                    <p class="price-subtitle">Perfect for growing ads</p>
                    <ul class="price-list">
                        <li class="price-item"><span>first pricing feature type</span></li>
                        <li class="price-item"><del>second pricing feature type</del></li>
                        <li class="price-item"><span>third pricing feature type</span></li>
                        <li class="price-item"><span>four pricing feature type</span></li>
                        <li class="price-item"><span>five pricing feature type</span></li>
                    </ul>
                    <h4 class="price-amount">$49/-</h4>
                    <h5 class="price-mode">per advertise post</h5><a class="price-action" href="<c:url value="/login/register.do"/>">get
                        register</a><small class="price-demand">most popular</small>
                </div>
            </div>
            <div class="col">
                <div class="price-card"><i class="price-icon material-icons">task_alt</i>
                    <h3 class="price-title">premium plan</h3>
                    <p class="price-subtitle">Perfect for quick sales</p>
                    <ul class="price-list">
                        <li class="price-item"><span>first pricing feature type</span></li>
                        <li class="price-item"><span>second pricing feature type</span></li>
                        <li class="price-item"><span>third pricing feature type</span></li>
                        <li class="price-item"><span>four pricing feature type</span></li>
                        <li class="price-item"><span>five pricing feature type</span></li>
                    </ul>
                    <h4 class="price-amount">$68/-</h4>
                    <h5 class="price-mode">per advertise post</h5><a class="price-action" href="<c:url value="/login/register.do"/>">get
                        register</a>
                </div>
            </div>-->
        </div>
    </div>
</section>
<section class="section-gap-75">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                <div class="section-center">
                    <h2>Why choose our service to sell or buy your favorite car</h2>
                </div>
            </div>
        </div>
        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-3 row-cols-xl-3">
            <div class="col">
                <div class="feature-card"><i class="material-icons">fact_check</i>
                    <h3>An extensive selection of cars</h3>
                    <p>Our website offers an extensive selection of cars to choose from, 
                        ranging from high-end luxury vehicles to budget-friendly options.</p>
                </div>
            </div>
            <div class="col">
                <div class="feature-card"><i class="material-icons">verified_user</i>
                    <h3>Secure payment system</h3>
                    <p>Our website features a secure payment system that 
                        ensures all transactions are safe and reliable.</p>
                </div>
            </div>
            <div class="col">
                <div class="feature-card"><i class="material-icons">report_problem</i>
                    <h3>User-friendly search tools</h3>
                    <p>Our website features user-friendly search tools 
                        that make it easy to find the exact type of vehicle
                        you're looking for based on make, model, year, and other key criteria.</p>
                </div>
            </div>
            <div class="col">
                <div class="feature-card"><i class="material-icons">auto_stories</i>
                    <h3>Competitive pricing</h3>
                    <p>We offer competitive pricing on all of our vehicles, 
                        ensuring that you get the best price possible on your purchase.</p>
                </div>
            </div>
            <div class="col">
                <div class="feature-card"><i class="material-icons">stars</i>
                    <h3>Helpful customer support team</h3>
                    <p>Our friendly and knowledgeable customer support team is available
                        to answer any questions you may have and help guide you 
                        through the buying or selling process.</p>
                </div>
            </div>
            <div class="col">
                <div class="feature-card"><i class="material-icons">rocket_launch</i>
                    <h3>Convenient platform</h3>
                    <p>Our website provides a convenient platform for buyers and sellers to connect, 
                        making it easy to buy or sell a car from the comfort of your own home.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-100 review-part">
    <div class="container">
        <div class="row review-slider slider-arrow">
            <div class="col">
                <div class="review-wrap">
                    <div class="review-wrap-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/review/01.jpg" alt="review"></div>
                    <div class="review-wrap-content">
                        <div class="review-wrap-meta">
                            <div class="review-wrap-video"><a href="#" class="material-icons">play_arrow</a><i
                                    class="material-icons">format_quote</i></div>
                            <div class="review-wrap-item">
                                <h4>mercedes-benz wagon</h4>
                                <h5>see the full review</h5>
                            </div>
                        </div>
                        <p class="review-wrap-quote">" Lorem ipsum dolor sit amet consectetur adipisicing elit
                            Expedita ut porro beatae itaque accusantium nisi Asperiores reprehenderit "</p>
                        <h3 class="review-wrap-user">miron mahmud</h3>
                        <h5 class="review-wrap-type">owner review</h5>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="review-wrap">
                    <div class="review-wrap-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/review/02.jpg" alt="review"></div>
                    <div class="review-wrap-content">
                        <div class="review-wrap-meta">
                            <div class="review-wrap-video"><a href="#" class="material-icons">play_arrow</a><i
                                    class="material-icons">format_quote</i></div>
                            <div class="review-wrap-item">
                                <h4>lamborghini huracan</h4>
                                <h5>see the full review</h5>
                            </div>
                        </div>
                        <p class="review-wrap-quote">" Lorem ipsum dolor sit amet consectetur adipisicing elit
                            Expedita ut porro beatae itaque accusantium nisi Asperiores reprehenderit "</p>
                        <h3 class="review-wrap-user">tahmina bonny</h3>
                        <h5 class="review-wrap-type">owner review</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--    <section class="section-gap-100 price-faq">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-12 col-md-9 col-lg-7 col-xl-6">
                    <div class="section-center">
                        <h2>Find out your question by asking some frequent questions</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <ul class="accordion-list">
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#1 Lorem ipsum dolor sit amet, consectetur adipisicing elit?</h5><i
                                    class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea, aut quia perspiciatis,
                                    numquam assumenda possimus delectus modi doloribus maiores voluptatum enim voluptas
                                    accusamus alias nulla nostrum, ad quidem tempore. Assumenda, doloribus dolore.
                                    Blanditiis odit ipsa repellat officia vel saepe dolorem perferendis nam obcaecati
                                    corrupti pariatur, corporis voluptatem distinctio repellendus labore!</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#2 Lorem ipsum dolor amet consectetur adipisicing?</h5><i
                                    class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam odit
                                    doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#3 Lorem ipsum dolor sit amet consectetur adipisicing elit Quia ipsa?</h5><i
                                    class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam odit
                                    doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#4 Lorem ipsum, dolor sit amet consectetur adipisicing elit. Magni dignissimos vel
                                    voluptates natus?</h5><i class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam odit
                                    doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#5 Lorem ipsum dolor sit amet consectetur adipisicing temporibus corporis facilis
                                    quas?</h5><i class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam odit
                                    doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>-->
<section class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="intro-card" style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/bg/intro.jpg) no-repeat center / cover;">
                    <div class="intro-overlay">
                        <div class="intro-content">
                            <h3>Want to sell your car quickly?</h3>
                            <p>Check us out today and experience the future of car buying and selling for yourself!</p>
                        </div><a href="<c:url value="/order/createad.do"/>" class="btn btn-inline"><i
                                class="material-icons">storefront</i><span>sell vehicless</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>