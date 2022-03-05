import java.io.File;
import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

public class MergeSort {
    private static void merge(ArrayList<Integer> arr, ArrayList<Integer> aux, int left, int right) {
        int middle = left + (right - left) / 2;
        int l = left, r = middle + 1, cur = left;
        for (int i = left; i <= right; i++) {
            aux.set(i, arr.get(i));
        }
        while(l <= middle && r <= right) {
            if (aux.get(l) <= aux.get(r)) {
                arr.set(cur++, aux.get(l++));
            }
            else {
                arr.set(cur++, aux.get(r++));
            }
        }
        while(l <= middle) {
            arr.set(cur++, aux.get(l++));
        }
        while(r <= right) {
            arr.set(cur++, aux.get(r++));
        }
    }

    public static void mergeSort(ArrayList<Integer> arr, ArrayList<Integer> aux, int left, int right) {
        if (left >= right) return;
        int middle = left + (right - left) / 2;
        mergeSort(arr, aux, left, middle);
        mergeSort(arr, aux, middle + 1, right);
        merge(arr, aux, left, right);
    }

    public static void main(String[] args) throws Exception {
        ArrayList<Integer> arr = new ArrayList<>();
        Scanner sc = new Scanner(new File("in.in"));
//        Scanner sc = new Scanner(System.in);
        while(sc.hasNextInt()) {
            arr.add(sc.nextInt());
        }
        mergeSort(arr, (ArrayList<Integer>) arr.clone(), 0, arr.size() - 1);
        for (int i = 1; i < arr.size(); i++) {
            if (arr.get(i) < arr.get(i - 1)) {
                throw new Exception("wrong answer");
            }
        }
        System.out.println("OK!");
    }
}
