<%-- 
    Document   : blogsingle
    Created on : May 28, 2023, 11:17:10 AM
    Author     : _viet.quangg
--%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <section class="section-gap-100">
        <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/01.jpg) no-repeat center / cover;">
            <div class="single-banner">
                <div class="container">
                    <h2>blog single page</h2>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="<c:url value="/ocsn/index.do"/>">Home</a></li>
                        <li class="breadcrumb-item"><a href="<c:url value="/blog/bloggrid.do"/>">blog-grid</a></li>
                        <li class="breadcrumb-item active" aria-current="page">blog-single</li>
                    </ol>
                </div>
            </div>
        </div>
    </section>
    <article class="section-gap-100">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-11 col-xl-10 m-auto">
                    <div class="blog-single"><img class="blog-single-img" src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/02.jpg" alt="blog">
                        <div class="blog-single-content">
                            <ul class="blog-single-meta-list">
                                <li><i class="material-icons">account_circle</i><span>post by <a
                                            href="blog-single.html">admin</a></span></li>
                                <li><i class="material-icons">event_note</i><span>februray 02, 2021</span></li>
                                <li><i class="material-icons">forum</i><span>05 comments</span></li>
                                <li><i class="material-icons">public</i><span>03 share</span></li>
                            </ul>
                            <h2 class="blog-single-title">Lorem ipsum dolor sit amet consectetur adipisicing elit
                                expedita quam distinctio aliquid quaerat.</h2>
                            <p class="blog-single-para">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Id
                                consectetur numquam repellat. Quod tempore earum asperiores quo, non similique
                                repellendus eius, at numquam molestias officiis debitis cupiditate sint voluptas veniam
                                quibusdam, voluptatem pariatur minima. Sed ut, inventore praesentium est sint quis
                                accusantium repellendus excepturi corrupti distinctio eos tempore exercitationem ipsa
                                reiciendis aliquam cupiditate minus voluptas qui unde consequatur soluta nam temporibus
                                veritatis. At, amet maxime facilis labore alias quia aperiam quis similique iure
                                praesentium aliquid exercitationem doloribus assumenda suscipit ab sapiente nam adipisci
                                veniam totam iste reprehenderit. Voluptatum explicabo recusandae asperiores similique,
                                consectetur quos quidem <a href="#">consequuntur</a>laudantium saepe officiis hic
                                praesentium. Quaerat nam necessitatibus saepe hic nihil sequi, fuga dicta veritatis
                                accusantium quas dignissimos voluptatum assumenda neque tenetur? Quae nemo obcaecati ad
                                quasi eos quaerat libero dolorum debitis deleniti perferendis. Inventore, ullam nulla
                                harum autem omnis voluptatum neque tempora placeat modi dignissimos, velit rerum! Soluta
                                sed porro ratione eum iusto. <span>Lorem ipsum dolor sit amet consectetur adipisicing
                                    elit. Doloremque sint impedit vitae quam expedita molestiae dolore vero enim,
                                    aperiam nobis porro culpa exercitationem suscipit tempora assumenda fugiat, laborum
                                    veritatis nam earum! Sit culpa repellat, molestiae doloremque odit impedit totam
                                    itaque veniam provident nesciunt porro minima tempore assumenda consectetur ab
                                    perferendis animi. Magni, voluptates. Fuga aliquid ratione eius, officiis, minus
                                    natus recusandae, velit placeat iste cum ea deleniti animi minima veritatis sint
                                    nulla sed dolores sapiente nam necessitatibus quae! Magnam pariatur laudantium
                                    praesentium et dolorem aliquid nam asperiores, ipsa sed dolor reiciendis ex? Totam
                                    temporibus ipsa delectus aspernatur. Corrupti, voluptatum eligendi.</span></p>
                            <blockquote class="blog-single-quote"><i class="material-icons">format_quote</i>
                                <p>Adipisicing elit Qui ipsam natus aspernatur quaerat impedit eveniet ipsum dolor</p>
                                <h5>rosalina pongo</h5>
                            </blockquote>
                            <p class="blog-single-para">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Id
                                consectetur numquam repellat. Quod tempore earum asperiores quo, non similique
                                repellendus eius, at numquam molestias officiis debitis cupiditate sint voluptas veniam
                                quibusdam, voluptatem pariatur minima. Sed ut, inventore praesentium est sint quis
                                accusantium repellendus excepturi corrupti distinctio eos tempore exercitationem ipsa
                                reiciendis aliquam cupiditate minus voluptas qui unde consequatur soluta nam temporibus
                                veritatis. At, amet maxime facilis labore alias quia aperiam quis similique iure
                                praesentium aliquid exercitationem doloribus assumenda suscipit ab sapiente nam adipisci
                                veniam totam iste reprehenderit. Voluptatum explicabo recusandae asperiores similique,
                                consectetur quos quidem <a href="#">consequuntur</a>laudantium saepe officiis hic
                                praesentium. Quaerat nam necessitatibus saepe hic nihil sequi, fuga dicta veritatis
                                accusantium quas dignissimos voluptatum assumenda neque tenetur? Quae nemo obcaecati ad
                                quasi eos quaerat libero dolorum debitis deleniti perferendis. Inventore, ullam nulla
                                harum autem omnis voluptatum neque tempora placeat modi dignissimos.</p>
                            <div class="blog-single-widget">
                                <ul class="blog-single-widget-list">
                                    <li><span>Tags:</span></li>
                                    <li><a href="#">roadjam</a></li>
                                    <li><a href="#">vehicle</a></li>
                                    <li><a href="#">noise</a></li>
                                </ul>
                                <ul class="blog-single-widget-list">
                                    <li><span>Share:</span></li>
                                    <li><a href="#" class="facebook">facebook</a></li>
                                    <li><a href="#" class="twitter">twitter</a></li>
                                    <li><a href="#" class="linkedin">linkedin</a></li>
                                </ul>
                            </div>
                            <div class="blog-author">
                                <div class="blog-author-group">
                                    <div class="blog-author-info"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="author">
                                        <h4><a href="blog-author.html">Miron Mahmud</a></h4>
                                        <h6><a href="#">www.mironmahmud.com</a></h6>
                                    </div>
                                    <div class="blog-author-content">
                                        <ul>
                                            <li><a href="#" class="facebook icofont-facebook"></a></li>
                                            <li><a href="#" class="twitter icofont-twitter"></a></li>
                                            <li><a href="#" class="linkedin icofont-linkedin"></a></li>
                                            <li><a href="#" class="pinterest icofont-pinterest"></a></li>
                                            <li><a href="#" class="instagram icofont-instagram"></a></li>
                                        </ul>
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate temporibus
                                            harum laborum quaerat blanditiis iste mollitia aperiam aut voluptates quidem
                                            nois aliquam incidunt expedita odit id repellat dicta Odio consectetur modi
                                            mollitia nihil Deserunt ab non tenetur quasi libero magn.</p>
                                    </div>
                                </div>
                                <ul class="blog-author-meta-list">
                                    <li><i class="material-icons">feed</i><span>Total Blog (25)</span></li>
                                    <li><i class="material-icons">forum</i><span>Total Comment (130)</span></li>
                                    <li><i class="material-icons">public</i><span>Total Share (45)</span></li>
                                </ul>
                            </div>
                            <div class="blog-single-suggest">
                                <div class="blog-grid-card">
                                    <div class="blog-grid-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/02.jpg" alt="blog">
                                        <ul class="blog-grid-widget">
                                            <li><i class="material-icons">forum</i><span>3</span></li>
                                            <li><i class="material-icons">send</i><span>2</span></li>
                                        </ul>
                                    </div>
                                    <div class="blog-grid-content">
                                        <ul class="blog-grid-meta">
                                            <li><i class="material-icons">person</i><span>post by <a
                                                        href="blog-single.html">admin</a></span></li>
                                            <li><i class="material-icons">event</i><span>februray 02, 2021</span></li>
                                        </ul>
                                        <h3 class="blog-grid-name"><a href="blog-single.html">Lorem ipsum dolorfect
                                                consectetur sitamet aborum adipisicing</a></h3>
                                        <p class="blog-grid-descrip">Adipisicing elitelit impedit laborum voluptate ad
                                            officia eius veritatis unde modi placeat obcaecati maxime${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets.<a
                                                href="blog-single.html">read more</a></p>
                                    </div>
                                </div>
                                <div class="blog-grid-card">
                                    <div class="blog-grid-media"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/blog/03.jpg" alt="blog">
                                        <ul class="blog-grid-widget">
                                            <li><i class="material-icons">forum</i><span>3</span></li>
                                            <li><i class="material-icons">send</i><span>2</span></li>
                                        </ul>
                                    </div>
                                    <div class="blog-grid-content">
                                        <ul class="blog-grid-meta">
                                            <li><i class="material-icons">person</i><span>post by <a
                                                        href="blog-single.html">admin</a></span></li>
                                            <li><i class="material-icons">event</i><span>februray 02, 2021</span></li>
                                        </ul>
                                        <h3 class="blog-grid-name"><a href="blog-single.html">Lorem ipsum dolorfect
                                                consectetur sitamet aborum adipisicing</a></h3>
                                        <p class="blog-grid-descrip">Adipisicing elitelit impedit laborum voluptate ad
                                            officia eius veritatis unde modi placeat obcaecati maxime${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets.<a
                                                href="blog-single.html">read more</a></p>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-single-navigate"><a href="#">Prev Post</a><a href="#">Next Post</a></div>
                            <div class="common-card mb-0">
                                <div class="common-card-header">
                                    <h3 class="common-card-header-title">comments (03)</h3>
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
                                                                    src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/02.jpg" alt="avatar"></a>
                                                            <div class="comment-meta">
                                                                <h5>tahmina bonny</h5><span><b>vendor</b>02 february
                                                                    2022</span>
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
                                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                            Omnis quo nostrum dolore fugiat ducimus labore debitis unde
                                                            autem recusandae? Eius harum tempora quis minima, adipisci
                                                            natus quod magni omnis quas.</p>
                                                    </div>
                                                </div>
                                                <ul>
                                                    <li>
                                                        <div class="comment-group">
                                                            <div class="comment-head">
                                                                <div class="comment-user"><a class="comment-media"
                                                                        href="#"><img src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg"
                                                                            alt="avatar"></a>
                                                                    <div class="comment-meta">
                                                                        <h5>mahmudul hasan</h5><span>02 february
                                                                            2022</span>
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
                                                                <p>Lorem ipsum, dolor sit amet consectetur adipisicing
                                                                    elit. Eius iure sed, delectus mollitia minima eum
                                                                    sit harum amet. Id, illo. Error cumque voluptates at
                                                                    eum.</p>
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
                                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                            Omnis quo nostrum dolore fugiat ducimus labore debitis unde
                                                            autem recusandae? Eius harum tempora quis minima, adipisci
                                                            natus quod magni omnis quas.</p>
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
                                                nostrum dolore fugiat ducimus labore debitis unde autem recusandae? Eius
                                                harum tempora quis minima, adipisci natus quod magni omnis quas.</p>
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
                                                nostrum dolore fugiat ducimus labore debitis unde autem recusandae? Eius
                                                harum tempora quis minima, adipisci natus quod magni omnis quas.</p>
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
                                        <div class="col-lg-12 col-xl-12"><button class="form-btn" type="submit">drop
                                                your comment</button></div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </article>