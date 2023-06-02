<%-- 
    Document   : createad
    Created on : May 28, 2023, 10:32:37 AM
    Author     : _viet.quangg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<section class="section-gap-75">
    <div style="background: url(${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/banner/single/02.jpg) no-repeat center / cover;">
        <div class="user-banner">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-xl-8">
                        <div class="user-banner-profile">
                            <div class="user-banner-profile-avatar"><a href="profile.html"><img
                                        src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/avatar/01.jpg" alt="avatar"></a></div>
                            <div class="user-banner-profile-meta">
                                <div class="user-banner-profile-name">
                                    <h3><a href="profile.html">person name</a></h3><span>individual</span>
                                </div>
                                <ul class="user-banner-profile-contact-list">
                                    <li><i class="material-icons">phone_in_talk</i><span>+91 987-654-3210</span>
                                    </li>
                                    <li><i class="material-icons">feed</i><span>support@example.com</span></li>
                                    <li><i class="material-icons">public</i><span>exampleGhurnek.com</span></li>
                                    <li><i class="material-icons">map</i><span>1Hd- 50, 010 Avenue, NY 90001 United
                                            States</span></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5 col-xl-4">
                        <ul class="user-banner-data">
                            <li class="ads"><i class="material-icons">store</i>
                                <h3>4334</h3>
                                <p>total advertise</p>
                            </li>
                            <li class="star"><i class="material-icons">star</i>
                                <h3>2112</h3>
                                <p>total ratings</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-12">
                        <ul class="user-banner-menu-list">
                            <li><a href="dashboard.html">dashboard</a></li>
                            <li><a href="profile.html">profile</a></li>
                            <li><a href="create-ads.html" class="active">create ads</a></li>
                            <li><a href="posted-ads.html">posted ads</a></li>
                            <li><a href="favorite.html">favorites</a></li>
                            <li><a href="compare.html">compares</a></li>
                            <li><a href="review.html">reviews</a></li>
                            <li><a href="notify.html">notify</a></li>
                            <li><a href="setting.html">settings</a></li>
                            <li><a href="login.html">logout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="mc-breadcrumb">
    <div class="container">
        <div class="mc-breadcrumb-group">
            <h2 class="mc-breadcrumb-title">create your ads</h2>
            <ul class="mc-breadcrumb-list">
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="<c:url value="/ocsn/index.do"/>">home</a></li>
                <li class="mc-breadcrumb-item"><a class="mc-breadcrumb-link" href="dashboard.html">dashboard</a>
                </li>
                <li class="mc-breadcrumb-item">create-ads</li>
            </ul>
        </div>
    </div>
</section>
<section class="section-gap-75">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-xl-4">
                <div class="common-card">
                    <div class="common-card-header">
                        <h5 class="common-card-header-title">ad complete navs</h5>
                    </div>
                    <ul class="create-nav-list">
                        <li class="active"><i class="material-icons">drive_eta</i><span>vehicle information</span>
                        </li>
                        <li><i class="material-icons">fact_check</i><span>features selection</span></li>
                        <li><i class="material-icons">perm_media</i><span>add photos & video</span></li>
                        <li><i class="material-icons">perm_phone_msg</i><span>contact address</span></li>
                        <li><i class="material-icons">quiz</i><span>faq answers</span></li>
                        <li><i class="material-icons">cloud_upload</i><span>publish your ad</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-7 col-xl-8">
                <form class="create-ads-form">
                    <div class="common-card active">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">vehicle information</h4>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="form-group"><label class="form-label">Title <span>*</span></label><input
                                        type="text" class="form-control"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                                <div class="form-group"><label class="form-label">Vehicle Registration Number
                                        <span>*</span></label><input type="text" class="form-control"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                                <div class="form-group"><label class="form-label">Registerarion Plate Number
                                        <span>*</span></label><input type="text" class="form-control"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                                <div class="form-group"><label class="form-label">date of issue
                                        <span>*</span></label><input type="datetime-local" class="form-control">
                                </div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-6">
                                <div class="form-group"><label class="form-label">date of expire
                                        <span>*</span></label><input type="datetime-local" class="form-control">
                                </div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">type <span>*</span></label><select
                                        class="form-select">
                                        <option selected>---</option>
                                        <option value="1">wagon</option>
                                        <option value="1">hatchback</option>
                                        <option value="1">convertible</option>
                                    </select></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">make <span>*</span></label><select
                                        class="form-select">
                                        <option selected>---</option>
                                        <option value="bugatti">bugatti</option>
                                        <option value="ferrari">ferrari</option>
                                        <option value="porsche">porsche</option>
                                    </select></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">fuel <span>*</span></label><select
                                        class="form-select">
                                        <option selected>---</option>
                                        <option value="disel">disel</option>
                                        <option value="petrol">petrol</option>
                                        <option value="electric">electric</option>
                                    </select></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">year <span>*</span></label><select
                                        class="form-select">
                                        <option selected>---</option>
                                        <option value="2022">2022</option>
                                        <option value="2021">2021</option>
                                        <option value="2020">2020</option>
                                    </select></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">colour
                                        <span>*</span></label><select class="form-select">
                                        <option selected>---</option>
                                        <option value="red">red</option>
                                        <option value="brown">brown</option>
                                        <option value="yellow">yellow</option>
                                    </select></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">milage
                                        <span>*</span></label><input type="text" class="form-control"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">price amount
                                        <span>*</span></label><input type="text" class="form-control"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">price type
                                        <span>*</span></label><select class="form-select">
                                        <option selected>---</option>
                                        <option value="fixed">fixed</option>
                                        <option value="negotiable">negotiable</option>
                                    </select></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-6 col-lg-12 col-xl-4">
                                <div class="form-group"><label class="form-label">condition
                                        <span>*</span></label><select class="form-select">
                                        <option selected>---</option>
                                        <option value="used">used</option>
                                        <option value="new">new</option>
                                    </select></div>
                            </div>
                            <div class="col-12">
                                <div class="create-extra-input">
                                    <h5>Do you have extra information to add? create form below</h5>
                                    <div class="row mb-4"><label for="infoLabel"
                                                                 class="col-sm-4 col-md-3 col-form-label">input label</label>
                                        <div class="col-sm-8 col-md-9"><input type="text" class="form-control"
                                                                              id="infoLabel"></div>
                                    </div>
                                    <div class="row mb-4"><label for="infoValue"
                                                                 class="col-sm-4 col-md-3 col-form-label">input value</label>
                                        <div class="col-sm-8 col-md-9"><input type="text" class="form-control"
                                                                              id="infoValue"></div>
                                    </div>
                                    <div class="row mb-4"><label for="infoValue"
                                                                 class="col-sm-4 col-md-3 col-form-label">input column</label>
                                        <div class="col-sm-8 col-md-9"><select class="form-select">
                                                <option selected>---</option>
                                                <option value="col-4">4 column</option>
                                                <option value="col-6">6 column</option>
                                                <option value="col-12">12 column</option>
                                            </select></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-8 col-md-9 ms-auto"><button type="submit"
                                                                                       class="form-btn">add extra</button></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group mb-0"><label class="form-label">description
                                        <span>*</span></label><textarea class="form-control"></textarea></div>
                            </div>
                        </div>
                    </div>
                    <div class="common-card">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">vehicle features</h4>
                        </div>
                        <div class="common-card-body">
                            <div class="create-feature-check">
                                <h5>check input</h5>
                                <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-2 row-cols-xl-3">
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check1"><label class="form-check-label" for="check1">power
                                                Steering</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check2"><label class="form-check-label" for="check2">Manually
                                                Adjustable</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check3"><label class="form-check-label" for="check3">Vanity
                                                Mirror</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check4"><label class="form-check-label" for="check4">Trunk
                                                Light</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check5"><label class="form-check-label" for="check5">Knee
                                                Airbags</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check6"><label class="form-check-label" for="check6">power
                                                Steering</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check7"><label class="form-check-label" for="check7">Rain
                                                Sensing</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check8"><label class="form-check-label" for="check8">Warranty
                                                Time</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check9"><label class="form-check-label"
                                                                       for="check9">Cylinders</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check10"><label class="form-check-label" for="check10">Sensing
                                                Lock</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check11"><label class="form-check-label" for="check11">Manually
                                                Adjustable</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check12"><label class="form-check-label" for="check12">Warranty
                                                Time</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check13"><label class="form-check-label" for="check13">Trunk
                                                Light</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check14"><label class="form-check-label" for="check14">Rain
                                                Sensing</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                       id="check15"><label class="form-check-label" for="check15">Vanity
                                                Mirror</label></div>
                                    </div>
                                </div>
                            </div>
                            <div class="create-feature-switch">
                                <h5>switch input</h5>
                                <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-2 row-cols-xl-3">
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch1"><label class="form-check-label"
                                                                                   for="switch1">Air Conditioning</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch2"><label class="form-check-label"
                                                                                   for="switch2">Cruise Control</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch3"><label class="form-check-label"
                                                                                   for="switch3">Integrated Phone</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch4"><label class="form-check-label"
                                                                                   for="switch4">AM/FM Radio</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch5"><label class="form-check-label"
                                                                                   for="switch5">Central Locking</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch6"><label class="form-check-label"
                                                                                   for="switch6">Panoramic Roof</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch7"><label class="form-check-label"
                                                                                   for="switch7">Driver Air Bag</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch8"><label class="form-check-label"
                                                                                   for="switch8">Bucket Seating</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch9"><label class="form-check-label"
                                                                                   for="switch9">Alarm System</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch10"><label class="form-check-label"
                                                                                   for="switch10">Auxiliary Heating</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch11"><label class="form-check-label"
                                                                                   for="switch11">Bluetooth</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch12"><label class="form-check-label"
                                                                                   for="switch12">Particulate Filter</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch13"><label class="form-check-label"
                                                                                   for="switch13">CD Player</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch14"><label class="form-check-label"
                                                                                   for="switch14">Side Mirror</label></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-check form-switch"><input class="form-check-input"
                                                                                   type="checkbox" id="switch15"><label class="form-check-label"
                                                                                   for="switch14">Cruise Control</label></div>
                                    </div>
                                </div>
                            </div>
                            <div class="create-feature-radio">
                                <h5>double radio input</h5>
                                <div class="row row-cols-2 row-cols-sm-2 row-cols-md-3 row-cols-lg-2 row-cols-xl-3">
                                    <div class="col">
                                        <div class="form-group-radio"><label class="form-group-radio-label">Antilock
                                                Brakes?</label>
                                            <div class="form-group-radio-check">
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup1" id="radio1"><label
                                                                               class="form-check-label" for="radio1">yes</label></div>
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup1" id="radio2"><label
                                                                               class="form-check-label" for="radio2">no</label></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group-radio"><label class="form-group-radio-label">Power
                                                Steering?</label>
                                            <div class="form-group-radio-check">
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup2" id="radio3"><label
                                                                               class="form-check-label" for="radio3">yes</label></div>
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup2" id="radio4"><label
                                                                               class="form-check-label" for="radio4">no</label></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group-radio"><label class="form-group-radio-label">Cruise
                                                Control?</label>
                                            <div class="form-group-radio-check">
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup3" id="radio5"><label
                                                                               class="form-check-label" for="radio5">yes</label></div>
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup3" id="radio6"><label
                                                                               class="form-check-label" for="radio6">no</label></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group-radio"><label class="form-group-radio-label">Driver
                                                Air Bag?</label>
                                            <div class="form-group-radio-check">
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup4" id="radio7"><label
                                                                               class="form-check-label" for="radio7">yes</label></div>
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup4" id="radio8"><label
                                                                               class="form-check-label" for="radio8">no</label></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group-radio"><label class="form-group-radio-label">Bucket
                                                Seating?</label>
                                            <div class="form-group-radio-check">
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup5" id="radio9"><label
                                                                               class="form-check-label" for="radio9">yes</label></div>
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup5" id="radio10"><label
                                                                               class="form-check-label" for="radio10">no</label></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group-radio"><label
                                                class="form-group-radio-label">Panoramic Roof?</label>
                                            <div class="form-group-radio-check">
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup6" id="radio11"><label
                                                                               class="form-check-label" for="radio11">yes</label></div>
                                                <div class="form-check"><input class="form-check-input" type="radio"
                                                                               name="radioGroup6" id="radio12"><label
                                                                               class="form-check-label" for="radio12">no</label></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="common-card">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">vehicle media</h4>
                        </div>
                        <div class="common-card-body">
                            <div class="create-media">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group"><label class="form-label">Preview Image
                                                <span>*</span></label>
                                            <div class="file-form"><input class="file-input" type="file"
                                                                          id="preview"><label for="preview"
                                                                          class="file-icon material-icons">file_present</label><button
                                                                          type="button" class="file-cancel material-icons">cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group"><label class="form-label">gallery images file
                                                <span>*</span></label>
                                            <div class="file-form"><input class="file-input" type="file"
                                                                          id="gallery"><label for="gallery"
                                                                          class="file-icon material-icons">file_present</label><button
                                                                          type="button" class="file-cancel material-icons">cancel</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group"><label class="form-label">hosted video URL
                                                <span>*</span></label><input type="text"
                                                                         class="form-control video-input"></div>
                                    </div>
                                    <div class="col-xl-12">
                                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Sint culpa,
                                            voluptates saepe impedit sequi harum rem qui. Aut illum commodi officia
                                            quo, ipsam nulla exercitationem.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="create-social">
                                <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-1 row-cols-xl-2">
                                    <div class="col">
                                        <div class="form-group"><label class="form-label">facebook URL</label><input
                                                type="url" class="form-control"></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group"><label class="form-label">twitter URL</label><input
                                                type="url" class="form-control"></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group"><label class="form-label">linkedin URL</label><input
                                                type="url" class="form-control"></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group"><label class="form-label">instagram
                                                URL</label><input type="url" class="form-control"></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group"><label class="form-label">youtube URL</label><input
                                                type="url" class="form-control"></div>
                                    </div>
                                    <div class="col">
                                        <div class="form-group"><label class="form-label">pinterest
                                                URL</label><input type="url" class="form-control"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="common-card">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">vendor address</h4>
                        </div>
                        <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-1 row-cols-xl-2">
                            <div class="col">
                                <div class="form-group"><label class="form-label">country
                                        <span>*</span></label><input type="text" class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">city <span>*</span></label><input
                                        type="text" class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">state <span>*</span></label><input
                                        type="text" class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">post code
                                        <span>*</span></label><input type="text" class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">ward no
                                        <span>*</span></label><input type="text" class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">road no</label><input type="text"
                                                                                                        class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">shop no</label><input type="text"
                                                                                                        class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">phone <span>*</span></label><input
                                        type="text" class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">email <span>*</span></label><input
                                        type="email" class="form-control"></div>
                            </div>
                            <div class="col">
                                <div class="form-group"><label class="form-label">website
                                        <span>*</span></label><input type="url" class="form-control"></div>
                            </div>
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                <div class="form-group mb-0"><label class="form-label">Others</label><textarea
                                        class="form-control"></textarea></div>
                            </div>
                        </div>
                    </div>
                    <div class="common-card">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">vehicle faqs</h4>
                        </div>
                        <div class="create-edit-faqs">
                            <ul class="accordion-list">
                                <li class="accordion-item">
                                    <div class="accordion-que">
                                        <h5>#1 Lorem ipsum dolor sit amet, consectetur adipisicing elit?</h5><button
                                            type="button" class="material-icons">zoom_out_map</button>
                                    </div>
                                    <div class="accordion-ans">
                                        <div class="form-group"><input type="text" class="form-control"
                                                                       placeholder="add a new question"></div>
                                        <div class="form-group"><textarea class="form-control"
                                                                          placeholder="add a new answer"></textarea></div>
                                        <div class="d-flex justify-content-end gap-3"><button type="submit"
                                                                                              class="btn btn-danger">delete faq</button><button type="submit"
                                                                                              class="btn btn-inline">update faq</button></div>
                                    </div>
                                </li>
                                <li class="accordion-item">
                                    <div class="accordion-que">
                                        <h5>#2 Lorem ipsum dolor sit amet, consectetur adipisicing elit?</h5><button
                                            type="button" class="material-icons">zoom_out_map</button>
                                    </div>
                                    <div class="accordion-ans">
                                        <div class="form-group"><input type="text" class="form-control"
                                                                       placeholder="add a new question"></div>
                                        <div class="form-group"><textarea class="form-control"
                                                                          placeholder="add a new answer"></textarea></div>
                                        <div class="d-flex justify-content-end gap-3"><button type="submit"
                                                                                              class="btn btn-danger">delete faq</button><button type="submit"
                                                                                              class="btn btn-inline">update faq</button></div>
                                    </div>
                                </li>
                                <li class="accordion-item">
                                    <div class="accordion-que">
                                        <h5>#3 Lorem ipsum dolor sit amet, consectetur adipisicing elit?</h5><button
                                            type="button" class="material-icons">zoom_out_map</button>
                                    </div>
                                    <div class="accordion-ans">
                                        <div class="form-group"><input type="text" class="form-control"
                                                                       placeholder="add a new question"></div>
                                        <div class="form-group"><textarea class="form-control"
                                                                          placeholder="add a new answer"></textarea></div>
                                        <div class="d-flex justify-content-end gap-3"><button type="submit"
                                                                                              class="btn btn-danger">delete faq</button><button type="submit"
                                                                                              class="btn btn-inline">update faq</button></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="create-new-faqs">
                            <div class="form-group"><label class="form-label">add a new question
                                    <span>*</span></label><input type="text" class="form-control"></div>
                            <div class="form-group"><label class="form-label">add a new answer
                                    <span>*</span></label><textarea class="form-control"></textarea></div><button
                                type="submit" class="form-btn">add faqs</button>
                        </div>
                    </div>
                    <div class="common-card">
                        <div class="common-card-header">
                            <h4 class="common-card-header-title">pricing plan & publish</h4>
                        </div>
                        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-2 row-cols-xl-3">
                            <div class="col">
                                <div class="create-price-card"><i class="material-icons">check_circle</i>
                                    <h5>starter plan</h5>
                                    <h6>$35/-</h6><a href="pricing-plan.html">view details</a>
                                </div>
                            </div>
                            <div class="col">
                                <div class="create-price-card"><i class="material-icons">check_circle</i>
                                    <h5>business plan</h5>
                                    <h6>$49/-</h6><a href="pricing-plan.html">view details</a>
                                </div>
                            </div>
                            <div class="col">
                                <div class="create-price-card"><i class="material-icons">check_circle</i>
                                    <h5>premium plan</h5>
                                    <h6>$68/-</h6><a href="pricing-plan.html">view details</a>
                                </div>
                            </div>
                        </div>
                        <div class="create-billing">
                            <h5>billing information</h5>
                            <div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-1 row-cols-xl-2">
                                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                    <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                   id="checkAddress"><label class="form-check-label"
                                                                   for="checkAddress">Your vendor or contact address in the same
                                            place?</label></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">first name
                                            <span>*</span></label><input type="text" class="form-control"></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">last name
                                            <span>*</span></label><input type="text" class="form-control"></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">email address
                                            <span>*</span></label><input type="email" class="form-control"></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">phone number
                                            <span>*</span></label><input type="tel" class="form-control"></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">country
                                            <span>*</span></label><input type="text" class="form-control"></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">city
                                            <span>*</span></label><input type="text" class="form-control"></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">zip
                                            <span>*</span></label><input type="tel" class="form-control"></div>
                                </div>
                                <div class="col">
                                    <div class="form-group"><label class="form-label">state
                                            <span>*</span></label><select class="form-select">
                                            <option selected>---</option>
                                            <option value="1">jalkuri</option>
                                            <option value="2">delpara</option>
                                            <option value="3">fatullah</option>
                                        </select></div>
                                </div>
                                <div class="col col-lg-6">
                                    <div class="create-pay-card"><i class="material-icons">check_circle</i><img
                                            src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/cards.png" alt="cards"><small>Pay with card</small></div>
                                </div>
                                <div class="col col-lg-6">
                                    <div class="create-pay-card"><i class="material-icons">check_circle</i><img
                                            src="${pageContext.request.contextPath}/mironmahmud.com/ghurnek/assets/images/paypal.png" alt="paypal"><small>Pay with paypal</small>
                                    </div>
                                </div>
                                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">
                                    <div class="form-check"><input class="form-check-input" type="checkbox"
                                                                   id="checkAgree"><label class="form-check-label" for="checkAgree">I agree
                                            to the <a href="#">terms of use</a>and <a href="#">privacy
                                                policy</a>.</label></div>
                                </div>
                                <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12 text-center"><button
                                        type="submit" class="form-btn mb-2">pay & publish</button><small>You will
                                        receive an invoice and a confirmation will be sent to your email</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>