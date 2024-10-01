from django.urls import path #type: ignore
from rest_framework.urlpatterns import format_suffix_patterns #type: ignore

from . import views

app_name = 'blogs'


urlpatterns = [
    path('list', views.BlogList.as_view(), name='blog-list'),
    
]


urlpatterns = format_suffix_patterns(urlpatterns)


