; ModuleID = '/llk/IR_all_yes/drivers/iommu/io-pgtable-arm-v7s.c_pt.bc'
source_filename = "../drivers/iommu/io-pgtable-arm-v7s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.io_pgtable_init_fns = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iommu_flush_ops = type { ptr, ptr, ptr }
%struct.io_pgtable_cfg = type { i32, i32, i32, i32, i8, ptr, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.anon.77 }
%struct.anon.77 = type { [4 x i64], i32 }
%struct.arm_v7s_io_pgtable = type { %struct.io_pgtable, ptr, ptr, %struct.spinlock }
%struct.io_pgtable = type { i32, ptr, %struct.io_pgtable_cfg, %struct.io_pgtable_ops }
%struct.io_pgtable_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.75 = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.iommu_iotlb_gather = type { i32, i32, i32, %struct.list_head, i8 }

@io_pgtable_arm_v7s_init_fns = dso_local global { %struct.io_pgtable_init_fns, [24 x i8] } { %struct.io_pgtable_init_fns { ptr @arm_v7s_alloc_pgtable, ptr @arm_v7s_free_pgtable }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_io_pgtable_arm_v7s__233_1014_arm_v7s_do_selftests4 = internal global ptr @arm_v7s_do_selftests, section ".initcall4.init", align 4
@arm_v7s_alloc_pgtable.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&data->split_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"io-pgtable_armv7s_l2\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/iommu/io-pgtable-arm-v7s.c\00", [61 x i8] zeroinitializer }, align 32
@selftest_running = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__arm_v7s_alloc_table._entry = internal constant %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 256, ptr @.str.5, ptr @.str.6 }, align 1
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Page table does not fit in PTE: %pa\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__arm_v7s_alloc_table\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__arm_v7s_alloc_table._entry_ptr = internal global ptr @__arm_v7s_alloc_table._entry, section ".printk_index", align 4
@__arm_v7s_alloc_table._entry.7 = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 276, ptr @.str.5, ptr @.str.6 }, align 1
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Cannot accommodate DMA translation for IOMMU page tables\0A\00", [38 x i8] zeroinitializer }, align 32
@__arm_v7s_alloc_table._entry_ptr.9 = internal global ptr @__arm_v7s_alloc_table._entry.7, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@dummy_tlb_ops = internal constant %struct.iommu_flush_ops { ptr @dummy_tlb_flush_all, ptr @dummy_tlb_flush, ptr @dummy_tlb_add_page }, section ".init.rodata", align 4
@__const.arm_v7s_do_selftests.cfg = private unnamed_addr constant { i32, i32, i32, i32, i8, [3 x i8], ptr, ptr, [4 x i8], { { [4 x i64], i32, [4 x i8] } } } { i32 1, i32 17895424, i32 32, i32 32, i8 1, [3 x i8] zeroinitializer, ptr @dummy_tlb_ops, ptr null, [4 x i8] zeroinitializer, { { [4 x i64], i32, [4 x i8] } } zeroinitializer }, align 8
@cfg_cookie = internal unnamed_addr global ptr null, section ".init.data", align 4
@arm_v7s_do_selftests._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013arm-v7s io-pgtable: selftest: failed to allocate io pgtable ops\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arm_v7s_do_selftests\00", [43 x i8] zeroinitializer }, align 32
@arm_v7s_do_selftests._entry_ptr = internal global ptr @arm_v7s_do_selftests._entry, section ".printk_index", align 4
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"selftest: test failed\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_v7s_do_selftests._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016arm-v7s io-pgtable: self test ok\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_v7s_do_selftests._entry_ptr.17 = internal global ptr @arm_v7s_do_selftests._entry.15, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant [28 x i8] c"io_pgtable_arm_v7s_init_fns\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 867, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 803, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 804, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 533, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"selftest_running\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 256, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 276, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 326, i32 6 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 927, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 936, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [38 x i8] c"../drivers/iommu/io-pgtable-arm-v7s.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 1011, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__arm_v7s_alloc_table._entry, ptr @__arm_v7s_alloc_table._entry.7, ptr @__arm_v7s_alloc_table._entry_ptr, ptr @__arm_v7s_alloc_table._entry_ptr.9, ptr @__initcall__kmod_io_pgtable_arm_v7s__233_1014_arm_v7s_do_selftests4, ptr @arm_v7s_do_selftests._entry, ptr @arm_v7s_do_selftests._entry.15, ptr @arm_v7s_do_selftests._entry_ptr, ptr @arm_v7s_do_selftests._entry_ptr.17, ptr @io_pgtable_arm_v7s_init_fns, ptr @arm_v7s_alloc_pgtable.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @selftest_running, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_pgtable_arm_v7s_init_fns to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_v7s_alloc_pgtable.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest_running to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_v7s_do_selftests._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_v7s_do_selftests._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @arm_v7s_alloc_pgtable(ptr nocapture noundef %cfg, ptr nocapture noundef readnone %cookie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ias = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 2
  %0 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ias, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %cmp = icmp ugt i32 %1, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %oas = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 3
  %2 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp3 = icmp ugt i32 %3, 32
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cfg, align 8
  %and = and i32 %5, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %6 = and i32 %5, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %7 = icmp eq i32 %6, 8
  %or.cond = or i1 %tobool.not, %7
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %if.end15

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 160) #11
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %do.body

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end15
  %split_lock = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %call7.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %split_lock, ptr noundef nonnull @.str, ptr noundef nonnull @arm_v7s_alloc_pgtable.__key, i16 noundef signext 3) #8
  %call21 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 1024, i32 noundef 1024, i32 noundef 16384, ptr noundef null) #8
  %l2_tables = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %l2_tables to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call21, ptr %l2_tables, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %do.body.out_free_data_crit_edge, label %if.end25

do.body.out_free_data_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

if.end25:                                         ; preds = %do.body
  %ops = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @arm_v7s_map, ptr %ops, align 8
  %.compoundliteral.sroa.2.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %.compoundliteral.sroa.2.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @arm_v7s_map_pages, ptr %.compoundliteral.sroa.2.0.ops.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %.compoundliteral.sroa.3.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @arm_v7s_unmap, ptr %.compoundliteral.sroa.3.0.ops.sroa_idx, align 8
  %.compoundliteral.sroa.4.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %.compoundliteral.sroa.4.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @arm_v7s_unmap_pages, ptr %.compoundliteral.sroa.4.0.ops.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.ops.sroa_idx = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %.compoundliteral.sroa.5.0.ops.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @arm_v7s_iova_to_phys, ptr %.compoundliteral.sroa.5.0.ops.sroa_idx, align 8
  %cfg27 = getelementptr inbounds %struct.io_pgtable, ptr %call7.i, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %cfg27, ptr %cfg, i32 72)
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  %16 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pgsize_bitmap, align 4
  %and28 = and i32 %17, 17895424
  store i32 %and28, ptr %pgsize_bitmap, align 4
  %18 = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7
  %tcr = getelementptr inbounds %struct.anon.75, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %tcr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %tcr, align 4
  %prrr = getelementptr inbounds %struct.anon.75, ptr %18, i32 0, i32 3
  %20 = ptrtoint ptr %prrr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -2146729468, ptr %prrr, align 4
  %nmrr = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 7, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %nmrr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1073758208, ptr %nmrr, align 8
  %call29 = tail call fastcc ptr @__arm_v7s_alloc_table(i32 noundef 1, i32 noundef 3264, ptr noundef nonnull %call7.i)
  %pgd = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %call7.i, i32 0, i32 1
  %22 = ptrtoint ptr %pgd to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call29, ptr %pgd, align 8
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %if.end25.out_free_data_crit_edge, label %do.body34

if.end25.out_free_data_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

do.body34:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pgd, align 8
  %25 = ptrtoint ptr %24 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %25) #8
  %coherent_walk = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 4
  %26 = ptrtoint ptr %coherent_walk to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %coherent_walk, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool39.not = icmp eq i8 %27, 0
  %cond40 = select i1 %tobool39.not, i32 0, i32 104
  %or = or i32 %call.i, %cond40
  %or41 = or i32 %or, 2
  %28 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or41, ptr %18, align 8
  br label %cleanup

out_free_data:                                    ; preds = %if.end25.out_free_data_crit_edge, %do.body.out_free_data_crit_edge
  %29 = ptrtoint ptr %l2_tables to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %l2_tables, align 4
  tail call void @kmem_cache_destroy(ptr noundef %30) #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_data, %do.body34, %if.end15.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %do.body34 ], [ null, %out_free_data ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ null, %if.end15.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_v7s_free_pgtable(ptr noundef %iop) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ias = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ias, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %1)
  %cmp22.not = icmp eq i32 %1, 51
  br i1 %cmp22.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pgd = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %iop, i32 0, i32 1
  %coherent_walk.i = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 2, i32 4
  %iommu_dev.i = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 2, i32 6
  %l2_tables.i = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %iop, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgd, align 8
  %arrayidx = getelementptr i32, ptr %3, i32 %i.023
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp2 = icmp eq i32 %and, 1
  br i1 %cmp2, label %iopte_deref.exit, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

iopte_deref.exit:                                 ; preds = %for.body
  %and9.i.i = and i32 %5, -1024
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i, i32 -2130706432, i32 8454144) #12, !srcloc !54
  %7 = inttoptr i32 %6 to ptr
  %8 = ptrtoint ptr %coherent_walk.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %coherent_walk.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.i, label %iopte_deref.exit.__arm_v7s_free_table.exit_crit_edge

iopte_deref.exit.__arm_v7s_free_table.exit_crit_edge: ; preds = %iopte_deref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_v7s_free_table.exit

if.then.i:                                        ; preds = %iopte_deref.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %iommu_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iommu_dev.i, align 8
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %6) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %call.i.i.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_v7s_free_table.exit

__arm_v7s_free_table.exit:                        ; preds = %if.then.i, %iopte_deref.exit.__arm_v7s_free_table.exit_crit_edge
  %12 = ptrtoint ptr %l2_tables.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l2_tables.i, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %__arm_v7s_free_table.exit, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %14 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ias, align 8
  %sub = add i32 %15, -20
  %shl = shl nuw i32 1, %sub
  %cmp = icmp slt i32 %inc, %shl
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %sub.lcssa = phi i32 [ 31, %entry.for.end_crit_edge ], [ %sub, %if.end.for.end_crit_edge ]
  %pgd3 = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %iop, i32 0, i32 1
  %16 = ptrtoint ptr %pgd3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pgd3, align 8
  %mul.i = shl i32 4, %sub.lcssa
  %coherent_walk.i15 = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %coherent_walk.i15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %coherent_walk.i15, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i16 = icmp eq i8 %19, 0
  br i1 %tobool.not.i16, label %if.then.i18, label %for.end.__arm_v7s_free_table.exit19_crit_edge

for.end.__arm_v7s_free_table.exit19_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_v7s_free_table.exit19

if.then.i18:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %iommu_dev.i14 = getelementptr inbounds %struct.io_pgtable, ptr %iop, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %iommu_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iommu_dev.i14, align 8
  %22 = ptrtoint ptr %17 to i32
  %call.i.i.i17 = tail call i32 @__virt_to_phys(i32 noundef %22) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %21, i32 noundef %call.i.i.i17, i32 noundef %mul.i, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_v7s_free_table.exit19

__arm_v7s_free_table.exit19:                      ; preds = %if.then.i18, %for.end.__arm_v7s_free_table.exit19_crit_edge
  %dec.i.i = add i32 %mul.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp ult i32 %dec.i.i, 4096
  %shr.i.i = lshr i32 %dec.i.i, 12
  %23 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i, i1 true) #8, !range !55
  %sub.i.i.i = sub nuw nsw i32 32, %23
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %24 = ptrtoint ptr %17 to i32
  tail call void @free_pages(i32 noundef %24, i32 noundef %cond.i.i.i) #8
  %l2_tables = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %iop, i32 0, i32 2
  %25 = ptrtoint ptr %l2_tables to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %l2_tables, align 4
  tail call void @kmem_cache_destroy(ptr noundef %26) #8
  tail call void @kfree(ptr noundef %iop) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_v7s_do_selftests() #1 section ".init.text" align 64 {
entry:
  %cfg = alloca %struct.io_pgtable_cfg, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cfg) #8
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.arm_v7s_do_selftests.cfg, i32 72)
  store i1 true, ptr @selftest_running, align 1
  store ptr %cfg, ptr @cfg_cookie, align 4
  %call = call ptr @alloc_io_pgtable_ops(i32 noundef 4, ptr noundef nonnull %cfg, ptr noundef nonnull %cfg) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %iova_to_phys = getelementptr inbounds %struct.io_pgtable_ops, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iova_to_phys, align 4
  %call2 = call i32 %2(ptr noundef nonnull %call, i32 noundef 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end27, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 936, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %3 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iova_to_phys, align 4
  %call29 = call i32 %4(ptr noundef nonnull %call, i32 noundef 1073741866) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end59, label %do.end44

do.end44:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 939, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end59:                                         ; preds = %if.end27
  %5 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iova_to_phys, align 4
  %call61 = call i32 %6(ptr noundef nonnull %call, i32 noundef -2147483606) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end91, label %do.end76

do.end76:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 942, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end91:                                         ; preds = %if.end59
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %cfg, i32 0, i32 1
  %call92 = call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call92)
  %cmp533 = icmp ult i32 %call92, 32
  br i1 %cmp533, label %if.end91.for.body_crit_edge, label %if.end91.while.end_crit_edge

if.end91.while.end_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end91.for.body_crit_edge:                      ; preds = %if.end91
  br label %for.body

for.body:                                         ; preds = %if.end189.for.body_crit_edge, %if.end91.for.body_crit_edge
  %iova.0536 = phi i32 [ %add190, %if.end189.for.body_crit_edge ], [ 0, %if.end91.for.body_crit_edge ]
  %i.0535 = phi i32 [ %call193, %if.end189.for.body_crit_edge ], [ %call92, %if.end91.for.body_crit_edge ]
  %loopnr.0534 = phi i32 [ %inc, %if.end189.for.body_crit_edge ], [ 0, %if.end91.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0535
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call93 = call i32 %8(ptr noundef %call, i32 noundef %iova.0536, i32 noundef %iova.0536, i32 noundef %shl, i32 noundef 15, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end123, label %do.end108

do.end108:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 954, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end123:                                        ; preds = %for.body
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %add = add i32 %iova.0536, %shl
  %call125 = call i32 %10(ptr noundef %call, i32 noundef %iova.0536, i32 noundef %add, i32 noundef %shl, i32 noundef 9, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %do.end140, label %if.end155

do.end140:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 959, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end155:                                        ; preds = %if.end123
  %11 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iova_to_phys, align 4
  %add157 = or i32 %iova.0536, 42
  %call158 = call i32 %12(ptr noundef %call, i32 noundef %add157) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call158, i32 %add157)
  %cmp160.not = icmp eq i32 %call158, %add157
  br i1 %cmp160.not, label %if.end189, label %do.end174

do.end174:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 962, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end189:                                        ; preds = %if.end155
  %add190 = add i32 %iova.0536, 16777216
  %inc = add i32 %loopnr.0534, 1
  %add192 = add nuw nsw i32 %i.0535, 1
  %call193 = call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef %add192) #8
  %cmp = icmp ult i32 %call193, 32
  br i1 %cmp, label %if.end189.for.body_crit_edge, label %for.end

if.end189.for.body_crit_edge:                     ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end189
  %13 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pgsize_bitmap, align 4
  %15 = call i32 @llvm.cttz.i32(i32 %14, i1 false) #8, !range !55
  %shl196 = shl nuw i32 1, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp197537 = icmp ugt i32 %inc, 1
  br i1 %cmp197537, label %while.body.lr.ph, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.end
  %unmap = getelementptr inbounds %struct.io_pgtable_ops, ptr %call, i32 0, i32 2
  %add267 = add nuw i32 %shl196, 42
  br label %while.body

while.cond:                                       ; preds = %if.end262
  %inc298 = add nuw i32 %i.1538, 1
  %exitcond.not = icmp eq i32 %i.1538, %loopnr.0534
  br i1 %exitcond.not, label %while.cond.while.end_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.body.lr.ph
  %i.1538 = phi i32 [ 1, %while.body.lr.ph ], [ %inc298, %while.cond.while.body_crit_edge ]
  %mul = shl i32 %i.1538, 24
  %16 = ptrtoint ptr %unmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unmap, align 4
  %add198 = add i32 %mul, %shl196
  %call199 = call i32 %17(ptr noundef %call, i32 noundef %add198, i32 noundef %shl196, ptr noundef null) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call199, i32 %shl196)
  %cmp200.not = icmp eq i32 %call199, %shl196
  br i1 %cmp200.not, label %if.end229, label %do.end214

do.end214:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 974, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end229:                                        ; preds = %while.body
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %call232 = call i32 %19(ptr noundef %call, i32 noundef %add198, i32 noundef %shl196, i32 noundef %shl196, i32 noundef 1, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %tobool233.not = icmp eq i32 %call232, 0
  br i1 %tobool233.not, label %if.end262, label %do.end247

do.end247:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 978, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end262:                                        ; preds = %if.end229
  %20 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iova_to_phys, align 4
  %add265 = add i32 %add198, 42
  %call266 = call i32 %21(ptr noundef %call, i32 noundef %add265) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call266, i32 %add267)
  %cmp268.not = icmp eq i32 %call266, %add267
  br i1 %cmp268.not, label %while.cond, label %do.end282

do.end282:                                        ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 982, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %for.end.while.end_crit_edge, %if.end91.while.end_crit_edge
  %call300 = call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call300)
  %cmp302539 = icmp ult i32 %call300, 32
  br i1 %cmp302539, label %for.body303.lr.ph, label %while.end.for.end441_crit_edge

while.end.for.end441_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end441

for.body303.lr.ph:                                ; preds = %while.end
  %unmap305 = getelementptr inbounds %struct.io_pgtable_ops, ptr %call, i32 0, i32 2
  br label %for.body303

for.body303:                                      ; preds = %if.end435.for.body303_crit_edge, %for.body303.lr.ph
  %iova.1541 = phi i32 [ 0, %for.body303.lr.ph ], [ %add436, %if.end435.for.body303_crit_edge ]
  %i.2540 = phi i32 [ %call300, %for.body303.lr.ph ], [ %call440, %if.end435.for.body303_crit_edge ]
  %shl304 = shl nuw i32 1, %i.2540
  %22 = ptrtoint ptr %unmap305 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unmap305, align 4
  %call306 = call i32 %23(ptr noundef %call, i32 noundef %iova.1541, i32 noundef %shl304, ptr noundef null) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call306, i32 %shl304)
  %cmp307.not = icmp eq i32 %call306, %shl304
  br i1 %cmp307.not, label %if.end336, label %do.end321

do.end321:                                        ; preds = %for.body303
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 992, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end336:                                        ; preds = %for.body303
  %24 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iova_to_phys, align 4
  %add338 = or i32 %iova.1541, 42
  %call339 = call i32 %25(ptr noundef %call, i32 noundef %add338) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call339)
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %if.end369, label %do.end354

do.end354:                                        ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 995, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end369:                                        ; preds = %if.end336
  %26 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call, align 4
  %call371 = call i32 %27(ptr noundef %call, i32 noundef %iova.1541, i32 noundef %iova.1541, i32 noundef %shl304, i32 noundef 2, i32 noundef 3264) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %if.end401, label %do.end386

do.end386:                                        ; preds = %if.end369
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 999, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end401:                                        ; preds = %if.end369
  %28 = ptrtoint ptr %iova_to_phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iova_to_phys, align 4
  %call404 = call i32 %29(ptr noundef %call, i32 noundef %add338) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call404, i32 %add338)
  %cmp406.not = icmp eq i32 %call404, %add338
  br i1 %cmp406.not, label %if.end435, label %do.end420

do.end420:                                        ; preds = %if.end401
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1002, i32 noundef 9, ptr noundef nonnull @.str.14) #8
  store i1 false, ptr @selftest_running, align 1
  br label %cleanup

if.end435:                                        ; preds = %if.end401
  %add436 = add i32 %iova.1541, 16777216
  %add439 = add nuw nsw i32 %i.2540, 1
  %call440 = call i32 @_find_next_bit_be(ptr noundef %pgsize_bitmap, i32 noundef 32, i32 noundef %add439) #8
  %cmp302 = icmp ult i32 %call440, 32
  br i1 %cmp302, label %if.end435.for.body303_crit_edge, label %if.end435.for.end441_crit_edge

if.end435.for.end441_crit_edge:                   ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end441

if.end435.for.body303_crit_edge:                  ; preds = %if.end435
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body303

for.end441:                                       ; preds = %if.end435.for.end441_crit_edge, %while.end.for.end441_crit_edge
  call void @free_io_pgtable_ops(ptr noundef %call) #8
  store i1 false, ptr @selftest_running, align 1
  %call446 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end441, %do.end420, %do.end386, %do.end354, %do.end321, %do.end282, %do.end247, %do.end214, %do.end174, %do.end140, %do.end108, %do.end76, %do.end44, %do.end12, %do.end
  %retval.0 = phi i32 [ -14, %do.end12 ], [ -14, %do.end44 ], [ -14, %do.end76 ], [ -14, %do.end108 ], [ -14, %do.end174 ], [ -14, %do.end140 ], [ -14, %do.end214 ], [ -14, %do.end247 ], [ -14, %do.end282 ], [ -14, %do.end321 ], [ -14, %do.end354 ], [ -14, %do.end386 ], [ -14, %do.end420 ], [ 0, %for.end441 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_v7s_map(ptr noundef %ops, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef %prot, i32 noundef %gfp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @arm_v7s_map_pages(ptr noundef %ops, i32 noundef %iova, i32 noundef %paddr, i32 noundef %size, i32 noundef 1, i32 noundef %prot, i32 noundef %gfp, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_v7s_map_pages(ptr noundef %ops, i32 noundef %iova, i32 noundef %paddr, i32 noundef %pgsize, i32 noundef %pgcount, i32 noundef %prot, i32 noundef %gfp, ptr noundef %mapped) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ops, i32 -80
  %conv = zext i32 %iova to i64
  %ias = getelementptr i8, ptr %ops, i32 -64
  %0 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ias, align 8
  %sh_prom = zext i32 %1 to i64
  %conv.highbits = lshr i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.highbits)
  %cmp.not = icmp eq i64 %conv.highbits, 0
  br i1 %cmp.not, label %lor.rhs, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %conv5 = zext i32 %paddr to i64
  %oas = getelementptr i8, ptr %ops, i32 -60
  %2 = ptrtoint ptr %oas to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %oas, align 4
  %sh_prom8 = zext i32 %3 to i64
  %conv5.highbits = lshr i64 %conv5, %sh_prom8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv5.highbits)
  %cmp10.not = icmp eq i64 %conv5.highbits, 0
  br i1 %cmp10.not, label %if.end33, label %lor.rhs.do.end_crit_edge, !prof !56

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 534, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end33:                                         ; preds = %lor.rhs
  %and = and i32 %prot, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %while.cond.preheader

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgcount)
  %tobool37.not100 = icmp eq i32 %pgcount, 0
  br i1 %tobool37.not100, label %while.cond.preheader.do.body46_crit_edge, label %while.body.lr.ph

while.cond.preheader.do.body46_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pgd = getelementptr i8, ptr %ops, i32 24
  %cfg1.i = getelementptr i8, ptr %ops, i32 -72
  %coherent_walk.i141.i = getelementptr i8, ptr %ops, i32 -56
  %iommu_dev.i143.i = getelementptr i8, ptr %ops, i32 -48
  %l2_tables.i.i = getelementptr i8, ptr %ops, i32 28
  %shr.i92 = lshr i32 %pgsize, 20
  %shr.i = lshr i32 %pgsize, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %pgsize)
  %tobool.not.i = icmp ult i32 %pgsize, 4096
  %and1.i.i.i = and i32 %prot, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %and1.i.i.i, 0
  %spec.select.i.i.i = select i1 %tobool2.not.i.i.i, i32 196, i32 192
  %and6.i.i.i = and i32 %prot, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %spec.select63.v.i.i.i = select i1 %tobool7.not.i.i.i, i32 3, i32 1
  %and11.i.i.i = shl i32 %prot, 4
  %4 = and i32 %and11.i.i.i, 32
  %spec.select63.i.i.i = or i32 %spec.select63.v.i.i.i, %4
  %5 = or i32 %spec.select63.i.i.i, %spec.select.i.i.i
  %6 = xor i32 %5, 32
  %and17.i.i.i = and i32 %prot, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and17.i.i.i, 0
  %and30.i.i.i = and i32 %prot, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i.i.i)
  %tobool31.not.i.i.i = icmp eq i32 %and30.i.i.i, 0
  %tobool42.not = icmp eq ptr %mapped, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %pgsize)
  %tobool.not153.i = icmp ult i32 %pgsize, 1048576
  %shl.i116.i.i = select i1 %tobool.not153.i, i32 -4096, i32 -1048576
  br label %while.body

while.body:                                       ; preds = %if.end45.while.body_crit_edge, %while.body.lr.ph
  %dec103.in = phi i32 [ %pgcount, %while.body.lr.ph ], [ %dec103, %if.end45.while.body_crit_edge ]
  %iova.addr.0102 = phi i32 [ %iova, %while.body.lr.ph ], [ %add, %if.end45.while.body_crit_edge ]
  %paddr.addr.0101 = phi i32 [ %paddr, %while.body.lr.ph ], [ %add41, %if.end45.while.body_crit_edge ]
  %dec103 = add i32 %dec103.in, -1
  %7 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pgd, align 8
  %shr4.i93 = lshr i32 %iova.addr.0102, 20
  %shr4.i = lshr i32 %iova.addr.0102, 12
  %9 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ias, align 8
  %sub.i = add i32 %10, -20
  %notmask149.i = shl nsw i32 -1, %sub.i
  %sub7150.i = xor i32 %notmask149.i, -1
  %and151.i = and i32 %shr4.i93, %sub7150.i
  %add.ptr152.i = getelementptr i32, ptr %8, i32 %and151.i
  br i1 %tobool.not153.i, label %do.end36.i, label %while.body.for.body.lr.ph.i.i_crit_edge

while.body.for.body.lr.ph.i.i_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end92.i.for.body.lr.ph.i.i_crit_edge, %while.body.for.body.lr.ph.i.i_crit_edge
  %lvl.tr.i80 = phi i32 [ 2, %if.end92.i.for.body.lr.ph.i.i_crit_edge ], [ 1, %while.body.for.body.lr.ph.i.i_crit_edge ]
  %shr.i73 = phi i32 [ %shr.i, %if.end92.i.for.body.lr.ph.i.i_crit_edge ], [ %shr.i92, %while.body.for.body.lr.ph.i.i_crit_edge ]
  %add.ptr155.i = phi ptr [ %add.ptr.i, %if.end92.i.for.body.lr.ph.i.i_crit_edge ], [ %add.ptr152.i, %while.body.for.body.lr.ph.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0119.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  br i1 %tobool.not153.i, label %for.body.i.i.if.else.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.else.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr i32, ptr %add.ptr155.i, i32 %i.0119.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp3.i.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp3.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  %13 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ias, align 8
  %sub.i.i = add i32 %14, -20
  %notmask.i.i = shl nsw i32 -1, %sub.i.i
  %sub10.i.i = xor i32 %notmask.i.i, -1
  %and11.i.i = and i32 %shr4.i93, %sub10.i.i
  %idx.neg.i.i = sub nsw i32 0, %and11.i.i
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr155.i, i32 %idx.neg.i.i
  %mul.i.i = shl i32 %i.0119.i.i, 20
  %add.i.i = add i32 %mul.i.i, %iova.addr.0102
  %call.i.i = tail call fastcc i32 @__arm_v7s_unmap(ptr noundef %add.ptr, ptr noundef null, i32 noundef %add.i.i, i32 noundef 1048576, i32 noundef 1, ptr noundef %add.ptr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %call.i.i)
  %cmp12.not.i.i = icmp eq i32 %call.i.i, 1048576
  br i1 %cmp12.not.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then.i.i.do.body46.sink.split_crit_edge, !prof !56

if.then.i.i.do.body46.sink.split_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46.sink.split

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %for.body.i.i.if.else.i.i_crit_edge
  %arrayidx37.i.i = getelementptr i32, ptr %add.ptr155.i, i32 %i.0119.i.i
  %15 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx37.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool38.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool38.not.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.then39.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then39.i.i:                                    ; preds = %if.else.i.i
  %.b112.i.i = load i1, ptr @selftest_running, align 1
  br i1 %.b112.i.i, label %if.then39.i.i.do.body46_crit_edge, label %if.then39.i.i.do.body46.sink.split_crit_edge, !prof !56

if.then39.i.i.do.body46.sink.split_crit_edge:     ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46.sink.split

if.then39.i.i.do.body46_crit_edge:                ; preds = %if.then39.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

for.inc.i.i:                                      ; preds = %if.else.i.i.for.inc.i.i_crit_edge, %if.then.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0119.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %shr.i73
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i
  %17 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cfg1.i, align 8
  %and.i.i.i = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %spec.select = select i1 %tobool.not.i.i.i, i32 %6, i32 %spec.select.i.i.i
  %mul.neg.i.i.i = mul nsw i32 %lvl.tr.i80, -6
  %sub.i.i.i = add nsw i32 %mul.neg.i.i.i, 16
  %shl.i.i.i = shl i32 %spec.select, %sub.i.i.i
  %tobool.not.not.i.i.i = xor i1 %tobool.not.i.i.i, true
  %brmerge.i.i.i = select i1 %tobool18.not.i.i.i, i1 true, i1 %tobool.not.not.i.i.i
  %.neg.i.i.i = mul nsw i32 %lvl.tr.i80, -4
  %mul22.i.i.i = add nsw i32 %.neg.i.i.i, 8
  %shl23.i.i.i = shl nuw i32 1, %mul22.i.i.i
  %or24.i.i.i = select i1 %brmerge.i.i.i, i32 0, i32 %shl23.i.i.i
  %pte.3.i.i.i = or i32 %shl.i.i.i, %or24.i.i.i
  %or29.i.i.i = or i32 %pte.3.i.i.i, 4
  %or33.i.i.i = or i32 %pte.3.i.i.i, 12
  %spec.select64.i.i.i = select i1 %tobool31.not.i.i.i, i32 %pte.3.i.i.i, i32 %or33.i.i.i
  %pte.4.i.i.i = select i1 %tobool2.not.i.i.i, i32 %spec.select64.i.i.i, i32 %or29.i.i.i
  %and39.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i.i)
  %tobool40.not.i.i.i = icmp eq i32 %and39.i.i.i, 0
  %19 = select i1 %tobool.not153.i, i1 true, i1 %tobool40.not.i.i.i
  %pte.5.i.i.i.v = select i1 %19, i32 2, i32 524290
  %pte.5.i.i.i = or i32 %pte.4.i.i.i, %pte.5.i.i.i.v
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr.i73)
  %cmp76.i.i = icmp ugt i32 %shr.i73, 1
  br i1 %cmp76.i.i, label %if.then77.i.i, label %for.end.i.i.if.end79.i.i_crit_edge

for.end.i.i.if.end79.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79.i.i

if.then77.i.i:                                    ; preds = %for.end.i.i
  br i1 %tobool.not153.i, label %if.then2.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i.i = or i32 %pte.5.i.i.i, 262144
  br label %if.end79.i.i

if.then2.i.i.i:                                   ; preds = %if.then77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i.i.i = and i32 %pte.5.i.i.i, -452
  %and.i114.i.i = shl i32 %pte.4.i.i.i, 15
  %shl6.i.i.i = and i32 %and.i114.i.i, 32768
  %and3.i.i.i = shl i32 %pte.4.i.i.i, 6
  %shl7.i.i.i = and i32 %and3.i.i.i, 28672
  %or8.i.i.i = or i32 %xor.i.i.i, %shl6.i.i.i
  %or9.i.i.i = or i32 %or8.i.i.i, %shl7.i.i.i
  %or10.i.i.i = or i32 %or9.i.i.i, 1
  br label %if.end79.i.i

if.end79.i.i:                                     ; preds = %if.then2.i.i.i, %if.then.i.i.i, %for.end.i.i.if.end79.i.i_crit_edge
  %pte.0.i.i = phi i32 [ %pte.5.i.i.i, %for.end.i.i.if.end79.i.i_crit_edge ], [ %or.i.i.i, %if.then.i.i.i ], [ %or10.i.i.i, %if.then2.i.i.i ]
  %and.i117.i.i = and i32 %shl.i116.i.i, %paddr.addr.0101
  %or.i.i = or i32 %pte.0.i.i, %and.i117.i.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end79.i.i
  %i.06.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end79.i.i ]
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr155.i, i32 %i.06.i.i.i
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i.i, ptr %arrayidx.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.06.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %shr.i73
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %21 = ptrtoint ptr %coherent_walk.i141.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %coherent_walk.i141.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.i.if.end40_crit_edge

for.end.i.i.i.if.end40_crit_edge:                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.end.i.i.i.i:                                   ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %iommu_dev.i143.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iommu_dev.i143.i, align 8
  %25 = ptrtoint ptr %add.ptr155.i to i32
  %call.i.i.i.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %25) #8
  %mul.i.i.i.i = shl nuw nsw i32 %shr.i73, 2
  tail call void @dma_sync_single_for_device(ptr noundef %24, i32 noundef %call.i.i.i.i.i.i, i32 noundef %mul.i.i.i.i, i32 noundef 1) #8
  br label %if.end40

do.end36.i:                                       ; preds = %while.body
  %26 = ptrtoint ptr %add.ptr152.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %add.ptr152.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool38.not.i = icmp eq i32 %27, 0
  br i1 %tobool38.not.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %do.end36.i
  %call40.i = tail call fastcc ptr @__arm_v7s_alloc_table(i32 noundef 2, i32 noundef %gfp, ptr noundef %add.ptr) #8
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %if.then39.i.do.body46_crit_edge, label %if.end43.i

if.then39.i.do.body46_crit_edge:                  ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

if.end43.i:                                       ; preds = %if.then39.i
  %28 = ptrtoint ptr %call40.i to i32
  %call.i8.i.i = tail call i32 @__virt_to_phys(i32 noundef %28) #8
  %29 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfg1.i, align 8
  %and.i135.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i135.i)
  %tobool.not.i.i = icmp eq i32 %and.i135.i, 0
  %spec.select.v.i.i = select i1 %tobool.not.i.i, i32 1, i32 9
  %spec.select.i.i = or i32 %spec.select.v.i.i, %call.i8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr152.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %add.ptr152.i, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end43.i
  %31 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %add.ptr152.i, i32 0, i32 %spec.select.i.i) #8, !srcloc !58
  %asmresult.i.i.i = extractvalue { i32, i32 } %31, 0
  %tobool.not.i.i136.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i136.i, label %__cmpxchg.exit.i.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

__cmpxchg.exit.i.i:                               ; preds = %do.body.i.i.i
  %32 = ptrtoint ptr %coherent_walk.i141.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %coherent_walk.i141.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i9.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i9.i.i, label %if.end.i.i.i, label %__cmpxchg.exit.i.i.arm_v7s_install_table.exit.i_crit_edge

__cmpxchg.exit.i.i.arm_v7s_install_table.exit.i_crit_edge: ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_v7s_install_table.exit.i

if.end.i.i.i:                                     ; preds = %__cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %iommu_dev.i143.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iommu_dev.i143.i, align 8
  %36 = ptrtoint ptr %add.ptr152.i to i32
  %call.i.i.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %36) #8
  tail call void @dma_sync_single_for_device(ptr noundef %35, i32 noundef %call.i.i.i.i.i, i32 noundef 4, i32 noundef 1) #8
  br label %arm_v7s_install_table.exit.i

arm_v7s_install_table.exit.i:                     ; preds = %if.end.i.i.i, %__cmpxchg.exit.i.i.arm_v7s_install_table.exit.i_crit_edge
  %asmresult1.i.i.i = extractvalue { i32, i32 } %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i.i.i)
  %tobool45.not.i = icmp eq i32 %asmresult1.i.i.i, 0
  br i1 %tobool45.not.i, label %arm_v7s_install_table.exit.i.if.end92.i_crit_edge, label %if.then46.i

arm_v7s_install_table.exit.i.if.end92.i_crit_edge: ; preds = %arm_v7s_install_table.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.then46.i:                                      ; preds = %arm_v7s_install_table.exit.i
  %37 = ptrtoint ptr %coherent_walk.i141.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %coherent_walk.i141.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i138.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i138.i, label %if.then.i139.i, label %if.then46.i.__arm_v7s_free_table.exit.i_crit_edge

if.then46.i.__arm_v7s_free_table.exit.i_crit_edge: ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_v7s_free_table.exit.i

if.then.i139.i:                                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %iommu_dev.i143.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iommu_dev.i143.i, align 8
  %call.i.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %28) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %call.i.i.i.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_v7s_free_table.exit.i

__arm_v7s_free_table.exit.i:                      ; preds = %if.then.i139.i, %if.then46.i.__arm_v7s_free_table.exit.i_crit_edge
  %41 = ptrtoint ptr %l2_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %l2_tables.i.i, align 4
  tail call void @kmem_cache_free(ptr noundef %42, ptr noundef nonnull %call40.i) #8
  br label %if.end49.i

if.else.i:                                        ; preds = %do.end36.i
  %43 = ptrtoint ptr %coherent_walk.i141.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %coherent_walk.i141.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i142.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i142.i, label %if.end.i.i, label %if.else.i.if.end49.i_crit_edge

if.else.i.if.end49.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %iommu_dev.i143.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iommu_dev.i143.i, align 8
  %47 = ptrtoint ptr %add.ptr152.i to i32
  %call.i.i.i144.i = tail call i32 @__virt_to_phys(i32 noundef %47) #8
  tail call void @dma_sync_single_for_device(ptr noundef %46, i32 noundef %call.i.i.i144.i, i32 noundef 4, i32 noundef 1) #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end.i.i, %if.else.i.if.end49.i_crit_edge, %__arm_v7s_free_table.exit.i
  %pte.0.i = phi i32 [ %asmresult1.i.i.i, %__arm_v7s_free_table.exit.i ], [ %27, %if.else.i.if.end49.i_crit_edge ], [ %27, %if.end.i.i ]
  %and51.i = and i32 %pte.0.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and51.i)
  %cmp52.i = icmp eq i32 %and51.i, 1
  br i1 %cmp52.i, label %iopte_deref.exit.i, label %if.then57.i

iopte_deref.exit.i:                               ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i.i.i = and i32 %pte.0.i, -1024
  %48 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i.i, i32 -2130706432, i32 8454144) #12, !srcloc !54
  %49 = inttoptr i32 %48 to ptr
  br label %if.end92.i

if.then57.i:                                      ; preds = %if.end49.i
  %.b134.i = load i1, ptr @selftest_running, align 1
  br i1 %.b134.i, label %if.then57.i.do.body46_crit_edge, label %if.then57.i.do.body46.sink.split_crit_edge, !prof !56

if.then57.i.do.body46.sink.split_crit_edge:       ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46.sink.split

if.then57.i.do.body46_crit_edge:                  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

if.end92.i:                                       ; preds = %iopte_deref.exit.i, %arm_v7s_install_table.exit.i.if.end92.i_crit_edge
  %cptep.1.i = phi ptr [ %49, %iopte_deref.exit.i ], [ %call40.i, %arm_v7s_install_table.exit.i.if.end92.i_crit_edge ]
  %and.i = and i32 %shr4.i, 255
  %add.ptr.i = getelementptr i32, ptr %cptep.1.i, i32 %and.i
  br i1 %tobool.not.i, label %if.end92.i.do.body46.sink.split_crit_edge, label %if.end92.i.for.body.lr.ph.i.i_crit_edge

if.end92.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph.i.i

if.end92.i.do.body46.sink.split_crit_edge:        ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46.sink.split

if.end40:                                         ; preds = %if.end.i.i.i.i, %for.end.i.i.i.if.end40_crit_edge
  %add = add i32 %iova.addr.0102, %pgsize
  %add41 = add i32 %paddr.addr.0101, %pgsize
  br i1 %tobool42.not, label %if.end40.if.end45_crit_edge, label %if.then43

if.end40.if.end45_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %mapped to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mapped, align 4
  %add44 = add i32 %51, %pgsize
  store i32 %add44, ptr %mapped, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end40.if.end45_crit_edge
  %tobool37.not = icmp eq i32 %dec103, 0
  br i1 %tobool37.not, label %if.end45.do.body46_crit_edge, label %if.end45.while.body_crit_edge

if.end45.while.body_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end45.do.body46_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body46

do.body46.sink.split:                             ; preds = %if.end92.i.do.body46.sink.split_crit_edge, %if.then57.i.do.body46.sink.split_crit_edge, %if.then39.i.i.do.body46.sink.split_crit_edge, %if.then.i.i.do.body46.sink.split_crit_edge
  %.sink = phi i32 [ 441, %if.then39.i.i.do.body46.sink.split_crit_edge ], [ 518, %if.then57.i.do.body46.sink.split_crit_edge ], [ 437, %if.then.i.i.do.body46.sink.split_crit_edge ], [ 496, %if.end92.i.do.body46.sink.split_crit_edge ]
  %ret.1.ph = phi i32 [ -17, %if.then39.i.i.do.body46.sink.split_crit_edge ], [ -17, %if.then57.i.do.body46.sink.split_crit_edge ], [ -22, %if.then.i.i.do.body46.sink.split_crit_edge ], [ -22, %if.end92.i.do.body46.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %do.body46

do.body46:                                        ; preds = %do.body46.sink.split, %if.end45.do.body46_crit_edge, %if.then57.i.do.body46_crit_edge, %if.then39.i.do.body46_crit_edge, %if.then39.i.i.do.body46_crit_edge, %while.cond.preheader.do.body46_crit_edge
  %ret.1 = phi i32 [ -17, %if.then39.i.i.do.body46_crit_edge ], [ -17, %if.then57.i.do.body46_crit_edge ], [ -22, %while.cond.preheader.do.body46_crit_edge ], [ %ret.1.ph, %do.body46.sink.split ], [ -12, %if.then39.i.do.body46_crit_edge ], [ 0, %if.end45.do.body46_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body46, %if.end33.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -34, %do.end ], [ %ret.1, %do.body46 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_v7s_unmap(ptr noundef %ops, i32 noundef %iova, i32 noundef %size, ptr noundef %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i32 %iova to i64
  %ias.i = getelementptr i8, ptr %ops, i32 -64
  %0 = ptrtoint ptr %ias.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ias.i, align 8
  %sh_prom.i = zext i32 %1 to i64
  %conv.highbits.i = lshr i64 %conv.i, %sh_prom.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.highbits.i)
  %cmp.not.i = icmp eq i64 %conv.highbits.i, 0
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %do.end.i, !prof !56

while.cond.preheader.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %ops, i32 -80
  %pgd.i = getelementptr i8, ptr %ops, i32 24
  %2 = ptrtoint ptr %pgd.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pgd.i, align 8
  %call.i = tail call fastcc i32 @__arm_v7s_unmap(ptr noundef %add.ptr.i, ptr noundef %gather, i32 noundef %iova, i32 noundef %size, i32 noundef 1, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool28.not.i = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool28.not.i, i32 0, i32 %size
  br label %arm_v7s_unmap_pages.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 734, i32 noundef 9, ptr noundef null) #8
  br label %arm_v7s_unmap_pages.exit

arm_v7s_unmap_pages.exit:                         ; preds = %do.end.i, %while.cond.preheader.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %spec.select, %while.cond.preheader.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_v7s_unmap_pages(ptr noundef %ops, i32 noundef %iova, i32 noundef %pgsize, i32 noundef %pgcount, ptr noundef %gather) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ops, i32 -80
  %conv = zext i32 %iova to i64
  %ias = getelementptr i8, ptr %ops, i32 -64
  %0 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ias, align 8
  %sh_prom = zext i32 %1 to i64
  %conv.highbits = lshr i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.highbits)
  %cmp.not = icmp eq i64 %conv.highbits, 0
  br i1 %cmp.not, label %while.cond.preheader, label %do.end, !prof !56

while.cond.preheader:                             ; preds = %entry
  %pgd = getelementptr i8, ptr %ops, i32 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pgcount)
  %tobool27.not43 = icmp eq i32 %pgcount, 0
  br i1 %tobool27.not43, label %while.cond.preheader.cleanup_crit_edge, label %while.body.preheader

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.preheader:                             ; preds = %while.cond.preheader
  %2 = mul i32 %pgcount, %pgsize
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 734, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %while.body.preheader
  %dec46.in = phi i32 [ %dec46, %if.end30.while.body_crit_edge ], [ %pgcount, %while.body.preheader ]
  %unmapped.045 = phi i32 [ %add, %if.end30.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %iova.addr.044 = phi i32 [ %add31, %if.end30.while.body_crit_edge ], [ %iova, %while.body.preheader ]
  %3 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pgd, align 8
  %call = tail call fastcc i32 @__arm_v7s_unmap(ptr noundef %add.ptr, ptr noundef %gather, i32 noundef %iova.addr.044, i32 noundef %pgsize, i32 noundef 1, ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool28.not = icmp eq i32 %call, 0
  br i1 %tobool28.not, label %while.body.cleanup_crit_edge, label %if.end30

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %while.body
  %dec46 = add i32 %dec46.in, -1
  %add = add i32 %unmapped.045, %pgsize
  %add31 = add i32 %iova.addr.044, %pgsize
  %tobool27.not = icmp eq i32 %dec46, 0
  br i1 %tobool27.not, label %if.end30.cleanup_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end30.cleanup_crit_edge, %while.body.cleanup_crit_edge, %do.end, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %unmapped.045, %while.body.cleanup_crit_edge ], [ %2, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arm_v7s_iova_to_phys(ptr nocapture noundef readonly %ops, i32 noundef %iova) #0 align 64 {
cond.end.peel:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pgd = getelementptr i8, ptr %ops, i32 24
  %0 = ptrtoint ptr %pgd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pgd, align 8
  %shr.peel = lshr i32 %iova, 20
  %ias = getelementptr i8, ptr %ops, i32 -64
  %2 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ias, align 8
  %sub.peel = add i32 %3, -20
  %notmask.peel = shl nsw i32 -1, %sub.peel
  %sub7.peel = xor i32 %notmask.peel, -1
  %and.peel = and i32 %shr.peel, %sub7.peel
  %add.ptr8.peel = getelementptr i32, ptr %1, i32 %and.peel
  %4 = ptrtoint ptr %add.ptr8.peel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %add.ptr8.peel, align 4
  %and.i.i.peel = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.peel)
  %cmp1.i.i.peel = icmp eq i32 %and.i.i.peel, 1
  br i1 %cmp1.i.i.peel, label %if.else.i.i.i, label %arm_v7s_pte_is_cont.exit.i.i.peel

arm_v7s_pte_is_cont.exit.i.i.peel:                ; preds = %cond.end.peel
  call void @__sanitizer_cov_trace_pc() #10
  %and4.i.i.i.peel = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i.i.peel)
  %tobool.i.not.i.i.peel = icmp eq i32 %and4.i.i.i.peel, 0
  %spec.select = select i1 %tobool.i.not.i.i.peel, i32 -1048576, i32 -16777216
  %and9.i.i.peel62 = and i32 %spec.select, %5
  %6 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i.peel62, i32 -2130706432, i32 8454144) #12, !srcloc !54
  br label %do.end15

if.else.i.i.i:                                    ; preds = %cond.end.peel
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i.i.peel = and i32 %5, -1024
  %7 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i.peel, i32 -2130706432, i32 8454144) #12, !srcloc !54
  %8 = inttoptr i32 %7 to ptr
  %shr = lshr i32 %iova, 12
  %and = and i32 %shr, 255
  %add.ptr8 = getelementptr i32, ptr %8, i32 %and
  %9 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %add.ptr8, align 4
  %and.i.i = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 1
  %and7.i.i.i = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %and7.i.i.i, 0
  %spec.select66 = select i1 %tobool8.not.i.i.i, i32 -65536, i32 -4096
  %and9.i.i = and i32 %spec.select66, %10
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i, i32 -2130706432, i32 8454144) #12, !srcloc !54
  br label %do.end15

do.end15:                                         ; preds = %if.else.i.i.i, %arm_v7s_pte_is_cont.exit.i.i.peel
  %.lcssa = phi i32 [ %10, %if.else.i.i.i ], [ %5, %arm_v7s_pte_is_cont.exit.i.i.peel ]
  %and.i.i.lcssa = phi i32 [ %and.i.i, %if.else.i.i.i ], [ %and.i.i.peel, %arm_v7s_pte_is_cont.exit.i.i.peel ]
  %cmp1.i.i.lcssa = phi i1 [ %cmp1.i.i, %if.else.i.i.i ], [ false, %arm_v7s_pte_is_cont.exit.i.i.peel ]
  %cond.lcssa = phi i32 [ 12, %if.else.i.i.i ], [ 20, %arm_v7s_pte_is_cont.exit.i.i.peel ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.lcssa)
  %cmp17.not = icmp eq i32 %and.i.i.lcssa, 0
  br i1 %cmp17.not, label %do.end15.cleanup_crit_edge, label %if.end

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %do.end15
  %shl20 = shl nsw i32 -1, %cond.lcssa
  %or.cond.i = or i1 %cmp1.i.i.peel, %cmp1.i.i.lcssa
  br i1 %or.cond.i, label %if.else.i, label %arm_v7s_pte_is_cont.exit

if.else.i:                                        ; preds = %if.end
  %and7.i = and i32 %.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond59 = select i1 %cmp1.i.i.peel, i1 %tobool8.not.i, i1 false
  %mul5864 = shl i32 %shl20, 4
  %spec.select67 = select i1 %or.cond59, i32 %mul5864, i32 %shl20
  %and7.i.i = and i32 %.lcssa, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %or.cond2.i = and i1 %cmp1.i.i.peel, %tobool8.not.i.i
  br i1 %or.cond2.i, label %if.else.i.if.then2.i_crit_edge, label %if.else.i.if.else4.i_crit_edge

if.else.i.if.else4.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else4.i

if.else.i.if.then2.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i

arm_v7s_pte_is_cont.exit:                         ; preds = %if.end
  %and4.i = and i32 %.lcssa, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool.i.not, label %arm_v7s_pte_is_cont.exit.if.else4.i_crit_edge, label %arm_v7s_pte_is_cont.exit.i

arm_v7s_pte_is_cont.exit.if.else4.i_crit_edge:    ; preds = %arm_v7s_pte_is_cont.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else4.i

arm_v7s_pte_is_cont.exit.i:                       ; preds = %arm_v7s_pte_is_cont.exit
  %mul58 = shl i32 %shl20, 4
  %.pre = and i32 %.lcssa, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %phi.cmp, label %arm_v7s_pte_is_cont.exit.i.if.else4.i_crit_edge, label %arm_v7s_pte_is_cont.exit.i.if.then2.i_crit_edge

arm_v7s_pte_is_cont.exit.i.if.then2.i_crit_edge:  ; preds = %arm_v7s_pte_is_cont.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.i

arm_v7s_pte_is_cont.exit.i.if.else4.i_crit_edge:  ; preds = %arm_v7s_pte_is_cont.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else4.i

if.then2.i:                                       ; preds = %arm_v7s_pte_is_cont.exit.i.if.then2.i_crit_edge, %if.else.i.if.then2.i_crit_edge
  %12 = phi i32 [ %mul58, %arm_v7s_pte_is_cont.exit.i.if.then2.i_crit_edge ], [ %spec.select67, %if.else.i.if.then2.i_crit_edge ]
  %mul.i = select i1 %cmp1.i.i.peel, i32 -65536, i32 -16777216
  br label %iopte_to_paddr.exit

if.else4.i:                                       ; preds = %arm_v7s_pte_is_cont.exit.i.if.else4.i_crit_edge, %arm_v7s_pte_is_cont.exit.if.else4.i_crit_edge, %if.else.i.if.else4.i_crit_edge
  %13 = phi i32 [ %mul58, %arm_v7s_pte_is_cont.exit.i.if.else4.i_crit_edge ], [ %spec.select67, %if.else.i.if.else4.i_crit_edge ], [ %shl20, %arm_v7s_pte_is_cont.exit.if.else4.i_crit_edge ]
  %shl7.i = select i1 %cmp1.i.i.peel, i32 -4096, i32 -1048576
  br label %iopte_to_paddr.exit

iopte_to_paddr.exit:                              ; preds = %if.else4.i, %if.then2.i
  %14 = phi i32 [ %12, %if.then2.i ], [ %13, %if.else4.i ]
  %mask.0.i = phi i32 [ %mul.i, %if.then2.i ], [ %shl7.i, %if.else4.i ]
  %and9.i = and i32 %mask.0.i, %.lcssa
  %neg = xor i32 %14, -1
  %and27 = and i32 %neg, %iova
  %or = or i32 %and9.i, %and27
  br label %cleanup

cleanup:                                          ; preds = %iopte_to_paddr.exit, %do.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %iopte_to_paddr.exit ], [ 0, %do.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__arm_v7s_alloc_table(i32 noundef %lvl, i32 noundef %gfp, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu_dev = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  %0 = ptrtoint ptr %iommu_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lvl)
  %cmp = icmp eq i32 %lvl, 1
  br i1 %cmp, label %if.then, label %if.then5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ias = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ias, align 8
  %sub = add i32 %3, -20
  %mul92 = shl i32 4, %sub
  %dec.i = add i32 %mul92, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %4 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #8, !range !55
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %call3 = tail call i32 @__get_free_pages(i32 noundef 257, i32 noundef %cond.i.i) #8
  %5 = inttoptr i32 %call3 to ptr
  br label %if.end7

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %l2_tables = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %l2_tables to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %l2_tables, align 4
  %or.i = or i32 %gfp, 256
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %7, i32 noundef %or.i) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then
  %mul94 = phi i32 [ %mul92, %if.then ], [ 1024, %if.then5 ]
  %table.0 = phi ptr [ %5, %if.then ], [ %call.i, %if.then5 ]
  %tobool.not = icmp eq ptr %table.0, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end9

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end7
  %8 = ptrtoint ptr %table.0 to i32
  %call.i83 = tail call i32 @__virt_to_phys(i32 noundef %8) #8
  %coherent_walk = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %coherent_walk to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %coherent_walk, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool14.not = icmp eq i8 %10, 0
  br i1 %tobool14.not, label %if.then15, label %if.end9.if.end24_crit_edge

if.end9.if.end24_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then15:                                        ; preds = %if.end9
  %call.i84 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %table.0) #8
  br i1 %call.i84, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then15
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i86, !prof !56

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i86:                                      ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i85 = icmp eq ptr %12, null
  br i1 %tobool.not.i.i85, label %if.end.i.i, label %if.then.i86.dev_name.exit.i_crit_edge

if.then.i86.dev_name.exit.i_crit_edge:            ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i86
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i86.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %14, %if.end.i.i ], [ %12, %if.then.i86.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef -1) #8
  br label %out_free

dma_map_single_attrs.exit:                        ; preds = %if.then15
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef nonnull %table.0, i32 noundef %mul94) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %15 = load ptr, ptr @mem_map, align 4
  %sub.i87 = add i32 %8, 1073741824
  %shr.i88 = lshr i32 %sub.i87, 12
  %add.ptr.i = getelementptr %struct.page, ptr %15, i32 %shr.i88
  %and.i = and i32 %8, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %mul94, i32 noundef 1, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i90 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i90, label %dma_map_single_attrs.exit.out_free_crit_edge, label %if.end20

dma_map_single_attrs.exit.out_free_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end20:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %call41.i, i32 %call.i83)
  %cmp21.not = icmp eq i32 %call41.i, %call.i83
  br i1 %cmp21.not, label %if.end20.if.end24_crit_edge, label %do.end30

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %if.end20.if.end24_crit_edge, %if.end9.if.end24_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lvl)
  %cmp25 = icmp eq i32 %lvl, 2
  br i1 %cmp25, label %if.then26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kmemleak_ignore(ptr noundef nonnull %table.0) #8
  br label %cleanup

do.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8) #13
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %call41.i, i32 noundef %mul94, i32 noundef 1, i32 noundef 0) #8
  br label %out_free

out_free:                                         ; preds = %do.end30, %dma_map_single_attrs.exit.out_free_crit_edge, %dma_map_single_attrs.exit.thread
  br i1 %cmp, label %get_order.exit82, label %if.else34

get_order.exit82:                                 ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i75 = add i32 %mul94, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i75)
  %tobool.not.i.i77 = icmp ult i32 %dec.i75, 4096
  %shr.i76 = lshr i32 %dec.i75, 12
  %16 = tail call i32 @llvm.ctlz.i32(i32 %shr.i76, i1 true) #8, !range !55
  %sub.i.i78 = sub nuw nsw i32 32, %16
  %cond.i.i79 = select i1 %tobool.not.i.i77, i32 0, i32 %sub.i.i78
  tail call void @free_pages(i32 noundef %8, i32 noundef %cond.i.i79) #8
  br label %cleanup

if.else34:                                        ; preds = %out_free
  call void @__sanitizer_cov_trace_pc() #10
  %l2_tables35 = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %l2_tables35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %l2_tables35, align 4
  tail call void @kmem_cache_free(ptr noundef %18, ptr noundef nonnull %table.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else34, %get_order.exit82, %if.then26, %if.end24.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end7.cleanup_crit_edge ], [ %table.0, %if.then26 ], [ %table.0, %if.end24.cleanup_crit_edge ], [ null, %if.else34 ], [ null, %get_order.exit82 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__arm_v7s_unmap(ptr noundef %data, ptr noundef %gather, i32 noundef %iova, i32 noundef %size, i32 noundef %lvl, ptr noundef %ptep) unnamed_addr #0 align 64 {
entry:
  %pte = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pte) #8
  %0 = call ptr @memset(ptr %pte, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lvl)
  %cmp = icmp eq i32 %lvl, 1
  %cond = select i1 %cmp, i32 20, i32 12
  %shr = lshr i32 %size, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lvl)
  %cmp2 = icmp sgt i32 %lvl, 2
  br i1 %cmp2, label %do.end, label %if.end23, !prof !60

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 665, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %shr27 = lshr i32 %iova, %cond
  br i1 %cmp, label %cond.true, label %if.end23.cond.end_crit_edge

if.end23.cond.end_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %ias = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %ias to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ias, align 8
  %sub = add i32 %2, -20
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end23.cond.end_crit_edge
  %cond29 = phi i32 [ %sub, %cond.true ], [ 8, %if.end23.cond.end_crit_edge ]
  %notmask = shl nsw i32 -1, %cond29
  %sub30 = xor i32 %notmask, -1
  %and = and i32 %shr27, %sub30
  %add.ptr = getelementptr i32, ptr %ptep, i32 %and
  %umax = tail call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %do.body31

do.body31:                                        ; preds = %do.cond75.do.body31_crit_edge, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %do.cond75.do.body31_crit_edge ]
  %arrayidx = getelementptr i32, ptr %add.ptr, i32 %i.0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %arrayidx, align 4
  %arrayidx36 = getelementptr [16 x i32], ptr %pte, i32 0, i32 %i.0
  %5 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx36, align 4
  %and39 = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40.not = icmp eq i32 %and39, 0
  br i1 %cmp40.not, label %do.end58, label %do.cond75, !prof !60

do.end58:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 672, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.cond75:                                        ; preds = %do.body31
  %inc = add nuw nsw i32 %i.0, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %do.end77, label %do.cond75.do.body31_crit_edge

do.cond75.do.body31_crit_edge:                    ; preds = %do.cond75
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body31

do.end77:                                         ; preds = %do.cond75
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %cmp78 = icmp ult i32 %shr, 2
  br i1 %cmp78, label %land.lhs.true, label %do.end77.if.then96_crit_edge

do.end77.if.then96_crit_edge:                     ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

land.lhs.true:                                    ; preds = %do.end77
  %6 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pte, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lvl)
  %cmp.i = icmp ne i32 %lvl, 1
  %and.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp3.i = icmp eq i32 %and.i, 1
  %or.cond.i = or i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %if.else.i, label %arm_v7s_pte_is_cont.exit

if.else.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lvl)
  %cmp5.i = icmp eq i32 %lvl, 2
  %and7.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  %or.cond = select i1 %cmp5.i, i1 %tobool8.not.i, i1 false
  br i1 %or.cond, label %if.else.i.if.then80_crit_edge, label %if.else.i.if.end94_crit_edge

if.else.i.if.end94_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.else.i.if.then80_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

arm_v7s_pte_is_cont.exit:                         ; preds = %land.lhs.true
  %and4.i = and i32 %7, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.i.not = icmp eq i32 %and4.i, 0
  br i1 %tobool.i.not, label %arm_v7s_pte_is_cont.exit.if.end94_crit_edge, label %arm_v7s_pte_is_cont.exit.if.then80_crit_edge

arm_v7s_pte_is_cont.exit.if.then80_crit_edge:     ; preds = %arm_v7s_pte_is_cont.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then80

arm_v7s_pte_is_cont.exit.if.end94_crit_edge:      ; preds = %arm_v7s_pte_is_cont.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then80:                                        ; preds = %arm_v7s_pte_is_cont.exit.if.then80_crit_edge, %if.else.i.if.then80_crit_edge
  %split_lock = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %data, i32 0, i32 3
  %call86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %split_lock) #8
  %shl.i = select i1 %cmp, i32 1048576, i32 4096
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  %and.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp3.i.i = icmp eq i32 %and.i.i, 1
  %or.cond.i.i = or i1 %cmp.i, %cmp3.i.i
  br i1 %or.cond.i.i, label %if.else.i.i, label %arm_v7s_pte_is_cont.exit.i

if.else.i.i:                                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lvl)
  %cmp5.i.i = icmp eq i32 %lvl, 2
  %and7.i.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %or.cond.i209 = select i1 %cmp5.i.i, i1 %tobool8.not.i.i, i1 false
  br i1 %or.cond.i209, label %if.else.i.i.if.end.i_crit_edge, label %if.else.i.i.arm_v7s_split_cont.exit_crit_edge

if.else.i.i.arm_v7s_split_cont.exit_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_v7s_split_cont.exit

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

arm_v7s_pte_is_cont.exit.i:                       ; preds = %if.then80
  %and4.i.i = and i32 %9, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.i.not.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool.i.not.i, label %arm_v7s_pte_is_cont.exit.i.arm_v7s_split_cont.exit_crit_edge, label %arm_v7s_pte_is_cont.exit.i.if.end.i_crit_edge

arm_v7s_pte_is_cont.exit.i.if.end.i_crit_edge:    ; preds = %arm_v7s_pte_is_cont.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

arm_v7s_pte_is_cont.exit.i.arm_v7s_split_cont.exit_crit_edge: ; preds = %arm_v7s_pte_is_cont.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_v7s_split_cont.exit

if.end.i:                                         ; preds = %arm_v7s_pte_is_cont.exit.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge
  %and.i210 = and i32 %and, 15
  %idx.neg.i = sub nsw i32 0, %and.i210
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 %idx.neg.i
  br i1 %cmp, label %if.then.i26.i, label %if.then2.i.i

if.then.i26.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i25.i = and i32 %9, -262145
  br label %arm_v7s_cont_to_pte.exit.i

if.then2.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i.i = and i32 %9, 61440
  %or5.i.i = or i32 %or.i.i, 1
  %xor.i.i = xor i32 %or5.i.i, %9
  %and3.i.i = lshr i32 %9, 15
  %shr.i.i = and i32 %and3.i.i, 1
  %and4.i27.i = lshr i32 %9, 6
  %shr6.i.i = and i32 %and4.i27.i, 448
  %or7.i.i = or i32 %shr.i.i, %shr6.i.i
  %or8.i.i = or i32 %or7.i.i, %xor.i.i
  %or9.i.i = or i32 %or8.i.i, 2
  br label %arm_v7s_cont_to_pte.exit.i

arm_v7s_cont_to_pte.exit.i:                       ; preds = %if.then2.i.i, %if.then.i26.i
  %pte.addr.0.i.i = phi i32 [ %and.i25.i, %if.then.i26.i ], [ %or9.i.i, %if.then2.i.i ]
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %pte.addr.0.i.i, ptr %add.ptr.i, align 4
  %add.1.i = add i32 %pte.addr.0.i.i, %shl.i
  %arrayidx.1.i = getelementptr i32, ptr %add.ptr.i, i32 1
  %11 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.1.i, ptr %arrayidx.1.i, align 4
  %mul.2.i = shl nuw nsw i32 %shl.i, 1
  %add.2.i = add i32 %pte.addr.0.i.i, %mul.2.i
  %arrayidx.2.i = getelementptr i32, ptr %add.ptr.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.2.i, ptr %arrayidx.2.i, align 4
  %mul.3.i = mul nuw nsw i32 %shl.i, 3
  %add.3.i = add i32 %pte.addr.0.i.i, %mul.3.i
  %arrayidx.3.i = getelementptr i32, ptr %add.ptr.i, i32 3
  %13 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add.3.i, ptr %arrayidx.3.i, align 4
  %mul.4.i = shl nuw nsw i32 %shl.i, 2
  %add.4.i = add i32 %pte.addr.0.i.i, %mul.4.i
  %arrayidx.4.i = getelementptr i32, ptr %add.ptr.i, i32 4
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.4.i, ptr %arrayidx.4.i, align 4
  %mul.5.i = mul nuw nsw i32 %shl.i, 5
  %add.5.i = add i32 %pte.addr.0.i.i, %mul.5.i
  %arrayidx.5.i = getelementptr i32, ptr %add.ptr.i, i32 5
  %15 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add.5.i, ptr %arrayidx.5.i, align 4
  %mul.6.i = mul nuw nsw i32 %shl.i, 6
  %add.6.i = add i32 %pte.addr.0.i.i, %mul.6.i
  %arrayidx.6.i = getelementptr i32, ptr %add.ptr.i, i32 6
  %16 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.6.i, ptr %arrayidx.6.i, align 4
  %mul.7.i = mul nuw nsw i32 %shl.i, 7
  %add.7.i = add i32 %pte.addr.0.i.i, %mul.7.i
  %arrayidx.7.i = getelementptr i32, ptr %add.ptr.i, i32 7
  %17 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.7.i, ptr %arrayidx.7.i, align 4
  %mul.8.i = shl nuw nsw i32 %shl.i, 3
  %add.8.i = add i32 %pte.addr.0.i.i, %mul.8.i
  %arrayidx.8.i = getelementptr i32, ptr %add.ptr.i, i32 8
  %18 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.8.i, ptr %arrayidx.8.i, align 4
  %mul.9.i = mul nuw nsw i32 %shl.i, 9
  %add.9.i = add i32 %pte.addr.0.i.i, %mul.9.i
  %arrayidx.9.i = getelementptr i32, ptr %add.ptr.i, i32 9
  %19 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.9.i, ptr %arrayidx.9.i, align 4
  %mul.10.i = mul nuw nsw i32 %shl.i, 10
  %add.10.i = add i32 %pte.addr.0.i.i, %mul.10.i
  %arrayidx.10.i = getelementptr i32, ptr %add.ptr.i, i32 10
  %20 = ptrtoint ptr %arrayidx.10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add.10.i, ptr %arrayidx.10.i, align 4
  %mul.11.i = mul nuw nsw i32 %shl.i, 11
  %add.11.i = add i32 %pte.addr.0.i.i, %mul.11.i
  %arrayidx.11.i = getelementptr i32, ptr %add.ptr.i, i32 11
  %21 = ptrtoint ptr %arrayidx.11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.11.i, ptr %arrayidx.11.i, align 4
  %mul.12.i = mul nuw nsw i32 %shl.i, 12
  %add.12.i = add i32 %pte.addr.0.i.i, %mul.12.i
  %arrayidx.12.i = getelementptr i32, ptr %add.ptr.i, i32 12
  %22 = ptrtoint ptr %arrayidx.12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.12.i, ptr %arrayidx.12.i, align 4
  %mul.13.i = mul nuw nsw i32 %shl.i, 13
  %add.13.i = add i32 %pte.addr.0.i.i, %mul.13.i
  %arrayidx.13.i = getelementptr i32, ptr %add.ptr.i, i32 13
  %23 = ptrtoint ptr %arrayidx.13.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.13.i, ptr %arrayidx.13.i, align 4
  %mul.14.i = mul nuw nsw i32 %shl.i, 14
  %add.14.i = add i32 %pte.addr.0.i.i, %mul.14.i
  %arrayidx.14.i = getelementptr i32, ptr %add.ptr.i, i32 14
  %24 = ptrtoint ptr %arrayidx.14.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.14.i, ptr %arrayidx.14.i, align 4
  %mul.15.i = mul nuw nsw i32 %shl.i, 15
  %add.15.i = add i32 %pte.addr.0.i.i, %mul.15.i
  %arrayidx.15.i = getelementptr i32, ptr %add.ptr.i, i32 15
  %25 = ptrtoint ptr %arrayidx.15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add.15.i, ptr %arrayidx.15.i, align 4
  %coherent_walk.i.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %coherent_walk.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %coherent_walk.i.i, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %arm_v7s_cont_to_pte.exit.i.__arm_v7s_pte_sync.exit.i_crit_edge

arm_v7s_cont_to_pte.exit.i.__arm_v7s_pte_sync.exit.i_crit_edge: ; preds = %arm_v7s_cont_to_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_v7s_pte_sync.exit.i

if.end.i.i:                                       ; preds = %arm_v7s_cont_to_pte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %iommu_dev.i.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  %28 = ptrtoint ptr %iommu_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iommu_dev.i.i, align 8
  %30 = ptrtoint ptr %add.ptr.i to i32
  %call.i.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %30) #8
  tail call void @dma_sync_single_for_device(ptr noundef %29, i32 noundef %call.i.i.i.i, i32 noundef 64, i32 noundef 1) #8
  br label %__arm_v7s_pte_sync.exit.i

__arm_v7s_pte_sync.exit.i:                        ; preds = %if.end.i.i, %arm_v7s_cont_to_pte.exit.i.__arm_v7s_pte_sync.exit.i_crit_edge
  %mul4.i = shl nuw nsw i32 %shl.i, 4
  %tlb.i.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %tlb.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tlb.i.i, align 4
  %tobool.not.i28.i = icmp eq ptr %32, null
  br i1 %tobool.not.i28.i, label %__arm_v7s_pte_sync.exit.i.arm_v7s_split_cont.exit_crit_edge, label %land.lhs.true.i.i

__arm_v7s_pte_sync.exit.i.arm_v7s_split_cont.exit_crit_edge: ; preds = %__arm_v7s_pte_sync.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_v7s_split_cont.exit

land.lhs.true.i.i:                                ; preds = %__arm_v7s_pte_sync.exit.i
  %tlb_flush_walk.i.i = getelementptr inbounds %struct.iommu_flush_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %tlb_flush_walk.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tlb_flush_walk.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %34, null
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.arm_v7s_split_cont.exit_crit_edge, label %if.then.i29.i

land.lhs.true.i.i.arm_v7s_split_cont.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_v7s_split_cont.exit

if.then.i29.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %cookie.i.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cookie.i.i, align 4
  tail call void %34(i32 noundef %iova, i32 noundef %mul4.i, i32 noundef %mul4.i, ptr noundef %36) #8
  br label %arm_v7s_split_cont.exit

arm_v7s_split_cont.exit:                          ; preds = %if.then.i29.i, %land.lhs.true.i.i.arm_v7s_split_cont.exit_crit_edge, %__arm_v7s_pte_sync.exit.i.arm_v7s_split_cont.exit_crit_edge, %arm_v7s_pte_is_cont.exit.i.arm_v7s_split_cont.exit_crit_edge, %if.else.i.i.arm_v7s_split_cont.exit_crit_edge
  %retval.0.i211 = phi i32 [ %9, %arm_v7s_pte_is_cont.exit.i.arm_v7s_split_cont.exit_crit_edge ], [ %pte.addr.0.i.i, %__arm_v7s_pte_sync.exit.i.arm_v7s_split_cont.exit_crit_edge ], [ %pte.addr.0.i.i, %land.lhs.true.i.i.arm_v7s_split_cont.exit_crit_edge ], [ %pte.addr.0.i.i, %if.then.i29.i ], [ %9, %if.else.i.i.arm_v7s_split_cont.exit_crit_edge ]
  %37 = ptrtoint ptr %pte to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i211, ptr %pte, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %split_lock, i32 noundef %call86) #8
  br label %if.end94

if.end94:                                         ; preds = %arm_v7s_split_cont.exit, %arm_v7s_pte_is_cont.exit.if.end94_crit_edge, %if.else.i.if.end94_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool95.not = icmp eq i32 %shr, 0
  br i1 %tobool95.not, label %if.else125, label %if.end94.if.then96_crit_edge

if.end94.if.then96_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then96

if.then96:                                        ; preds = %if.end94.if.then96_crit_edge, %do.end77.if.then96_crit_edge
  %38 = shl nuw nsw i32 %shr, 2
  %39 = call ptr @memset(ptr %add.ptr, i32 0, i32 %38)
  %shl100 = shl nuw i32 1, %cond
  %coherent_walk.i.i213 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 4
  %40 = ptrtoint ptr %coherent_walk.i.i213 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %coherent_walk.i.i213, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i214 = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i214, label %if.end.i.i217, label %if.then96.for.body.lr.ph_crit_edge

if.then96.for.body.lr.ph_crit_edge:               ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

if.end.i.i217:                                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #10
  %iommu_dev.i.i215 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %iommu_dev.i.i215 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iommu_dev.i.i215, align 8
  %44 = ptrtoint ptr %add.ptr to i32
  %call.i.i.i.i216 = tail call i32 @__virt_to_phys(i32 noundef %44) #8
  tail call void @dma_sync_single_for_device(ptr noundef %43, i32 noundef %call.i.i.i.i216, i32 noundef %38, i32 noundef 1) #8
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end.i.i217, %if.then96.for.body.lr.ph_crit_edge
  %tobool.not.i236 = icmp eq ptr %gather, null
  %queued.i = getelementptr inbounds %struct.iommu_iotlb_gather, ptr %gather, i32 0, i32 4
  %tlb.i237 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 5
  %cookie.i241 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 1
  %iommu_dev.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  %l2_tables.i = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %data, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end122.for.body_crit_edge, %for.body.lr.ph
  %iova.addr.0359 = phi i32 [ %iova, %for.body.lr.ph ], [ %add123, %if.end122.for.body_crit_edge ]
  %i.1356 = phi i32 [ 0, %for.body.lr.ph ], [ %inc124, %if.end122.for.body_crit_edge ]
  br i1 %cmp, label %land.lhs.true106, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true106:                                 ; preds = %for.body
  %arrayidx107 = getelementptr [16 x i32], ptr %pte, i32 0, i32 %i.1356
  %45 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx107, align 4
  %and108 = and i32 %46, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and108)
  %cmp109 = icmp eq i32 %and108, 1
  br i1 %cmp109, label %if.then111, label %land.lhs.true106.if.else_crit_edge

land.lhs.true106.if.else_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then111:                                       ; preds = %land.lhs.true106
  %47 = ptrtoint ptr %tlb.i237 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tlb.i237, align 4
  %tobool.not.i = icmp eq ptr %48, null
  br i1 %tobool.not.i, label %if.then111.cond.end.i_crit_edge, label %land.lhs.true.i

if.then111.cond.end.i_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

land.lhs.true.i:                                  ; preds = %if.then111
  %tlb_flush_walk.i = getelementptr inbounds %struct.iommu_flush_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %tlb_flush_walk.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tlb_flush_walk.i, align 4
  %tobool3.not.i = icmp eq ptr %50, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.cond.end.i_crit_edge, label %if.then.i219

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i

if.then.i219:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %cookie.i241 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cookie.i241, align 4
  tail call void %50(i32 noundef %iova.addr.0359, i32 noundef %shl100, i32 noundef 4096, ptr noundef %52) #8
  br label %cond.end.i

cond.end.i:                                       ; preds = %if.then.i219, %land.lhs.true.i.cond.end.i_crit_edge, %if.then111.cond.end.i_crit_edge
  %and9.i.i = and i32 %46, -1024
  %53 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i, i32 -2130706432, i32 8454144) #12, !srcloc !54
  %54 = inttoptr i32 %53 to ptr
  %55 = ptrtoint ptr %coherent_walk.i.i213 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %coherent_walk.i.i213, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i228 = icmp eq i8 %56, 0
  br i1 %tobool.not.i228, label %if.then.i229, label %cond.end.i.__arm_v7s_free_table.exit_crit_edge

cond.end.i.__arm_v7s_free_table.exit_crit_edge:   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_v7s_free_table.exit

if.then.i229:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %iommu_dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iommu_dev.i, align 8
  %call.i.i.i = tail call i32 @__virt_to_phys(i32 noundef %53) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %58, i32 noundef %call.i.i.i, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_v7s_free_table.exit

__arm_v7s_free_table.exit:                        ; preds = %if.then.i229, %cond.end.i.__arm_v7s_free_table.exit_crit_edge
  %59 = ptrtoint ptr %l2_tables.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %l2_tables.i, align 4
  tail call void @kmem_cache_free(ptr noundef %60, ptr noundef %54) #8
  br label %if.end122

if.else:                                          ; preds = %land.lhs.true106.if.else_crit_edge, %for.body.if.else_crit_edge
  br i1 %tobool.not.i236, label %if.else.if.then120_crit_edge, label %iommu_iotlb_gather_queued.exit

if.else.if.then120_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

iommu_iotlb_gather_queued.exit:                   ; preds = %if.else
  %61 = ptrtoint ptr %queued.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %queued.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool1.i.not = icmp eq i8 %62, 0
  br i1 %tobool1.i.not, label %iommu_iotlb_gather_queued.exit.if.then120_crit_edge, label %iommu_iotlb_gather_queued.exit.if.end122_crit_edge

iommu_iotlb_gather_queued.exit.if.end122_crit_edge: ; preds = %iommu_iotlb_gather_queued.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

iommu_iotlb_gather_queued.exit.if.then120_crit_edge: ; preds = %iommu_iotlb_gather_queued.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then120

if.then120:                                       ; preds = %iommu_iotlb_gather_queued.exit.if.then120_crit_edge, %if.else.if.then120_crit_edge
  %63 = ptrtoint ptr %tlb.i237 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tlb.i237, align 4
  %tobool.not.i238 = icmp eq ptr %64, null
  br i1 %tobool.not.i238, label %if.then120.if.end122_crit_edge, label %land.lhs.true.i240

if.then120.if.end122_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

land.lhs.true.i240:                               ; preds = %if.then120
  %tlb_add_page.i = getelementptr inbounds %struct.iommu_flush_ops, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %tlb_add_page.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tlb_add_page.i, align 4
  %tobool3.not.i239 = icmp eq ptr %66, null
  br i1 %tobool3.not.i239, label %land.lhs.true.i240.if.end122_crit_edge, label %if.then.i242

land.lhs.true.i240.if.end122_crit_edge:           ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end122

if.then.i242:                                     ; preds = %land.lhs.true.i240
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %cookie.i241 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cookie.i241, align 4
  tail call void %66(ptr noundef %gather, i32 noundef %iova.addr.0359, i32 noundef %shl100, ptr noundef %68) #8
  br label %if.end122

if.end122:                                        ; preds = %if.then.i242, %land.lhs.true.i240.if.end122_crit_edge, %if.then120.if.end122_crit_edge, %iommu_iotlb_gather_queued.exit.if.end122_crit_edge, %__arm_v7s_free_table.exit
  %add123 = add i32 %iova.addr.0359, %shl100
  %inc124 = add nuw nsw i32 %i.1356, 1
  %exitcond366.not = icmp eq i32 %inc124, %shr
  br i1 %exitcond366.not, label %if.end122.cleanup_crit_edge, label %if.end122.for.body_crit_edge

if.end122.for.body_crit_edge:                     ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else125:                                       ; preds = %if.end94
  %69 = ptrtoint ptr %pte to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %pte, align 4
  br i1 %cmp, label %land.lhs.true131, label %if.else.i.i.i262

land.lhs.true131:                                 ; preds = %if.else125
  %and133 = and i32 %70, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and133)
  %cmp134 = icmp eq i32 %and133, 1
  br i1 %cmp134, label %land.lhs.true131.iopte_deref.exit272_crit_edge, label %if.then136

land.lhs.true131.iopte_deref.exit272_crit_edge:   ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #10
  br label %iopte_deref.exit272

if.then136:                                       ; preds = %land.lhs.true131
  %cfg1.i = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2
  %call.i = tail call fastcc ptr @__arm_v7s_alloc_table(i32 noundef 2, i32 noundef 2592, ptr noundef %data) #8
  %tobool.not.i244 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i244, label %if.then136.cleanup_crit_edge, label %if.end.i246

if.then136.cleanup_crit_edge:                     ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i246:                                      ; preds = %if.then136
  %shr.i = lshr i32 %size, 12
  %shr2.i = lshr i32 %iova, 12
  %and.i245 = and i32 %shr2.i, 255
  %71 = and i32 %70, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i340 = icmp eq i32 %71, 0
  %and9.i = lshr i32 %70, 1
  %72 = and i32 %and9.i, 4
  %prot.2.v.i = select i1 %cmp.i340, i32 16, i32 %72
  %73 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cfg1.i, align 8
  %and.i333 = and i32 %74, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i333)
  %tobool.not.i334 = icmp eq i32 %and.i333, 0
  %and1.i = and i32 %prot.2.v.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %spec.select.i335 = select i1 %tobool2.not.i, i32 196, i32 192
  br i1 %tobool.not.i334, label %if.then4.i, label %if.end.i246.if.end16.i_crit_edge

if.end.i246.if.end16.i_crit_edge:                 ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then4.i:                                       ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #10
  %75 = lshr i32 %70, 10
  %76 = and i32 %75, 32
  %77 = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool7.not.i.not = icmp eq i32 %77, 0
  %spec.select63.v.i = select i1 %tobool7.not.i.not, i32 1, i32 3
  %78 = or i32 %spec.select63.v.i, %76
  %79 = or i32 %78, %spec.select.i335
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then4.i, %if.end.i246.if.end16.i_crit_edge
  %pte.2.i = phi i32 [ %spec.select.i335, %if.end.i246.if.end16.i_crit_edge ], [ %79, %if.then4.i ]
  %shl.i336 = shl nsw i32 %pte.2.i, 4
  %80 = and i32 %70, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool18.not.i = icmp ne i32 %80, 0
  %not.brmerge.i = select i1 %tobool18.not.i, i1 %tobool.not.i334, i1 false
  %or24.i = zext i1 %not.brmerge.i to i32
  %pte.3.i = or i32 %shl.i336, %or24.i
  br i1 %tobool2.not.i, label %if.else.i337, label %if.then28.i

if.then28.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %or29.i = or i32 %pte.3.i, 4
  br label %arm_v7s_prot_to_pte.exit

if.else.i337:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %and30.i = and i32 %prot.2.v.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %or33.i = or i32 %pte.3.i, 12
  %spec.select64.i = select i1 %tobool31.not.i, i32 %pte.3.i, i32 %or33.i
  br label %arm_v7s_prot_to_pte.exit

arm_v7s_prot_to_pte.exit:                         ; preds = %if.else.i337, %if.then28.i
  %pte.4.i = phi i32 [ %or29.i, %if.then28.i ], [ %spec.select64.i, %if.else.i337 ]
  %or36.i = or i32 %pte.4.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %size)
  %cmp8.i = icmp ugt i32 %size, 8191
  br i1 %cmp8.i, label %if.then9.i, label %arm_v7s_prot_to_pte.exit.if.end11.i_crit_edge

arm_v7s_prot_to_pte.exit.if.end11.i_crit_edge:    ; preds = %arm_v7s_prot_to_pte.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then9.i:                                       ; preds = %arm_v7s_prot_to_pte.exit
  call void @__sanitizer_cov_trace_pc() #10
  %or4.i = and i32 %pte.4.i, 448
  %or5.i = or i32 %or4.i, 2
  %xor.i = xor i32 %or5.i, %or36.i
  %and.i331 = shl i32 %pte.4.i, 15
  %shl6.i = and i32 %and.i331, 32768
  %and3.i = shl i32 %pte.4.i, 6
  %shl7.i = and i32 %and3.i, 28672
  %or8.i = or i32 %shl7.i, %shl6.i
  %or9.i = or i32 %or8.i, %xor.i
  %or10.i = or i32 %or9.i, 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %arm_v7s_prot_to_pte.exit.if.end11.i_crit_edge
  %pte.0.i = phi i32 [ %or10.i, %if.then9.i ], [ %or36.i, %arm_v7s_prot_to_pte.exit.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %size)
  %cmp5.i316.not = icmp ult i32 %size, 4096
  %coherent_walk.i.i322 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 4
  %iommu_dev.i.i325 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 6
  %mul.i.i327 = shl nuw nsw i32 %shr.i, 2
  br label %for.body.i247

for.body.i247:                                    ; preds = %for.inc.i.for.body.i247_crit_edge, %if.end11.i
  %i.0.i365 = phi i32 [ 0, %if.end11.i ], [ %add.i, %for.inc.i.for.body.i247_crit_edge ]
  %pte.1.i362 = phi i32 [ %pte.0.i, %if.end11.i ], [ %add16.i, %for.inc.i.for.body.i247_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i365, i32 %and.i245)
  %cmp13.i = icmp eq i32 %i.0.i365, %and.i245
  br i1 %cmp13.i, label %for.body.i247.for.inc.i_crit_edge, label %if.end15.i

for.body.i247.for.inc.i_crit_edge:                ; preds = %for.body.i247
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end15.i:                                       ; preds = %for.body.i247
  %arrayidx.i248 = getelementptr i32, ptr %call.i, i32 %i.0.i365
  br i1 %cmp5.i316.not, label %if.end15.i.for.end.i324_crit_edge, label %if.end15.i.for.body.i321_crit_edge

if.end15.i.for.body.i321_crit_edge:               ; preds = %if.end15.i
  br label %for.body.i321

if.end15.i.for.end.i324_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i324

for.body.i321:                                    ; preds = %for.body.i321.for.body.i321_crit_edge, %if.end15.i.for.body.i321_crit_edge
  %i.06.i317 = phi i32 [ %inc.i319, %for.body.i321.for.body.i321_crit_edge ], [ 0, %if.end15.i.for.body.i321_crit_edge ]
  %arrayidx.i318 = getelementptr i32, ptr %arrayidx.i248, i32 %i.06.i317
  %81 = ptrtoint ptr %arrayidx.i318 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %pte.1.i362, ptr %arrayidx.i318, align 4
  %inc.i319 = add nuw nsw i32 %i.06.i317, 1
  %exitcond.not.i320 = icmp eq i32 %inc.i319, %shr.i
  br i1 %exitcond.not.i320, label %for.body.i321.for.end.i324_crit_edge, label %for.body.i321.for.body.i321_crit_edge

for.body.i321.for.body.i321_crit_edge:            ; preds = %for.body.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i321

for.body.i321.for.end.i324_crit_edge:             ; preds = %for.body.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i324

for.end.i324:                                     ; preds = %for.body.i321.for.end.i324_crit_edge, %if.end15.i.for.end.i324_crit_edge
  %82 = ptrtoint ptr %coherent_walk.i.i322 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %coherent_walk.i.i322, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.i.i323 = icmp eq i8 %83, 0
  br i1 %tobool.not.i.i323, label %if.end.i.i328, label %for.end.i324.for.inc.i_crit_edge

for.end.i324.for.inc.i_crit_edge:                 ; preds = %for.end.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i.i328:                                    ; preds = %for.end.i324
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %iommu_dev.i.i325 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %iommu_dev.i.i325, align 8
  %86 = ptrtoint ptr %arrayidx.i248 to i32
  %call.i.i.i.i326 = tail call i32 @__virt_to_phys(i32 noundef %86) #8
  tail call void @dma_sync_single_for_device(ptr noundef %85, i32 noundef %call.i.i.i.i326, i32 noundef %mul.i.i327, i32 noundef 1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i328, %for.end.i324.for.inc.i_crit_edge, %for.body.i247.for.inc.i_crit_edge
  %add.i = add i32 %i.0.i365, %shr.i
  %add16.i = add i32 %pte.1.i362, %size
  %cmp12.i = icmp slt i32 %add.i, 256
  br i1 %cmp12.i, label %for.inc.i.for.body.i247_crit_edge, label %for.end.i249

for.inc.i.for.body.i247_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i247

for.end.i249:                                     ; preds = %for.inc.i
  %87 = ptrtoint ptr %call.i to i32
  %call.i8.i = tail call i32 @__virt_to_phys(i32 noundef %87) #8
  %88 = ptrtoint ptr %cfg1.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cfg1.i, align 8
  %and.i308 = and i32 %89, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308)
  %tobool.not.i309 = icmp eq i32 %and.i308, 0
  %spec.select.v.i = select i1 %tobool.not.i309, i32 1, i32 9
  %spec.select.i = or i32 %spec.select.v.i, %call.i8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %for.end.i249
  %90 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %add.ptr, i32 %70, i32 %spec.select.i) #8, !srcloc !58
  %asmresult.i.i = extractvalue { i32, i32 } %90, 0
  %tobool.not.i.i310 = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i.i310, label %__cmpxchg.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

__cmpxchg.exit.i:                                 ; preds = %do.body.i.i
  %91 = ptrtoint ptr %coherent_walk.i.i322 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %coherent_walk.i.i322, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i9.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i9.i, label %if.end.i.i314, label %__cmpxchg.exit.i.arm_v7s_install_table.exit_crit_edge

__cmpxchg.exit.i.arm_v7s_install_table.exit_crit_edge: ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %arm_v7s_install_table.exit

if.end.i.i314:                                    ; preds = %__cmpxchg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %iommu_dev.i.i325 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %iommu_dev.i.i325, align 8
  %95 = ptrtoint ptr %add.ptr to i32
  %call.i.i.i.i313 = tail call i32 @__virt_to_phys(i32 noundef %95) #8
  tail call void @dma_sync_single_for_device(ptr noundef %94, i32 noundef %call.i.i.i.i313, i32 noundef 4, i32 noundef 1) #8
  br label %arm_v7s_install_table.exit

arm_v7s_install_table.exit:                       ; preds = %if.end.i.i314, %__cmpxchg.exit.i.arm_v7s_install_table.exit_crit_edge
  %asmresult1.i.i = extractvalue { i32, i32 } %90, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult1.i.i, i32 %70)
  %cmp18.not.i = icmp eq i32 %asmresult1.i.i, %70
  br i1 %cmp18.not.i, label %if.end26.i, label %if.then19.i

if.then19.i:                                      ; preds = %arm_v7s_install_table.exit
  %96 = ptrtoint ptr %coherent_walk.i.i322 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %coherent_walk.i.i322, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i300 = icmp eq i8 %97, 0
  br i1 %tobool.not.i300, label %if.then.i303, label %if.then19.i.__arm_v7s_free_table.exit307_crit_edge

if.then19.i.__arm_v7s_free_table.exit307_crit_edge: ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__arm_v7s_free_table.exit307

if.then.i303:                                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %iommu_dev.i.i325 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %iommu_dev.i.i325, align 8
  %call.i.i.i302 = tail call i32 @__virt_to_phys(i32 noundef %87) #8
  tail call void @dma_unmap_page_attrs(ptr noundef %99, i32 noundef %call.i.i.i302, i32 noundef 1024, i32 noundef 1, i32 noundef 0) #8
  br label %__arm_v7s_free_table.exit307

__arm_v7s_free_table.exit307:                     ; preds = %if.then.i303, %if.then19.i.__arm_v7s_free_table.exit307_crit_edge
  %l2_tables.i305 = getelementptr inbounds %struct.arm_v7s_io_pgtable, ptr %data, i32 0, i32 2
  %100 = ptrtoint ptr %l2_tables.i305 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %l2_tables.i305, align 4
  tail call void @kmem_cache_free(ptr noundef %101, ptr noundef nonnull %call.i) #8
  %and20.i = and i32 %asmresult1.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and20.i)
  %cmp21.i = icmp eq i32 %and20.i, 1
  br i1 %cmp21.i, label %iopte_deref.exit295, label %__arm_v7s_free_table.exit307.cleanup_crit_edge

__arm_v7s_free_table.exit307.cleanup_crit_edge:   ; preds = %__arm_v7s_free_table.exit307
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

iopte_deref.exit295:                              ; preds = %__arm_v7s_free_table.exit307
  call void @__sanitizer_cov_trace_pc() #10
  %and9.i.i294 = and i32 %asmresult1.i.i, -1024
  %102 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i294, i32 -2130706432, i32 8454144) #12, !srcloc !54
  %103 = inttoptr i32 %102 to ptr
  %call25.i = tail call fastcc i32 @__arm_v7s_unmap(ptr noundef %data, ptr noundef %gather, i32 noundef %iova, i32 noundef %size, i32 noundef 2, ptr noundef %103) #8
  br label %cleanup

if.end26.i:                                       ; preds = %arm_v7s_install_table.exit
  %tlb.i273 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 2, i32 5
  %104 = ptrtoint ptr %tlb.i273 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tlb.i273, align 4
  %tobool.not.i274 = icmp eq ptr %105, null
  br i1 %tobool.not.i274, label %if.end26.i.cleanup_crit_edge, label %land.lhs.true.i277

if.end26.i.cleanup_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i277:                               ; preds = %if.end26.i
  %tlb_add_page.i275 = getelementptr inbounds %struct.iommu_flush_ops, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %tlb_add_page.i275 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tlb_add_page.i275, align 4
  %tobool3.not.i276 = icmp eq ptr %107, null
  br i1 %tobool3.not.i276, label %land.lhs.true.i277.cleanup_crit_edge, label %if.then.i279

land.lhs.true.i277.cleanup_crit_edge:             ; preds = %land.lhs.true.i277
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i279:                                     ; preds = %land.lhs.true.i277
  call void @__sanitizer_cov_trace_pc() #10
  %cookie.i278 = getelementptr inbounds %struct.io_pgtable, ptr %data, i32 0, i32 1
  %108 = ptrtoint ptr %cookie.i278 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cookie.i278, align 4
  tail call void %107(ptr noundef %gather, i32 noundef %iova, i32 noundef %size, ptr noundef %109) #8
  br label %cleanup

if.else.i.i.i262:                                 ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %lvl)
  %cmp5.i.i.i258 = icmp eq i32 %lvl, 2
  %and7.i.i.i259 = and i32 %70, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i.i259)
  %tobool8.not.i.i.i260 = icmp eq i32 %and7.i.i.i259, 0
  %or.cond2.i.i261 = and i1 %cmp5.i.i.i258, %tobool8.not.i.i.i260
  %spec.select = select i1 %or.cond2.i.i261, i32 -65536, i32 -4096
  br label %iopte_deref.exit272

iopte_deref.exit272:                              ; preds = %if.else.i.i.i262, %land.lhs.true131.iopte_deref.exit272_crit_edge
  %mask.0.i.i270 = phi i32 [ -1024, %land.lhs.true131.iopte_deref.exit272_crit_edge ], [ %spec.select, %if.else.i.i.i262 ]
  %and9.i.i271 = and i32 %mask.0.i.i270, %70
  %110 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %and9.i.i271, i32 -2130706432, i32 8454144) #12, !srcloc !54
  %111 = inttoptr i32 %110 to ptr
  %add143 = add i32 %lvl, 1
  %call144 = tail call fastcc i32 @__arm_v7s_unmap(ptr noundef %data, ptr noundef %gather, i32 noundef %iova, i32 noundef %size, i32 noundef %add143, ptr noundef %111)
  br label %cleanup

cleanup:                                          ; preds = %iopte_deref.exit272, %if.then.i279, %land.lhs.true.i277.cleanup_crit_edge, %if.end26.i.cleanup_crit_edge, %iopte_deref.exit295, %__arm_v7s_free_table.exit307.cleanup_crit_edge, %if.then136.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %do.end58, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end58 ], [ %call144, %iopte_deref.exit272 ], [ %call25.i, %iopte_deref.exit295 ], [ 0, %if.then136.cleanup_crit_edge ], [ 0, %__arm_v7s_free_table.exit307.cleanup_crit_edge ], [ %size, %if.end26.i.cleanup_crit_edge ], [ %size, %land.lhs.true.i277.cleanup_crit_edge ], [ %size, %if.then.i279 ], [ %size, %if.end122.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pte) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_ignore(ptr noundef) local_unnamed_addr #3 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_io_pgtable_ops(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_io_pgtable_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dummy_tlb_flush_all(ptr nocapture noundef readnone %cookie) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cfg_cookie, align 4
  %cmp.not = icmp eq ptr %0, %cookie
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 878, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dummy_tlb_flush(i32 noundef %iova, i32 noundef %size, i32 noundef %granule, ptr nocapture noundef readnone %cookie) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cfg_cookie, align 4
  %cmp.not = icmp eq ptr %0, %cookie
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !56

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 884, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load ptr, ptr @cfg_cookie, align 4
  %pgsize_bitmap = getelementptr inbounds %struct.io_pgtable_cfg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pgsize_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pgsize_bitmap, align 4
  %and = and i32 %3, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %do.end38, label %if.end.if.end44_crit_edge, !prof !60

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 885, i32 noundef 9, ptr noundef null) #8
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dummy_tlb_add_page(ptr nocapture noundef readnone %gather, i32 noundef %iova, i32 noundef %granule, ptr nocapture noundef readnone %cookie) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dummy_tlb_flush(i32 noundef %iova, i32 noundef %granule, i32 noundef %granule, ptr noundef %cookie) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @io_pgtable_arm_v7s_init_fns, !1, !"io_pgtable_arm_v7s_init_fns", i1 false, i1 false}
!1 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 867, i32 28}
!2 = !{ptr @__initcall__kmod_io_pgtable_arm_v7s__233_1014_arm_v7s_do_selftests4, !3, !"__initcall__kmod_io_pgtable_arm_v7s__233_1014_arm_v7s_do_selftests4", i1 false, i1 false}
!3 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 1014, i32 1}
!4 = !{ptr @arm_v7s_alloc_pgtable.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 803, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 804, i32 38}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 533, i32 6}
!11 = distinct !{null, !12, !"selftest_running", i1 false, i1 false}
!12 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 162, i32 13}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 256, i32 3}
!15 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__arm_v7s_alloc_table._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @__arm_v7s_alloc_table._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 276, i32 2}
!22 = !{ptr @__arm_v7s_alloc_table._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @__arm_v7s_alloc_table._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 927, i32 3}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @arm_v7s_do_selftests._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @arm_v7s_do_selftests._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 936, i32 10}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 1011, i32 2}
!37 = !{ptr @arm_v7s_do_selftests._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @arm_v7s_do_selftests._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @dummy_tlb_ops, !40, !"dummy_tlb_ops", i1 false, i1 false}
!40 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 895, i32 37}
!41 = !{ptr @cfg_cookie, !42, !"cfg_cookie", i1 false, i1 false}
!42 = !{!"../drivers/iommu/io-pgtable-arm-v7s.c", i32 874, i32 31}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2154086978}
!53 = !{i8 0, i8 2}
!54 = !{i64 2148940271, i64 2148940294, i64 2148940326, i64 2148940358, i64 2148940396, i64 2148940426}
!55 = !{i32 0, i32 33}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2154048624}
!58 = !{i64 654172, i64 654193, i64 654216, i64 654235, i64 654254}
!59 = !{i64 2154060609}
!60 = !{!"branch_weights", i32 1, i32 2000}
