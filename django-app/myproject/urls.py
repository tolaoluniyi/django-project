from django.contrib import admin # type: ignore
from django.urls import path

urlpatterns = [
    path('admin/', admin.site.urls),
]
