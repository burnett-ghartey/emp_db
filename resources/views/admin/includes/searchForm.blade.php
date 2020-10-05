<div class="container" style="margin-bottom: 50px">
    <form method="POST" action="/admin/employees/filter" class="posts_search">
     @csrf
     <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for..." name="query">
        <span>
            <button class="btn btn-search" type="submit">
                <i class="fa fa-search fa-fw"></i>Search
            </button>
        </span>
     </div>

    </form>
</div>