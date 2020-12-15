"""VocalForLocal URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
    
    path('shop/dataform', views.dataform, name="dataform"),
    path('shop/homeart11',views.homeart11,name="homeart11"),
    path('shop/dress',views.dress11,name="dress"),
    path('shop/streetfood',views.streetfood11,name="streetfood"),
    path('shop/veggies',views.veggies11,name="veggies"),
    path('single/<pk>/', views.single,name="single"),
    path('single1/<pk>/', views.single1,name="single1"),
    path('single2/<pk>/', views.single2,name="single2"),
    path('single3/<pk>/', views.single3,name="single3"),
    path('home', views.Home.as_view(),name="homeart2"),
    path('streetfoodhome', views.Streetfoodhome.as_view(),name="streetfood2"),
    path('dresshome', views.Dresshome.as_view(),name="dress2"),
    path('veggieshome', views.Veggieshome.as_view(),name="veggies2"),
    path('shops/register',views.register, name='register'),
    path('shops/login',views.login, name='login'),
	path('shops/index', views.index,name="index"),
    path('shops/aboutus', views.aboutus,name="aboutus"),
    path('shops/contactus', views.contactus,name="contactus"),
    path('', views.firstpage,name="firstpage"),
	path('dataform1', views.dataform1,name="dataform1"),
    path('dataform2', views.dataform2,name="dataform2"),
    path('dataform3', views.dataform3,name="dataform3"),
    path('dataform4', views.dataform4,name="dataform4"),
    path('homeartmap', views.homeartmap, name="homeartmap"),
    path('streetfoodmap', views.streetfoodmap, name="streetfoodmap"),
    path('organicveggiesmap', views.organicveggiesmap, name="organicveggiesmap"),
    path('dressmap', views.dressmap, name="dressmap"),
    path('post_add1/<pk>', views.post_add1,name="post_add1"),
    path('post_add2/<pk>', views.post_add2,name="post_add2"),
    path('post_add3/<pk>', views.post_add3,name="post_add3"),
    path('post_add4/<pk>', views.post_add4,name="post_add4"),
    path('homeart/<pk>/remove/', views.homeart_remove, name='homeart_remove'),
    path('dress/<pk>/remove/', views.dress_remove, name='dress_remove'),
    path('streetfood/<pk>/remove/', views.streetfood_remove, name='streetfood_remove'),
    path('organicveggies/<pk>/remove/', views.organicveggies_remove, name='organicveggies_remove'),
    path('shop/homeart2', views.homeart2,name="homeart2"),

]

   