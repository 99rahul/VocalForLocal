from django import forms
from shop.models import homeart1,streetfood1,dress1,organicveggies1
from shop.models import Post1,Post2,Post3,Post4
class homeart1Form(forms.ModelForm):
 
    class Meta:
        model = homeart1 
        fields = ['name', 'price', 'desc','shop_name','address','latitude','longitude','img','insta','area']

class streetfood1Form(forms.ModelForm):
 
    class Meta:
        model = streetfood1 
        fields = ['name', 'price', 'desc','shop_name','address','latitude','longitude','img','area']

class dress1Form(forms.ModelForm):
 
    class Meta:
        model = dress1 
        fields = ['name', 'price', 'desc','shop_name','address','latitude','longitude','img','area']

class organicveggies1Form(forms.ModelForm):
 
    class Meta:
        model = organicveggies1 
        fields = ['name', 'price', 'desc','shop_name','address','latitude','longitude','img','area']

class Post1Form(forms.ModelForm):
 
    class Meta:
        model = Post1 
        fields = ['name', 'email', 'text']

class Post2Form(forms.ModelForm):
 
    class Meta:
        model = Post2
        fields = ['name', 'email', 'text']

class Post3Form(forms.ModelForm):
 
    class Meta:
        model = Post3
        fields = ['name', 'email', 'text']

class Post4Form(forms.ModelForm):
 
    class Meta:
        model = Post4 
        fields = ['name', 'email', 'text']