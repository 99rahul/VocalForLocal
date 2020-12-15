from django.db import models
from django.contrib.gis.db import models
from django.contrib.gis.geos import Point
from django.db.models.manager import Manager
from django.conf import settings
from django.utils import timezone
from django.contrib.gis import admin as gis_admin
from django_neomodel import DjangoNode
from neomodel import (config, StructuredNode, StringProperty,DateProperty,IntegerProperty,
    UniqueIdProperty,FloatProperty,RelationshipTo)

config.DATABASE_URL = 'bolt://neo4j:1234@localhost:7687'

class SecureOSMGeoAdmin(gis_admin.OSMGeoAdmin):
    openlayers_url = (
        'https://cdnjs.cloudflare.com/ajax/libs/openlayers/2.13.1/OpenLayers.js'
    )

class homeart1Admin(SecureOSMGeoAdmin):
   pass

class streetfood1Admin(SecureOSMGeoAdmin):
   pass

class dress1Admin(SecureOSMGeoAdmin):
    pass

class organicveggies1Admin(SecureOSMGeoAdmin):
    pass
# Create your models here.
class homeart(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField()
    desc = models.TextField()
    shop_name = models.CharField(max_length=200)
    address = models.CharField(max_length=1000)
    latitude = models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    longitude=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    geo_location = models.PointField(srid=4326, null=True,blank=True)
    objects = models.Manager()
    img = models.ImageField(upload_to ='pices',max_length=2000000)
    insta=models.TextField()
    area = models.TextField()

class homeart1(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField()
    desc = models.TextField()
    shop_name = models.CharField(max_length=200)
    address = models.CharField(max_length=1000)
    latitude = models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    longitude=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    geo_location = models.PointField(srid=4326, db_index=True, blank=True, null=True)
    objects = models.Manager()
    img = models.ImageField(upload_to ='pices',max_length=2000000)
    insta=models.TextField()
    area = models.TextField()
    rating=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False,default=0.0)

class streetfood1(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField()
    desc = models.TextField()
    shop_name = models.CharField(max_length=200)
    address = models.CharField(max_length=1000)
    latitude = models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    longitude=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    geo_location = models.PointField(srid=4326, db_index=True, blank=True, null=True)
    objects = models.Manager()
    img = models.ImageField(upload_to ='pices',max_length=2000000)
    area = models.TextField()
    rating=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False,default=0.0)

class dress1(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField()
    desc = models.TextField()
    shop_name = models.CharField(max_length=200)
    address = models.CharField(max_length=1000)
    latitude = models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    longitude=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    geo_location = models.PointField(srid=4326, db_index=True, blank=True, null=True)
    objects = models.Manager()
    img = models.ImageField(upload_to ='pices',max_length=2000000)
    area = models.TextField()
    rating=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False,default=0.0)

class organicveggies1(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField()
    desc = models.TextField()
    shop_name = models.CharField(max_length=200)
    address = models.CharField(max_length=1000)
    latitude = models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    longitude=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False)
    geo_location = models.PointField(srid=4326, db_index=True, blank=True, null=True)
    objects = models.Manager()
    img = models.ImageField(upload_to ='pices',max_length=2000000)
    area = models.TextField()
    rating=models.DecimalField(max_digits=8, decimal_places=6, blank=False, null=False,default=0.0)

class Post1(models.Model):
    
    name = models.CharField(max_length=200)
    email= models.EmailField(max_length=500,blank=True,null=True)
    text = models.TextField()
    published_date = models.DateTimeField(blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):  
        return self.name

class Post2(models.Model):
    
    name = models.CharField(max_length=200)
    email= models.EmailField(max_length=500,blank=True,null=True)
    text = models.TextField()
    published_date = models.DateTimeField(blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):  
        return self.name

class Post3(models.Model):
    
    name = models.CharField(max_length=200)
    email= models.EmailField(max_length=500,blank=True,null=True)
    text = models.TextField()
    published_date = models.DateTimeField(blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):  
        return self.name

class Post4(models.Model):
    
    name = models.CharField(max_length=200)
    email= models.EmailField(max_length=500,blank=True,null=True)
    text = models.TextField()
    published_date = models.DateTimeField(blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):  
        return self.name

class homegraph(DjangoNode):
    name = StringProperty(max_length=100)
    price = IntegerProperty(default=0)
    desc = StringProperty(max_length=100)
    shop_name = StringProperty(max_length=100)
    address = StringProperty(max_length=500)
    latitude = FloatProperty()
    longitude = FloatProperty()
    img = StringProperty()
    insta = StringProperty(max_length=100)
    area = StringProperty(max_length=100)

class dressgraph(DjangoNode):
    name = StringProperty(max_length=100)
    price = IntegerProperty(default=0)
    desc = StringProperty(max_length=100)
    shop_name = StringProperty(max_length=100)
    address = StringProperty(max_length=500)
    latitude = FloatProperty()
    longitude = FloatProperty()
    img = StringProperty()
    area = StringProperty(max_length=100)

class streetgraph(DjangoNode):
    name = StringProperty(max_length=100)
    price = IntegerProperty(default=0)
    desc = StringProperty(max_length=100)
    shop_name = StringProperty(max_length=100)
    address = StringProperty(max_length=500)
    latitude = FloatProperty()
    longitude = FloatProperty()
    img = StringProperty()
    area = StringProperty(max_length=100)

class veggiesgraph(DjangoNode):
    name = StringProperty(max_length=100)
    price = IntegerProperty(default=0)
    desc = StringProperty(max_length=100)
    shop_name = StringProperty(max_length=100)
    address = StringProperty(max_length=500)
    latitude = FloatProperty()
    longitude = FloatProperty()
    img = StringProperty()
    area = StringProperty(max_length=100)

class sales(models.Model):
    name = models.CharField(max_length=100)
    price = models.IntegerField()
    desc = models.TextField()
    shop_name = models.CharField(max_length=200)
    address = models.CharField(max_length=1000)
    img = models.ImageField(upload_to ='pices',max_length=2000000)
    area = models.TextField()
    sold_area = models.TextField()
    customer_name=models.CharField(max_length=100)
    sold_month=models.IntegerField(default=1)
    sold_year=models.IntegerField(default=2020)