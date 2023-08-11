from django.urls import path

from . import views

urlpatterns = [
    # fmt: off
    path("", views.index, name="index")
    # path("api/", include([
    #     path("v1/", include([
    #         path("videos", api_views.VideoList.as_view(), name="videos"),
    #         path("videos/<int:pk>", api_views.VideoDetail.as_view(), name="video-detail"),
    #     ])),
    # ]))
    # fmt: on
]
