<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <div class="col-xl-13">
        <div class="bottom-paginate mb-50">
            <p class="page-info">Showing ${page} of ${numberOfPage} Results</p>
            <ul class="pagination">
                <li class="page-item"><a href="?page=${page > 1 ? page - 1 : page}${search != null ? '&search=' :''}${search != null ? search : ''}${sort != null ? '&sort=' : ''}${sort != null ? sort : ''}${colorid != null ? colorid : ''}${brandid != null ? brandid : ''}" class="page-link material-icons">chevron_left</a>
                </li>
                <c:forEach begin="1" end="${numberOfPage}" var="i">
                    <li class="page-item"><a href="?page=${i}${search != null ? '&search=' :''}${search != null ? search : ''}${sort != null ? '&sort=' : ''}${sort != null ? sort : ''}${colorid != null ? colorid : ''}${brandid != null ? brandid : ''}" class="page-link ${i == page ? 'active' : ''}">${i}</a></li>
                </c:forEach>
                <li class="page-item"><a href="?page=${page < numberOfPage ? page + 1 : page}${search != null ? '&search=' :''}${search != null ? search : ''}${sort != null ? '&sort=' : ''}${sort != null ? sort : ''}${colorid != null ? colorid : ''}${brandid != null ? brandid : ''}" class="page-link material-icons">chevron_right</a>
                </li>
            </ul>
        </div>
    </div>
</div>
