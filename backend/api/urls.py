from django.urls import path
from .views import ArticleListView
from .views import ArticleSearchView
from .views import ArticleDetailView

urlpatterns = [
    path('articles/', ArticleListView.as_view(), name='article-list'),
    path('articles/search/', ArticleSearchView.as_view(), name='article-search'),

    path('articles/<int:pk>/', ArticleDetailView.as_view(), name='article-detail'),

]