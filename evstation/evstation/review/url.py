from django.conf.urls import  url
from review import views


urlpatterns=[
    # url('viewreviewu/', views.viewruser),
    url('viewreviewa/', views.viewradmin),
    url('viewreviews/', views.viewrstation),

    # url('postreview',views.postreview)
]
