<%-- 
    Document   : carsingle
    Created on : May 28, 2023, 11:06:12 AM
    Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<section class="section-gap-100">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
        <div class="single-banner">
            <div class="container">
                <h2>Inventory Single Page</h2>
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<c:url value="/ocsn/index.do"/>">Home</a></li>
                    <li class="breadcrumb-item"><a href="<c:url value="/views/cars/carlist.do"/>">inventory list</a></li>
                    <li class="breadcrumb-item active" aria-current="page">inventory single</li>
                </ol>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-100">
    <div class="container">
        <div class="row">
            <div class="col-xl-7">
                <div class="product-single-meta-group"><span class="product-single-meta-price">$18,759/-
                        <small>negotiable</small></span>
                    <h2 class="product-single-meta-title">Mercedez benz super mclaren</h2>
                    <ul class="product-single-meta-list">
                        <li><i class="material-icons">account_circle</i><a href="profile.html">by autoland</a></li>
                        <li><i class="material-icons">watch_later</i><span>45 minute ago!</span></li>
                        <li><i class="material-icons">stars</i><button type="button" data-bs-toggle="modal"
                                                                       data-bs-target="#modalReview">(24) reviews</button></li>
                        <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-xl-5">
                <ul class="product-single-data">
                    <li class="view"><i class="material-icons">visibility</i>
                        <h3>4334</h3>
                        <p>total view</p>
                    </li>
                    <li class="click"><i class="material-icons">mouse</i>
                        <h3>3223</h3>
                        <p>total click</p>
                    </li>
                    <li class="rating"><i class="material-icons">waving_hand</i>
                        <h3>2112</h3>
                        <p>total engage</p>
                    </li>
                </ul>
            </div>
            <div class="col-xl-12">
                <div class="product-single-action"><button type="button" class="compare" title="Compare"><i
                            class="material-icons">compare</i><span>add to compare</span></button><button
                        type="button" class="favorite" title="Favorite"><i
                            class="material-icons">favorite</i><span>add to favorite</span></button><button
                        type="button" data-bs-toggle="modal" data-bs-target="#modalQuery" title="Query"><i
                            class="material-icons">help</i><span>have any query</span></button><button type="button"
                                                                                               data-bs-toggle="modal" data-bs-target="#modalOffer" title="Offer"><i
                            class="material-icons">local_offer</i><span>make an offer</span></button><button
                        type="button" data-bs-toggle="modal" data-bs-target="#modalSchedule" title="Schedule"><i
                            class="material-icons">drive_eta</i><span>test drive schedule</span></button><button
                        type="button" data-bs-toggle="modal" data-bs-target="#modalReport" title="Report"><i
                            class="material-icons">report</i><span>report this vehicle</span></button></div>
            </div>
            <div class="col-xl-12">
                <div class="product-single-slider slider-arrow slider-dots">
                    <div><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/21.jpg" alt="product"></div>
                    <div><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/22.jpg" alt="product"></div>
                    <div><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/23.jpg" alt="product"></div>
                    <div><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/24.jpg" alt="product"></div>
                    <div><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/25.jpg" alt="product"></div>
                </div>
            </div>
            <div class="col-xl-12">
                <div class="product-single-scrollspy-btns"><a href="#overview" class="nav-link" title="Overview"><i
                            class="material-icons">visibility</i><span>overview</span></a><a href="#video"
                                                                                     class="nav-link" title="Video"><i
                            class="material-icons">smart_display</i><span>video</span></a><a href="#features"
                                                                                     class="nav-link" title="Features"><i
                            class="material-icons">fact_check</i><span>features</span></a><a href="#faqanswer"
                                                                                     class="nav-link" title="Faq answer"><i class="material-icons">help</i><span>faq
                            answer</span></a><a href="#comments" class="nav-link" title="Comments"><i
                            class="material-icons">forum</i><span>comments</span></a><button type="button"
                                                                                     data-bs-toggle="modal" data-bs-target="#modalReview"><i
                            class="material-icons">star</i><span>reviews</span></button><button type="button"
                                                                                        data-bs-toggle="modal" data-bs-target="#modalContact"><i
                            class="material-icons">perm_phone_msg</i><span>contacts</span></button></div>
            </div>
            <div class="col-xl-8">
                <div class="common-card" id="overview">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vehicle overview</h4>
                    </div>
                    <div class="common-card-body">
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit Praesentium numquam culpa hic
                            repellat quasi architecto eius voluptatibus voluptate beatae libero eum cupiditate
                            adipisci vel Quaerat quisquam adipisci quam libero quo alias incidunt expedita atque
                            esse iusto facilis nostrum Dolor est dolore tempore officiis aliquid ad recusandae
                            cumque eligendi sapiente eius architecto ratione nemo nostrum accusamus Quos eligendi
                            quaerat tempore aut sed minus ut provident ullam deleniti cumque modi nihil placeat
                            ipsam saepe distinctio <span class="d-block mt-4">Lorem ipsum dolor sit amet consectetur
                                adipisicing elit. Quos provident voluptas nam inventore reprehenderit sequi dolor ut
                                quis repellendus nisi cum neque eum sunt aspernatur fuga expedita, tempora ipsum
                                rerum, delectus explicabo nihil dignissimos nesciunt nemo. Modi, reiciendis
                                temporibus ipsum sed, nesciunt corrupti debitis consequuntur amet cumque voluptas
                                possimus cupiditate.</span></p>
                    </div>
                </div>
                <div class="common-card" id="video">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vehicle video</h4>
                    </div>
                    <div class="common-card-body"><iframe class="product-single-video"
                                                          src="https://www.youtube.com/embed/1SaqSIvon_U"></iframe></div>
                </div>
                <div class="common-card" id="features">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vehicle features</h4>
                    </div>
                    <div class="product-single-feature-group">
                        <ul class="product-single-feature-list">
                            <li><span>condition:</span><span>used</span></li>
                            <li><span>mileage:</span><span>17.20 kmpl</span></li>
                            <li><span>Engine:</span><span>3.5m 76v gohp</span></li>
                            <li><span>body type:</span><span>wagon</span></li>
                            <li><span>brand name:</span><span>mercedez</span></li>
                            <li><span>interior colour:</span><span>gray</span></li>
                            <li><span>exterior colour:</span><span>brown</span></li>
                            <li><span>fuel type:</span><span>petrol</span></li>
                            <li><span>Steering type:</span><span>Electric</span></li>
                            <li><span>Turning Radius:</span><span>5.75meters</span></li>
                            <li><span>Transmission:</span><span>Automatic</span></li>
                        </ul>
                        <ul class="product-single-feature-list">
                            <li><span>Power Steering:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Vanity Mirror:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Trunk Light:</span><i class="material-icons remove">remove_circle</i></li>
                            <li><span>Knee Airbags:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Rain Sensing:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Manually Adjustable:</span><i class="material-icons remove">remove_circle</i>
                            </li>
                            <li><span>Introduction Date:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Warranty Time:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Cylinders:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Trunk Light:</span><i class="material-icons check">check_circle</i></li>
                            <li><span>Speed Sensing Auto Lock:</span><i
                                    class="material-icons remove">remove_circle</i></li>
                        </ul>
                    </div>
                </div>
                <div class="common-card" id="faqanswer">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vehicle faq answer</h4>
                    </div>
                    <ul class="accordion-list">
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#1 Lorem ipsum dolor sit amet, consectetur adipisicing elit?</h5><i
                                    class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ea, aut quia
                                    perspiciatis, numquam assumenda possimus delectus modi doloribus maiores
                                    voluptatum enim voluptas accusamus alias nulla nostrum, ad quidem tempore.
                                    Assumenda, doloribus dolore. Blanditiis odit ipsa repellat officia vel saepe
                                    dolorem perferendis nam obcaecati corrupti pariatur, corporis voluptatem
                                    distinctio repellendus labore!</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#2 Lorem ipsum dolor amet consectetur adipisicing?</h5><i
                                    class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam
                                    odit doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#3 Lorem ipsum dolor sit amet consectetur adipisicing elit Quia ipsa?</h5><i
                                    class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam
                                    odit doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#4 Lorem ipsum, dolor sit amet consectetur adipisicing elit magni dignissimos?
                                </h5><i class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam
                                    odit doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                        <li class="accordion-item">
                            <div class="accordion-que">
                                <h5>#5 Lorem ipsum dolor sit amet consectetur adipisicing temporibus?</h5><i
                                    class="material-icons">expand_more</i>
                            </div>
                            <div class="accordion-ans">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur fuga quia
                                    asperiores aliquam cumque? Deserunt commodi saepe voluptates rem atque quisquam
                                    odit doloribus Voluptas nesciunt doloremque fuga non debitis asperiores.</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="common-card" id="comments">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vehicle comments (03)</h4>
                    </div>
                    <ul class="comment-list">
                        <li class="comment-item">
                            <div class="comment-group">
                                <div class="comment-head">
                                    <div class="comment-user"><a class="comment-media" href="#"><img
                                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="avatar"></a>
                                        <div class="comment-meta">
                                            <h5>mahmudul hasan</h5><span>02 february 2022</span>
                                        </div>
                                    </div>
                                    <div class="comment-widget"><a class="comment-reply" href="#commentForm"><i
                                                class="material-icons">reply</i><span>reply</span></a>
                                        <div class="comment-action"><button type="button"
                                                                            class="comment-action-btn"><i
                                                    class="material-icons">more_vert</i></button>
                                            <div class="comment-action-list"><a href="#"><i
                                                        class="material-icons">edit</i><span>edit</span></a><a
                                                    href="#"><i
                                                        class="material-icons">delete</i><span>delete</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="comment-body">
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo nostrum
                                        dolore fugiat ducimus labore debitis unde autem recusandae? Eius harum
                                        tempora quis minima, adipisci natus quod magni omnis quas.</p>
                                </div>
                            </div>
                            <ul>
                                <li>
                                    <div class="comment-group">
                                        <div class="comment-head">
                                            <div class="comment-user"><a class="comment-media" href="#"><img
                                                        src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/02.jpg" alt="avatar"></a>
                                                <div class="comment-meta">
                                                    <h5>tahmina bonny</h5><span><b>vendor</b>02 february 2022</span>
                                                </div>
                                            </div>
                                            <div class="comment-widget"><a class="comment-reply"
                                                                           href="#commentForm"><i
                                                        class="material-icons">reply</i><span>reply</span></a>
                                                <div class="comment-action"><button type="button"
                                                                                    class="comment-action-btn"><i
                                                            class="material-icons">more_vert</i></button>
                                                    <div class="comment-action-list"><a href="#"><i
                                                                class="material-icons">edit</i><span>edit</span></a><a
                                                            href="#"><i
                                                                class="material-icons">delete</i><span>delete</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment-body">
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo
                                                nostrum dolore fugiat ducimus labore debitis unde autem recusandae?
                                                Eius harum tempora quis minima, adipisci natus quod magni omnis
                                                quas.</p>
                                        </div>
                                    </div>
                                    <ul>
                                        <li>
                                            <div class="comment-group">
                                                <div class="comment-head">
                                                    <div class="comment-user"><a class="comment-media" href="#"><img
                                                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="avatar"></a>
                                                        <div class="comment-meta">
                                                            <h5>mahmudul hasan</h5><span>02 february 2022</span>
                                                        </div>
                                                    </div>
                                                    <div class="comment-widget"><a class="comment-reply"
                                                                                   href="#commentForm"><i
                                                                class="material-icons">reply</i><span>reply</span></a>
                                                        <div class="comment-action"><button type="button"
                                                                                            class="comment-action-btn"><i
                                                                    class="material-icons">more_vert</i></button>
                                                            <div class="comment-action-list"><a href="#"><i
                                                                        class="material-icons">edit</i><span>edit</span></a><a
                                                                    href="#"><i
                                                                        class="material-icons">delete</i><span>delete</span></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-body">
                                                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
                                                        Eius iure sed, delectus mollitia minima eum sit harum amet.
                                                        Id, illo. Error cumque voluptates at eum.</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <div class="comment-group">
                                        <div class="comment-head">
                                            <div class="comment-user"><a class="comment-media" href="#"><img
                                                        src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/03.jpg" alt="avatar"></a>
                                                <div class="comment-meta">
                                                    <h5>shahin chowdhury</h5><span>02 february 2022</span>
                                                </div>
                                            </div>
                                            <div class="comment-widget"><a class="comment-reply"
                                                                           href="#commentForm"><i
                                                        class="material-icons">reply</i><span>reply</span></a>
                                                <div class="comment-action"><button type="button"
                                                                                    class="comment-action-btn"><i
                                                            class="material-icons">more_vert</i></button>
                                                    <div class="comment-action-list"><a href="#"><i
                                                                class="material-icons">edit</i><span>edit</span></a><a
                                                            href="#"><i
                                                                class="material-icons">delete</i><span>delete</span></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment-body">
                                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo
                                                nostrum dolore fugiat ducimus labore debitis unde autem recusandae?
                                                Eius harum tempora quis minima, adipisci natus quod magni omnis
                                                quas.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="comment-item">
                            <div class="comment-head">
                                <div class="comment-user"><a class="comment-media" href="#"><img
                                            src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/04.jpg" alt="avatar"></a>
                                    <div class="comment-meta">
                                        <h5>khadija labonno</h5><span>02 february 2022</span>
                                    </div>
                                </div>
                                <div class="comment-widget"><a class="comment-reply" href="#commentForm"><i
                                            class="material-icons">reply</i><span>reply</span></a>
                                    <div class="comment-action"><button type="button" class="comment-action-btn"><i
                                                class="material-icons">more_vert</i></button>
                                        <div class="comment-action-list"><a href="#"><i
                                                    class="material-icons">edit</i><span>edit</span></a><a
                                                href="#"><i class="material-icons">delete</i><span>delete</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="comment-body">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo nostrum dolore
                                    fugiat ducimus labore debitis unde autem recusandae? Eius harum tempora quis
                                    minima, adipisci natus quod magni omnis quas.</p>
                            </div>
                        </li>
                        <li class="comment-item">
                            <div class="comment-head">
                                <div class="comment-user"><a class="comment-media" href="#"><img
                                            src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/05.jpg" alt="avatar"></a>
                                    <div class="comment-meta">
                                        <h5>burhan hawladar</h5><span>02 february 2022</span>
                                    </div>
                                </div>
                                <div class="comment-widget"><a class="comment-reply" href="#commentForm"><i
                                            class="material-icons">reply</i><span>reply</span></a>
                                    <div class="comment-action"><button type="button" class="comment-action-btn"><i
                                                class="material-icons">more_vert</i></button>
                                        <div class="comment-action-list"><a href="#"><i
                                                    class="material-icons">edit</i><span>edit</span></a><a
                                                href="#"><i class="material-icons">delete</i><span>delete</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="comment-body">
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo nostrum dolore
                                    fugiat ducimus labore debitis unde autem recusandae? Eius harum tempora quis
                                    minima, adipisci natus quod magni omnis quas.</p>
                            </div>
                        </li>
                    </ul>
                    <form class="form-container">
                        <h3 class="form-title">Write or reply your comment</h3>
                        <div class="row">
                            <div class="col-md-6 col-lg-6 col-xl-6">
                                <div class="form-group"><input class="form-control" type="text"
                                                               placeholder="Enter your name"></div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-6">
                                <div class="form-group"><input class="form-control" type="text"
                                                               placeholder="Enter your mail"></div>
                            </div>
                            <div class="col-lg-12 col-xl-12">
                                <div class="form-group"><textarea class="form-control"
                                                                  placeholder="Write your comment"></textarea></div>
                            </div>
                            <div class="col-lg-12 col-xl-12"><button class="form-btn" type="submit">drop your
                                    comment</button></div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-xl-4">
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">vendor information</h4>
                    </div>
                    <div class="common-card-body">
                        <div class="product-single-vendor"><a class="vendor-grid-cover" href="profile.html"><img
                                    src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/bg/cover.jpg" alt="cover"></a><a class="vendor-grid-avatar"
                                                                                                                                           href="profile.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="avatar"></a>
                            <ul class="vendor-grid-meta">
                                <li class="profile"><i class="material-icons">account_circle</i><a
                                        href="profile.html">person name</a></li>
                                <li class="location"><i class="material-icons">map</i><span>chashara,
                                        narayanganj</span></li>
                                <li class="rating"><i class="material-icons">star</i><span><b>4.9</b>/28
                                        Ratings</span></li>
                                <li class="store"><i class="material-icons">store</i><span>individual</span></li>
                            </ul>
                            <div class="vendor-grid-action"><a href="profile.html">visit profile</a><button
                                    type="button" data-bs-toggle="modal" data-bs-target="#modalMessage">send
                                    message</button></div>
                        </div>
                    </div>
                </div>
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">Finance calculator</h4>
                    </div>
                    <form>
                        <div class="row">
                            <div class="col-md-6 col-lg-6 col-xl-12">
                                <div class="form-group"><input type="text" class="form-control"
                                                               placeholder="Vehicle Cost"></div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-12">
                                <div class="form-group"><input type="text" class="form-control"
                                                               placeholder="Down Payment"></div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-12">
                                <div class="form-group"><input type="text" class="form-control"
                                                               placeholder="Annual Interest Rate"></div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-12">
                                <div class="form-group"><select class="form-select">
                                        <option selected>Payments Frequency</option>
                                        <option value="1">weekly</option>
                                        <option value="2">monthly</option>
                                        <option value="3">yearly</option>
                                    </select></div>
                            </div>
                            <div class="col-xl-12">
                                <div class="form-group"><button type="submit" class="form-btn">payment
                                        calculate</button></div>
                            </div>
                            <div class="col-xl-12">
                                <ul class="product-single-calculate-list">
                                    <li><span>payment number</span><span>$70</span></li>
                                    <li><span>payment amount</span><span>$95.34</span></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">top categories</h4>
                    </div>
                    <div class="product-single-category"><a href="inventory-list.html" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/minivan.png" alt="category"><span>minivan (24)</span></a><a
                            href="inventory-list.html" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/convertible.png" alt="category"><span>convertible
                                (24)</span></a><a href="inventory-list.html" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/coupe.png" alt="category"><span>coupe (24)</span></a><a
                            href="inventory-list.html" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/pickup.png" alt="category"><span>pickup (24)</span></a><a
                            href="inventory-list.html" class="category-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/sedan.png"
                                                                              alt="category"><span>sedan (24)</span></a><a href="inventory-list.html"
                                                                     class="category-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/sports.png"
                                                   alt="category"><span>sports (24)</span></a><a href="inventory-list.html"
                                                                      class="category-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/suv.png" alt="category"><span>suv/muv
                                (24)</span></a><a href="inventory-list.html" class="category-card"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/wagon.png" alt="category"><span>wagon (24)</span></a><a
                            href="inventory-list.html" class="category-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/jeep.png"
                                                                              alt="category"><span>jeep (24)</span></a><a href="inventory-list.html"
                                                                    class="category-card"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/category/Hatchback.html"
                                                   alt="category"><span>Hatchback (24)</span></a></div>
                </div>
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">top brands</h4>
                    </div>
                    <div class="product-single-brand"><a class="brand-card" href="inventory-list.html"><img
                                src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/01.png" alt="brand">
                            <h6>tesla</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/02.png"
                                                                                  alt="brand">
                            <h6>nissan</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/03.png"
                                                                                  alt="brand">
                            <h6>mercedes</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/04.png"
                                                                                  alt="brand">
                            <h6>toyota</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/05.png"
                                                                                  alt="brand">
                            <h6>audi</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/06.png"
                                                                                  alt="brand">
                            <h6>lamborghini</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/07.png"
                                                                                  alt="brand">
                            <h6>bugatti</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/08.png"
                                                                                  alt="brand">
                            <h6>ferrari</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/09.png"
                                                                                  alt="brand">
                            <h6>bmw</h6>
                            <p>(24) vehicles</p>
                        </a><a class="brand-card" href="inventory-list.html"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/brand/10.png"
                                                                                  alt="brand">
                            <h6>porsche</h6>
                            <p>(24) vehicles</p>
                        </a></div>
                </div>
                <div class="common-card">
                    <div class="common-card-header">
                        <h4 class="common-card-header-title">share this vehicle</h4>
                    </div>
                    <div class="common-card-body">
                        <ul class="product-single-social-list">
                            <li><a href="#" class="icofont-facebook facebook"></a></li>
                            <li><a href="#" class="icofont-twitter twitter"></a></li>
                            <li><a href="#" class="icofont-linkedin linkedin"></a></li>
                            <li><a href="#" class="icofont-instagram instagram"></a></li>
                            <li><a href="#" class="icofont-pinterest pinterest"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section-gap-75">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="section-head">
                    <div class="section-text">
                        <h2>related this vehicle</h2>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing</p>
                    </div><a href="#" class="btn btn-inline"><i
                            class="material-icons">travel_explore</i><span>browse all</span></a>
                </div>
            </div>
        </div>
        <div class="row related-slider slider-arrow">
            <div class="col">
                <div class="product-grid-card">
                    <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/01.jpg" alt="feature">
                        <div class="product-grid-badge"><span class="badge used">used</span></div>
                        <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                        </div>
                        <div class="product-grid-overlay">
                            <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                    href="profile.html">by autoland</a></div>
                            <div class="product-grid-rating"><i class="material-icons">star</i><a
                                    href="review.html">28 review</a></div>
                        </div>
                    </div>
                    <div class="product-grid-content">
                        <div class="product-grid-group">
                            <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
                            <div class="product-grid-action"><button type="button" title="Compare"
                                                                     class="compare material-icons">compare</button><button type="button"
                                                                     title="Favorite" class="favorite material-icons">favorite</button></div>
                        </div>
                        <div class="product-grid-meta">
                            <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                            <ul>
                                <li>delpara, narayanganj</li>
                                <li>23h ago!</li>
                            </ul>
                        </div>
                        <ul class="product-grid-extra">
                            <li><i class="material-icons">construction</i><span>manual</span></li>
                            <li><i class="material-icons">settings</i><span>2000 km</span></li>
                            <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                        </ul>
                        <div class="product-grid-btn"><a href="inventory-single.html"><i
                                    class="material-icons">visibility</i><span>details</span></a><a
                                href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="product-grid-card">
                    <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/02.jpg" alt="feature">
                        <div class="product-grid-badge"><span class="badge new">new</span></div>
                        <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                        </div>
                        <div class="product-grid-overlay">
                            <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                    href="profile.html">by autoland</a></div>
                            <div class="product-grid-rating"><i class="material-icons">star</i><a
                                    href="review.html">28 review</a></div>
                        </div>
                    </div>
                    <div class="product-grid-content">
                        <div class="product-grid-group">
                            <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
                            <div class="product-grid-action"><button type="button" title="Compare"
                                                                     class="compare material-icons">compare</button><button type="button"
                                                                     title="Favorite" class="favorite material-icons">favorite</button></div>
                        </div>
                        <div class="product-grid-meta">
                            <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                            <ul>
                                <li>delpara, narayanganj</li>
                                <li>23h ago!</li>
                            </ul>
                        </div>
                        <ul class="product-grid-extra">
                            <li><i class="material-icons">construction</i><span>manual</span></li>
                            <li><i class="material-icons">settings</i><span>2000 km</span></li>
                            <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                        </ul>
                        <div class="product-grid-btn"><a href="inventory-single.html"><i
                                    class="material-icons">visibility</i><span>details</span></a><a
                                href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="product-grid-card">
                    <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/03.jpg" alt="feature">
                        <div class="product-grid-badge"><span class="badge used">used</span></div>
                        <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                        </div>
                        <div class="product-grid-overlay">
                            <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                    href="profile.html">by autoland</a></div>
                            <div class="product-grid-rating"><i class="material-icons">star</i><a
                                    href="review.html">28 review</a></div>
                        </div>
                    </div>
                    <div class="product-grid-content">
                        <div class="product-grid-group">
                            <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
                            <div class="product-grid-action"><button type="button" title="Compare"
                                                                     class="compare material-icons">compare</button><button type="button"
                                                                     title="Favorite" class="favorite material-icons">favorite</button></div>
                        </div>
                        <div class="product-grid-meta">
                            <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                            <ul>
                                <li>delpara, narayanganj</li>
                                <li>23h ago!</li>
                            </ul>
                        </div>
                        <ul class="product-grid-extra">
                            <li><i class="material-icons">construction</i><span>manual</span></li>
                            <li><i class="material-icons">settings</i><span>2000 km</span></li>
                            <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                        </ul>
                        <div class="product-grid-btn"><a href="inventory-single.html"><i
                                    class="material-icons">visibility</i><span>details</span></a><a
                                href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="product-grid-card">
                    <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/04.jpg" alt="feature">
                        <div class="product-grid-badge"><span class="badge new">new</span></div>
                        <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                        </div>
                        <div class="product-grid-overlay">
                            <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                    href="profile.html">by autoland</a></div>
                            <div class="product-grid-rating"><i class="material-icons">star</i><a
                                    href="review.html">28 review</a></div>
                        </div>
                    </div>
                    <div class="product-grid-content">
                        <div class="product-grid-group">
                            <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
                            <div class="product-grid-action"><button type="button" title="Compare"
                                                                     class="compare material-icons">compare</button><button type="button"
                                                                     title="Favorite" class="favorite material-icons">favorite</button></div>
                        </div>
                        <div class="product-grid-meta">
                            <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                            <ul>
                                <li>delpara, narayanganj</li>
                                <li>23h ago!</li>
                            </ul>
                        </div>
                        <ul class="product-grid-extra">
                            <li><i class="material-icons">construction</i><span>manual</span></li>
                            <li><i class="material-icons">settings</i><span>2000 km</span></li>
                            <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                        </ul>
                        <div class="product-grid-btn"><a href="inventory-single.html"><i
                                    class="material-icons">visibility</i><span>details</span></a><a
                                href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="product-grid-card">
                    <div class="product-grid-image"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/product/05.jpg" alt="feature">
                        <div class="product-grid-badge"><span class="badge new">new</span></div>
                        <div class="product-grid-hints"><i class="material-icons">collections</i><span>4</span>
                        </div>
                        <div class="product-grid-overlay">
                            <div class="product-grid-vendor"><i class="material-icons">person</i><a
                                    href="profile.html">by autoland</a></div>
                            <div class="product-grid-rating"><i class="material-icons">star</i><a
                                    href="review.html">28 review</a></div>
                        </div>
                    </div>
                    <div class="product-grid-content">
                        <div class="product-grid-group">
                            <div class="product-grid-price"><span>$18,759/-</span><small>fixed</small></div>
                            <div class="product-grid-action"><button type="button" title="Compare"
                                                                     class="compare material-icons">compare</button><button type="button"
                                                                     title="Favorite" class="favorite material-icons">favorite</button></div>
                        </div>
                        <div class="product-grid-meta">
                            <h4><a href="inventory-single.html">Mercedez benz super mclaren</a></h4>
                            <ul>
                                <li>delpara, narayanganj</li>
                                <li>23h ago!</li>
                            </ul>
                        </div>
                        <ul class="product-grid-extra">
                            <li><i class="material-icons">construction</i><span>manual</span></li>
                            <li><i class="material-icons">settings</i><span>2000 km</span></li>
                            <li><i class="material-icons">local_gas_station</i><span>diesel</span></li>
                        </ul>
                        <div class="product-grid-btn"><a href="inventory-single.html"><i
                                    class="material-icons">visibility</i><span>details</span></a><a
                                href="https://youtu.be/VWrJkx6O0L8" class="venobox" data-autoplay="true"
                                data-vbtype="video"><i class="material-icons">videocam</i><span>video</span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="modal fade" id="modalContact">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Contact this vendor</h5><button type="button" class="material-icons"
                                                                        data-bs-dismiss="modal">close</button>
            </div>
            <div class="modal-contact">
                <ul>
                    <li><i class="material-icons">description</i><span>info@example.com<br>carrer@example.com</span>
                    </li>
                    <li><i class="material-icons">perm_phone_msg</i><span>+91 987-654-3210<br>+91
                            987-654-5466</span></li>
                    <li><i class="material-icons">map</i><span>1Hd- 50, 010 Avenue, <br>NY 90001 United
                            States</span></li>
                </ul><iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3654.3406974350205!2d90.48469931445422!3d23.663771197998262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b0d5983f048d%3A0x754f30c82bcad3cd!2sJalkuri%20Bus%20Stop!5e0!3m2!1sen!2sbd!4v1605354966349!5m2!1sen!2sbd"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalReview">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Review (02)</h5><button type="button" class="material-icons"
                                                                data-bs-dismiss="modal">close</button>
            </div>
            <div class="modal-review">
                <div class="product-single-meta-group"><span class="product-single-meta-price">$18,759/-
                        <small>negotiable</small></span>
                    <h1 class="product-single-meta-title">Mercedez benz super mclaren</h1>
                    <ul class="product-single-meta-list">
                        <li><i class="material-icons">account_circle</i><a href="profile.html">by autoland</a></li>
                        <li><i class="material-icons">watch_later</i><span>45 minute ago!</span></li>
                        <li><i class="material-icons">stars</i><span>(24) reviews</span></li>
                        <li><i class="material-icons">fmd_good</i><span>delpara, narayanganj</span></li>
                    </ul>
                </div>
                <ul class="review-list">
                    <li class="review-item">
                        <div class="review-group">
                            <div class="review-head">
                                <div class="review-user"><a class="review-media" href="#"><img
                                            src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="avatar"></a>
                                    <div class="review-meta">
                                        <h5>mahmudul hasan</h5><span>02 february 2022</span>
                                    </div>
                                </div>
                                <div class="review-widget"><a class="review-reply" href="#reviewForm"><i
                                            class="material-icons">reply</i><span>reply</span></a>
                                    <div class="review-action"><button type="button" class="review-action-btn"><i
                                                class="material-icons">more_vert</i></button>
                                        <div class="review-action-list"><a href="#"><i
                                                    class="material-icons">edit</i><span>edit</span></a><a
                                                href="#"><i class="material-icons">delete</i><span>delete</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="review-body">
                                <div class="review-star"><i class="material-icons active">star</i><i
                                        class="material-icons active">star</i><i
                                        class="material-icons active">star</i><i
                                        class="material-icons active">star</i><i
                                        class="material-icons active">star</i></div>
                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo nostrum dolore
                                    fugiat ducimus labore debitis unde autem recusandae? Eius harum tempora quis
                                    minima, adipisci natus quod magni omnis quas.</p>
                            </div>
                        </div>
                        <ul>
                            <li>
                                <div class="review-group">
                                    <div class="review-head">
                                        <div class="review-user"><a class="review-media" href="#"><img
                                                    src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/02.jpg" alt="avatar"></a>
                                            <div class="review-meta">
                                                <h5>tahmina bonny</h5><span><b>vendor</b>02 february 2022</span>
                                            </div>
                                        </div>
                                        <div class="review-widget"><a class="review-reply" href="#reviewForm"><i
                                                    class="material-icons">reply</i><span>reply</span></a>
                                            <div class="review-action"><button type="button"
                                                                               class="review-action-btn"><i
                                                        class="material-icons">more_vert</i></button>
                                                <div class="review-action-list"><a href="#"><i
                                                            class="material-icons">edit</i><span>edit</span></a><a
                                                        href="#"><i
                                                            class="material-icons">delete</i><span>delete</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="review-body">
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo
                                            nostrum dolore fugiat ducimus labore debitis unde autem recusandae? Eius
                                            harum tempora quis minima, adipisci natus quod magni omnis quas.</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="review-item">
                        <div class="review-head">
                            <div class="review-user"><a class="review-media" href="#"><img
                                        src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/04.jpg" alt="avatar"></a>
                                <div class="review-meta">
                                    <h5>khadija labonno</h5><span>02 february 2022</span>
                                </div>
                            </div>
                            <div class="review-widget"><a class="review-reply" href="#reviewForm"><i
                                        class="material-icons">reply</i><span>reply</span></a>
                                <div class="review-action"><button type="button" class="review-action-btn"><i
                                            class="material-icons">more_vert</i></button>
                                    <div class="review-action-list"><a href="#"><i
                                                class="material-icons">edit</i><span>edit</span></a><a href="#"><i
                                                class="material-icons">delete</i><span>delete</span></a></div>
                                </div>
                            </div>
                        </div>
                        <div class="review-body">
                            <div class="review-star"><i class="material-icons active">star</i><i
                                    class="material-icons active">star</i><i
                                    class="material-icons active">star</i><i
                                    class="material-icons active">star</i><i class="material-icons">star</i></div>
                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Omnis quo nostrum dolore
                                fugiat ducimus labore debitis unde autem recusandae? Eius harum tempora quis minima,
                                adipisci natus quod magni omnis quas.</p>
                        </div>
                    </li>
                </ul>
                <form class="form-container" id="reviewForm">
                    <h3 class="form-title">share your thoughts</h3>
                    <div class="star-rating"><input type="radio" name="rating" id="star-1"><label
                            for="star-1"></label><input type="radio" name="rating" id="star-2"><label
                            for="star-2"></label><input type="radio" name="rating" id="star-3"><label
                            for="star-3"></label><input type="radio" name="rating" id="star-4"><label
                            for="star-4"></label><input type="radio" name="rating" id="star-5"><label
                            for="star-5"></label></div>
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="form-group"><input type="text" class="form-control"
                                                           placeholder="Enter your name"></div>
                        </div>
                        <div class="col-xl-6">
                            <div class="form-group"><input type="email" class="form-control"
                                                           placeholder="Enter your email"></div>
                        </div>
                        <div class="col-lg-12 col-xl-12">
                            <div class="form-group"><textarea class="form-control"
                                                              placeholder="Write something here!"></textarea></div>
                        </div>
                        <div class="col-lg-12 col-xl-12"><button class="form-btn" type="submit">drop your
                                review</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalQuery">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">query this vehicle</h5><button type="button" class="material-icons"
                                                                       data-bs-dismiss="modal">close</button>
            </div>
            <div class="modal-product-single-form">
                <form class="container">
                    <div class="row">
                        <div class="col-xl-4">
                            <div class="form-group"><label class="form-label">Enter your name</label><input
                                    type="text" class="form-control"></div>
                        </div>
                        <div class="col-xl-4">
                            <div class="form-group"><label class="form-label">Enter your email </label><input
                                    type="email" class="form-control"></div>
                        </div>
                        <div class="col-xl-4">
                            <div class="form-group"><label class="form-label">Enter your number</label><input
                                    type="tel" class="form-control"></div>
                        </div>
                        <div class="col-xl-12">
                            <div class="form-group"><label class="form-label">Describe your message</label><textarea
                                    class="form-control"></textarea></div>
                        </div>
                        <div class="col-xl-12"><button class="form-btn" type="submit">send to vendor</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalOffer">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Make an offer & price</h5><button type="button" class="material-icons"
                                                                          data-bs-dismiss="modal">close</button>
            </div>
            <div class="modal-product-single-form">
                <form class="container">
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter your name</label><input
                                    type="text" class="form-control"></div>
                        </div>
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter your email </label><input
                                    type="email" class="form-control"></div>
                        </div>
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter your number</label><input
                                    type="tel" class="form-control"></div>
                        </div>
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter your offer price</label><input
                                    type="number" class="form-control"></div>
                        </div>
                        <div class="col-xl-12">
                            <div class="form-group"><label class="form-label">Describe your message</label><textarea
                                    class="form-control"></textarea></div>
                        </div>
                        <div class="col-xl-12"><button class="form-btn" type="submit">send to vendor</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalSchedule">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">test drive schedule</h5><button type="button" class="material-icons"
                                                                        data-bs-dismiss="modal">close</button>
            </div>
            <div class="modal-product-single-form">
                <form class="container">
                    <div class="row">
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter your name</label><input
                                    type="text" class="form-control"></div>
                        </div>
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter your email </label><input
                                    type="email" class="form-control"></div>
                        </div>
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter your number</label><input
                                    type="tel" class="form-control"></div>
                        </div>
                        <div class="col-xl-6">
                            <div class="form-group"><label class="form-label">Enter test drive
                                    schedule</label><input type="datetime-local" class="form-control"></div>
                        </div>
                        <div class="col-xl-12">
                            <div class="form-group"><label class="form-label">Describe your message</label><textarea
                                    class="form-control"></textarea></div>
                        </div>
                        <div class="col-xl-12"><button class="form-btn" type="submit">send to vendor</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modalReport">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">report this vehicle</h5><button type="button" class="material-icons"
                                                                        data-bs-dismiss="modal">close</button>
            </div>
            <div class="modal-product-single-form">
                <form class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="form-group"><label class="form-label">Select the reason
                                    category</label><select class="form-select">
                                    <option selected>---</option>
                                    <option>Lorem ipsum dolor sit amet</option>
                                    <option>Lorem ipsum dolor consectetur adipisicin</option>
                                    <option>Lorem ipsum consectetur adipisicing oluptate sunt</option>
                                </select></div>
                        </div>
                        <div class="col-xl-12">
                            <div class="form-group"><label class="form-label">Describe the reason</label><textarea
                                    class="form-control"></textarea></div>
                        </div>
                        <div class="col-xl-12"><button class="form-btn" type="submit">send authority</button></div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>