<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<form action="" method="POST">
    <div class="row">
        <input type="hidden" name="search" value="${search}">
        <div class="col-xl-12">
            <div class="top-filter">
                <div class="filter-show">
                    <label class="filter-label">Show :</label>
                    <select name="numberPerPage" onchange="this.form.submit()" class="form-select filter-select">
                        <option value="9" ${numberPerPage == 9 ? 'selected' : ''}>9</option>
                        <option value="15" ${numberPerPage == 15 ? 'selected' : ''}>15</option>
                        <option value="21" ${numberPerPage == 21 ? 'selected' : ''}>21</option>
                    </select></div>
                <div class="filter-short">
                    <label class="filter-label">Short by :</label>
                    <select class="form-select filter-select" name="sort" onchange="this.form.submit()">
                        <option>default</option>
                        <option value="price" ${sort == 'price' ? 'selected' : ''}>Desc Price</option>
                        <option value="name" ${sort == 'name' ? 'selected' : ''}>Top Name</option>
                    </select>
                </div>

                <div class="filter-action">
                    <a href="<c:url value="/cars/cargrid.do"/>" title="Grid View" class="material-icons ${action == 'cargrid' ? 'active' : '' }">grid_view</a>
                    <a href="<c:url value="/cars/carlist.do"/>" title="List View" class="material-icons ${action == 'carlist' ? 'active' : '' }">list_alt</a>
                </div>
            </div>
            <input type="checkbox" name="cid" value="${color.get(i).id}" onClick="this.form.submit()"
                   ${cChecked[i] ? 'checked' : ''} hidden>
        </div>
    </div>
</form>