; ModuleID = '/llk/IR_all_yes/lib/test_meminit.c_pt.bc'
source_filename = "../lib/test_meminit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_test_meminit__226_408_test_meminit_init6 = internal global ptr @test_meminit_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file227 = internal constant [35 x i8] c"test_meminit.file=lib/test_meminit\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [25 x i8] c"test_meminit.license=GPL\00", section ".modinfo", align 1
@test_meminit_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 402, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016test_meminit: all %d tests passed!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_meminit_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lib/test_meminit.c\00", [45 x i8] zeroinitializer }, align 32
@test_meminit_init._entry_ptr = internal global ptr @test_meminit_init._entry, section ".printk_index", align 4
@test_meminit_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016test_meminit: failures: %d out of %d\0A\00", [56 x i8] zeroinitializer }, align 32
@test_meminit_init._entry_ptr.5 = internal global ptr @test_meminit_init._entry.3, section ".printk_index", align 4
@test_pages._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016test_meminit: %s failed %d out of %d times\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_pages\00", [21 x i8] zeroinitializer }, align 32
@test_pages._entry_ptr = internal global ptr @test_pages._entry, section ".printk_index", align 4
@test_pages._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016test_meminit: all %d tests in %s passed\0A\00", [53 x i8] zeroinitializer }, align 32
@test_pages._entry_ptr.10 = internal global ptr @test_pages._entry.8, section ".printk_index", align 4
@test_kvmalloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.12, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"test_kvmalloc\00", [18 x i8] zeroinitializer }, align 32
@test_kvmalloc._entry_ptr = internal global ptr @test_kvmalloc._entry, section ".printk_index", align 4
@test_kvmalloc._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.12, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_kvmalloc._entry_ptr.14 = internal global ptr @test_kvmalloc._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@test_kmemcache._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.15, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"test_kmemcache\00", [17 x i8] zeroinitializer }, align 32
@test_kmemcache._entry_ptr = internal global ptr @test_kmemcache._entry, section ".printk_index", align 4
@test_kmemcache._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.15, ptr @.str.2, i32 368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_kmemcache._entry_ptr.17 = internal global ptr @test_kmemcache._entry.16, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_cache\00", [21 x i8] zeroinitializer }, align 32
@bulk_array = internal global { [100 x ptr], [112 x i8] } zeroinitializer, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@test_rcu_persistent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.22, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"test_rcu_persistent\00", [44 x i8] zeroinitializer }, align 32
@test_rcu_persistent._entry_ptr = internal global ptr @test_rcu_persistent._entry, section ".printk_index", align 4
@test_rcu_persistent._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.22, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@test_rcu_persistent._entry_ptr.24 = internal global ptr @test_rcu_persistent._entry.23, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 402, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 404, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 92, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 143, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 368, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 205, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"bulk_array\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 187, i32 14 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 695, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 723, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private constant [22 x i8] c"../lib/test_meminit.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 383, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__initcall__kmod_test_meminit__226_408_test_meminit_init6, ptr @test_kmemcache._entry, ptr @test_kmemcache._entry.16, ptr @test_kmemcache._entry_ptr, ptr @test_kmemcache._entry_ptr.17, ptr @test_kvmalloc._entry, ptr @test_kvmalloc._entry.13, ptr @test_kvmalloc._entry_ptr, ptr @test_kvmalloc._entry_ptr.14, ptr @test_meminit_init._entry, ptr @test_meminit_init._entry.3, ptr @test_meminit_init._entry_ptr, ptr @test_meminit_init._entry_ptr.5, ptr @test_pages._entry, ptr @test_pages._entry.8, ptr @test_pages._entry_ptr, ptr @test_pages._entry_ptr.10, ptr @test_rcu_persistent._entry, ptr @test_rcu_persistent._entry.23, ptr @test_rcu_persistent._entry_ptr, ptr @test_rcu_persistent._entry_ptr.24, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @bulk_array, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_meminit_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_meminit_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pages._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_pages._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kvmalloc._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmemcache._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_kmemcache._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bulk_array to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rcu_persistent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_rcu_persistent._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_meminit_init() #0 section ".init.text" align 64 {
entry:
  %failures = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failures) #12
  %0 = ptrtoint ptr %failures to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %failures, align 4
  %call = call fastcc i32 @test_pages(ptr noundef nonnull %failures) #13
  %call1 = call fastcc i32 @test_kvmalloc(ptr noundef nonnull %failures) #13
  %add2 = add i32 %call1, %call
  %call3 = call fastcc i32 @test_kmemcache(ptr noundef nonnull %failures) #13
  %add4 = add i32 %add2, %call3
  %call5 = call fastcc i32 @test_rcu_persistent(ptr noundef nonnull %failures) #13
  %add6 = add i32 %add4, %call5
  %1 = ptrtoint ptr %failures to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %failures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end, label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %add6) #14
  br label %if.end

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %2, i32 noundef %add6) #14
  br label %if.end

if.end:                                           ; preds = %do.end10, %do.end
  %cond = phi i32 [ -22, %do.end10 ], [ 0, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failures) #12
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_pages(ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %failures = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failures) #12
  %0 = ptrtoint ptr %failures to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %failures, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %num_tests.017 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  call fastcc void @do_alloc_pages_order(i32 noundef %num_tests.017, ptr noundef nonnull %failures) #13
  %add = add nuw nsw i32 %num_tests.017, 1
  %exitcond.not = icmp eq i32 %add, 10
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body
  %1 = ptrtoint ptr %failures to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %failures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef 10) #14
  br label %do.end9

do.end5:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 10, ptr noundef nonnull @.str.7) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end5, %do.end
  %3 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_failures, align 4
  %add10 = add i32 %4, %2
  store i32 %add10, ptr %total_failures, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failures) #12
  ret i32 10
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kvmalloc(ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %failures = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failures) #12
  %0 = ptrtoint ptr %failures to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %failures, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.020
  call fastcc void @do_kmalloc_size(i32 noundef %shl, ptr noundef nonnull %failures) #13
  call fastcc void @do_vmalloc_size(i32 noundef %shl, ptr noundef nonnull %failures) #13
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body
  %1 = ptrtoint ptr %failures to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %failures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end7, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12, i32 noundef %2, i32 noundef 40) #14
  br label %do.end11

do.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 40, ptr noundef nonnull @.str.12) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end7, %do.end
  %3 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_failures, align 4
  %add12 = add i32 %4, %2
  store i32 %add12, ptr %total_failures, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failures) #12
  ret i32 40
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_kmemcache(ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %failures = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failures) #12
  %0 = ptrtoint ptr %failures to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %failures, align 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry
  %num_tests.053 = phi i32 [ 0, %entry ], [ %add19, %for.end.for.body_crit_edge ]
  %i.052 = phi i32 [ 0, %entry ], [ %inc21, %for.end.for.body_crit_edge ]
  %shl = shl nuw nsw i32 8, %i.052
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body
  %num_tests.151 = phi i32 [ %num_tests.053, %for.body ], [ %num_tests.2, %for.inc.for.body3_crit_edge ]
  %flags.049 = phi i32 [ 0, %for.body ], [ %inc, %for.inc.for.body3_crit_edge ]
  %and7 = and i32 %flags.049, 4
  %and7.lobit = lshr exact i32 %and7, 2
  %and13 = and i32 %and7.lobit, %flags.049
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end, label %for.body3.for.inc_crit_edge

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  %and = and i32 %flags.049, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8 = icmp ne i32 %and7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %and4 = and i32 %flags.049, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5 = icmp ne i32 %and4, 0
  call fastcc void @do_kmem_cache_size(i32 noundef %shl, i1 noundef zeroext %tobool, i1 noundef zeroext %tobool5, i1 noundef zeroext %tobool8, ptr noundef nonnull %failures) #13
  %add = add i32 %num_tests.151, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body3.for.inc_crit_edge
  %num_tests.2 = phi i32 [ %num_tests.151, %for.body3.for.inc_crit_edge ], [ %add, %if.end ]
  %inc = add nuw nsw i32 %flags.049, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end:                                          ; preds = %for.inc
  call fastcc void @do_kmem_cache_size_bulk(i32 noundef %shl, ptr noundef nonnull %failures) #13
  %add19 = add i32 %num_tests.2, 1
  %inc21 = add nuw nsw i32 %i.052, 1
  %exitcond54.not = icmp eq i32 %inc21, 10
  br i1 %exitcond54.not, label %do.body, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.end
  %1 = ptrtoint ptr %failures to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %failures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool23.not = icmp eq i32 %2, 0
  br i1 %tobool23.not, label %do.end29, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.15, i32 noundef %2, i32 noundef %add19) #14
  br label %do.end34

do.end29:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %add19, ptr noundef nonnull @.str.15) #14
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %do.end
  %3 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_failures, align 4
  %add35 = add i32 %4, %2
  store i32 %add35, ptr %total_failures, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failures) #12
  ret i32 %add19
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test_rcu_persistent(ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %failures = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %failures) #12
  %0 = ptrtoint ptr %failures to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %failures, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %num_tests.017 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %shl = shl nuw nsw i32 8, %num_tests.017
  call fastcc void @do_kmem_cache_rcu_persistent(i32 noundef %shl, ptr noundef nonnull %failures) #13
  %add = add nuw nsw i32 %num_tests.017, 1
  %exitcond.not = icmp eq i32 %add, 10
  br i1 %exitcond.not, label %do.body, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body:                                          ; preds = %for.body
  %1 = ptrtoint ptr %failures to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %failures, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end5, label %do.end

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.22, i32 noundef %2, i32 noundef 10) #14
  br label %do.end9

do.end5:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 10, ptr noundef nonnull @.str.22) #14
  br label %do.end9

do.end9:                                          ; preds = %do.end5, %do.end
  %3 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %total_failures, align 4
  %add10 = add i32 %4, %2
  store i32 %add10, ptr %total_failures, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %failures) #12
  ret i32 10
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_alloc_pages_order(i32 noundef %order, ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl i32 4096, %order
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef %order, i32 noundef 0, ptr noundef null) #12
  %call1 = tail call ptr @page_address(ptr noundef %call38.i.i.i) #12
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call1, i32 noundef %shl, i32 noundef 0) #14
  tail call void @__free_pages(ptr noundef %call38.i.i.i, i32 noundef %order) #12
  %call38.i.i.i1 = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef %order, i32 noundef 0, ptr noundef null) #12
  %call3 = tail call ptr @page_address(ptr noundef %call38.i.i.i1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %order)
  %cmp5.not.i = icmp ugt i32 %order, 19
  br i1 %cmp5.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ret.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call3, i32 %i.06.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp ne i8 %1, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %ret.07.i, %inc.i
  %inc1.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, %shl
  br i1 %exitcond.not.i, label %count_nonzero_bytes.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

count_nonzero_bytes.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %count_nonzero_bytes.exit.if.end_crit_edge, label %if.then

count_nonzero_bytes.exit.if.end_crit_edge:        ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_failures, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %total_failures, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %count_nonzero_bytes.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call3, i32 noundef %shl, i32 noundef 0) #14
  tail call void @__free_pages(ptr noundef %call38.i.i.i1, i32 noundef %order) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fill_with_garbage_skip(ptr nocapture noundef writeonly %ptr, i32 noundef %size, i32 noundef %skip) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %ptr, i32 %skip
  call void @__sanitizer_cov_trace_cmp4(i32 %size, i32 %skip)
  %cmp = icmp ult i32 %size, %skip
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !63

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 46, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sub = sub i32 %size, %skip
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp1936 = icmp ugt i32 %sub, 3
  br i1 %cmp1936, label %while.body.preheader, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.preheader:                             ; preds = %if.end
  %0 = add i32 %size, -4
  %1 = sub i32 %0, %skip
  %2 = lshr i32 %1, 2
  %3 = add nuw nsw i32 %2, 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %size.addr.038 = phi i32 [ %sub20, %while.body.while.body_crit_edge ], [ %sub, %while.body.preheader ]
  %i.037 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %i.037
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 161987230, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.037, 1
  %sub20 = add i32 %size.addr.038, -4
  %exitcond.not = icmp eq i32 %i.037, %2
  br i1 %exitcond.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %3, %while.body.while.end_crit_edge ]
  %size.addr.0.lcssa = phi i32 [ %sub, %if.end.while.end_crit_edge ], [ %sub20, %while.body.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.lcssa)
  %tobool21.not = icmp eq i32 %size.addr.0.lcssa, 0
  br i1 %tobool21.not, label %while.end.if.end24_crit_edge, label %if.then22

while.end.if.end24_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx23 = getelementptr i32, ptr %add.ptr, i32 %i.0.lcssa
  %5 = call ptr @memset(ptr %arrayidx23, i32 158, i32 %size.addr.0.lcssa)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %while.end.if.end24_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_kmalloc_size(i32 noundef %size, ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #15
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call9.i, i32 noundef %size, i32 noundef 0) #14
  tail call void @kfree(ptr noundef %call9.i) #12
  %call9.i26 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp5.not.i = icmp eq i32 %size, 0
  br i1 %cmp5.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ret.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call9.i26, i32 %i.06.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp ne i8 %1, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %ret.07.i, %inc.i
  %inc1.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, %size
  br i1 %exitcond.not.i, label %count_nonzero_bytes.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

count_nonzero_bytes.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %count_nonzero_bytes.exit.if.end_crit_edge, label %if.then

count_nonzero_bytes.exit.if.end_crit_edge:        ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_failures, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %total_failures, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %count_nonzero_bytes.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call9.i26, i32 noundef %size, i32 noundef 0) #14
  tail call void @kfree(ptr noundef %call9.i26) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_vmalloc_size(i32 noundef %size, ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call noalias ptr @vmalloc(i32 noundef %size) #15
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call, i32 noundef %size, i32 noundef 0) #14
  tail call void @vfree(ptr noundef %call) #12
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %size) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp5.not.i = icmp eq i32 %size, 0
  br i1 %cmp5.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ret.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call1, i32 %i.06.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp ne i8 %1, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %ret.07.i, %inc.i
  %inc1.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, %size
  br i1 %exitcond.not.i, label %count_nonzero_bytes.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

count_nonzero_bytes.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool.not, label %count_nonzero_bytes.exit.if.end_crit_edge, label %if.then

count_nonzero_bytes.exit.if.end_crit_edge:        ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %total_failures, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %total_failures, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %count_nonzero_bytes.exit.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call1, i32 noundef %size, i32 noundef 0) #14
  tail call void @vfree(ptr noundef %call1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_kmem_cache_size(i32 noundef %size, i1 noundef zeroext %want_ctor, i1 noundef zeroext %want_rcu, i1 noundef zeroext %want_zero, ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %or = select i1 %want_zero, i32 3520, i32 3264
  %cond4 = select i1 %want_rcu, i32 524288, i32 0
  %cond6 = select i1 %want_ctor, ptr @test_ctor, ptr null
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.18, i32 noundef %size, i32 noundef 1, i32 noundef %cond4, ptr noundef %cond6) #12
  %brmerge = or i1 %want_ctor, %want_rcu
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp5.not.i.i = icmp eq i32 %size, 0
  %cond38 = select i1 %want_ctor, i32 4, i32 0
  br label %for.body

for.body:                                         ; preds = %for.inc66.for.body_crit_edge, %entry
  %fail.0.off052 = phi i1 [ false, %entry ], [ %fail.5, %for.inc66.for.body_crit_edge ]
  %iter.051 = phi i32 [ 0, %entry ], [ %inc67, %for.inc66.for.body_crit_edge ]
  br i1 %brmerge, label %for.body.if.end24_crit_edge, label %if.then

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then:                                          ; preds = %for.body
  %call9 = tail call i32 @kmem_cache_alloc_bulk(ptr noundef %call, i32 noundef %or, i32 noundef 100, ptr noundef nonnull @bulk_array) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then.if.end24_crit_edge, label %for.cond12.preheader

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

for.cond12.preheader:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp1348 = icmp sgt i32 %call9, 0
  br i1 %cmp1348, label %for.cond12.preheader.for.body14_crit_edge, label %for.cond12.preheader.for.end_crit_edge

for.cond12.preheader.for.end_crit_edge:           ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond12.preheader.for.body14_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body14

for.body14:                                       ; preds = %count_nonzero_bytes.exit.i.for.body14_crit_edge, %for.cond12.preheader.for.body14_crit_edge
  %i.050 = phi i32 [ %inc, %count_nonzero_bytes.exit.i.for.body14_crit_edge ], [ 0, %for.cond12.preheader.for.body14_crit_edge ]
  %fail.1.off049 = phi i1 [ %or2110, %count_nonzero_bytes.exit.i.for.body14_crit_edge ], [ %fail.0.off052, %for.cond12.preheader.for.body14_crit_edge ]
  %arrayidx = getelementptr [100 x ptr], ptr @bulk_array, i32 0, i32 %i.050
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp5.not.i.i, label %for.body14.count_nonzero_bytes.exit.i_crit_edge, label %for.body14.for.body.i.i_crit_edge

for.body14.for.body.i.i_crit_edge:                ; preds = %for.body14
  br label %for.body.i.i

for.body14.count_nonzero_bytes.exit.i_crit_edge:  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_nonzero_bytes.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body14.for.body.i.i_crit_edge
  %ret.07.i.i = phi i32 [ %spec.select.i.i13, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body14.for.body.i.i_crit_edge ]
  %i.06.i.i = phi i32 [ %inc1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body14.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %i.06.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i12 = icmp ne i8 %3, 0
  %inc.i.i = zext i1 %tobool.not.i.i12 to i32
  %spec.select.i.i13 = add i32 %ret.07.i.i, %inc.i.i
  %inc1.i.i = add nuw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc1.i.i, %size
  br i1 %exitcond.not.i.i, label %for.body.i.i.count_nonzero_bytes.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.count_nonzero_bytes.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_nonzero_bytes.exit.i

count_nonzero_bytes.exit.i:                       ; preds = %for.body.i.i.count_nonzero_bytes.exit.i_crit_edge, %for.body14.count_nonzero_bytes.exit.i_crit_edge
  %ret.0.lcssa.i.i = phi i32 [ 0, %for.body14.count_nonzero_bytes.exit.i_crit_edge ], [ %spec.select.i.i13, %for.body.i.i.count_nonzero_bytes.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i.i)
  %tobool25.i = icmp ne i32 %ret.0.lcssa.i.i, 0
  %or2110 = or i1 %fail.1.off049, %tobool25.i
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %call9
  br i1 %exitcond.not, label %count_nonzero_bytes.exit.i.for.end_crit_edge, label %count_nonzero_bytes.exit.i.for.body14_crit_edge

count_nonzero_bytes.exit.i.for.body14_crit_edge:  ; preds = %count_nonzero_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

count_nonzero_bytes.exit.i.for.end_crit_edge:     ; preds = %count_nonzero_bytes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %count_nonzero_bytes.exit.i.for.end_crit_edge, %for.cond12.preheader.for.end_crit_edge
  %fail.1.off0.lcssa = phi i1 [ %fail.0.off052, %for.cond12.preheader.for.end_crit_edge ], [ %or2110, %count_nonzero_bytes.exit.i.for.end_crit_edge ]
  tail call void @kmem_cache_free_bulk(ptr noundef %call, i32 noundef %call9, ptr noundef nonnull @bulk_array) #12
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.then.if.end24_crit_edge, %for.body.if.end24_crit_edge
  %fail.3.off0 = phi i1 [ %fail.0.off052, %for.body.if.end24_crit_edge ], [ %fail.1.off0.lcssa, %for.end ], [ true, %if.then.if.end24_crit_edge ]
  %call25 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef %or) #12
  %call29 = tail call fastcc zeroext i1 @check_buf(ptr noundef %call25, i32 noundef %size, i1 noundef zeroext %want_ctor, i1 noundef zeroext %want_rcu, i1 noundef zeroext %want_zero) #13
  %or337 = or i1 %fail.3.off0, %call29
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call25, i32 noundef %size, i32 noundef %cond38) #13
  br i1 %want_rcu, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kmem_cache_free(ptr noundef %call, ptr noundef %call25) #12
  br label %for.inc66

if.end41:                                         ; preds = %if.end24
  %4 = tail call i32 @llvm.read_register.i32(metadata !54) #12
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end41.if.end8.i_crit_edge, label %land.lhs.true.i

if.end41.if.end8.i_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true.i:                                  ; preds = %if.end41
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.if.end8.i_crit_edge, label %if.then.i

land.lhs.true2.i.if.end8.i_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then.i, %land.lhs.true2.i.if.end8.i_crit_edge, %land.lhs.true.i.if.end8.i_crit_edge, %if.end41.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 2592) #15
  %tobool43.not = icmp eq ptr %call9.i, null
  br i1 %tobool43.not, label %if.end8.i.if.end45_crit_edge, label %if.then44

if.end8.i.if.end45_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then44:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %call9.i, ptr %call25, i32 %size)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end8.i.if.end45_crit_edge
  %retval.1.i45 = phi ptr [ %call9.i, %if.then44 ], [ null, %if.end8.i.if.end45_crit_edge ]
  tail call void @kmem_cache_free(ptr noundef %call, ptr noundef %call25) #12
  br i1 %want_ctor, label %if.then28.i, label %if.end45.check_buf.exit31_crit_edge

if.end45.check_buf.exit31_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_buf.exit31

if.then28.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094795585, i32 %10)
  %cmp.not.i = icmp ne i32 %10, 1094795585
  br label %check_buf.exit31

check_buf.exit31:                                 ; preds = %if.then28.i, %if.end45.check_buf.exit31_crit_edge
  %retval.0.i30 = phi i1 [ %cmp.not.i, %if.then28.i ], [ false, %if.end45.check_buf.exit31_crit_edge ]
  %or528 = or i1 %or337, %retval.0.i30
  br i1 %tobool43.not, label %check_buf.exit31.if.end65_crit_edge, label %if.then56

check_buf.exit31.if.end65_crit_edge:              ; preds = %check_buf.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then56:                                        ; preds = %check_buf.exit31
  call void @__sanitizer_cov_trace_pc() #11
  %bcmp = tail call i32 @bcmp(ptr %call25, ptr nonnull %retval.1.i45, i32 %size) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool58 = icmp ne i32 %bcmp, 0
  %or629 = or i1 %or528, %tobool58
  tail call void @kfree(ptr noundef nonnull %retval.1.i45) #12
  br label %if.end65

if.end65:                                         ; preds = %if.then56, %check_buf.exit31.if.end65_crit_edge
  %fail.4 = phi i1 [ %or629, %if.then56 ], [ %or528, %check_buf.exit31.if.end65_crit_edge ]
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i32, label %if.end65.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

if.end65.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %if.end65
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %if.end65.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !65
  %11 = tail call i32 @llvm.read_register.i32(metadata !54) #12
  %and.i.i.i.i.i39 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i41 = add i32 %14, -1
  store volatile i32 %sub.i.i.i41, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %for.inc66

for.inc66:                                        ; preds = %rcu_read_unlock.exit, %if.then40
  %fail.5 = phi i1 [ %fail.4, %rcu_read_unlock.exit ], [ %or337, %if.then40 ]
  %inc67 = add nuw nsw i32 %iter.051, 1
  %exitcond56.not = icmp eq i32 %inc67, 10
  br i1 %exitcond56.not, label %for.end68, label %for.inc66.for.body_crit_edge

for.inc66.for.body_crit_edge:                     ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end68:                                        ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kmem_cache_destroy(ptr noundef %call) #12
  %conv70 = zext i1 %fail.5 to i32
  %15 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %total_failures, align 4
  %add = add i32 %16, %conv70
  store i32 %add, ptr %total_failures, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_kmem_cache_size_bulk(i32 noundef %size, ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %objects = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %objects) #12
  %0 = call ptr @memset(ptr %objects, i32 255, i32 40)
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.18, i32 noundef %size, i32 noundef %size, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp5.not.i = icmp eq i32 %size, 0
  br label %for.body

for.body:                                         ; preds = %for.inc12.for.body_crit_edge, %entry
  %iter.09 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12.for.body_crit_edge ]
  %call1 = call i32 @kmem_cache_alloc_bulk(ptr noundef %call, i32 noundef 3264, i32 noundef 10, ptr noundef nonnull %objects) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp36 = icmp sgt i32 %call1, 0
  br i1 %cmp36, label %for.body.for.body4_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %fail.1.off08 = phi i1 [ %5, %for.cond2.for.body4_crit_edge ], [ false, %for.body.for.body4_crit_edge ]
  %i.07 = phi i32 [ %inc, %for.cond2.for.body4_crit_edge ], [ 0, %for.body.for.body4_crit_edge ]
  %arrayidx = getelementptr [10 x ptr], ptr %objects, i32 0, i32 %i.07
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  br i1 %cmp5.not.i, label %for.body4.count_nonzero_bytes.exit.thread_crit_edge, label %for.body4.for.body.i_crit_edge

for.body4.for.body.i_crit_edge:                   ; preds = %for.body4
  br label %for.body.i

for.body4.count_nonzero_bytes.exit.thread_crit_edge: ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_nonzero_bytes.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body4.for.body.i_crit_edge
  %ret.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body4.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body4.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %2, i32 %i.06.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp ne i8 %4, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %ret.07.i, %inc.i
  %inc1.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, %size
  br i1 %exitcond.not.i, label %count_nonzero_bytes.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

count_nonzero_bytes.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool6.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool6.not, label %count_nonzero_bytes.exit.count_nonzero_bytes.exit.thread_crit_edge, label %count_nonzero_bytes.exit.for.cond2_crit_edge

count_nonzero_bytes.exit.for.cond2_crit_edge:     ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2

count_nonzero_bytes.exit.count_nonzero_bytes.exit.thread_crit_edge: ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_nonzero_bytes.exit.thread

count_nonzero_bytes.exit.thread:                  ; preds = %count_nonzero_bytes.exit.count_nonzero_bytes.exit.thread_crit_edge, %for.body4.count_nonzero_bytes.exit.thread_crit_edge
  br label %for.cond2

for.cond2:                                        ; preds = %count_nonzero_bytes.exit.thread, %count_nonzero_bytes.exit.for.cond2_crit_edge
  %5 = phi i1 [ %fail.1.off08, %count_nonzero_bytes.exit.thread ], [ true, %count_nonzero_bytes.exit.for.cond2_crit_edge ]
  call fastcc void @fill_with_garbage_skip(ptr noundef %2, i32 noundef %size, i32 noundef 0) #14
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %call1
  br i1 %exitcond.not, label %for.cond2.for.end_crit_edge, label %for.cond2.for.body4_crit_edge

for.cond2.for.body4_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.cond2.for.end_crit_edge:                      ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.cond2.for.end_crit_edge, %for.body.for.end_crit_edge
  %fail.1.off0.lcssa = phi i1 [ false, %for.body.for.end_crit_edge ], [ %5, %for.cond2.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool8.not = icmp eq i32 %call1, 0
  br i1 %tobool8.not, label %for.end.for.inc12_crit_edge, label %if.then9

for.end.for.inc12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc12

if.then9:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @kmem_cache_free_bulk(ptr noundef %call, i32 noundef %call1, ptr noundef nonnull %objects) #12
  br label %for.inc12

for.inc12:                                        ; preds = %if.then9, %for.end.for.inc12_crit_edge
  %inc13 = add nuw nsw i32 %iter.09, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1022, i32 %iter.09)
  %cmp = icmp ugt i32 %iter.09, 1022
  %brmerge = select i1 %cmp, i1 true, i1 %fail.1.off0.lcssa
  br i1 %brmerge, label %for.end14, label %for.inc12.for.body_crit_edge

for.inc12.for.body_crit_edge:                     ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end14:                                        ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #11
  call void @kmem_cache_destroy(ptr noundef %call) #12
  %conv = zext i1 %fail.1.off0.lcssa to i32
  %6 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_failures, align 4
  %add = add i32 %7, %conv
  store i32 %add, ptr %total_failures, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %objects) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @test_ctor(ptr nocapture noundef writeonly %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1094795585, ptr %obj, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_alloc_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @check_buf(ptr nocapture noundef readonly %buf, i32 noundef %size, i1 noundef zeroext %want_ctor, i1 noundef zeroext %want_rcu, i1 noundef zeroext %want_zero) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp5.not.i = icmp eq i32 %size, 0
  br i1 %cmp5.not.i, label %entry.count_nonzero_bytes.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.count_nonzero_bytes.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_nonzero_bytes.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ret.07.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %i.06.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp ne i8 %1, 0
  %inc.i = zext i1 %tobool.not.i to i32
  %spec.select.i = add i32 %ret.07.i, %inc.i
  %inc1.i = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc1.i, %size
  br i1 %exitcond.not.i, label %for.body.i.count_nonzero_bytes.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.count_nonzero_bytes.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %count_nonzero_bytes.exit

count_nonzero_bytes.exit:                         ; preds = %for.body.i.count_nonzero_bytes.exit_crit_edge, %entry.count_nonzero_bytes.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %entry.count_nonzero_bytes.exit_crit_edge ], [ %spec.select.i, %for.body.i.count_nonzero_bytes.exit_crit_edge ]
  %spec.select = and i1 %want_ctor, %want_zero
  br i1 %spec.select, label %do.end, label %count_nonzero_bytes.exit.if.end_crit_edge, !prof !63

count_nonzero_bytes.exit.if.end_crit_edge:        ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %count_nonzero_bytes.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 173, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %count_nonzero_bytes.exit.if.end_crit_edge
  br i1 %want_zero, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool25 = icmp ne i32 %ret.0.lcssa.i, 0
  br label %cleanup

if.end26:                                         ; preds = %if.end
  br i1 %want_ctor, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1094795585, i32 %3)
  %cmp.not = icmp ne i32 %3, 1094795585
  br label %cleanup

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa.i)
  %tobool31.not = icmp ne i32 %ret.0.lcssa.i, 0
  %lnot34 = xor i1 %want_rcu, true
  %spec.select47 = and i1 %tobool31.not, %lnot34
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then28, %if.then24
  %retval.0 = phi i1 [ %tobool25, %if.then24 ], [ %cmp.not, %if.then28 ], [ %spec.select47, %if.else ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free_bulk(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_kmem_cache_rcu_persistent(i32 noundef %size, ptr nocapture noundef %total_failures) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.18, i32 noundef %size, i32 noundef %size, i32 noundef 524288, ptr noundef null) #12
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #12
  tail call fastcc void @fill_with_garbage_skip(ptr noundef %call1, i32 noundef %size, i32 noundef 0) #14
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #17
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.out.sink.split_crit_edge, label %if.end6

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.sink.split

if.end6:                                          ; preds = %if.end
  %1 = call ptr @memcpy(ptr %call9.i, ptr %call1, i32 %size)
  tail call void @kmem_cache_free(ptr noundef %call, ptr noundef %call1) #12
  br label %for.body

for.body:                                         ; preds = %for.inc17.for.body_crit_edge, %if.end6
  %iter.07 = phi i32 [ 0, %if.end6 ], [ %inc18, %for.inc17.for.body_crit_edge ]
  %call7 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %call, i32 noundef 3264) #12
  %arrayidx = getelementptr ptr, ptr %call7.i.i, i32 %iter.07
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %arrayidx, align 4
  %cmp8 = icmp eq ptr %call7, %call1
  br i1 %cmp8, label %if.then9, label %for.inc17

if.then9:                                         ; preds = %for.body
  %bcmp = tail call i32 @bcmp(ptr nonnull %call9.i, ptr %call1, i32 %size) #16
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %if.then9
  %i.08 = phi i32 [ 0, %if.then9 ], [ %inc, %for.body14.for.body14_crit_edge ]
  %arrayidx15 = getelementptr ptr, ptr %call7.i.i, i32 %i.08
  %3 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx15, align 4
  tail call void @kmem_cache_free(ptr noundef %call, ptr noundef %4) #12
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond12 = icmp eq i32 %i.08, %iter.07
  br i1 %exitcond12, label %free_out.loopexit, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.inc17:                                        ; preds = %for.body
  %inc18 = add nuw nsw i32 %iter.07, 1
  %exitcond.not = icmp eq i32 %inc18, 1024
  br i1 %exitcond.not, label %for.inc17.free_out_crit_edge, label %for.inc17.for.body_crit_edge

for.inc17.for.body_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc17.free_out_crit_edge:                     ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_out

free_out.loopexit:                                ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool11 = icmp ne i32 %bcmp, 0
  br label %free_out

free_out:                                         ; preds = %free_out.loopexit, %for.inc17.free_out_crit_edge
  %fail.0 = phi i1 [ %tobool11, %free_out.loopexit ], [ false, %for.inc17.free_out_crit_edge ]
  tail call void @kmem_cache_destroy(ptr noundef %call) #12
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %out.sink.split

out.sink.split:                                   ; preds = %free_out, %if.end.out.sink.split_crit_edge
  %call7.i.i.sink = phi ptr [ %call7.i.i, %free_out ], [ %call9.i, %if.end.out.sink.split_crit_edge ]
  %fail.1.off0.ph = phi i1 [ %fail.0, %free_out ], [ false, %if.end.out.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.sink) #12
  br label %out

out:                                              ; preds = %out.sink.split, %entry.out_crit_edge
  %fail.1.off0 = phi i1 [ false, %entry.out_crit_edge ], [ %fail.1.off0.ph, %out.sink.split ]
  %conv = zext i1 %fail.1.off0 to i32
  %5 = ptrtoint ptr %total_failures to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %total_failures, align 4
  %add = add i32 %6, %conv
  store i32 %add, ptr %total_failures, align 4
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !41, !43, !44, !45, !47, !48, !50, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_test_meminit__226_408_test_meminit_init6, !1, !"__initcall__kmod_test_meminit__226_408_test_meminit_init6", i1 false, i1 false}
!1 = !{!"../lib/test_meminit.c", i32 408, i32 1}
!2 = !{ptr @__UNIQUE_ID_file227, !3, !"__UNIQUE_ID_file227", i1 false, i1 false}
!3 = !{!"../lib/test_meminit.c", i32 410, i32 1}
!4 = !{ptr @__UNIQUE_ID_license228, !3, !"__UNIQUE_ID_license228", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../lib/test_meminit.c", i32 402, i32 3}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @test_meminit_init._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @test_meminit_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/test_meminit.c", i32 404, i32 3}
!13 = !{ptr @test_meminit_init._entry.3, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @test_meminit_init._entry_ptr.5, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test_meminit.c", i32 92, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @test_pages._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @test_pages._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @test_pages._entry.8, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @test_pages._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!23 = distinct !{null, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/test_meminit.c", i32 143, i32 2}
!27 = !{ptr @test_kvmalloc._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @test_kvmalloc._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @test_kvmalloc._entry.13, !26, !"_entry", i1 false, i1 false}
!30 = !{ptr @test_kvmalloc._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_meminit.c", i32 368, i32 2}
!33 = !{ptr @test_kmemcache._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @test_kmemcache._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @test_kmemcache._entry.16, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @test_kmemcache._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../lib/test_meminit.c", i32 205, i32 24}
!39 = !{ptr @bulk_array, !40, !"bulk_array", i1 false, i1 false}
!40 = !{!"../lib/test_meminit.c", i32 187, i32 14}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_meminit.c", i32 383, i32 2}
!50 = !{ptr @test_rcu_persistent._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @test_rcu_persistent._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @test_rcu_persistent._entry.23, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @test_rcu_persistent._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2150008604}
!65 = !{i64 2150008870}
