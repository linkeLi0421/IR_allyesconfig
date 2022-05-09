; ModuleID = '/llk/IR_all_yes/lib/test_parman.c_pt.bc'
source_filename = "../lib/test_parman.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.parman_ops = type { i32, i32, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.test_parman = type { ptr, ptr, i32, [128 x %struct.test_parman_prio], [8192 x %struct.test_parman_item], %struct.rnd_state, i32, i32, i8, i32 }
%struct.test_parman_prio = type { %struct.parman_prio, i32 }
%struct.parman_prio = type { %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.test_parman_item = type { %struct.parman_item, ptr, i8 }
%struct.parman_item = type { %struct.list_head, i32 }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_test_parman__173_390_test_parman_init6 = internal global ptr @test_parman_init, section ".initcall6.init", align 4
@__exitcall_test_parman_exit = internal global ptr @test_parman_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file174 = internal constant [33 x i8] c"test_parman.file=lib/test_parman\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [33 x i8] c"test_parman.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author176 = internal constant [50 x i8] c"test_parman.author=Jiri Pirko <jiri@mellanox.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description177 = internal constant [47 x i8] c"test_parman.description=Test module for parman\00", section ".modinfo", align 1
@test_parman_lsort_ops = internal constant { %struct.parman_ops, [44 x i8] } { %struct.parman_ops { i32 256, i32 128, ptr @test_parman_resize, ptr @test_parman_move, i32 0 }, [44 x i8] zeroinitializer }, align 32
@net_rand_noise = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@test_parman_check_array._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013test_parman: Array limit is lower than the base count (%lu < %lu)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_parman_check_array\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_parman.c\00", [46 x i8] zeroinitializer }, align 32
@test_parman_check_array._entry_ptr = internal global ptr @test_parman_check_array._entry, section ".printk_index", align 4
@test_parman_check_array._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013test_parman: Gap found in array even though they are forbidden\0A\00", [62 x i8] zeroinitializer }, align 32
@test_parman_check_array._entry_ptr.5 = internal global ptr @test_parman_check_array._entry.3, section ".printk_index", align 4
@test_parman_check_array._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013test_parman: Item belongs under higher priority then the last one (current: %lu, previous: %lu)\0A\00", [61 x i8] zeroinitializer }, align 32
@test_parman_check_array._entry_ptr.8 = internal global ptr @test_parman_check_array._entry.6, section ".printk_index", align 4
@test_parman_check_array._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013test_parman: Item has different index in compare to where it actually is (%lu != %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@test_parman_check_array._entry_ptr.11 = internal global ptr @test_parman_check_array._entry.9, section ".printk_index", align 4
@test_parman_check_array._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013test_parman: Number of used items in array does not match (%u != %u)\0A\00", [56 x i8] zeroinitializer }, align 32
@test_parman_check_array._entry_ptr.14 = internal global ptr @test_parman_check_array._entry.12, section ".printk_index", align 4
@test_parman_check_array._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013test_parman: Number of unused item at the end of array is bigger than resize step (%u >= %lu)\0A\00", [63 x i8] zeroinitializer }, align 32
@test_parman_check_array._entry_ptr.17 = internal global ptr @test_parman_check_array._entry.15, section ".printk_index", align 4
@test_parman_check_array._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016test_parman: Priority array check successful\0A\00", [48 x i8] zeroinitializer }, align 32
@test_parman_check_array._entry_ptr.20 = internal global ptr @test_parman_check_array._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"test_parman_lsort_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 124, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 309, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 322, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 330, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 337, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 344, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 350, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [21 x i8] c"../lib/test_parman.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 355, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author176, ptr @__UNIQUE_ID_description177, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_test_parman_exit, ptr @__initcall__kmod_test_parman__173_390_test_parman_init6, ptr @test_parman_check_array._entry, ptr @test_parman_check_array._entry.12, ptr @test_parman_check_array._entry.15, ptr @test_parman_check_array._entry.18, ptr @test_parman_check_array._entry.3, ptr @test_parman_check_array._entry.6, ptr @test_parman_check_array._entry.9, ptr @test_parman_check_array._entry_ptr, ptr @test_parman_check_array._entry_ptr.11, ptr @test_parman_check_array._entry_ptr.14, ptr @test_parman_check_array._entry_ptr.17, ptr @test_parman_check_array._entry_ptr.20, ptr @test_parman_check_array._entry_ptr.5, ptr @test_parman_check_array._entry_ptr.8, ptr @test_parman_exit, ptr @test_parman_lsort_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_lsort_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_check_array._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_check_array._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_check_array._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_check_array._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_check_array._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_check_array._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_parman_check_array._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_parman_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_parman_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 166956, i32 noundef 3520, i32 noundef 6) #12
  %tobool.not.i.i = icmp eq ptr %call1.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %entry.test_parman_lsort.exit_crit_edge, label %if.end.i.i

entry.test_parman_lsort.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_parman_lsort.exit

if.end.i.i:                                       ; preds = %entry
  %prio_array1.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %prio_array1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prio_array1.i.i.i, align 4
  %call.i.i.i = tail call noalias ptr @krealloc(ptr noundef %1, i32 noundef 1024, i32 noundef 3264) #13
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.err_resize.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.err_resize.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_resize.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i
  %prio_array_limit.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %prio_array_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prio_array_limit.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %cmp4.i.i.i = icmp ult i32 %3, 256
  br i1 %cmp4.i.i.i, label %if.then5.i.i.i, label %if.end3.i.i.i.if.end5.i.i_crit_edge

if.end3.i.i.i.if.end5.i.i_crit_edge:              ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i.i

if.then5.i.i.i:                                   ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr ptr, ptr %call.i.i.i, i32 %3
  %.neg.i.i = mul nsw i32 %3, -4
  %mul6.i.i.i = add nsw i32 %.neg.i.i, 1024
  %4 = call ptr @memset(ptr %arrayidx.i.i.i, i32 0, i32 %mul6.i.i.i)
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then5.i.i.i, %if.end3.i.i.i.if.end5.i.i_crit_edge
  %5 = ptrtoint ptr %prio_array1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i.i.i, ptr %prio_array1.i.i.i, align 4
  %6 = ptrtoint ptr %prio_array_limit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %prio_array_limit.i.i.i, align 8
  %call6.i.i = tail call ptr @parman_create(ptr noundef nonnull @test_parman_lsort_ops, ptr noundef nonnull %call1.i.i.i.i.i) #14
  %7 = ptrtoint ptr %call1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6.i.i, ptr %call1.i.i.i.i.i, align 4096
  %tobool8.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool8.not.i.i, label %if.then9.i.i, label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prio_array1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prio_array1.i.i.i, align 4
  %call.i2.i.i = tail call noalias ptr @krealloc(ptr noundef %9, i32 noundef 0, i32 noundef 3264) #13
  br label %err_resize.i.i

if.end10.i.i:                                     ; preds = %if.end5.i.i
  %rnd.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %rnd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1082932233, ptr %rnd.i.i.i, align 4
  %s2.i.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %s2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1082932233, ptr %s2.i.i.i.i, align 16
  %s3.i.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %s3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1082932233, ptr %s3.i.i.i.i, align 4
  %s4.i.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %s4.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1082932233, ptr %s4.i.i.i.i, align 8
  %14 = ptrtoint ptr %rnd.i.i.i to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !43) #14
  %and.i.i.i.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i.i.i.i, align 4
  %arrayidx.i.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %20, ptrtoint (ptr @net_rand_noise to i32)
  %21 = inttoptr i32 %add.i.i.i.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %xor.i.i.i.i.i = xor i32 %23, %14
  %add8.i.i.i.i.i = add i32 %xor.i.i.i.i.i, 1082932233
  %or.i.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add8.i.i.i.i.i, i32 %add8.i.i.i.i.i, i32 16) #14
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i.i.i.i.i, ptr %21, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %test_parman_priority_gen.exit.i.i.i.for.body.i.i.i_crit_edge, %if.end10.i.i
  %i.09.i.i.i = phi i32 [ 0, %if.end10.i.i ], [ %inc.i.i.i, %test_parman_priority_gen.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i4.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 %i.09.i.i.i
  br label %again.i.i.i.i

again.i.i.i.i:                                    ; preds = %again.i.i.i.i.backedge, %for.body.i.i.i
  %call.i.i.i.i.i = tail call i32 @prandom_u32_state(ptr noundef %rnd.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %again.i.i.i.i.again.i.i.i.i.backedge_crit_edge, label %again.i.i.i.i.for.body.i.i.i.i_crit_edge

again.i.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %again.i.i.i.i
  br label %for.body.i.i.i.i

again.i.i.i.i.again.i.i.i.i.backedge_crit_edge:   ; preds = %again.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.i.i.i.i.backedge

again.i.i.i.i.backedge:                           ; preds = %for.body.i.i.i.i.again.i.i.i.i.backedge_crit_edge, %again.i.i.i.i.again.i.i.i.i.backedge_crit_edge
  br label %again.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %again.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.019.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %again.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %priority2.i.i.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 %i.019.i.i.i.i, i32 1
  %25 = ptrtoint ptr %priority2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %priority2.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp3.i.i.i.i = icmp eq i32 %26, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %call.i.i.i.i.i)
  %cmp7.i.i.i.i = icmp eq i32 %26, %call.i.i.i.i.i
  %..i.i.i.i = select i1 %cmp7.i.i.i.i, i32 2, i32 0
  %cleanup.dest.slot.0.i.i.i.i = select i1 %cmp3.i.i.i.i, i32 3, i32 %..i.i.i.i
  %27 = zext i32 %cleanup.dest.slot.0.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cleanup.dest.slot.0.i.i.i.i, label %unreachable.i.i.i.i [
    i32 0, label %for.inc.i.i.i.i
    i32 3, label %for.body.i.i.i.i.test_parman_priority_gen.exit.i.i.i_crit_edge
    i32 2, label %for.body.i.i.i.i.again.i.i.i.i.backedge_crit_edge
  ]

for.body.i.i.i.i.again.i.i.i.i.backedge_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.i.i.i.i.backedge

for.body.i.i.i.i.test_parman_priority_gen.exit.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_parman_priority_gen.exit.i.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.019.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 128
  br i1 %exitcond.not.i.i.i.i, label %for.inc.i.i.i.i.test_parman_priority_gen.exit.i.i.i_crit_edge, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.inc.i.i.i.i.test_parman_priority_gen.exit.i.i.i_crit_edge: ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %test_parman_priority_gen.exit.i.i.i

unreachable.i.i.i.i:                              ; preds = %for.body.i.i.i.i
  unreachable

test_parman_priority_gen.exit.i.i.i:              ; preds = %for.inc.i.i.i.i.test_parman_priority_gen.exit.i.i.i_crit_edge, %for.body.i.i.i.i.test_parman_priority_gen.exit.i.i.i_crit_edge
  %priority.i.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 %i.09.i.i.i, i32 1
  %28 = ptrtoint ptr %priority.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call.i.i.i.i.i, ptr %priority.i.i.i, align 8
  %29 = ptrtoint ptr %call1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call1.i.i.i.i.i, align 4096
  tail call void @parman_prio_init(ptr noundef %30, ptr noundef %arrayidx.i4.i.i, i32 noundef %call.i.i.i.i.i) #14
  %inc.i.i.i = add nuw nsw i32 %i.09.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 128
  br i1 %exitcond.not.i.i.i, label %test_parman_priority_gen.exit.i.i.i.for.body.i7.i.i_crit_edge, label %test_parman_priority_gen.exit.i.i.i.for.body.i.i.i_crit_edge

test_parman_priority_gen.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %test_parman_priority_gen.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

test_parman_priority_gen.exit.i.i.i.for.body.i7.i.i_crit_edge: ; preds = %test_parman_priority_gen.exit.i.i.i
  br label %for.body.i7.i.i

for.body.i7.i.i:                                  ; preds = %for.body.i7.i.i.for.body.i7.i.i_crit_edge, %test_parman_priority_gen.exit.i.i.i.for.body.i7.i.i_crit_edge
  %i.06.i.i.i = phi i32 [ %inc.i5.i.i, %for.body.i7.i.i.for.body.i7.i.i_crit_edge ], [ 0, %test_parman_priority_gen.exit.i.i.i.for.body.i7.i.i_crit_edge ]
  %call.i.i.i.i = tail call i32 @prandom_u32_state(ptr noundef %rnd.i.i.i) #14
  %and.i.i.i = and i32 %call.i.i.i.i, 127
  %arrayidx1.i.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 %and.i.i.i
  %prio.i.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %i.06.i.i.i, i32 1
  %31 = ptrtoint ptr %prio.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx1.i.i.i, ptr %prio.i.i.i, align 4
  %inc.i5.i.i = add nuw nsw i32 %i.06.i.i.i, 1
  %exitcond.not.i6.i.i = icmp eq i32 %inc.i5.i.i, 8192
  br i1 %exitcond.not.i6.i.i, label %test_parman_create.exit.i, label %for.body.i7.i.i.for.body.i7.i.i_crit_edge

for.body.i7.i.i.for.body.i7.i.i_crit_edge:        ; preds = %for.body.i7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i7.i.i

err_resize.i.i:                                   ; preds = %if.then9.i.i, %if.end.i.i.err_resize.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i.i.i) #14
  br label %test_parman_lsort.exit

test_parman_create.exit.i:                        ; preds = %for.body.i7.i.i
  %run_budget.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 6
  %32 = ptrtoint ptr %run_budget.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2097152, ptr %run_budget.i.i, align 4
  %call.i.i17.i = tail call i32 @prandom_u32_state(ptr noundef %rnd.i.i.i) #14
  %33 = ptrtoint ptr %run_budget.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %run_budget.i.i, align 4
  %dec.i48.i.i = add i32 %34, -1
  store i32 %dec.i48.i.i, ptr %run_budget.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i49.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i49.i.i, label %test_parman_create.exit.i.if.end5.i_crit_edge, label %if.end.i.lr.ph.i.i

test_parman_create.exit.i.if.end5.i_crit_edge:    ; preds = %test_parman_create.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end.i.lr.ph.i.i:                               ; preds = %test_parman_create.exit.i
  %bulk_budget.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 7
  %bulk_noop.i.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 8
  %used_items19.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cleanup.i.i.if.end.i.i.i_crit_edge, %if.end.i.lr.ph.i.i
  %i.050.i.i = phi i32 [ %call.i.i17.i, %if.end.i.lr.ph.i.i ], [ %inc.i.i, %cleanup.i.i.if.end.i.i.i_crit_edge ]
  %35 = ptrtoint ptr %bulk_budget.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bulk_budget.i.i.i, align 32
  %dec1.i.i.i = add i32 %36, -1
  store i32 %dec1.i.i.i, ptr %bulk_budget.i.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp2.not.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp2.not.i.i.i, label %if.end4.i.i.i, label %while.bodythread-pre-split.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i18.i = tail call i32 @prandom_u32_state(ptr noundef %rnd.i.i.i) #14
  %and.i.i19.i = and i32 %call.i.i.i18.i, 511
  %37 = ptrtoint ptr %bulk_budget.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and.i.i19.i, ptr %bulk_budget.i.i.i, align 32
  %call.i14.i.i.i = tail call i32 @prandom_u32_state(ptr noundef %rnd.i.i.i) #14
  %38 = trunc i32 %call.i14.i.i.i to i8
  %39 = and i8 %38, 1
  %40 = ptrtoint ptr %bulk_noop.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %bulk_noop.i.i.i, align 4
  br label %while.body.i.i

while.bodythread-pre-split.i.i:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %bulk_noop.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr.i.i = load i8, ptr %bulk_noop.i.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.bodythread-pre-split.i.i, %if.end4.i.i.i
  %42 = phi i8 [ %.pr.i.i, %while.bodythread-pre-split.i.i ], [ %39, %if.end4.i.i.i ]
  %inc.i.i = add i32 %i.050.i.i, 1
  %and.i.i = and i32 %i.050.i.i, 8191
  %arrayidx.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %and.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i20.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i20.i, label %if.end.i21.i, label %while.body.i.i.cleanup.i.i_crit_edge

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i21.i:                                     ; preds = %while.body.i.i
  %used.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %and.i.i, i32 2
  %43 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %used.i.i, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool2.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %if.else.i.i

if.then3.i.i:                                     ; preds = %if.end.i21.i
  %45 = ptrtoint ptr %call1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call1.i.i.i.i.i, align 4096
  %prio.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %and.i.i, i32 1
  %47 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prio.i.i, align 4
  %call4.i.i = tail call i32 @parman_item_add(ptr noundef %46, ptr noundef %48, ptr noundef %arrayidx.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end7.i.i, label %if.then3.i.i.out.i_crit_edge

if.then3.i.i.out.i_crit_edge:                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end7.i.i:                                      ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %prio_array1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prio_array1.i.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.parman_item, ptr %arrayidx.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i.i, align 4
  %arrayidx9.i.i = getelementptr ptr, ptr %50, i32 %52
  %53 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx.i.i, ptr %arrayidx9.i.i, align 4
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %prio_array1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prio_array1.i.i.i, align 4
  %index13.i.i = getelementptr inbounds %struct.parman_item, ptr %arrayidx.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %index13.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %index13.i.i, align 4
  %arrayidx14.i.i = getelementptr ptr, ptr %55, i32 %57
  %58 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx14.i.i, align 4
  %59 = ptrtoint ptr %call1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call1.i.i.i.i.i, align 4096
  %prio16.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %and.i.i, i32 1
  %61 = ptrtoint ptr %prio16.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %prio16.i.i, align 4
  tail call void @parman_item_remove(ptr noundef %60, ptr noundef %62, ptr noundef %arrayidx.i.i) #14
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.end7.i.i
  %.sink52.i.i = phi i32 [ -1, %if.else.i.i ], [ 1, %if.end7.i.i ]
  %63 = ptrtoint ptr %used_items19.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %used_items19.i.i, align 8
  %dec.i.i = add i32 %64, %.sink52.i.i
  store i32 %dec.i.i, ptr %used_items19.i.i, align 8
  %65 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %used.i.i, align 4, !range !52
  %67 = xor i8 %66, 1
  store i8 %67, ptr %used.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end20.i.i, %while.body.i.i.cleanup.i.i_crit_edge
  %68 = ptrtoint ptr %run_budget.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %run_budget.i.i, align 4
  %dec.i.i.i = add i32 %69, -1
  store i32 %dec.i.i.i, ptr %run_budget.i.i, align 4
  %cmp.i.i.i = icmp eq i32 %69, 0
  br i1 %cmp.i.i.i, label %cleanup.i.i.if.end5.i_crit_edge, label %cleanup.i.i.if.end.i.i.i_crit_edge

cleanup.i.i.if.end.i.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

cleanup.i.i.if.end5.i_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %cleanup.i.i.if.end5.i_crit_edge, %test_parman_create.exit.i.if.end5.i_crit_edge
  %70 = ptrtoint ptr %prio_array_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %prio_array_limit.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %71)
  %cmp.i22.i = icmp ult i32 %71, 256
  br i1 %cmp.i22.i, label %do.end.i.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end5.i
  %72 = ptrtoint ptr %prio_array1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prio_array1.i.i.i, align 4
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %71, i32 noundef 256) #15
  br label %out.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %last_unused_items.024.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %last_unused_items.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %last_priority.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %last_priority.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %used_items.022.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %used_items.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc38.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i23.i = getelementptr ptr, ptr %73, i32 %i.020.i.i
  %74 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i23.i, align 4
  %tobool.not.i24.i = icmp eq ptr %75, null
  br i1 %tobool.not.i24.i, label %if.then4.i.i, label %if.end5.i26.i

if.then4.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i25.i = add i32 %last_unused_items.024.i.i, 1
  br label %for.inc.i.i

if.end5.i26.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %last_unused_items.024.i.i)
  %tobool6.not.i.i = icmp eq i32 %last_unused_items.024.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end14.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.end5.i26.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #15
  br label %out.i

if.end14.i.i:                                     ; preds = %if.end5.i26.i
  %prio.i27.i = getelementptr inbounds %struct.test_parman_item, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prio.i27.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prio.i27.i, align 4
  %priority.i.i = getelementptr inbounds %struct.test_parman_prio, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %priority.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %last_priority.023.i.i)
  %cmp16.i.i = icmp ult i32 %79, %last_priority.023.i.i
  br i1 %cmp16.i.i, label %do.end20.i.i, label %if.end25.i.i

do.end20.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %79, i32 noundef %last_priority.023.i.i) #15
  br label %out.i

if.end25.i.i:                                     ; preds = %if.end14.i.i
  %inc15.i.i = add i32 %used_items.022.i.i, 1
  %index.i28.i = getelementptr inbounds %struct.parman_item, ptr %75, i32 0, i32 1
  %80 = ptrtoint ptr %index.i28.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index.i28.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %i.020.i.i)
  %cmp28.not.i.i = icmp eq i32 %81, %i.020.i.i
  br i1 %cmp28.not.i.i, label %if.end25.i.i.for.inc.i.i_crit_edge, label %do.end32.i.i

if.end25.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end32.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %81, i32 noundef %i.020.i.i) #15
  br label %out.i

for.inc.i.i:                                      ; preds = %if.end25.i.i.for.inc.i.i_crit_edge, %if.then4.i.i
  %used_items.1.i.i = phi i32 [ %used_items.022.i.i, %if.then4.i.i ], [ %inc15.i.i, %if.end25.i.i.for.inc.i.i_crit_edge ]
  %last_priority.1.i.i = phi i32 [ %last_priority.023.i.i, %if.then4.i.i ], [ %79, %if.end25.i.i.for.inc.i.i_crit_edge ]
  %last_unused_items.1.i.i = phi i32 [ %inc.i25.i, %if.then4.i.i ], [ 0, %if.end25.i.i.for.inc.i.i_crit_edge ]
  %inc38.i.i = add nuw i32 %i.020.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc38.i.i, %71
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %used_items39.i.i = getelementptr inbounds %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 9
  %82 = ptrtoint ptr %used_items39.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %used_items39.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %used_items.1.i.i, i32 %83)
  %cmp40.not.i.i = icmp eq i32 %used_items.1.i.i, %83
  br i1 %cmp40.not.i.i, label %if.end48.i.i, label %do.end44.i.i

do.end44.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %used_items.1.i.i, i32 noundef %83) #15
  br label %out.i

if.end48.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %last_unused_items.1.i.i)
  %cmp49.i.i = icmp ugt i32 %last_unused_items.1.i.i, 127
  br i1 %cmp49.i.i, label %do.end53.i.i, label %do.end59.i.i

do.end53.i.i:                                     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call55.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %last_unused_items.1.i.i, i32 noundef 128) #15
  br label %out.i

do.end59.i.i:                                     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call61.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #15
  br label %out.i

out.i:                                            ; preds = %do.end59.i.i, %do.end53.i.i, %do.end44.i.i, %do.end32.i.i, %do.end20.i.i, %do.end11.i.i, %do.end.i.i, %if.then3.i.i.out.i_crit_edge
  %err.0.i = phi i32 [ -22, %do.end.i.i ], [ -22, %do.end44.i.i ], [ -22, %do.end53.i.i ], [ 0, %do.end59.i.i ], [ -22, %do.end20.i.i ], [ -22, %do.end32.i.i ], [ -22, %do.end11.i.i ], [ %call4.i.i, %if.then3.i.i.out.i_crit_edge ]
  br label %for.body.i.i32.i

for.body.i.i32.i:                                 ; preds = %cleanup.i.i.i.for.body.i.i32.i_crit_edge, %out.i
  %i.06.i.i30.i = phi i32 [ 0, %out.i ], [ %inc.i.i36.i, %cleanup.i.i.i.for.body.i.i32.i_crit_edge ]
  %used.i.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %i.06.i.i30.i, i32 2
  %84 = ptrtoint ptr %used.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %used.i.i.i, align 4, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool.not.i.i31.i = icmp eq i8 %85, 0
  br i1 %tobool.not.i.i31.i, label %for.body.i.i32.i.cleanup.i.i.i_crit_edge, label %if.end.i.i35.i

for.body.i.i32.i.cleanup.i.i.i_crit_edge:         ; preds = %for.body.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i.i

if.end.i.i35.i:                                   ; preds = %for.body.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i33.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %i.06.i.i30.i
  %86 = ptrtoint ptr %call1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call1.i.i.i.i.i, align 4096
  %prio.i.i34.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 4, i32 %i.06.i.i30.i, i32 1
  %88 = ptrtoint ptr %prio.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prio.i.i34.i, align 4
  tail call void @parman_item_remove(ptr noundef %87, ptr noundef %89, ptr noundef %arrayidx.i.i33.i) #14
  br label %cleanup.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end.i.i35.i, %for.body.i.i32.i.cleanup.i.i.i_crit_edge
  %inc.i.i36.i = add nuw nsw i32 %i.06.i.i30.i, 1
  %exitcond.not.i.i37.i = icmp eq i32 %inc.i.i36.i, 8192
  br i1 %exitcond.not.i.i37.i, label %cleanup.i.i.i.for.body.i8.i.i_crit_edge, label %cleanup.i.i.i.for.body.i.i32.i_crit_edge

cleanup.i.i.i.for.body.i.i32.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i32.i

cleanup.i.i.i.for.body.i8.i.i_crit_edge:          ; preds = %cleanup.i.i.i
  br label %for.body.i8.i.i

for.body.i8.i.i:                                  ; preds = %for.body.i8.i.i.for.body.i8.i.i_crit_edge, %cleanup.i.i.i.for.body.i8.i.i_crit_edge
  %i.03.i.i.i = phi i32 [ %inc.i6.i.i, %for.body.i8.i.i.for.body.i8.i.i_crit_edge ], [ 0, %cleanup.i.i.i.for.body.i8.i.i_crit_edge ]
  %arrayidx.i5.i.i = getelementptr %struct.test_parman, ptr %call1.i.i.i.i.i, i32 0, i32 3, i32 %i.03.i.i.i
  tail call void @parman_prio_fini(ptr noundef %arrayidx.i5.i.i) #14
  %inc.i6.i.i = add nuw nsw i32 %i.03.i.i.i, 1
  %exitcond.not.i7.i.i = icmp eq i32 %inc.i6.i.i, 128
  br i1 %exitcond.not.i7.i.i, label %test_parman_destroy.exit.i, label %for.body.i8.i.i.for.body.i8.i.i_crit_edge

for.body.i8.i.i.for.body.i8.i.i_crit_edge:        ; preds = %for.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i8.i.i

test_parman_destroy.exit.i:                       ; preds = %for.body.i8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %call1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call1.i.i.i.i.i, align 4096
  tail call void @parman_destroy(ptr noundef %91) #14
  %92 = ptrtoint ptr %prio_array1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prio_array1.i.i.i, align 4
  %call.i.i39.i = tail call noalias ptr @krealloc(ptr noundef %93, i32 noundef 0, i32 noundef 3264) #13
  tail call void @kfree(ptr noundef %call1.i.i.i.i.i) #14
  br label %test_parman_lsort.exit

test_parman_lsort.exit:                           ; preds = %test_parman_destroy.exit.i, %err_resize.i.i, %entry.test_parman_lsort.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %test_parman_destroy.exit.i ], [ -12, %entry.test_parman_lsort.exit_crit_edge ], [ -12, %err_resize.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @test_parman_resize(ptr nocapture noundef %priv, i32 noundef %new_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %prio_array1 = getelementptr inbounds %struct.test_parman, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %prio_array1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prio_array1, align 4
  %mul = shl i32 %new_count, 2
  %call = tail call noalias ptr @krealloc(ptr noundef %1, i32 noundef %mul, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_count)
  %cmp = icmp eq i32 %new_count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %prio_array_limit = getelementptr inbounds %struct.test_parman, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %prio_array_limit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prio_array_limit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %new_count)
  %cmp4 = icmp ult i32 %3, %new_count
  br i1 %cmp4, label %if.then5, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr ptr, ptr %call, i32 %3
  %sub = sub i32 %new_count, %3
  %mul6 = shl i32 %sub, 2
  %4 = call ptr @memset(ptr %arrayidx, i32 0, i32 %mul6)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %5 = ptrtoint ptr %prio_array1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %prio_array1, align 4
  %6 = ptrtoint ptr %prio_array_limit to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %new_count, ptr %prio_array_limit, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @parman_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_prio_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @test_parman_move(ptr nocapture noundef readonly %priv, i32 noundef %from_index, i32 noundef %to_index, i32 noundef %count) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %prio_array1 = getelementptr inbounds %struct.test_parman, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %prio_array1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prio_array1, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %to_index
  %arrayidx2 = getelementptr ptr, ptr %1, i32 %from_index
  %mul = shl i32 %count, 2
  %2 = call ptr @memmove(ptr %arrayidx, ptr %arrayidx2, i32 %mul)
  %3 = call ptr @memset(ptr %arrayidx2, i32 0, i32 %mul)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @parman_item_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_item_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @parman_prio_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind uwtable(sync) }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { nounwind }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_test_parman__173_390_test_parman_init6, !1, !"__initcall__kmod_test_parman__173_390_test_parman_init6", i1 false, i1 false}
!1 = !{!"../lib/test_parman.c", i32 390, i32 1}
!2 = !{ptr @__exitcall_test_parman_exit, !3, !"__exitcall_test_parman_exit", i1 false, i1 false}
!3 = !{!"../lib/test_parman.c", i32 391, i32 1}
!4 = !{ptr @__UNIQUE_ID_file174, !5, !"__UNIQUE_ID_file174", i1 false, i1 false}
!5 = !{!"../lib/test_parman.c", i32 393, i32 1}
!6 = !{ptr @__UNIQUE_ID_license175, !5, !"__UNIQUE_ID_license175", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author176, !8, !"__UNIQUE_ID_author176", i1 false, i1 false}
!8 = !{!"../lib/test_parman.c", i32 394, i32 1}
!9 = !{ptr @__UNIQUE_ID_description177, !10, !"__UNIQUE_ID_description177", i1 false, i1 false}
!10 = !{!"../lib/test_parman.c", i32 395, i32 1}
!11 = !{ptr @test_parman_lsort_ops, !12, !"test_parman_lsort_ops", i1 false, i1 false}
!12 = !{!"../lib/test_parman.c", i32 124, i32 32}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test_parman.c", i32 309, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @test_parman_check_array._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @test_parman_check_array._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test_parman.c", i32 322, i32 4}
!21 = !{ptr @test_parman_check_array._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @test_parman_check_array._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/test_parman.c", i32 330, i32 4}
!25 = !{ptr @test_parman_check_array._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @test_parman_check_array._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test_parman.c", i32 337, i32 4}
!29 = !{ptr @test_parman_check_array._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @test_parman_check_array._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test_parman.c", i32 344, i32 3}
!33 = !{ptr @test_parman_check_array._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @test_parman_check_array._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/test_parman.c", i32 350, i32 3}
!37 = !{ptr @test_parman_check_array._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @test_parman_check_array._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/test_parman.c", i32 355, i32 2}
!41 = !{ptr @test_parman_check_array._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @test_parman_check_array._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i8 0, i8 2}
