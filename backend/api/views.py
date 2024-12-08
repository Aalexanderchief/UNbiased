from django.contrib.auth.models import User
from .serializers import UserSerializer
from django.db.models import Q
from rest_framework import generics
from .models import Article
from .serializers import ArticleDetailSerializer
from rest_framework.permissions import AllowAny

class ArticleDetailView(generics.RetrieveAPIView):
    queryset = Article.objects.all()
    serializer_class = ArticleDetailSerializer
    permission_classes = [AllowAny]

class CreateUserView(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [AllowAny]


from rest_framework import generics
from rest_framework.permissions import AllowAny
from .models import Article
from .serializers import ArticleSerializer

class ArticleListView(generics.ListAPIView):
    queryset = Article.objects.all()
    serializer_class = ArticleSerializer
    permission_classes = [AllowAny]  # Anyone can access this endpoint

class ArticleSearchView(generics.ListAPIView):
    serializer_class = ArticleSerializer
    permission_classes = [AllowAny]

    def get_queryset(self):
        query = self.request.GET.get('q', '')
        if query:
            return Article.objects.filter(
                Q(title__icontains=query) |
                Q(summary__icontains=query) |
                Q(link__icontains=query)
            )
        else:
            # If no query is provided, return an empty queryset
            return Article.objects.none()

