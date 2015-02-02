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
* compose_f_gx f(g(elem))
* compose_f_gxy f(g(elem1,elem2))
* compose_f_gx_hx f(g(elem), h(elem))
* compose_f_gx_hy f(g(lem1), h(elem2))

# 5 算法
## 5.1 非变动性算法
* count 根据operator==判断相等
* count_if
* min_element max_element
* find, find_if
* search_n 返回n个满足条件的位置
* search 返回满足搜索子区间的位置 find_end从后往前搜索
* find_first_of 返回等于区间某一元素的第一个位置
* mismatch 第一个不同点
* lexicographical_compare 字典序比较

## 5.2 变动性算法
* copy copy_backward
* transform
* swap_ranges
* fill,fill_n
* generate,generate_n
* replace, replace_if
* replace_copy, replace_copy_if

# 6 string
* c_str() 包括'\0'

# 7 流
### 流异常
* exception 打开流异常
### 操控器
* ostream& osteam::operator << (ostream& (*op)(ostream&))
### 格式化
* boolalpha bool以字符显示 保持
* setw() 不保持
* right,left,internal 保持
* setfill 保持
* showpos noshowpos 显示符号 保持
* uppercase nouppercase 16进制字符大写,保持
* oct dec hex none 进制,保持
* showbase 显示0X
* fixed小数 scientific 科学计数 nono 保持
* precision() 精度 保持
* skipws 跳过空格

# 8 注意事项
* remove算法不可用于关联式容器,关联式容器使用erase成员函数移除

# 9 其他
* 调用成员函数 for_each(col1.begin(), col1.end(), mem_fun_ref(&Person::save))

# 10 问题
* 如何通过迭代器变量获取迭代器类型?




