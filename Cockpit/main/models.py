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

class Cmpo(models.Model):
    name = models.CharField(max_length=30)
    population = models.PositiveIntegerField()

    def __str__(self):
        return self.name
    
    class Meta:
        db_table = 'main_cmpo'

class Unit(models.Model):
    name = models.CharField(max_length=55,default='ร้อยละ')

    def __str__(self):
        return self.name

    class Meta:
        db_table = 'main_unit'

class Year(models.Model):
    year = models.CharField(max_length=4,default='2020')

    def __str__(self):
        return self.year

    class Meta:
        db_table = 'main_year'

class Excellence(models.Model):
    short_name = models.CharField(max_length=3, default='pp')
    name = models.CharField(max_length=55)

    def __str__(self):
        return self.name        

class Group(models.Model):
    name = models.CharField(max_length=55,default='พัฒนายุทธศาสตร์สาธารณสุข')

    def __str__(self):
        return self.name
    
    class Meta:
        db_table = 'main_group'

class Response(models.Model):
    name = models.CharField(max_length=155, blank=True )
    def __str__(self):
        return self.name

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    user_phone = models.CharField(max_length=100, blank=True, null=True)
    ssj = models.ForeignKey(Ssj, on_delete=models.CASCADE,null=True,blank=True)
    group = models.ForeignKey(Group, on_delete=models.CASCADE,null=True,blank=True)
    image = models.ImageField(default='default.jpg', upload_to='profile_pics')

    def __str__(self):
        return  self.user.first_name+' - '+self.ssj+' - '+self.group
    
    class Meta:
        db_table = 'main_profile'

class Kpi(models.Model):
    kpi_code = models.CharField(max_length=15,unique=True)
    kpi_name = models.TextField(blank=True)
    kpi_group = models.CharField(max_length=15, blank=True)
    kpi_group_name = models.CharField(max_length=55, blank=True)
    response = models.ForeignKey(Response, on_delete=models.CASCADE)
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
        ordering = ('kpi_code',)
        verbose_name = 'ตัวชี้วัด KPI'
        verbose_name_plural = 'ตัวชี้วัด KPI'

class Index(models.Model):
    name = models.CharField(max_length=255)
    group = models.ForeignKey(Group, on_delete=models.CASCADE)
    kpi_code = models.CharField(max_length=5,unique=True,null=True,blank=True)
    year = models.ForeignKey(Year, on_delete=models.CASCADE,null=True,blank=True)
    excellence= models.ForeignKey(Excellence,default=1, on_delete=models.CASCADE)
    goal = models.CharField(max_length=11, blank=True)
    goal_descript = models.TextField(blank=True)
    cri_type = models.CharField(max_length=15, blank=True)
    unit = models.ForeignKey(Unit,null=True,blank=True, on_delete=models.CASCADE)
    formular = models.CharField(max_length=55, blank=True)
    formular_type = models.CharField(max_length=15, blank=True)
    descript_a = models.TextField(blank=True)
    descript_b = models.TextField(blank=True)
    active = models.BooleanField(default=True)     

    def __str__(self):
        return self.name
        
    class Meta:
        db_table = 'main_index'

class Input(models.Model):

    year = models.ForeignKey(Year, on_delete=models.CASCADE,null=True,blank=True)
    ssj = models.ForeignKey(Ssj, on_delete=models.CASCADE,null=True,blank=True)
    excellence = models.ForeignKey(Excellence, on_delete=models.CASCADE,null=True,blank=True)
    group = models.ForeignKey(Group, on_delete=models.CASCADE,null=True,blank=True)
    index = models.ForeignKey(Index, on_delete=models.CASCADE,null=True,blank=True)
    a1 = models.IntegerField(null=True,blank=True)
    b1 = models.IntegerField(null=True,blank=True)
    a2 = models.IntegerField(null=True,blank=True)
    b2 = models.IntegerField(null=True,blank=True)
    a3 = models.IntegerField(null=True,blank=True)
    b3 = models.IntegerField(null=True,blank=True)
    a4 = models.IntegerField(null=True,blank=True)
    b4 = models.IntegerField(null=True,blank=True)
    a5 = models.IntegerField(null=True,blank=True)
    b5 = models.IntegerField(null=True,blank=True)
    a6 = models.IntegerField(null=True,blank=True)
    b6 = models.IntegerField(null=True,blank=True)
    a7 = models.IntegerField(null=True,blank=True)
    b7 = models.IntegerField(null=True,blank=True)
    a8 = models.IntegerField(null=True,blank=True)
    b8 = models.IntegerField(null=True,blank=True)
    a9 = models.IntegerField(null=True,blank=True)
    b9 = models.IntegerField(null=True,blank=True)
    a10 = models.IntegerField(null=True,blank=True)
    b10 = models.IntegerField(null=True,blank=True)
    a11 = models.IntegerField(null=True,blank=True)
    b11 = models.IntegerField(null=True,blank=True)
    a12 = models.IntegerField(null=True,blank=True)
    b12 = models.IntegerField(null=True,blank=True)
    user = models.ForeignKey(User, on_delete=models.CASCADE, null=True)
    input_update = models.DateTimeField(default = timezone.now)

    def save(self, *args, **kwargs):
        if not self.id:
            self.created = timezone.now()
        self.modified = timezone.now()
        return super(KeyInput, self).save(*args, **kwargs)
    def __str__(self):
        return self.user.first_name

class KeyInput(models.Model):
    year_list = (('2020', '2563'),)
    kpi = models.ForeignKey(Kpi, on_delete=models.DO_NOTHING)
    hospcode = models.ForeignKey(Ssj, default='00068', on_delete=models.CASCADE)
    response = models.ForeignKey(Response, default='1', on_delete=models.CASCADE)
    year = models.CharField(max_length=6, choices=year_list, default='2020')
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
        return str(self.kpi)+' - '+ str(self.response) +' - '+str(self.hospcode) +' - '+str(self.user)

    class Meta:
        ordering = ('kpi',)
        verbose_name = 'บันทึก KPI'
        verbose_name_plural = 'บันทึก KPI'

class Kpi_eval_prov(models.Model):
    kpi_year = models.DateField(null=True, blank=True)
    hospcode = models.CharField(max_length=5)
    kpi_id = models.CharField(max_length=5)
    ex = models.CharField(max_length=55)
    kpi_eval = models.IntegerField()

    def __str__(self):
        return self.hospcode +' - '+self.ex

class Kpi_eval_rh(models.Model):
    kpi_year = models.DateField(null=True, blank=True)
    kpi_id = models.CharField(max_length=5)
    ex = models.CharField(max_length=55)
    kpi_eval = models.IntegerField()

    def __str__(self):
        return self.ex

class Kpi_index(models.Model):
    ex_list = (('pp','PP&P Excellence'),('se','Service Excellence'),('pe','People Excellence'),('ge','Government Excellence'),('ncd','NCD'))
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
    kpi_year_list = (('2020','2563'),('2021','2564'))
    unit_list = (('1','ร้อยละ')
        ,('2','ต่อแสนประชากร')
        ,('3','คน')
        ,('4','แห่ง')
        ,('5','เรื่อง')
        ,('6','เขตสุขภาพ')
        ,('7','ฉบับ')
        ,('8','ครอบครัว')
        ,('9','ต่อร้อยประชากร')
        ,('10',' - '))

    kpi = models.CharField(max_length=5)
    kpi_name = models.TextField()
    ex = models.CharField(max_length=15, choices=ex_list, default='pp')
    goal = models.CharField(max_length=15, null=True, blank=True)
    cri_type = models.CharField(max_length=55,null=True,blank=True)
    hdc = models.CharField(max_length=15,null=True,blank=True)
    response = models.CharField(max_length=255,choices=response_list,default='1')
    etc = models.TextField(null=True,blank=True)
    kpi_year = models.CharField(max_length=4 ,default='2020')
    success_type = models.CharField(max_length=1,null=True,blank=True)
    main_kpi_id = models.CharField(max_length=15,null=True,blank=True)
    unit = models.CharField(max_length=100, choices=unit_list, default='1')
    static_target = models.CharField(max_length=1,null=True,blank=True)
    kpi_formular = models.CharField(max_length=255,null=True,blank=True)
    kpi_formular_script = models.TextField(null=True,blank=True)
    a = models.TextField(null=True,blank=True)
    b = models.TextField(null=True,blank=True)
    c = models.TextField(null=True,blank=True)
    d = models.TextField(null=True,blank=True)
    e = models.TextField(null=True,blank=True)
    f = models.TextField(null=True,blank=True)
    pa = models.CharField(max_length=1,null=True,blank=True)
    h_kpi = models.CharField(max_length=1,null=True,blank=True)
    active = models.CharField(max_length=1,null=True,blank=True)
    note = models.TextField(null=True,blank=True)
    target = models.TextField(null=True,blank=True)

    def __str__(self):
        return self.kpi_name

class Kpi_input(models.Model):
    kpi_id = models.CharField(max_length=5)
    hospcode = models.CharField(max_length=5)
    kpi_month = models.DateField()
    kpi_year = models.DateField(null=True,blank=True)
    a1 = models.CharField(max_length=155)
    b1 = models.CharField(max_length=155)
    a2 = models.CharField(max_length=155)
    b2 = models.CharField(max_length=155)
    a3 = models.CharField(max_length=155)
    b3 = models.CharField(max_length=155)
    a4 = models.CharField(max_length=155)
    b4 = models.CharField(max_length=155)
    a5 = models.CharField(max_length=155)
    b5 = models.CharField(max_length=155)
    a6 = models.CharField(max_length=155)
    b6 = models.CharField(max_length=155)
    a7 = models.CharField(max_length=155)
    b7 = models.CharField(max_length=155)
    a8 = models.CharField(max_length=155)
    b8 = models.CharField(max_length=155)
    a9 = models.CharField(max_length=155)
    b9 = models.CharField(max_length=155)
    a10 = models.CharField(max_length=155)
    b10 = models.CharField(max_length=155)
    a11 = models.CharField(max_length=155)
    b11 = models.CharField(max_length=155)
    a12 = models.CharField(max_length=155)
    b12 = models.CharField(max_length=155)
    etc = models.TextField()
    kpi_value = models.CharField(max_length=15)
    d_update = models.DateTimeField(default=timezone.now)
    input_date = models.DateTimeField(auto_now_add=())
    note = models.TextField(null=True, blank=True)

    def save(self, *args, **kwargs):
        if not self.id:
            self.created = timezone.now()
        self.modified = timezone.now()
        return super(Kpi_Input, self).save(*args, **kwargs)
