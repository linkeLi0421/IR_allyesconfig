; ModuleID = '/llk/IR_all_yes/samples/kfifo/dma-example.c_pt.bc'
source_filename = "../samples/kfifo/dma-example.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kfifo = type { %union.anon, [0 x i8] }
%union.anon = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__UNIQUE_ID_license225 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [45 x i8] c"author=Stefani Seibold <stefani@seibold.net>\00", section ".modinfo", align 1
@example_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016DMA fifo test start\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"example_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"samples/kfifo/dma-example.c\00", [36 x i8] zeroinitializer }, align 32
@example_init._entry_ptr = internal global ptr @example_init._entry, section ".printk_index", align 4
@fifo = internal global { %struct.kfifo, [44 x i8] } zeroinitializer, align 32
@example_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014error kfifo_alloc\0A\00", [43 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.5 = internal global ptr @example_init._entry.3, section ".printk_index", align 4
@example_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016queue size: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.8 = internal global ptr @example_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@example_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016queue len: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.12 = internal global ptr @example_init._entry.10, section ".printk_index", align 4
@example_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016DMA sgl entries: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.15 = internal global ptr @example_init._entry.13, section ".printk_index", align 4
@example_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014error kfifo_dma_in_prepare\0A\00", [34 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.18 = internal global ptr @example_init._entry.16, section ".printk_index", align 4
@example_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016scatterlist for receive:\0A\00", [36 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.21 = internal global ptr @example_init._entry.19, section ".printk_index", align 4
@example_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016sg[%d] -> page %p offset 0x%.8x length 0x%.8x\0A\00", [47 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.24 = internal global ptr @example_init._entry.22, section ".printk_index", align 4
@example_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.26 = internal global ptr @example_init._entry.25, section ".printk_index", align 4
@example_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014error kfifo_dma_out_prepare\0A\00", [33 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.29 = internal global ptr @example_init._entry.27, section ".printk_index", align 4
@example_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016scatterlist for transmit:\0A\00", [35 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.32 = internal global ptr @example_init._entry.30, section ".printk_index", align 4
@example_init._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.34 = internal global ptr @example_init._entry.33, section ".printk_index", align 4
@example_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.36 = internal global ptr @example_init._entry.35, section ".printk_index", align 4
@example_init._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.1, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014size mismatch: test failed\00", [35 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.39 = internal global ptr @example_init._entry.37, section ".printk_index", align 4
@example_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.1, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016test passed\0A\00", [17 x i8] zeroinitializer }, align 32
@example_init._entry_ptr.42 = internal global ptr @example_init._entry.40, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 28, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 19, i32 21 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 31, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 35, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 37, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 45, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 64, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 67, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 72, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 74, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 94, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 97, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 101, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 103, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 122, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 125, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [31 x i8] c"../samples/kfifo/dma-example.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 128, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_license225, ptr @example_init._entry, ptr @example_init._entry.10, ptr @example_init._entry.13, ptr @example_init._entry.16, ptr @example_init._entry.19, ptr @example_init._entry.22, ptr @example_init._entry.25, ptr @example_init._entry.27, ptr @example_init._entry.3, ptr @example_init._entry.30, ptr @example_init._entry.33, ptr @example_init._entry.35, ptr @example_init._entry.37, ptr @example_init._entry.40, ptr @example_init._entry.6, ptr @example_init._entry_ptr, ptr @example_init._entry_ptr.12, ptr @example_init._entry_ptr.15, ptr @example_init._entry_ptr.18, ptr @example_init._entry_ptr.21, ptr @example_init._entry_ptr.24, ptr @example_init._entry_ptr.26, ptr @example_init._entry_ptr.29, ptr @example_init._entry_ptr.32, ptr @example_init._entry_ptr.34, ptr @example_init._entry_ptr.36, ptr @example_init._entry_ptr.39, ptr @example_init._entry_ptr.42, ptr @example_init._entry_ptr.5, ptr @example_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fifo, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.28, ptr @.str.31, ptr @.str.38, ptr @.str.41], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @example_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %sg = alloca [10 x %struct.scatterlist], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %sg) #4
  %0 = call ptr @memset(ptr %sg, i32 255, i32 200)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  %call2 = tail call i32 @__kfifo_alloc(ptr noundef nonnull @fifo, i32 noundef 32, i32 noundef 1, i32 noundef 3264) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %do.end11, label %do.end6

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %cleanup

do.end11:                                         ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 2), align 4
  %add = add i32 %1, 1
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %add) #7
  %call17 = tail call i32 @__kfifo_in(ptr noundef nonnull @fifo, ptr noundef nonnull @.str.9, i32 noundef 4) #4
  br label %for.body

for.body:                                         ; preds = %if.end41.for.body_crit_edge, %do.end11
  %i.0240 = phi i32 [ 0, %do.end11 ], [ %inc43, %if.end41.for.body_crit_edge ]
  %2 = load i32, ptr @fifo, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 1), align 4
  %sub = sub i32 %2, %3
  %4 = load i32, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %4)
  %cmp26.not = icmp ugt i32 %sub, %4
  br i1 %cmp26.not, label %for.body.if.end41_crit_edge, label %if.then30

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41

if.then30:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %i.0240 to i8
  %5 = load ptr, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 4), align 4
  %and = and i32 %4, %2
  %arrayidx = getelementptr i8, ptr %5, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !76
  %7 = load i32, ptr @fifo, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr @fifo, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %for.body.if.end41_crit_edge
  %inc43 = add nuw nsw i32 %i.0240, 1
  %cmp.not = icmp eq i32 %inc43, 9
  br i1 %cmp.not, label %for.end, label %if.end41.for.body_crit_edge

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end41
  %8 = load i32, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 1), align 4
  %inc48 = add i32 %8, 1
  store i32 %inc48, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 1), align 4
  %9 = load i32, ptr @fifo, align 4
  %sub57 = sub i32 %9, %inc48
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %sub57) #7
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 10) #4
  %call64 = call i32 @__kfifo_dma_in_prepare(ptr noundef nonnull @fifo, ptr noundef nonnull %sg, i32 noundef 10, i32 noundef 32) #4
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool70.not = icmp eq i32 %call64, 0
  br i1 %tobool70.not, label %do.end74, label %do.end89.preheader

do.end74:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  br label %cleanup

do.end89.preheader:                               ; preds = %for.end
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #7
  br label %do.end89

do.end89:                                         ; preds = %sg_page.exit.do.end89_crit_edge, %do.end89.preheader
  %i.1243 = phi i32 [ 0, %do.end89.preheader ], [ %inc101, %sg_page.exit.do.end89_crit_edge ]
  %arrayidx91 = getelementptr [10 x %struct.scatterlist], ptr %sg, i32 0, i32 %i.1243
  %10 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx91, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !77

do.body2.i:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !78
  unreachable

sg_page.exit:                                     ; preds = %do.end89
  %and.i = and i32 %11, -4
  %12 = inttoptr i32 %and.i to ptr
  %offset = getelementptr [10 x %struct.scatterlist], ptr %sg, i32 0, i32 %i.1243, i32 1
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset, align 4
  %length = getelementptr [10 x %struct.scatterlist], ptr %sg, i32 0, i32 %i.1243, i32 2
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %i.1243, ptr noundef %12, i32 noundef %14, i32 noundef %16) #7
  %17 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx91, align 4
  %and.i232 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.i.not = icmp ne i32 %and.i232, 0
  %inc101 = add nuw i32 %i.1243, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc101, i32 %call64)
  %exitcond.not = icmp eq i32 %inc101, %call64
  %or.cond = select i1 %tobool.i.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.end102, label %sg_page.exit.do.end89_crit_edge

sg_page.exit.do.end89_crit_edge:                  ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end89

for.end102:                                       ; preds = %sg_page.exit
  %call117 = call i32 @__kfifo_dma_out_prepare(ptr noundef nonnull @fifo, ptr noundef nonnull %sg, i32 noundef 10, i32 noundef 8) #4
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %call117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool123.not = icmp eq i32 %call117, 0
  br i1 %tobool123.not, label %do.end127, label %do.end142.preheader

do.end127:                                        ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #6
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #7
  br label %cleanup

do.end142.preheader:                              ; preds = %for.end102
  %call135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #7
  br label %do.end142

do.end142:                                        ; preds = %sg_page.exit237.do.end142_crit_edge, %do.end142.preheader
  %i.2245 = phi i32 [ 0, %do.end142.preheader ], [ %inc156, %sg_page.exit237.do.end142_crit_edge ]
  %arrayidx144 = getelementptr [10 x %struct.scatterlist], ptr %sg, i32 0, i32 %i.2245
  %19 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx144, align 4
  %and.i.i233 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233)
  %tobool.i.not.i234 = icmp eq i32 %and.i.i233, 0
  br i1 %tobool.i.not.i234, label %sg_page.exit237, label %do.body2.i235, !prof !77

do.body2.i235:                                    ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #4, !srcloc !78
  unreachable

sg_page.exit237:                                  ; preds = %do.end142
  %and.i236 = and i32 %20, -4
  %21 = inttoptr i32 %and.i236 to ptr
  %offset147 = getelementptr [10 x %struct.scatterlist], ptr %sg, i32 0, i32 %i.2245, i32 1
  %22 = ptrtoint ptr %offset147 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset147, align 4
  %length149 = getelementptr [10 x %struct.scatterlist], ptr %sg, i32 0, i32 %i.2245, i32 2
  %24 = ptrtoint ptr %length149 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length149, align 4
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %i.2245, ptr noundef %21, i32 noundef %23, i32 noundef %25) #7
  %26 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx144, align 4
  %and.i238 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool.i239.not = icmp ne i32 %and.i238, 0
  %inc156 = add nuw i32 %i.2245, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc156, i32 %call117)
  %exitcond246.not = icmp eq i32 %inc156, %call117
  %or.cond247 = select i1 %tobool.i239.not, i1 true, i1 %exitcond246.not
  br i1 %or.cond247, label %for.end157, label %sg_page.exit237.do.end142_crit_edge

sg_page.exit237.do.end142_crit_edge:              ; preds = %sg_page.exit237
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end142

for.end157:                                       ; preds = %sg_page.exit237
  %28 = load i32, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 1), align 4
  %add164 = add i32 %28, 5
  store i32 %add164, ptr getelementptr inbounds (%struct.kfifo, ptr @fifo, i32 0, i32 0, i32 0, i32 1), align 4
  %29 = load i32, ptr @fifo, align 4
  %sub169 = sub i32 %29, %add164
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %sub169) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub169)
  %cmp180.not = icmp eq i32 %sub169, 7
  br i1 %cmp180.not, label %do.end191, label %do.end185

do.end185:                                        ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #6
  %call187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #7
  br label %cleanup

do.end191:                                        ; preds = %for.end157
  call void @__sanitizer_cov_trace_pc() #6
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end191, %do.end185, %do.end127, %do.end74, %do.end6
  %retval.0 = phi i32 [ -12, %do.end6 ], [ -5, %do.end185 ], [ 0, %do.end191 ], [ -5, %do.end127 ], [ -5, %do.end74 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %sg) #4
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__kfifo_free(ptr noundef nonnull @fifo) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_dma_in_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_dma_out_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__UNIQUE_ID_license225, !1, !"__UNIQUE_ID_license225", i1 false, i1 false}
!1 = !{!"../samples/kfifo/dma-example.c", i32 140, i32 1}
!2 = !{ptr @__UNIQUE_ID_author226, !3, !"__UNIQUE_ID_author226", i1 false, i1 false}
!3 = !{!"../samples/kfifo/dma-example.c", i32 141, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../samples/kfifo/dma-example.c", i32 28, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @example_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @example_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../samples/kfifo/dma-example.c", i32 31, i32 3}
!12 = !{ptr @example_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @example_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../samples/kfifo/dma-example.c", i32 35, i32 2}
!16 = !{ptr @example_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @example_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../samples/kfifo/dma-example.c", i32 37, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../samples/kfifo/dma-example.c", i32 45, i32 2}
!22 = !{ptr @example_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @example_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../samples/kfifo/dma-example.c", i32 64, i32 2}
!26 = !{ptr @example_init._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @example_init._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../samples/kfifo/dma-example.c", i32 67, i32 3}
!30 = !{ptr @example_init._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @example_init._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../samples/kfifo/dma-example.c", i32 72, i32 2}
!34 = !{ptr @example_init._entry.19, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @example_init._entry_ptr.21, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../samples/kfifo/dma-example.c", i32 74, i32 3}
!38 = !{ptr @example_init._entry.22, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @example_init._entry_ptr.24, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @example_init._entry.25, !41, !"_entry", i1 false, i1 false}
!41 = !{!"../samples/kfifo/dma-example.c", i32 94, i32 2}
!42 = !{ptr @example_init._entry_ptr.26, !41, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../samples/kfifo/dma-example.c", i32 97, i32 3}
!45 = !{ptr @example_init._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @example_init._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../samples/kfifo/dma-example.c", i32 101, i32 2}
!49 = !{ptr @example_init._entry.30, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @example_init._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @example_init._entry.33, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../samples/kfifo/dma-example.c", i32 103, i32 3}
!53 = !{ptr @example_init._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @example_init._entry.35, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../samples/kfifo/dma-example.c", i32 122, i32 2}
!56 = !{ptr @example_init._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.38, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../samples/kfifo/dma-example.c", i32 125, i32 3}
!59 = !{ptr @example_init._entry.37, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @example_init._entry_ptr.39, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.41, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../samples/kfifo/dma-example.c", i32 128, i32 2}
!63 = !{ptr @example_init._entry.40, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @example_init._entry_ptr.42, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @fifo, !66, !"fifo", i1 false, i1 false}
!66 = !{!"../samples/kfifo/dma-example.c", i32 19, i32 21}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2153595084}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2153579545, i64 2153580037, i64 2153579582, i64 2153579638, i64 2153579672, i64 2153579696, i64 2153579737, i64 2153579758, i64 2153579786, i64 2153579820}
