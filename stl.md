# 容器

## 序列式容器
### vector
### deque
### list
### string
### array

## 关联式容器
### set
### multiset
### map
### multimap

# 容器适配器

#迭代器
###迭代器分类
* 输入迭代器
    * istream_iterator
* 输出迭代器
    * ostream_iterator inserter
* 前向迭代器
* 双向迭代器
    * list,set,multiset,map,multimap
* 随机存取迭代器
    * vector, deque, string

###迭代器相关函数
* advance 移动迭代器
* distance 计算迭代器距离
* iter_swap 交换迭代器内容
 
###迭代器适配器
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

#注意事项
* remove算法不可用于关联式容器,关联式容器使用erase成员函数移除

# 其他
* 调用成员函数 for_each(col1.begin(), col1.end(), mem_fun_ref(&Person::save))




