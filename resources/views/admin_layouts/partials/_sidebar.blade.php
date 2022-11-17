<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">

            <li class="nav-item"><a href=""><i class="la la-user"></i><span class="menu-title" data-i18n="nav.dash.main">Categories</span></a>
                <ul class="menu-content">
                    <li class="{{ request()->routeIs('admin.category.create') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.category.create')}}" data-i18n="nav.dash.ecommerce">Create</a>
                    </li>
                    <li class="{{ request()->routeIs('admin.category.index') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.category.index') }}" data-i18n="nav.dash.ecommerce">View</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item"><a href=""><i class="la la-user"></i><span class="menu-title" data-i18n="nav.dash.main">Blogs</span></a>
                <ul class="menu-content">
                    <li class="{{ request()->routeIs('admin.blog.create') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.blog.create')}}" data-i18n="nav.dash.ecommerce">Create</a>
                    </li>
                    <li class="{{ request()->routeIs('admin.blog.index') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.blog.index') }}" data-i18n="nav.dash.ecommerce">View</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item"><a href=""><i class="la la-user"></i><span class="menu-title" data-i18n="nav.dash.main">Works</span></a>
                <ul class="menu-content">
                    <li class="{{ request()->routeIs('admin.work.create') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.work.create')}}" data-i18n="nav.dash.ecommerce">Create</a>
                    </li>
                    <li class="{{ request()->routeIs('admin.work.index') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.work.index') }}" data-i18n="nav.dash.ecommerce">View</a>
                    </li>
                </ul>
            </li>


             <li class="nav-item"><a href=""><i class="la la-user"></i><span class="menu-title" data-i18n="nav.dash.main">News</span></a>
                <ul class="menu-content">
                    <li class="{{ request()->routeIs('admin.news.create') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.news.create')}}" data-i18n="nav.dash.ecommerce">Create</a>
                    </li>
                    <li class="{{ request()->routeIs('admin.news.index') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('admin.news.index') }}" data-i18n="nav.dash.ecommerce">View</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item"><a href=""><i class="la la-user"></i><span class="menu-title" data-i18n="nav.dash.main">Contact us</span></a>
                <ul class="menu-content">
                    <li class="{{ request()->routeIs('contact.form') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('contact.form')}}" data-i18n="nav.dash.ecommerce">Create</a>
                    </li>
                    <li class="{{ request()->routeIs('contacts') ? 'active' : '' }}">
                        <a class="menu-item" href="{{ route('contacts') }}" data-i18n="nav.dash.ecommerce">ContactUs Queries</a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</div>

<script src="https://kit.fontawesome.com/763be145fb.js" crossorigin="anonymous"></script>
