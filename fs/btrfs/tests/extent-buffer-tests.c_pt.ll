; ModuleID = '/llk/IR_all_yes/fs/btrfs/tests/extent-buffer-tests.c_pt.bc'
source_filename = "../fs/btrfs/tests/extent-buffer-tests.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.btrfs_disk_key = type <{ i64, i8, i64 }>
%struct.btrfs_key = type <{ i64, i8, i64 }>
%struct.btrfs_path = type { [8 x ptr], [8 x i32], [8 x i8], i8, i8, i8 }

@btrfs_test_extent_buffer_operations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016BTRFS: selftest: running extent buffer operation tests\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"btrfs_test_extent_buffer_operations\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"fs/btrfs/tests/extent-buffer-tests.c\00", [59 x i8] zeroinitializer }, align 32
@btrfs_test_extent_buffer_operations._entry_ptr = internal global ptr @btrfs_test_extent_buffer_operations._entry, section ".printk_index", align 4
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mary had a little lamb\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mary had a little\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" lamb\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mary\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c" had a little\00", [18 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016BTRFS: selftest: running btrfs_split_item tests\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_btrfs_split_item\00", [42 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr = internal global ptr @test_btrfs_split_item._entry, section ".printk_index", align 4
@test_btrfs_split_item._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013BTRFS: selftest: %s:%d %s\0A\00", [35 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.12 = internal global ptr @test_btrfs_split_item._entry.10, section ".printk_index", align 4
@test_error = external dso_local local_unnamed_addr global [0 x ptr], align 4
@test_btrfs_split_item._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.14 = internal global ptr @test_btrfs_split_item._entry.13, section ".printk_index", align 4
@test_btrfs_split_item._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.16 = internal global ptr @test_btrfs_split_item._entry.15, section ".printk_index", align 4
@test_btrfs_split_item._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.18 = internal global ptr @test_btrfs_split_item._entry.17, section ".printk_index", align 4
@test_btrfs_split_item._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013BTRFS: selftest: %s:%d split item failed %d\0A\00", [49 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.21 = internal global ptr @test_btrfs_split_item._entry.19, section ".printk_index", align 4
@test_btrfs_split_item._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013BTRFS: selftest: %s:%d invalid key at slot 0\0A\00", [48 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.24 = internal global ptr @test_btrfs_split_item._entry.22, section ".printk_index", align 4
@test_btrfs_split_item._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013BTRFS: selftest: %s:%d invalid len in the first split\0A\00", [39 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.27 = internal global ptr @test_btrfs_split_item._entry.25, section ".printk_index", align 4
@test_btrfs_split_item._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.9, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\013BTRFS: selftest: %s:%d data in the buffer doesn't match what it should in the first split have='%.*s' want '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.30 = internal global ptr @test_btrfs_split_item._entry.28, section ".printk_index", align 4
@test_btrfs_split_item._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013BTRFS: selftest: %s:%d invalid key at slot 1\0A\00", [48 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.33 = internal global ptr @test_btrfs_split_item._entry.31, section ".printk_index", align 4
@test_btrfs_split_item._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.9, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013BTRFS: selftest: %s:%d invalid len in the second split\0A\00", [38 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.36 = internal global ptr @test_btrfs_split_item._entry.34, section ".printk_index", align 4
@test_btrfs_split_item._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.9, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013BTRFS: selftest: %s:%d data in the buffer doesn't match what it should in the second split\0A\00", [34 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.39 = internal global ptr @test_btrfs_split_item._entry.37, section ".printk_index", align 4
@test_btrfs_split_item._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.9, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013BTRFS: selftest: %s:%d second split item failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.42 = internal global ptr @test_btrfs_split_item._entry.40, section ".printk_index", align 4
@test_btrfs_split_item._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.44 = internal global ptr @test_btrfs_split_item._entry.43, section ".printk_index", align 4
@test_btrfs_split_item._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.46 = internal global ptr @test_btrfs_split_item._entry.45, section ".printk_index", align 4
@test_btrfs_split_item._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.9, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013BTRFS: selftest: %s:%d data in the buffer doesn't match what it should in the third split\0A\00", [35 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.49 = internal global ptr @test_btrfs_split_item._entry.47, section ".printk_index", align 4
@test_btrfs_split_item._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.9, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.51 = internal global ptr @test_btrfs_split_item._entry.50, section ".printk_index", align 4
@test_btrfs_split_item._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.9, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.53 = internal global ptr @test_btrfs_split_item._entry.52, section ".printk_index", align 4
@test_btrfs_split_item._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.9, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013BTRFS: selftest: %s:%d data in the buffer doesn't match what it should in the fourth split\0A\00", [34 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.56 = internal global ptr @test_btrfs_split_item._entry.54, section ".printk_index", align 4
@test_btrfs_split_item._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.9, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013BTRFS: selftest: %s:%d invalid key at slot 2\0A\00", [48 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.59 = internal global ptr @test_btrfs_split_item._entry.57, section ".printk_index", align 4
@test_btrfs_split_item._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.9, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.61 = internal global ptr @test_btrfs_split_item._entry.60, section ".printk_index", align 4
@test_btrfs_split_item._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.9, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013BTRFS: selftest: %s:%d data in the buffer doesn't match what it should in the last chunk\0A\00", [36 x i8] zeroinitializer }, align 32
@test_btrfs_split_item._entry_ptr.64 = internal global ptr @test_btrfs_split_item._entry.62, section ".printk_index", align 4
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 215, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 18, i32 16 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 19, i32 17 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 20, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 21, i32 17 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 22, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 28, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 32, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 38, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 45, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 52, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 75, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 86, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 92, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 100, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 110, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 116, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 124, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 134, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 141, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 147, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 155, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 164, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 170, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 178, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 187, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 193, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [40 x i8] c"../fs/btrfs/tests/extent-buffer-tests.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 201, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @btrfs_test_extent_buffer_operations._entry, ptr @btrfs_test_extent_buffer_operations._entry_ptr, ptr @test_btrfs_split_item._entry, ptr @test_btrfs_split_item._entry.10, ptr @test_btrfs_split_item._entry.13, ptr @test_btrfs_split_item._entry.15, ptr @test_btrfs_split_item._entry.17, ptr @test_btrfs_split_item._entry.19, ptr @test_btrfs_split_item._entry.22, ptr @test_btrfs_split_item._entry.25, ptr @test_btrfs_split_item._entry.28, ptr @test_btrfs_split_item._entry.31, ptr @test_btrfs_split_item._entry.34, ptr @test_btrfs_split_item._entry.37, ptr @test_btrfs_split_item._entry.40, ptr @test_btrfs_split_item._entry.43, ptr @test_btrfs_split_item._entry.45, ptr @test_btrfs_split_item._entry.47, ptr @test_btrfs_split_item._entry.50, ptr @test_btrfs_split_item._entry.52, ptr @test_btrfs_split_item._entry.54, ptr @test_btrfs_split_item._entry.57, ptr @test_btrfs_split_item._entry.60, ptr @test_btrfs_split_item._entry.62, ptr @test_btrfs_split_item._entry_ptr, ptr @test_btrfs_split_item._entry_ptr.12, ptr @test_btrfs_split_item._entry_ptr.14, ptr @test_btrfs_split_item._entry_ptr.16, ptr @test_btrfs_split_item._entry_ptr.18, ptr @test_btrfs_split_item._entry_ptr.21, ptr @test_btrfs_split_item._entry_ptr.24, ptr @test_btrfs_split_item._entry_ptr.27, ptr @test_btrfs_split_item._entry_ptr.30, ptr @test_btrfs_split_item._entry_ptr.33, ptr @test_btrfs_split_item._entry_ptr.36, ptr @test_btrfs_split_item._entry_ptr.39, ptr @test_btrfs_split_item._entry_ptr.42, ptr @test_btrfs_split_item._entry_ptr.44, ptr @test_btrfs_split_item._entry_ptr.46, ptr @test_btrfs_split_item._entry_ptr.49, ptr @test_btrfs_split_item._entry_ptr.51, ptr @test_btrfs_split_item._entry_ptr.53, ptr @test_btrfs_split_item._entry_ptr.56, ptr @test_btrfs_split_item._entry_ptr.59, ptr @test_btrfs_split_item._entry_ptr.61, ptr @test_btrfs_split_item._entry_ptr.64, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.48, ptr @.str.55, ptr @.str.58, ptr @.str.63], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @btrfs_test_extent_buffer_operations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_btrfs_split_item._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @btrfs_test_extent_buffer_operations(i32 noundef %sectorsize, i32 noundef %nodesize) local_unnamed_addr #0 align 64 {
entry:
  %disk_key.i376.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i371.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i366.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i361.i = alloca %struct.btrfs_disk_key, align 8
  %disk_key.i.i = alloca %struct.btrfs_disk_key, align 8
  %buf.i = alloca [32 x i8], align 1
  %key.i = alloca %struct.btrfs_key, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf.i) #6
  %0 = call ptr @memset(ptr %buf.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %key.i) #6
  %1 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 1
  %2 = getelementptr inbounds %struct.btrfs_key, ptr %key.i, i32 0, i32 2
  %3 = call ptr @memset(ptr %key.i, i32 255, i32 17)
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #9
  %call2.i = tail call ptr @btrfs_alloc_dummy_fs_info(i32 noundef %nodesize, i32 noundef %sectorsize) #6
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %do.end5.i, label %if.end.i

do.end5.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @test_error to i32))
  %4 = load ptr, ptr @test_error, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 32, ptr noundef %4) #9
  br label %test_btrfs_split_item.exit

if.end.i:                                         ; preds = %entry
  %call8.i = tail call ptr @btrfs_alloc_dummy_root(ptr noundef nonnull %call2.i) #6
  %cmp.i.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end13.i, label %if.end17.i

do.end13.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 1), align 4
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 38, ptr noundef %5) #9
  %6 = ptrtoint ptr %call8.i to i32
  br label %out.i

if.end17.i:                                       ; preds = %if.end.i
  %call18.i = tail call ptr @btrfs_alloc_path() #6
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %do.end23.i, label %if.end26.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 3) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 3), align 4
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef %7) #9
  br label %out.i

if.end26.i:                                       ; preds = %if.end17.i
  %conv.i = zext i32 %nodesize to i64
  %call27.i = tail call ptr @alloc_dummy_extent_buffer(ptr noundef nonnull %call2.i, i64 noundef %conv.i) #6
  %8 = ptrtoint ptr %call18.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call27.i, ptr %call18.i, align 4
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %do.end32.i, label %if.end35.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @test_error, i32 0, i32 2), align 4
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef 52, ptr noundef %9) #9
  br label %out.i

if.end35.i:                                       ; preds = %if.end26.i
  %slots.i = getelementptr inbounds %struct.btrfs_path, ptr %call18.i, i32 0, i32 1
  %10 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %slots.i, align 4
  %11 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %key.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -128, ptr %1, align 8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 0, ptr %2, align 1
  call void @btrfs_setup_item_for_insert(ptr noundef %call8.i, ptr noundef nonnull %call18.i, ptr noundef nonnull %key.i, i32 noundef 22) #6
  %call.i.i.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 101 to ptr), i32 noundef 17) #6
  %add.i = add i32 %call.i.i.i, 101
  call void @write_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull @.str.3, i32 noundef %add.i, i32 noundef 22) #6
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 3, ptr %2, align 1
  %call39.i = call i32 @btrfs_split_item(ptr noundef null, ptr noundef %call8.i, ptr noundef nonnull %call18.i, ptr noundef nonnull %key.i, i32 noundef 17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end47.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.2, i32 noundef 75, i32 noundef %call39.i) #9
  br label %out.i

if.end47.i:                                       ; preds = %if.end35.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i.i) #6
  %15 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 1
  %16 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i.i, i32 0, i32 2
  %17 = call ptr @memset(ptr %disk_key.i.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %disk_key.i.i, i32 noundef 101, i32 noundef 17) #6
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %16, align 1
  %20 = call i64 @llvm.bswap.i64(i64 %19) #6
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %2, align 1
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %15, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %1, align 8
  %25 = ptrtoint ptr %disk_key.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %disk_key.i.i, align 8
  %27 = call i64 @llvm.bswap.i64(i64 %26) #6
  %28 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %26)
  %cmp.not.i = icmp eq i64 %26, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %23)
  %cmp52.not.i = icmp eq i8 %23, -128
  %or.cond.i = select i1 %cmp.not.i, i1 %cmp52.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %cmp56.not.i = icmp eq i64 %19, 0
  %or.cond381.i = select i1 %or.cond.i, i1 %cmp56.not.i, i1 false
  br i1 %or.cond381.i, label %if.end64.i, label %do.end61.i

do.end61.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %call63.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 86) #9
  br label %out.i

if.end64.i:                                       ; preds = %if.end47.i
  %call.i.i359.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 101 to ptr), i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call.i.i359.i)
  %cmp67.not.i = icmp eq i32 %call.i.i359.i, 17
  br i1 %cmp67.not.i, label %if.end75.i, label %do.end72.i

do.end72.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #8
  %call74.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 92) #9
  br label %out.i

if.end75.i:                                       ; preds = %if.end64.i
  %call.i.i360.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 101 to ptr), i32 noundef 17) #6
  %add77.i = add i32 %call.i.i360.i, 101
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %buf.i, i32 noundef %add77.i, i32 noundef 17) #6
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(17) %buf.i, ptr noundef nonnull dereferenceable(17) @.str.4, i32 17) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool82.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool82.not.i, label %if.end91.i, label %do.end86.i

do.end86.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #8
  %call90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.2, i32 noundef 102, i32 noundef 17, ptr noundef nonnull %buf.i, ptr noundef nonnull @.str.4) #9
  br label %out.i

if.end91.i:                                       ; preds = %if.end75.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i361.i) #6
  %29 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i361.i, i32 0, i32 1
  %30 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i361.i, i32 0, i32 2
  %31 = call ptr @memset(ptr %disk_key.i361.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %disk_key.i361.i, i32 noundef 126, i32 noundef 17) #6
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %30, align 1
  %34 = call i64 @llvm.bswap.i64(i64 %33) #6
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 8)
  store i64 %34, ptr %2, align 1
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %29, align 8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %1, align 8
  %39 = ptrtoint ptr %disk_key.i361.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %disk_key.i361.i, align 8
  %41 = call i64 @llvm.bswap.i64(i64 %40) #6
  %42 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i361.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp93.not.i = icmp eq i64 %40, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %37)
  %cmp98.not.i = icmp eq i8 %37, -128
  %or.cond382.i = select i1 %cmp93.not.i, i1 %cmp98.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 216172782113783808, i64 %33)
  %cmp102.not.i = icmp eq i64 %33, 216172782113783808
  %or.cond383.i = select i1 %or.cond382.i, i1 %cmp102.not.i, i1 false
  br i1 %or.cond383.i, label %if.end110.i, label %do.end107.i

do.end107.i:                                      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  %call109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, i32 noundef 110) #9
  br label %out.i

if.end110.i:                                      ; preds = %if.end91.i
  %call.i.i364.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 126 to ptr), i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i364.i)
  %cmp113.not.i = icmp eq i32 %call.i.i364.i, 5
  br i1 %cmp113.not.i, label %if.end121.i, label %do.end118.i

do.end118.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #8
  %call120.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 116) #9
  br label %out.i

if.end121.i:                                      ; preds = %if.end110.i
  %call.i.i365.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 126 to ptr), i32 noundef 17) #6
  %add124.i = add i32 %call.i.i365.i, 101
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %buf.i, i32 noundef %add124.i, i32 noundef 5) #6
  %bcmp355.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf.i, ptr noundef nonnull dereferenceable(5) @.str.5, i32 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp355.i)
  %tobool129.not.i = icmp eq i32 %bcmp355.i, 0
  br i1 %tobool129.not.i, label %if.end136.i, label %do.end133.i

do.end133.i:                                      ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  %call135.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.2, i32 noundef 125) #9
  br label %out.i

if.end136.i:                                      ; preds = %if.end121.i
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 1, ptr %2, align 1
  %call138.i = call i32 @btrfs_split_item(ptr noundef null, ptr noundef %call8.i, ptr noundef nonnull %call18.i, ptr noundef nonnull %key.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138.i)
  %tobool139.not.i = icmp eq i32 %call138.i, 0
  br i1 %tobool139.not.i, label %if.end146.i, label %do.end143.i

do.end143.i:                                      ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #8
  %call145.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.2, i32 noundef 134, i32 noundef %call138.i) #9
  br label %out.i

if.end146.i:                                      ; preds = %if.end136.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i366.i) #6
  %44 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i366.i, i32 0, i32 1
  %45 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i366.i, i32 0, i32 2
  %46 = call ptr @memset(ptr %disk_key.i366.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %disk_key.i366.i, i32 noundef 101, i32 noundef 17) #6
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %45, align 1
  %49 = call i64 @llvm.bswap.i64(i64 %48) #6
  %50 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %49, ptr %2, align 1
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %44, align 8
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %1, align 8
  %54 = ptrtoint ptr %disk_key.i366.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %disk_key.i366.i, align 8
  %56 = call i64 @llvm.bswap.i64(i64 %55) #6
  %57 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i366.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %cmp148.not.i = icmp eq i64 %55, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %52)
  %cmp153.not.i = icmp eq i8 %52, -128
  %or.cond384.i = select i1 %cmp148.not.i, i1 %cmp153.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp157.not.i = icmp eq i64 %48, 0
  %or.cond385.i = select i1 %or.cond384.i, i1 %cmp157.not.i, i1 false
  br i1 %or.cond385.i, label %if.end165.i, label %do.end162.i

do.end162.i:                                      ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #8
  %call164.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.2, i32 noundef 141) #9
  br label %out.i

if.end165.i:                                      ; preds = %if.end146.i
  %call.i.i369.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 101 to ptr), i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i369.i)
  %cmp168.not.i = icmp eq i32 %call.i.i369.i, 4
  br i1 %cmp168.not.i, label %if.end176.i, label %do.end173.i

do.end173.i:                                      ; preds = %if.end165.i
  call void @__sanitizer_cov_trace_pc() #8
  %call175.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.2, i32 noundef 147) #9
  br label %out.i

if.end176.i:                                      ; preds = %if.end165.i
  %call.i.i370.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 101 to ptr), i32 noundef 17) #6
  %add179.i = add i32 %call.i.i370.i, 101
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %buf.i, i32 noundef %add179.i, i32 noundef 4) #6
  %bcmp356.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %buf.i, ptr noundef nonnull dereferenceable(4) @.str.6, i32 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp356.i)
  %tobool184.not.i = icmp eq i32 %bcmp356.i, 0
  br i1 %tobool184.not.i, label %if.end191.i, label %do.end188.i

do.end188.i:                                      ; preds = %if.end176.i
  call void @__sanitizer_cov_trace_pc() #8
  %call190.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.2, i32 noundef 156) #9
  br label %out.i

if.end191.i:                                      ; preds = %if.end176.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i371.i) #6
  %58 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i371.i, i32 0, i32 1
  %59 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i371.i, i32 0, i32 2
  %60 = call ptr @memset(ptr %disk_key.i371.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %disk_key.i371.i, i32 noundef 126, i32 noundef 17) #6
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %59, align 1
  %63 = call i64 @llvm.bswap.i64(i64 %62) #6
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %63, ptr %2, align 1
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %58, align 8
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %1, align 8
  %68 = ptrtoint ptr %disk_key.i371.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %disk_key.i371.i, align 8
  %70 = call i64 @llvm.bswap.i64(i64 %69) #6
  %71 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %70, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i371.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %69)
  %cmp193.not.i = icmp eq i64 %69, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %66)
  %cmp198.not.i = icmp eq i8 %66, -128
  %or.cond386.i = select i1 %cmp193.not.i, i1 %cmp198.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 72057594037927936, i64 %62)
  %cmp202.not.i = icmp eq i64 %62, 72057594037927936
  %or.cond387.i = select i1 %or.cond386.i, i1 %cmp202.not.i, i1 false
  br i1 %or.cond387.i, label %if.end210.i, label %do.end207.i

do.end207.i:                                      ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  %call209.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.2, i32 noundef 164) #9
  br label %out.i

if.end210.i:                                      ; preds = %if.end191.i
  %call.i.i374.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 126 to ptr), i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %call.i.i374.i)
  %cmp213.not.i = icmp eq i32 %call.i.i374.i, 13
  br i1 %cmp213.not.i, label %if.end221.i, label %do.end218.i

do.end218.i:                                      ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #8
  %call220.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 170) #9
  br label %out.i

if.end221.i:                                      ; preds = %if.end210.i
  %call.i.i375.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 126 to ptr), i32 noundef 17) #6
  %add224.i = add i32 %call.i.i375.i, 101
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %buf.i, i32 noundef %add224.i, i32 noundef 13) #6
  %bcmp357.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %buf.i, ptr noundef nonnull dereferenceable(13) @.str.7, i32 13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp357.i)
  %tobool229.not.i = icmp eq i32 %bcmp357.i, 0
  br i1 %tobool229.not.i, label %if.end236.i, label %do.end233.i

do.end233.i:                                      ; preds = %if.end221.i
  call void @__sanitizer_cov_trace_pc() #8
  %call235.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.2, i32 noundef 179) #9
  br label %out.i

if.end236.i:                                      ; preds = %if.end221.i
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %disk_key.i376.i) #6
  %72 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i376.i, i32 0, i32 1
  %73 = getelementptr inbounds %struct.btrfs_disk_key, ptr %disk_key.i376.i, i32 0, i32 2
  %74 = call ptr @memset(ptr %disk_key.i376.i, i32 255, i32 17)
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %disk_key.i376.i, i32 noundef 151, i32 noundef 17) #6
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %76 = load i64, ptr %73, align 1
  %77 = call i64 @llvm.bswap.i64(i64 %76) #6
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %77, ptr %2, align 1
  %79 = ptrtoint ptr %72 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %72, align 8
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %1, align 8
  %82 = ptrtoint ptr %disk_key.i376.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %disk_key.i376.i, align 8
  %84 = call i64 @llvm.bswap.i64(i64 %83) #6
  %85 = ptrtoint ptr %key.i to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %key.i, align 8
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %disk_key.i376.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %cmp238.not.i = icmp eq i64 %83, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %80)
  %cmp243.not.i = icmp eq i8 %80, -128
  %or.cond388.i = select i1 %cmp238.not.i, i1 %cmp243.not.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp8(i64 216172782113783808, i64 %76)
  %cmp247.not.i = icmp eq i64 %76, 216172782113783808
  %or.cond389.i = select i1 %or.cond388.i, i1 %cmp247.not.i, i1 false
  br i1 %or.cond389.i, label %if.end255.i, label %do.end252.i

do.end252.i:                                      ; preds = %if.end236.i
  call void @__sanitizer_cov_trace_pc() #8
  %call254.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.2, i32 noundef 187) #9
  br label %out.i

if.end255.i:                                      ; preds = %if.end236.i
  %call.i.i379.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 151 to ptr), i32 noundef 21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i379.i)
  %cmp258.not.i = icmp eq i32 %call.i.i379.i, 5
  br i1 %cmp258.not.i, label %if.end266.i, label %do.end263.i

do.end263.i:                                      ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #8
  %call265.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.2, i32 noundef 193) #9
  br label %out.i

if.end266.i:                                      ; preds = %if.end255.i
  %call.i.i380.i = call i32 @btrfs_get_32(ptr noundef nonnull %call27.i, ptr noundef nonnull inttoptr (i32 151 to ptr), i32 noundef 17) #6
  %add269.i = add i32 %call.i.i380.i, 101
  call void @read_extent_buffer(ptr noundef nonnull %call27.i, ptr noundef nonnull %buf.i, i32 noundef %add269.i, i32 noundef 5) #6
  %bcmp358.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %buf.i, ptr noundef nonnull dereferenceable(5) @.str.5, i32 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp358.i)
  %tobool274.not.i = icmp eq i32 %bcmp358.i, 0
  br i1 %tobool274.not.i, label %if.end266.i.out.i_crit_edge, label %do.end278.i

if.end266.i.out.i_crit_edge:                      ; preds = %if.end266.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

do.end278.i:                                      ; preds = %if.end266.i
  call void @__sanitizer_cov_trace_pc() #8
  %call280.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 202) #9
  br label %out.i

out.i:                                            ; preds = %do.end278.i, %if.end266.i.out.i_crit_edge, %do.end263.i, %do.end252.i, %do.end233.i, %do.end218.i, %do.end207.i, %do.end188.i, %do.end173.i, %do.end162.i, %do.end143.i, %do.end133.i, %do.end118.i, %do.end107.i, %do.end86.i, %do.end72.i, %do.end61.i, %do.end44.i, %do.end32.i, %do.end23.i, %do.end13.i
  %ret.0.i = phi i32 [ %6, %do.end13.i ], [ %call39.i, %do.end44.i ], [ -22, %do.end61.i ], [ -22, %do.end72.i ], [ -22, %do.end86.i ], [ -22, %do.end107.i ], [ -22, %do.end118.i ], [ -22, %do.end133.i ], [ %call138.i, %do.end143.i ], [ -22, %do.end162.i ], [ -22, %do.end173.i ], [ -22, %do.end188.i ], [ -22, %do.end207.i ], [ -22, %do.end218.i ], [ -22, %do.end233.i ], [ -22, %do.end252.i ], [ -22, %do.end263.i ], [ -22, %do.end278.i ], [ 0, %if.end266.i.out.i_crit_edge ], [ -12, %do.end32.i ], [ -12, %do.end23.i ]
  %path.0.i = phi ptr [ null, %do.end13.i ], [ %call18.i, %do.end44.i ], [ %call18.i, %do.end61.i ], [ %call18.i, %do.end72.i ], [ %call18.i, %do.end86.i ], [ %call18.i, %do.end107.i ], [ %call18.i, %do.end118.i ], [ %call18.i, %do.end133.i ], [ %call18.i, %do.end143.i ], [ %call18.i, %do.end162.i ], [ %call18.i, %do.end173.i ], [ %call18.i, %do.end188.i ], [ %call18.i, %do.end207.i ], [ %call18.i, %do.end218.i ], [ %call18.i, %do.end233.i ], [ %call18.i, %do.end252.i ], [ %call18.i, %do.end263.i ], [ %call18.i, %do.end278.i ], [ %call18.i, %if.end266.i.out.i_crit_edge ], [ %call18.i, %do.end32.i ], [ null, %do.end23.i ]
  call void @btrfs_free_path(ptr noundef %path.0.i) #6
  call void @btrfs_free_dummy_root(ptr noundef %call8.i) #6
  call void @btrfs_free_dummy_fs_info(ptr noundef nonnull %call2.i) #6
  br label %test_btrfs_split_item.exit

test_btrfs_split_item.exit:                       ; preds = %out.i, %do.end5.i
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ -12, %do.end5.i ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %key.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_fs_info(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @btrfs_alloc_path() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_dummy_extent_buffer(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_setup_item_for_insert(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @write_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_split_item(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @read_extent_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_root(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @btrfs_free_dummy_fs_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @btrfs_get_32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 215, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @btrfs_test_extent_buffer_operations._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @btrfs_test_extent_buffer_operations._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 18, i32 16}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 19, i32 17}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 20, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 21, i32 17}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 22, i32 17}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 28, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @test_btrfs_split_item._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @test_btrfs_split_item._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 32, i32 3}
!23 = !{ptr @test_btrfs_split_item._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @test_btrfs_split_item._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @test_btrfs_split_item._entry.13, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 38, i32 3}
!27 = !{ptr @test_btrfs_split_item._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @test_btrfs_split_item._entry.15, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 45, i32 3}
!30 = !{ptr @test_btrfs_split_item._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @test_btrfs_split_item._entry.17, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 52, i32 3}
!33 = !{ptr @test_btrfs_split_item._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 75, i32 3}
!36 = !{ptr @test_btrfs_split_item._entry.19, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @test_btrfs_split_item._entry_ptr.21, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 86, i32 3}
!40 = !{ptr @test_btrfs_split_item._entry.22, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @test_btrfs_split_item._entry_ptr.24, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 92, i32 3}
!44 = !{ptr @test_btrfs_split_item._entry.25, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @test_btrfs_split_item._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 100, i32 3}
!48 = !{ptr @test_btrfs_split_item._entry.28, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @test_btrfs_split_item._entry_ptr.30, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 110, i32 3}
!52 = !{ptr @test_btrfs_split_item._entry.31, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @test_btrfs_split_item._entry_ptr.33, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.35, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 116, i32 3}
!56 = !{ptr @test_btrfs_split_item._entry.34, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @test_btrfs_split_item._entry_ptr.36, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.38, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 124, i32 3}
!60 = !{ptr @test_btrfs_split_item._entry.37, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @test_btrfs_split_item._entry_ptr.39, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.41, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 134, i32 3}
!64 = !{ptr @test_btrfs_split_item._entry.40, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @test_btrfs_split_item._entry_ptr.42, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @test_btrfs_split_item._entry.43, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 141, i32 3}
!68 = !{ptr @test_btrfs_split_item._entry_ptr.44, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @test_btrfs_split_item._entry.45, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 147, i32 3}
!71 = !{ptr @test_btrfs_split_item._entry_ptr.46, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 155, i32 3}
!74 = !{ptr @test_btrfs_split_item._entry.47, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @test_btrfs_split_item._entry_ptr.49, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @test_btrfs_split_item._entry.50, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 164, i32 3}
!78 = !{ptr @test_btrfs_split_item._entry_ptr.51, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @test_btrfs_split_item._entry.52, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 170, i32 3}
!81 = !{ptr @test_btrfs_split_item._entry_ptr.53, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.55, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 178, i32 3}
!84 = !{ptr @test_btrfs_split_item._entry.54, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @test_btrfs_split_item._entry_ptr.56, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.58, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 187, i32 3}
!88 = !{ptr @test_btrfs_split_item._entry.57, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @test_btrfs_split_item._entry_ptr.59, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @test_btrfs_split_item._entry.60, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 193, i32 3}
!92 = !{ptr @test_btrfs_split_item._entry_ptr.61, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.63, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../fs/btrfs/tests/extent-buffer-tests.c", i32 201, i32 3}
!95 = !{ptr @test_btrfs_split_item._entry.62, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @test_btrfs_split_item._entry_ptr.64, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
