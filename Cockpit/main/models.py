import datetime
from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from django.db.models.signals import post_save
from django.dispatch import receiver
from PIL import Image

# Create your models here.
class Ssj(models.Model):
    name = models.CharField(max_length=155, blank=True)
    hospcode = models.CharField(max_length=5, default='00068')

    def __str__(self):
        return self.name +' - '+self.hospcode

    class Meta:
        ordering = ('name',)
        verbose_name = 'จังหวัด'
        verbose_name_plural = 'จังหวัด'
 
class Excellence(models.Model):
    short_name = models.CharField(max_length=10)
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name
        
class Profile(models.Model):
    ssj_list = (
        ('00068','ชุมพร'),
        ('00067','ระนอง'),
        ('00066','สุราษฎร์ธานี'),
        ('00062','นครศรีธรรมราช'),
        ('00063','กระบี่'),
        ('00064','พังงา'),
        ('00065','ภูเก็ต'),
    )
    response_list = (
        ('1','พัฒนายุทธศาสตร์สาธารณสุข'),
        ('2','บริหารทั่วไป'),
        ('3','ทันตสาธารณสุข'),
        ('4','ควบคุมโรคติดต่อ'),
        ('5','คุ้มครองผู้บริโภคและเภสัชสาธารณสุข'),
        ('6','บริหารทรัพยากรบุคคล'),
        ('7','นิติกร'),
        ('8','พัฒนาคุณภาพและสรุปแบบบริการ'),
        ('9','ส่งเสริมสุขภาพ'),
        ('10','อนามัยสิ่งแวดล้อมและอาชีวอนามัย'),
        ('11','ประกันสุขภาพ'),
        ('12','ควบคุมโรคไม่ติดต่อ สุขภาพจิตและยาเสพติด'),
        ('13','แพทย์แผนไทยและการแพทย์ทางเลือก'),
        ('14','สุขศึกษาประชาสัมพันธ์'),
        ('15','None'),
    )

    user = models.OneToOneField(User, on_delete=models.CASCADE)
    user_phone = models.CharField(max_length=100, blank=True, null=True)
    ssj = models.CharField(max_length=100, choices=ssj_list, default='00068')
    response = models.CharField(max_length=100, choices=response_list, default='1')
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')

    def __str__(self):
        return  self.user.username+' - '+self.ssj+' - '+self.response

class Reponse(models.Model):
    name = models.CharField(max_length=155, blank=True )

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'main_response'

class Kpi(models.Model):
    response = models.ForeignKey(Reponse, on_delete=models.CASCADE)
    kpi_code = models.CharField(max_length=15,unique=True)
    kpi_name = models.TextField(blank=True)
    kpi_group = models.CharField(max_length=15, blank=True)
    kpi_group_name = models.CharField(max_length=55, blank=True)
    goal = models.CharField(max_length=11, blank=True)
    goal_descript = models.TextField(blank=True)
    cri_type = models.CharField(max_length=15, blank=True)
    unit = models.CharField(max_length=55, blank=True)
    formular = models.CharField(max_length=55, blank=True)
    formular_type = models.CharField(max_length=15, blank=True)
    descript_a = models.TextField(blank=True)
    descript_b = models.TextField(blank=True) 

    def __str__(self):
        return self.kpi_code+' - '+self.kpi_name
    
    class Meta:
        db_table = 'main_kpi'

class KeyInput(models.Model):
    year_list = (('2020', '2563'),)
    year = models.CharField(max_length=6, choices=year_list, default='2020')
    hospcode = models.ForeignKey(Ssj, default='00068', on_delete=models.CASCADE)
    response = models.ForeignKey(Reponse, on_delete=models.SET_NULL, null=True)
    kpi = models.ForeignKey(Kpi, on_delete=models.SET_NULL, null=True)    
    a1 = models.CharField(max_length=55, blank=True)
    b1 = models.CharField(max_length=55, blank=True)
    a2 = models.CharField(max_length=55, blank=True)
    b2 = models.CharField(max_length=55, blank=True)
    a3 = models.CharField(max_length=55, blank=True)
    b3 = models.CharField(max_length=55, blank=True)
    a4 = models.CharField(max_length=55, blank=True)
    b4 = models.CharField(max_length=55, blank=True)
    a5 = models.CharField(max_length=55, blank=True)
    b5 = models.CharField(max_length=55, blank=True)
    a6 = models.CharField(max_length=55, blank=True)
    b6 = models.CharField(max_length=55, blank=True)
    a7 = models.CharField(max_length=55, blank=True)
    b7 = models.CharField(max_length=55, blank=True)
    a8 = models.CharField(max_length=55, blank=True)
    b8 = models.CharField(max_length=55, blank=True)
    a9 = models.CharField(max_length=55, blank=True)
    b9 = models.CharField(max_length=55, blank=True)
    a10 = models.CharField(max_length=55, blank=True)
    b10 = models.CharField(max_length=55, blank=True)
    a11 = models.CharField(max_length=55, blank=True)
    b11 = models.CharField(max_length=55, blank=True)
    a12 = models.CharField(max_length=55, blank=True)
    b12 = models.CharField(max_length=55, blank=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    input_update = models.DateTimeField(default = timezone.now)

    def save(self, *args, **kwargs):
        if not self.id:
            self.created = timezone.now()
        self.modified = timezone.now()
        return super(KeyInput, self).save(*args, **kwargs)

    def __str__(self):
        return str(self.kpi)+' - '+str(self.hospcode) +' - '+str(self.user.first_name)+' - '+str(self.user.last_name)

    class Meta:
        db_table = 'main_keyinput'

class Cmpo(models.Model):
    name = models.CharField(max_length=30)
    population = models.PositiveIntegerField()

    def __str__(self):
        return self.name
    
    class Meta:
        db_table = 'main_cmpo'
