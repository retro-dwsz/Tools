#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>

typedef int                 i32; // %d
typedef unsigned            u32; // %u
typedef long long           i64; // %ld
typedef unsigned long long  u64; // %llu
typedef float               f32; // %f
typedef double              f64; // %lf
typedef size_t              idx; // %zu


f32 roundf32(f32 value, int n) {
    f32 scale = pow(10.0, n);
    return round(value * scale) / scale;
}

f64 roundf64(f64 value, int n) {
    f64 scale = pow(10.0, n);
    return round(value * scale) / scale;
}

i32 rdi32(i32 Min, i32 Max){
    srand(time(NULL));
    return (rand() % (Max - Min + 1)) + Min;
}

void rdi32s(i32 Min, i32 Max, idx Count, i32* Result){
    srand(time(NULL));
    for(idx i = 0; i < Count; i++){
        Result[i] = (rand() % (Max - Min + 1)) + Min;
    }
}

f32 rdf32(f32 Min, f32 Max) {
    srand((u32)time(NULL));
    f32 result = ((f32)rand() / (f32)RAND_MAX) * (Max - Min) + Min;
    return result;
}

void rdf32s(f32 Min, f32 Max, idx Count, f32* Result){
    srand(time(NULL));
    for(idx i = 0; i < Count; i++){
        Result[i] = ((f32)rand() / (f32)RAND_MAX) * (Max - Min) + Min;
    }
}

void print_i32_arr(i32 arr[], idx size) {
    printf("[");
    for (idx i = 0; i < size; i++) {
        printf("%d", arr[i]);
        // Only print a comma and space if it is not the last element
        if (i < size - 1) {
            printf(", ");
        }
    }
    printf("]\n");
}

void print_f32_arr(const f32 arr[], const idx size) {
    printf("[");
    for (idx i = 0; i < size; i++) {
        printf("%.2f", arr[i]);
        // Only print a comma and space if it is not the last element
        if (i < size - 1) {
            printf(", ");
        }
    }
    printf("]\n");
}

i32 main() {
    i32 i32Min = rdi32(-10, 0);
    i32 i32Max = rdi32(1, 10);
    idx Sizei32Arr = (idx)rdi32(5, 10);

    f32 f32Min = rdf32(-10.0, 0);
    f32 f32Max = rdf32(1, 10.0);
    idx Sizef32Arr = (idx)rdi32(5, 10);
    f32 f32Round = 2;

    printf("\nSingle random int:\n");
    printf("~ random<i32>(min=%d, max=%d)\n~ Out = %d\n", i32Min, i32Max, rdi32(i32Min, i32Max));

    printf("\nArray random int:\n");
    i32 i32Arr[Sizei32Arr];
    printf("~ random<i32>(count=%zu, min=%d, max=%d)\n~ Out = ", Sizei32Arr, i32Min, i32Max);
    rdi32s(i32Min, i32Max, Sizei32Arr, i32Arr);
    print_i32_arr(i32Arr, Sizei32Arr);

    printf("\nSingle random float:\n");
    printf("~ random<f32>(min=%.2f, max=%.2f)\n~ Out = %.2f\n", f32Min, f32Max, rdf32(f32Min, f32Max));

    printf("\nArray random float:\n");
    f32 f32Arr[Sizef32Arr];
    printf("~ random<f32>(count=%zu, min=%.2f, max=%.2f)\n~ Out = ", Sizef32Arr, f32Min, f32Max);
    rdf32s(f32Min, f32Max, Sizef32Arr, f32Arr);
    print_f32_arr(f32Arr, Sizef32Arr);
}
