# 1 容器

## 1.1 序列式容器
### 1.1.1 vector
### 1.1.2 deque
### 1.1.3 list
### 1.1.4 string
### 1.1.5 array

## 1.2关联式容器
### 1.2.1 set
### 1.2.2 multiset
### 1.2.3 map
### 1.2.4 multimap
### 1.2.5 hash_set
* todo
### 1.2.6 multihash_set
* todo
### 1.2.7 hash_map
* todo
### 1.2.8 multihash_map
* todo

# 2 容器适配器

# 3 迭代器
## 3.1 迭代器分类
* 输入迭代器
    * istream_iterator
* 输出迭代器
    * ostream_iterator inserter
* 前向迭代器
* 双向迭代器
    * list,set,multiset,map,multimap
* 随机存取迭代器
    * vector, deque, string

## 3.2 迭代器相关函数
* advance 移动迭代器
* distance 计算迭代器距离
* iter_swap 交换迭代器内容
 
##  3.3 迭代器适配器
* insert iterator 安插型迭代器
    * back inserters <-->  back_inserter(container) <-->  back_insert_iterator
    * front inserters <--> front_inserter(container) <-->  front_insert_iterator
    * general inserters <--> inserter(container, iterator) <-->  insert_iterator

* stream iterator 流迭代器
    * istream_iterator(cin) istream_iterator()
    * ostream_iterator(cout) ostream_iterator()

* reverse iterator 逆向迭代器
    * container.rbegin() container.rend()
    * 逆向迭代器 container::reverse_iterator rpos(pos)
    * 逆向迭代器获取正向迭代器container::reverse_iterator rpos; rpos.base()  

# 4 仿函数
## 4.1 预定义的仿函数
### 4.1.1 计算
* negate
* plus
* minus
* multiplies
* divides
* modulus
### 4.1.2 比较
* equal_to
* not_equal_to
* less
* less_equal
* greater
* greater_equal
### 4.1.3 逻辑
* logical_and
* logical_or
* logical_not
## 4.2 函数配接器
### 4.2.1 预定义的函数配接器
* bind1st(op, param) op(param, value)
* bind2nd(op,param) op(value, param)
* not1(op) !op(value)
### 4.2.2 针对成员函数的函数配接器
* mem_fun_ref(op) 调用对象的函数 mem_fun_ref(&Class::memfunc)
* mem_fun(op) 调用对象指针的函数
### 4.2.3 针对一般函数的函数配接器
* ptr_fun(op) not1(ptr_fun(check)) bind2nd(ptr_fun(strcmp), "")
### 4.2.4 组合型函数配接器
*compose_f_gx f(g(elem))
*compose_f_gxy f(g(elem1,elem2))
*compose_f_gx_hx f(g(elem), h(elem))
*compose_f_gx_hy f(g(lem1), h(elem2))

# 5 算法

# 6 string
# 7 流

# 8 注意事项
* remove算法不可用于关联式容器,关联式容器使用erase成员函数移除

# 9 其他
* 调用成员函数 for_each(col1.begin(), col1.end(), mem_fun_ref(&Person::save))




