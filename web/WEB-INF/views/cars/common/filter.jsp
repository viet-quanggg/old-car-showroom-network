
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean class="DB.CarFacade" id="dao" />

<div class="col-lg-4 col-xl-3">
    <div class="product-widget">
        <h6 class="product-widget-title">Search By Key</h6>
        <form action="" method="get">
            <input class="product-widget-search" type="text" placeholder="Enter Some Keyword..." name="search">

            <button class="product-widget-btn mt-4" >
                <i class="material-icons">search</i>
                <span>search</span>
            </button>
        </form>
    </div>

    <form action="" method="POST">
        <div class="product-widget">
            <h6 class="product-widget-title">Filter by colour</h6>
            <ul class="product-widget-list product-widget-scroll">
                <c:set var="color" value="${dao.allColor}" />
                <c:forEach begin="0" end="${color.size() - 1}" var="i">
                    <li>
                        <div class="product-widget-content">
                            <input type="checkbox" name="cid" value="${color.get(i).id}" onclick="this.form.submit()"
                                   ${cChecked[i] ? 'checked' : ''} 
                                   >
                            <label class="product-widget-color green " style='background-color: ${color.get(i).color}; ${color.get(i).color eq 'white' ? 'color: black' : ''}'>${color.get(i).color}</label>
                        </div>
                        <span class="product-widget-number"></span>
                    </li>
                </c:forEach> 
            </ul>
        </div>
        <div class="product-widget">
            <h6 class="product-widget-title">Filter by Brand</h6>
            <ul class="product-widget-list product-widget-scroll">
                <c:set var="brand" value="${dao.allBrand}" />
                <c:forEach begin="0" end="${brand.size() - 1}" var="i">
                    <li>
                        <div class="product-widget-content">
                            <input type="checkbox" name="bid" value="${brand.get(i).id}" onclick="this.form.submit()" 
                                   ${bChecked[i] ? 'checked' : ''}
                                   >
                            <label >${brand.get(i).name}</label>
                        </div>
                        <span class="product-widget-number">(${brand.get(i).count})</span>
                    </li>
                </c:forEach>
            </ul>
        </div>
    </form>

</div>