def merge(leftarr, rightarr):
    left, right = 0, 0
    ret = []
    while left < len(leftarr) and right < len(rightarr):
        if leftarr[left] < rightarr[right]:
            ret.append(leftarr[left])
            left = left + 1
        else:
            ret.append(rightarr[right])
            right = right + 1
    ret += leftarr[left:]
    ret += rightarr[right:]
    return ret


def mergeSort(arr, left, right):
    if right - left <= 1:
        return arr
    middle = left + (right - left) // 2
    arr = mergeSort(arr, left, middle)
    arr = mergeSort(arr, middle + 1, right)
    return merge(arr[left:middle+1], arr[middle+1:right+1])


if __name__ == '__main__':
    filename = 'in.in'
    file = open(filename)
    arr = []
    for line in file.readlines():
        arr.append(eval(line))
    arr = arr[1::]
    arr = mergeSort(arr, 0, len(arr) - 1)
    flag = True
    for i in range(1, len(arr)):
        if arr[i] < arr[i - 1]:
            print(f"wrong ans at {i}, where arr[{i-1}] = {arr[i - 1]}, arr[{i}] = {arr[i]}")
            flag = False
    if flag:
        print("OK!")
