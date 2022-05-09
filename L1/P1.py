import math
# Class Point2D
# Supperclass of Point3D
# x, y

class Point2D:
    def __init__(self, x, y):
        self.x = x
        self.y = y

    def __str__(self):
        return f"({self.x}/{self.y})"

    def rutgon(self):
        gcd = math.gcd(self.x, self.y)
        self.x = self.x // gcd
        self.y = self.y // gcd
        if(self.y < 0):
            self.x = -self.x
            self.y = -self.y
        return self

    def khoangcach(self, other):
        d = math.sqrt((self.x-other.x)**2 + (self.y-other.y)**2)
        return Point2D(d)

    def __add__(self, other):
        tu = self.x * other.y + other.x * self.y
        mau = self.y * other.y
        return Point2D(tu,mau).rutgon()

    def __sub__(self, other):
        tu = self.x * other.y - other.x * self.y
        mau = self.y * other.y
        return Point2D(tu,mau).rutgon()

# Class Point3D
# Point2D subclass
# x, y, z

class Point3D(Point2D):
    def __init__(self, x, y, z):
        super().__init__(x, y)
        self.z = z

    def __str__(self):
        return f"({self.x}, {self.y}, {self.z})"

    def khoangcach(self, other):
        d = math.sqrt((self.x-other.x)**2 + (self.y-other.y)**2 + (self.z-other.z)**2)
        return Point3D(d)

    def __add__(self, other):
        x = self.x + other.x
        y = self.y + other.y
        z = self.z + other.z
        return Point3D(x, y, z)
    
    def __sub__(self, other):
        x = self.x - other.x
        y = self.y - other.y
        z = self.z - other.z
        return Point3D(x, y, z)

######
ps1 = Point2D(1, 2)
ps2 = Point2D(3, 4)

d = math.sqrt((ps1.x-ps2.x)**2 + (ps1.y-ps2.y)**2)
ps_add = ps1 + ps2
ps_sub = ps1 - ps2

print("Point 2D: ")
print("Distance: " , d)
print("Add: " , ps_add)
print("Sub: " , ps_sub)

######
ps3 = Point3D(1, 2, 3)
ps4 = Point3D(3, 4, 5)

d = math.sqrt((ps3.x-ps4.x)**2 + (ps3.y-ps4.y)**2 + (ps3.z-ps4.z)**2)
ps_add = ps3 + ps4
ps_sub = ps3 - ps4

print("Point 3D: ")
print("Distance: " , d)
print("Add: " , ps_add)
print("Sub: " , ps_sub)