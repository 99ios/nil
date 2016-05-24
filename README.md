# Objective-C中nil/NULL/Nil/NSNull区别详解

> 在Objective-C中，有4种表示“空”的方法，即：nil、NULL、Nil和NSNull，这4种方法在使用场景上略有差别，在此简单归纳总结一下。

## nil

**nil**主要用于*OC对象*为空的情况。在OC中直接定义一个对象但不赋值，或者定义一个属性，编译器会自动给对象的指针设置初始值为**nil**。

```oc
@property (nonatomic, copy) NSString *string3;
```
```oc
NSString *string1;
NSString *string2 = nil;
NSLog(@"%p--%p--%p",string1,string2,self.string3);
```

运行结果：

<img src="http://7xta2c.com1.z0.glb.clouddn.com/99ios/1464056673735.png" width="347"/>

## NULL

**NULL**主要用于*基本数据类型*为空的情况。在stddef.h中的定义如下。

```oc
#  define NULL ((void*)0)
```

示例代码如下。
```oc
    int *nullNum = NULL;
    int num = 1;
    nullNum = &num;
    NSLog(@"%d",*nullNum);
```

运行结果：

<img src="http://7xta2c.com1.z0.glb.clouddn.com/99ios/1464056874234.png" width="220"/>


## Nil

**Nil**的定义是null pointer to object-c class，指的是一个*类指针*为空。

```oc
    Class class = [NSString class];
    if (class != Nil) {
        NSLog(@"class name: %@", class);
    }
```

运行结果：

<img src="http://7xta2c.com1.z0.glb.clouddn.com/99ios/1464056977568.png" width="405"/>

## NSNull

**NSNull**常用于在数组或者字典中插入一个空对象用于占位使用。

```oc
    NSArray *nullArray = @[[NSNull null],[NSNull null]];
    NSLog(@"%@",nullArray);
```

运行结果：

<img src="http://7xta2c.com1.z0.glb.clouddn.com/99ios/1464057084547.png" width="472"/>

---


