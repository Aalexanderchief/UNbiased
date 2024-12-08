from django.contrib.auth.models import User
from rest_framework import serializers
from .models import Article


class ArticleSerializer(serializers.ModelSerializer):
    class Meta:
        model = Article
        fields = ['title', 'summary', 'verification', 'link']


class ArticleDetailSerializer(serializers.ModelSerializer):
    class Meta:
        model = Article
        fields = ['title', 'text', 'summary', 'verification', 'link']


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ["id", "username", "password"]
        extra_kwargs = {"password": {"write_only": True}}

    def create(self, validated_data):
        print(validated_data)
        user = User.objects.create_user(**validated_data)
        return user
