from django.shortcuts import render

from django.shortcuts import render,redirect,get_object_or_404
from django.views import generic
from django.contrib.gis.geos import fromstr
from django.contrib.gis.db.models.functions import Distance
from shop.models import homeart1,dress1,streetfood1,organicveggies1,sales
from django.contrib.gis.geos import Point
from django.contrib import messages
from django.contrib.auth.models import User,auth
from django.contrib.gis.geos import Point
from django.contrib.gis.measure import D
from django.db.models import Q
from shop.forms import homeart1Form,streetfood1Form,dress1Form,organicveggies1Form
from django.utils import timezone
from shop.models import Post1,Post2,Post3,Post4
from shop.forms import Post1Form,Post2Form,Post3Form,Post4Form
from shop.models import homegraph,dressgraph,streetgraph,veggiesgraph
from VocalForLocal.settings import EMAIL_HOST_USER
from django.core.mail import send_mail
from itertools import islice
import random 

lat = 17.5013714
lng = 78.3878926
user_location = Point(lat,lng,srid=4326)


class Home(generic.ListView):
    model =homeart1
    context_object_name = 'shops'
    queryset = homeart1.objects.annotate(distance=Distance('geo_location',user_location)).order_by('distance')[0:6]
    for query in queryset:
        print(query.name,query.distance)
    template_name = 'shops/homeart2.html'
    
home = Home.as_view()

class Dresshome(generic.ListView):
    model =dress1
    context_object_name = 'shops'
    queryset = dress1.objects.annotate(distance=Distance('geo_location',user_location)).order_by('distance')[0:6]
    for query in queryset:
        print(query.name,query.distance)
    template_name = 'shops/dress2.html'
    
home = Dresshome.as_view()

class Streetfoodhome(generic.ListView):
    model =streetfood1
    context_object_name = 'shops'
    queryset = streetfood1.objects.annotate(distance=Distance('geo_location',user_location)).order_by('distance')[0:6]
    for query in queryset:
        print(query.name,query.distance)
    template_name = 'shops/street2.html'
    
home = Streetfoodhome.as_view()

class Veggieshome(generic.ListView):
    model = organicveggies1
    context_object_name = 'shops'
    queryset = organicveggies1.objects.annotate(distance=Distance('geo_location',user_location)).order_by('distance')[0:6]
    template_name = 'shops/veggies2.html'
    
home = Veggieshome.as_view()


def homeart11(request):
    if request.method=='POST':
        dist=request.POST['dist']
        lat = 17.5013714
        lng = 78.3878926
            #lat = request.POST['lat']
            #lng = request.POST['lng']
        print(lat)
        location_point = Point(lng,lat)
        home_art = homeart1.objects.first() 
        home_art.geo_location = location_point
        home_art.save()
        plus= homeart1.objects.filter(geo_location__distance_lte=(home_art.geo_location, D(km=dist)))
        messages.info(request,'query accepted')
        print('query accepted')
        for plu in plus:
            print(plu.name)
        hos=plus
        return render(request,'shops/homeart11.html',{'hos':hos})
    else:
        hos=homeart1.objects.all()
        return render(request,"shops/homeart11.html",{'hos':hos})

def single(request, pk):

    if request.method=='POST':
        rate=request.POST['rate']
        rate=float(rate)
        ob = get_object_or_404(homeart1, pk=pk)
        print('calculating rating')
        print(type(ob.rating))
        v=float((rate+float(ob.rating))/2.0)
        ob.rating=v
        ob.save();
        print('rating done neha')
        return redirect('single',pk=pk)
    else:
        ob = get_object_or_404(homeart1, pk=pk)
        pers = homegraph.nodes.all()
        posts=Post1.objects.all()
        persl = list(pers)
        random.shuffle(persl)
        iterator = islice(persl,4)
        params={'iterator':iterator,'ob':ob,'posts':posts}
        #return render(request,"shops/single.html",{'ob':ob})
        return render(request,"shops/single.html",params)



def single1(request, pk):
    
    if request.method=='POST':
        rate=request.POST['rate']
        rate=float(rate)
        ob = get_object_or_404(dress1, pk=pk)
        print('calculating rating')
        print(type(ob.rating))
        v=float((rate+float(ob.rating))/2.0)
        ob.rating=v
        ob.save();
        print('rating done neha')
        return redirect('single1',pk=pk)
    else:
        ob = get_object_or_404(dress1, pk=pk)
        pers = dressgraph.nodes.all()
        posts=Post2.objects.all()
        persl = list(pers)
        random.shuffle(persl)
        iterator = islice(persl,4)
        params={'iterator':iterator,'ob':ob,'posts':posts}
        #return render(request,"shops/single.html",{'ob':ob})
        return render(request,"shops/single1.html",params)

def single2(request, pk):
    if request.method=='POST':
        rate=request.POST['rate']
        rate=float(rate)
        ob = get_object_or_404(streetfood1, pk=pk)
        print('calculating rating')
        print(type(ob.rating))
        v=float((rate+float(ob.rating))/2.0)
        ob.rating=v
        ob.save();
        print('rating done neha')
        return redirect('single2',pk=pk)
    else:
        ob = get_object_or_404(streetfood1, pk=pk)
        pers = streetgraph.nodes.all()
        posts=Post3.objects.all()
        persl = list(pers)
        random.shuffle(persl)
        iterator = islice(persl,4)
        params={'iterator':iterator,'ob':ob,'posts':posts}
        #return render(request,"shops/single.html",{'ob':ob})
        return render(request,"shops/single2.html",params)

def single3(request, pk):
    if request.method=='POST':
        rate=request.POST['rate']
        rate=float(rate)
        ob = get_object_or_404(organicveggies1, pk=pk)
        print('calculating rating')
        print(type(ob.rating))
        v=float((rate+float(ob.rating))/2.0)
        ob.rating=v
        ob.save();
        print('rating done neha')
        return redirect('single3',pk=pk)
    else:
        ob = get_object_or_404(organicveggies1, pk=pk)
        pers = veggiesgraph.nodes.all()
        posts=Post4.objects.all()
        persl = list(pers)
        random.shuffle(persl)
        iterator = islice(persl,4)
        params={'iterator':iterator,'ob':ob,'posts':posts}
        #return render(request,"shops/single.html",{'ob':ob})
        return render(request,"shops/single3.html",params)
    
    
# Create your views here.

def aboutus(request):
    return render(request,"shops/about.html")

def contactus(request):
    return render(request,"shops/contact.html")


def index(request):
    hos=homeart1.objects.all()
    dres=dress1.objects.all()


    street=streetfood1.objects.all()
    org=organicveggies1.objects.all()


    hosl=list(hos)
    hosl = islice(hosl,4)
    dresl=list(dres)
    dresl=islice(dresl,4)


    streetl=list(street)
    streetl=islice(streetl,4)


    orgl=list(org)
    orgl=islice(orgl,4)




    params={'hosl':hosl,'dresl':dresl,'orgl':orgl,'streetl':streetl}
    return render(request,"shops/index.html",params)

def dataform(request):
    return render(request,"shops/dataform.html")


def homeart2(request):
    return render(request,'shops/homeart2.html')

def dress2(request):
    return render(request,'shops/dress2.html')

def streetfood2(request):
    return render(request,'shops/street2.html')

def veggies2(request):
    return render(request,'shops/veggies2.html')


def dress11(request):
    if request.method=='POST':
        dist=request.POST['dist']
        lat = 17.5013714
        lng = 78.3878926
            #lat = request.POST['lat']
            #lng = request.POST['lng']
        print(lat)
        location_point = Point(lng,lat)
        dress = dress1.objects.first() 
        dress.geo_location = location_point
        dress.save()
        plus= dress1.objects.filter(geo_location__distance_lte=(dress.geo_location, D(km=dist)))
        messages.info(request,'query accepted')
        print('query accepted')
        for plu in plus:
            print(plu.name)
        hos=plus
        return render(request,'shops/dress1.html',{'hos':hos})
    else:
        hos=dress1.objects.all()
        return render(request,"shops/dress1.html",{'hos':hos})

def register(request):
    if request.method=='POST':
        
        username = request.POST['username']
        email = request.POST['email']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        first_name = request.POST['first_name']
        

        if password1==password2:
            if User.objects.filter(username=username).exists():
                messages.info(request,'username taken')
                return redirect('shops/register')
            elif User.objects.filter(email=email).exists():
                messages.info(request,'email taken')
                return redirect('register')
            else:    
                user=User.objects.create_user(username=username,email=email,password=password1,first_name=first_name)
                user.save();
                print('user created')
                return redirect('login')
        else:
            print('password not matching')
            return redirect('register')
        return redirect('/')
    else:
        return render(request,'shops/register.html')


def login(request):
    if request.method=='POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username,password=password)

        if user is not None:
            auth.login(request,user)
            return redirect('index')
        else:
            messages.info(request,'Invalid Credentials')
            print('user created')
            return redirect('login')
    else:
        return render(request,'shops/login.html')

def firstpage(request):
    hos=homeart1.objects.all()
    dres=dress1.objects.all()


    street=streetfood1.objects.all()
    org=organicveggies1.objects.all()


    hosl=list(hos)
    hosl = islice(hosl,4)
    dresl=list(dres)
    dresl=islice(dresl,4)


    streetl=list(street)
    streetl=islice(streetl,4)


    orgl=list(org)
    orgl=islice(orgl,4)




    params={'hosl':hosl,'dresl':dresl,'orgl':orgl,'streetl':streetl}
    return render(request,'shops/firstpage.html',params)

def streetfood11(request):
    if request.method=='POST':
        dist=request.POST['dist']
        lat = 17.5013714
        lng = 78.3878926
            #lat = request.POST['lat']
            #lng = request.POST['lng']
        print(lat)
        location_point = Point(lng,lat)
        strtfood = streetfood1.objects.first() 
        strtfood.geo_location = location_point
        strtfood.save()
        plus= streetfood1.objects.filter(geo_location__distance_lte=(strtfood.geo_location, D(km=dist)))
        messages.info(request,'query accepted')
        print('query accepted')
        for plu in plus:
            print(plu.name)
        hos=plus
        return render(request,'shops/street1.html',{'hos':hos})
    else:
        hos=streetfood1.objects.all()
        return render(request,"shops/street1.html",{'hos':hos})

def veggies11(request):
    if request.method=='POST':
        dist=request.POST['dist']
        lat = 17.5013714
        lng = 78.3878926
            #lat = request.POST['lat']
            #lng = request.POST['lng']
        print(lat)
        location_point = Point(lng,lat)
        veggies = streetfood1.objects.first() 
        veggies.geo_location = location_point
        veggies.save()
        plus= organicveggies1.objects.filter(geo_location__distance_lte=(veggies.geo_location, D(km=dist)))
        messages.info(request,'query accepted')
        print('query accepted')
        hos=plus
        return render(request,'shops/veggies1.html',{'hos':hos})
    else:
        hos=organicveggies1.objects.all()
        return render(request,"shops/veggies1.html",{'hos':hos})


def dataform1(request):
    if request.method=='POST'and request.FILES['fileupload']:
        name = request.POST['name']
        price = request.POST['price']
        desc = request.POST['desc']
        shop_name = request.POST['shop_name']
        address = request.POST['address']
        latitude=request.POST['lat']
        longitude=request.POST['lng']
        img=request.FILES['fileupload']
        insta = request.POST['insta']
        area = request.POST['area']
        user=homeart1.objects.create(name=name, price=price, desc=desc,shop_name=shop_name,address=address,latitude=latitude,longitude=longitude,img=img,insta=insta,area=area)
        user.save();
        print('product(food) created')
        return redirect("shops/index")
    else:
        print('hello food')
        return render(request,'shops/dataform.html')



def dataform2(request):
    if request.method=='POST'and request.FILES['fileupload']:
        name = request.POST['name']
        price = request.POST['price']
        desc = request.POST['desc']
        shop_name = request.POST['shop_name']
        address = request.POST['address']
        latitude=request.POST['lat']
        longitude=request.POST['lng']
        img=request.FILES['fileupload']
        insta = request.POST['insta']
        area = request.POST['area']
        user=streetfood1.objects.create(name=name, price=price, desc=desc,shop_name=shop_name,address=address,latitude=latitude,longitude=longitude,img=img,insta=insta,area=area)
        user.save();
        print('product(food) created')
        return redirect("shops/index")
    else:
        print('hello food')
        return render(request,'shops/dataform.html')

def dataform3(request):
    if request.method=='POST'and request.FILES['fileupload']:
        name = request.POST['name']
        price = request.POST['price']
        desc = request.POST['desc']
        shop_name = request.POST['shop_name']
        address = request.POST['address']
        latitude=request.POST['lat']
        longitude=request.POST['lng']
        img=request.FILES['fileupload']
        insta = request.POST['insta']
        area = request.POST['area']
        user=dress1.objects.create(name=name, price=price, desc=desc,shop_name=shop_name,address=address,latitude=latitude,longitude=longitude,img=img,insta=insta,area=area)
        user.save();
        print('product(food) created')
        return redirect("shops/index")
    else:
        print('hello food')
        return render(request,'shops/dataform.html')


def dataform4(request):
    if request.method=='POST'and request.FILES['fileupload']:
        name = request.POST['name']
        price = request.POST['price']
        desc = request.POST['desc']
        shop_name = request.POST['shop_name']
        address = request.POST['address']
        latitude=request.POST['lat']
        longitude=request.POST['lng']
        img=request.FILES['fileupload']
        insta = request.POST['insta']
        area = request.POST['area']
        user=organicveggies1.objects.create(name=name, price=price, desc=desc,shop_name=shop_name,address=address,latitude=latitude,longitude=longitude,img=img,insta=insta,area=area)
        user.save();
        print('product(food) created')
        return redirect("shops/index")
    else:
        print('hello food')
        return render(request,'shops/dataform.html')


def homeartmap(request):
    return render(request,"shops/homeartmap.html")

def streetfoodmap(request):
    return render(request,"shops/streetfoodmap.html")

def organicveggiesmap(request):
    return render(request,"shops/organicveggiesmap.html")

def dressmap(request):
    return render(request,"shops/dressmap.html")        

def post_add1(request,pk):
    if request.method=='POST':
        form = Post1Form(request.POST)
        if form.is_valid():
            rev = form.save(commit=False)
            rev.published_date=timezone.now()
            rev.save()
        print('post added')
        return redirect('single',pk=pk)
    else:
        form = Post1Form()
        print('post not added yet')
        return render(request,"shops/post_add.html",{'form' : form})

def post_add2(request,pk):
    if request.method=='POST':
        form = Post2Form(request.POST)
        if form.is_valid():
            rev = form.save(commit=False)
            rev.published_date=timezone.now()
            rev.save()
        print('post added')
        return redirect('single1',pk=pk)
    else:
        form = Post2Form()
        print('post not added yet')
        return render(request,"shops/post_add.html",{'form' : form})

def post_add3(request,pk):
    if request.method=='POST':
        form = Post3Form(request.POST)
        if form.is_valid():
            rev = form.save(commit=False)
            rev.published_date=timezone.now()
            rev.save()
        print('post added')
        return redirect('single2',pk=pk)
    else:
        form = Post3Form()
        print('post not added yet')
        return render(request,"shops/post_add.html",{'form' : form})

def post_add4(request,pk):
    if request.method=='POST':
        form = Post4Form(request.POST)
        if form.is_valid():
            rev = form.save(commit=False)
            rev.published_date=timezone.now()
            rev.save()
        print('post added')
        return redirect('single3',pk=pk)
    else:
        form = Post4Form()
        print('post not added yet')
        return render(request,"shops/post_add.html",{'form' : form})


def homeart_remove(request, pk):
    obj = get_object_or_404(homeart1, pk=pk)
    pub=timezone.now()
    s=sales.objects.create(name=obj.name,price=obj.price,desc=obj.desc,shop_name=obj.shop_name,address=obj.address,img=obj.img,area=obj.area,sold_area=request.user.first_name,customer_name=request.user.username,sold_month=pub.month,sold_year=pub.year)
    s.save();
    subject = 'Welcome to our VocalForLocal Store.'
    message = 'Thankyou For Buying.The product will be delivered to you soon and cash on delivery service available'
    recepient = request.user.email
    send_mail(subject,message, EMAIL_HOST_USER, [recepient], fail_silently = False)
    obj.delete()
    print('mail sent and sales table updated!')
    return render(request, 'shops/success.html', {'recepient': recepient})


def dress_remove(request, pk):
    obj = get_object_or_404(dress1, pk=pk)
    pub=timezone.now()
    s=sales.objects.create(name=obj.name,price=obj.price,desc=obj.desc,shop_name=obj.shop_name,address=obj.address,img=obj.img,area=obj.area,sold_area=request.user.first_name,customer_name=request.user.username,sold_month=pub.month,sold_year=pub.year)
    s.save();
    subject = 'Welcome to our VocalForLocal Store.'
    message = 'Thankyou For Buying.The product will be delivered to you soon and cash on delivery service available'
    recepient = request.user.email
    send_mail(subject,message, EMAIL_HOST_USER, [recepient], fail_silently = False)
    obj.delete()
    print('mail sent and sales table updated!')
    return render(request, 'shops/success.html', {'recepient': recepient})

def streetfood_remove(request, pk):
    obj = get_object_or_404(streetfood1, pk=pk)
    pub=timezone.now()
    s=sales.objects.create(name=obj.name,price=obj.price,desc=obj.desc,shop_name=obj.shop_name,address=obj.address,img=obj.img,area=obj.area,sold_area=request.user.first_name,customer_name=request.user.username,sold_month=pub.month,sold_year=pub.year)
    s.save();
    subject = 'Welcome to our VocalForLocal Store.'
    message = 'Thankyou For Buying.The product will be delivered to you soon and cash on delivery service available'
    recepient = request.user.email
    send_mail(subject,message, EMAIL_HOST_USER, [recepient], fail_silently = False)
    obj.delete()
    print('mail sent and sales table updated!')
    return render(request, 'shops/success.html', {'recepient': recepient})


def organicveggies_remove(request, pk):
    obj = get_object_or_404(organicveggies1, pk=pk)
    pub=timezone.now()
    s=sales.objects.create(name=obj.name,price=obj.price,desc=obj.desc,shop_name=obj.shop_name,address=obj.address,img=obj.img,area=obj.area,sold_area=request.user.first_name,customer_name=request.user.username,sold_month=pub.month,sold_year=pub.year)
    s.save();
    subject = 'Welcome to our VocalForLocal Store.'
    message = 'Thankyou For Buying.The product will be delivered to you soon and cash on delivery service available'
    recepient = request.user.email
    send_mail(subject,message, EMAIL_HOST_USER, [recepient], fail_silently = False)
    #obj.delete()
    print('mail sent and sales table updated!')
    return render(request, 'shops/success.html', {'recepient': recepient})
