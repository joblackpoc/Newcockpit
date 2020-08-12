from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from main.models import KeyInput, Kpi, Profile, Input, Index, Group

class UserRegisterForm(UserCreationForm):
    email = forms.EmailField()
    class Meta:
        model = User
        fields = ('username'
            ,'first_name'
            ,'last_name'
            ,'email'
            ,'password1'
            ,'password2')
        labels = {
            'username':"Username"
            ,'first_name':"ชื่อจริง"
            , 'last_name':"นามสกุล"
            , 'email':"Email ที่ใช้จริงในปัจจุบัน"
            ,'password1':"Password 8 ตัวอักษรขึ้นไปและห้ามใช้ตัวเลขอย่างเดียว"
            ,'password2':"ยืนยัน Password อีกครั้ง"
        }

class UserEditForm(UserChangeForm):
    email = forms.EmailField()
    class Meta:
        model = User
        fields = ('username'
            , 'first_name'
            , 'last_name'
            , 'email')
        labels = {
            'username':"Username"
            , 'first_name':"ชื่อจริง"
            , 'last_name':"นามสกุล"
            , 'email':"Email ที่ใช้จริงในปัจจุบัน"
        }

class UserUpdateForm(forms.ModelForm):
    email = forms.EmailField()
    class Meta:
        model = User
        fields = ('username'
            , 'first_name'
            , 'last_name'
            , 'email')
        labels = {
            'username':"Username"
            , 'first_name':"ชื่อจริง"
            , 'last_name':"นามสกุล"
            , 'email':"Email ที่ใช้จริงในปัจจุบัน"
        }

class ProfileUpdateForm(forms.ModelForm):
    class Meta:
        model = Profile
        fields = ('user_phone'
            ,'ssj'
            ,'group'
            ,'image')
        labels = {
            'user_phone':"เบอร์โทรศัพท์"
            , 'ssj':"เลือกจังหวัด"
            , 'group':"เลือกกลุ่มงาน"
            , 'image':"เลือกรูปภาพของคุณ"
        }

class KeyInputForm(forms.ModelForm):
    class Meta:
        model = KeyInput
        fields = ('kpi', 'hospcode', 'response', 'year', 'a1', 'b1', 'a2', 'b2', 'a3', 'b3'
                    , 'a4', 'b4', 'a5', 'b5', 'a6', 'b6', 'a7', 'b7', 'a8', 'b8', 'a9', 'b9'
                    , 'a10', 'b10', 'a11', 'b11', 'a12', 'b12')
        labels = {
                'kpi':"ตัวชี้วัด"
                , 'hospcode':"จังหวัด", 'response':"กลุ่มงาน", 'year':"ปีงบประมาณ"
                , 'a1':"A - ตุลาคม 2562", 'b1':"B - ตุลาคม 2562"
                , 'a2':"A - พฤศจิกายน 2562", 'b2':"B - พฤศจิกายน 2562"
                , 'a3':"A - ธันวาคม 2562", 'b3':"B - ธันวาคม 2562"
                , 'a4':"A - มกราคม 2563", 'b4':"B - มกราคม 2563"
                , 'a5':"A - กุมภาพันธ์ 2563", 'b5':"B - กุมภาพันธ์ 2563"
                , 'a6':"A - มีนาคม 2563", 'b6':"B - มีนาคม 2563"
                , 'a7':"A - เมษายน 2563", 'b7':"B - เมษายน 2563"
                , 'a8':"A - พฤษภาคม 2563", 'b8':"B - พฤษภาคม 2563"
                , 'a9':"A - มิถุนายน 2563", 'b9':"B - มิถุนายน 2563"
                , 'a10':"A - กรกฎาคม 2563", 'b10':"B - กรกฎาคม 2563"
                , 'a11':"A - สิงหาคม 2563", 'b11':"B - สิงหาคม 2563"
                , 'a12':"A - กันยายน 2563", 'b12':"B - กันยายน 2563"
         }

class InputForm(forms.ModelForm):
    class Meta:
        model = Input
        fields = ('year','ssj','group','index'
                    ,'a1', 'b1', 'a2', 'b2', 'a3', 'b3'
                    , 'a4', 'b4', 'a5', 'b5', 'a6', 'b6'
                    , 'a7', 'b7', 'a8', 'b8', 'a9', 'b9'
                    , 'a10', 'b10', 'a11', 'b11', 'a12', 'b12')
        labels = {
                'year':"ปีงบประมาณ"
                , 'ssj':"จังหวัด", 'group':"กลุ่มงาน", 'index':"ตัวชี้วัด"
                , 'a1':"A - ตุลาคม 2562", 'b1':"B - ตุลาคม 2562"
                , 'a2':"A - พฤศจิกายน 2562", 'b2':"B - พฤศจิกายน 2562"
                , 'a3':"A - ธันวาคม 2562", 'b3':"B - ธันวาคม 2562"
                , 'a4':"A - มกราคม 2563", 'b4':"B - มกราคม 2563"
                , 'a5':"A - กุมภาพันธ์ 2563", 'b5':"B - กุมภาพันธ์ 2563"
                , 'a6':"A - มีนาคม 2563", 'b6':"B - มีนาคม 2563"
                , 'a7':"A - เมษายน 2563", 'b7':"B - เมษายน 2563"
                , 'a8':"A - พฤษภาคม 2563", 'b8':"B - พฤษภาคม 2563"
                , 'a9':"A - มิถุนายน 2563", 'b9':"B - มิถุนายน 2563"
                , 'a10':"A - กรกฎาคม 2563", 'b10':"B - กรกฎาคม 2563"
                , 'a11':"A - สิงหาคม 2563", 'b11':"B - สิงหาคม 2563"
                , 'a12':"A - กันยายน 2563", 'b12':"B - กันยายน 2563"
         }

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['index'].queryset=Index.objects.none()

        if 'group' in self.data:
            try:
                group_id = int(self.data.get('group'))
                self.fields['index'].queryset=Index.objects.filter(group_id=group_id).order_by('name')
            except(ValueError,TypeError):
                pass            

        elif self.instance.pk:
            self.fields['index'].queryset=self.instance.group.index_set.order_by('name')

    
       

    