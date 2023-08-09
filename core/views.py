from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view
# Create your views here.

@api_view(["GET"])
def index(request):
    if request.method == "GET":
        return Response(data={"message": "API is working!"}, status=status.HTTP_200_OK)