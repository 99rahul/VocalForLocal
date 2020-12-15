

from django.contrib import admin
from django.contrib.gis.admin import OSMGeoAdmin
from shop.models import homeart1,homeart1Admin,streetfood1,streetfood1Admin,dress1,dress1Admin,organicveggies1Admin,organicveggies1
#from shop.models import streetfood1,streetfood1Admin
admin.site.register(homeart1,homeart1Admin) 
admin.site.register(streetfood1,streetfood1Admin)
admin.site.register(dress1,dress1Admin)
admin.site.register(organicveggies1,organicveggies1Admin)

