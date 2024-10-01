from django.shortcuts import render

# Create your views here.
from rest_framework.views import APIView 
from rest_framework.response import Response

class BlogList(APIView):
    def get(self, request):
        from blogs.models import Post
        blogs = Post.objects.all()
        return Response({'blogs': blogs})