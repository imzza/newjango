from django.urls import include, path

from htv import api_views, func_views

urlpatterns = [
    # fmt: off
    path("api/", include([
        path("v1/", include([
            path("videos", api_views.VideoList.as_view(), name="videos"),
            path("videos/<int:pk>", api_views.VideoDetail.as_view(), name="video-detail"),
        ])),
    ]))
    # fmt: on
]
