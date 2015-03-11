## 堆排序
### 维护最大堆
* 节点i的左子树及右子树为最大堆,将节点i及其的左右子树变为最大堆,logn
* MAX_HEAPIFY(heap, i)

### 构造最大堆
* 从最后一个含有叶节点的节点开始到根节点调用维护最大堆,n
* BUILD_MAX_HEAP(heap)

### 堆排序
* 先构造最大堆
* 将最大堆的根节点和最后一个节点交换后,排除最后一个节点,构造最大堆,nlogn
* HEAP_SORT(heap)

### 优先级队列
* INSERT(heap, x)
* MAXIMUM(heap)
* EXTRACT_MAX(heap)
    * 将根节点和最后节点交换后,堆size - 1, 维护最大堆
* INCREASE-KEY(heap, x, k)

