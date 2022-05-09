; ModuleID = '/llk/IR_all_yes/drivers/crypto/keembay/ocs-hcu.c_pt.bc'
source_filename = "../drivers/crypto/keembay/ocs-hcu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocs_hcu_dev = type { %struct.list_head, ptr, ptr, ptr, i32, %struct.completion, i8 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocs_hcu_dma_list = type { ptr, ptr, i32, i32 }
%struct.ocs_hcu_dma_entry = type { i32, i32, i32, i32 }
%struct.ocs_hcu_hash_ctx = type { i32, %struct.ocs_hcu_idata }
%struct.ocs_hcu_idata = type { i32, i32, [64 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@ocs_hcu_dma_list_add_tail._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Unexpected error: Invalid DMA address for OCS HCU\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ocs_hcu_dma_list_add_tail\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/crypto/keembay/ocs-hcu.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocs_hcu_dma_list_add_tail._entry_ptr = internal global ptr @ocs_hcu_dma_list_add_tail._entry, section ".printk_index", align 4
@__UNIQUE_ID_file230 = internal constant [60 x i8] c"keembay_ocs_hcu.file=drivers/crypto/keembay/keembay-ocs-hcu\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [28 x i8] c"keembay_ocs_hcu.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.ocs_hcu_hash_update = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 8, i32 16, i32 16, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.ocs_hcu_hash_finup = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 8, i32 16, i32 16, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.ocs_hcu_hash_finup.7 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 28, i32 48, i32 64, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.ocs_hcu_hash_final = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8, i32 8, i32 16, i32 16, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.ocs_hcu_hash_final.8 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 28, i32 48, i32 64, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.ocs_hcu_digest = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 28, i32 48, i32 64, i32 32], [44 x i8] zeroinitializer }, align 32
@switch.table.ocs_hcu_hmac = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 32, i32 28, i32 48, i32 64, i32 32], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.25 = private constant [36 x i8] c"../drivers/crypto/keembay/ocs-hcu.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 541, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 326, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant [33 x i8] c"switch.table.ocs_hcu_hash_update\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [32 x i8] c"switch.table.ocs_hcu_hash_finup\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [34 x i8] c"switch.table.ocs_hcu_hash_finup.7\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [32 x i8] c"switch.table.ocs_hcu_hash_final\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [34 x i8] c"switch.table.ocs_hcu_hash_final.8\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"switch.table.ocs_hcu_digest\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [26 x i8] c"switch.table.ocs_hcu_hmac\00", align 1
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @ocs_hcu_dma_list_add_tail._entry, ptr @ocs_hcu_dma_list_add_tail._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @switch.table.ocs_hcu_hash_update, ptr @switch.table.ocs_hcu_hash_finup, ptr @switch.table.ocs_hcu_hash_finup.7, ptr @switch.table.ocs_hcu_hash_final, ptr @switch.table.ocs_hcu_hash_final.8, ptr @switch.table.ocs_hcu_digest, ptr @switch.table.ocs_hcu_hmac], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocs_hcu_dma_list_add_tail._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocs_hcu_hash_update to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocs_hcu_hash_finup to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocs_hcu_hash_finup.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocs_hcu_hash_final to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocs_hcu_hash_final.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocs_hcu_digest to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocs_hcu_hmac to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocs_hcu_dma_list_alloc(ptr nocapture noundef readonly %hcu_dev, i32 noundef %max_nents) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %mul = shl i32 %max_nents, 4
  %dma_addr = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %call7.i, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %mul, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #7
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %call7.i, align 8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %max_nents6 = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %max_nents6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %max_nents, ptr %max_nents6, align 4
  %tail = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %call7.i, i32 0, i32 1
  %5 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end5 ], [ null, %if.then4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ocs_hcu_dma_list_free(ptr nocapture noundef readonly %hcu_dev, ptr noundef %dma_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dma_list, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %max_nents = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %dma_list, i32 0, i32 3
  %2 = ptrtoint ptr %max_nents to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_nents, align 4
  %mul = shl i32 %3, 4
  %4 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_list, align 4
  %dma_addr = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %dma_list, i32 0, i32 2
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %1, i32 noundef %mul, ptr noundef %5, i32 noundef %7, i32 noundef 0) #7
  tail call void @kfree(ptr noundef nonnull %dma_list) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocs_hcu_dma_list_add_tail(ptr nocapture noundef readnone %hcu_dev, ptr noundef %dma_list, i32 noundef %addr, i32 noundef %len) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool2.not = icmp eq ptr %dma_list, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %tail = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %dma_list, i32 0, i32 1
  %0 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail, align 4
  %tobool8.not = icmp eq ptr %1, null
  br i1 %tobool8.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %if.end7
  %2 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_list, align 4
  %max_nents = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %dma_list, i32 0, i32 3
  %4 = ptrtoint ptr %max_nents to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.not = icmp eq i32 %5, 0
  br i1 %cmp.not.not, label %cond.end.cleanup_crit_edge, label %cond.end.if.end21_crit_edge

cond.end.if.end21_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.end.thread:                                  ; preds = %if.end7
  %add.ptr = getelementptr %struct.ocs_hcu_dma_entry, ptr %1, i32 1
  %6 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_list, align 4
  %sub.ptr.lhs.cast47 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast48 = ptrtoint ptr %7 to i32
  %sub.ptr.sub49 = sub i32 %sub.ptr.lhs.cast47, %sub.ptr.rhs.cast48
  %sub.ptr.div50 = ashr exact i32 %sub.ptr.sub49, 4
  %max_nents51 = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %dma_list, i32 0, i32 3
  %8 = ptrtoint ptr %max_nents51 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_nents51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div50, i32 %9)
  %cmp.not52 = icmp ult i32 %sub.ptr.div50, %9
  br i1 %cmp.not52, label %if.then14, label %cond.end.thread.cleanup_crit_edge

cond.end.thread.cleanup_crit_edge:                ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14:                                        ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %ll_flags = getelementptr inbounds %struct.ocs_hcu_dma_entry, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %ll_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ll_flags, align 4
  %and15 = and i32 %11, 2147483647
  store i32 %and15, ptr %ll_flags, align 4
  %dma_addr = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %dma_list, i32 0, i32 2
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 4
  %14 = ptrtoint ptr %dma_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_list, align 4
  %sub.ptr.rhs.cast18 = ptrtoint ptr %15 to i32
  %sub.ptr.sub19 = add i32 %13, %sub.ptr.lhs.cast47
  %add = sub i32 %sub.ptr.sub19, %sub.ptr.rhs.cast18
  %nxt_desc = getelementptr inbounds %struct.ocs_hcu_dma_entry, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %nxt_desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %nxt_desc, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %cond.end.if.end21_crit_edge
  %cond5359 = phi ptr [ %add.ptr, %if.then14 ], [ %3, %cond.end.if.end21_crit_edge ]
  %17 = ptrtoint ptr %cond5359 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %addr, ptr %cond5359, align 4
  %src_len = getelementptr inbounds %struct.ocs_hcu_dma_entry, ptr %cond5359, i32 0, i32 1
  %18 = ptrtoint ptr %src_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %len, ptr %src_len, align 4
  %ll_flags22 = getelementptr inbounds %struct.ocs_hcu_dma_entry, ptr %cond5359, i32 0, i32 3
  %19 = ptrtoint ptr %ll_flags22 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -2147483648, ptr %ll_flags22, align 4
  %nxt_desc23 = getelementptr inbounds %struct.ocs_hcu_dma_entry, ptr %cond5359, i32 0, i32 2
  %20 = ptrtoint ptr %nxt_desc23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %nxt_desc23, align 4
  %21 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond5359, ptr %tail, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %cond.end.thread.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %cond.end.cleanup_crit_edge ], [ -12, %cond.end.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ocs_hcu_hash_init(ptr noundef writeonly %ctx, i32 noundef %algo) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %algo, ptr %ctx, align 4
  %idata = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %idata to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %idata, align 4
  %msg_len_hi = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %msg_len_hi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %msg_len_hi, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_hcu_hash_update(ptr noundef %hcu_dev, ptr noundef %ctx, ptr noundef %dma_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hcu_dev, null
  %tobool1.not = icmp eq ptr %ctx, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %algo.off.i = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %algo.off.i)
  %switch.i = icmp ult i32 %algo.off.i, 5
  br i1 %switch.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef nonnull %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %io_base.i.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %2 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !25
  %shl.i = shl nuw nsw i32 %1, 16
  %spec.select.i = or i32 %shl.i, -1476395008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %7 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !25
  %idata = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false6:                                   ; preds = %if.end4
  %msg_len_hi = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %msg_len_hi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_len_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false6.if.end12_crit_edge, label %lor.lhs.false6.if.then9_crit_edge

lor.lhs.false6.if.then9_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false6.if.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %lor.lhs.false6.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctx, align 4
  %switch.tableidx = add i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 5
  br i1 %15, label %switch.lookup, label %if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge

if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_set_intermediate_data.exit

switch.lookup:                                    ; preds = %if.then9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ocs_hcu_hash_update, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %digest21.i = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %switch.lookup
  %i.018.i = phi i32 [ 0, %switch.lookup ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %digest21.i, i32 %i.018.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %20 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #7, !srcloc !25
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %switch.load
  br i1 %exitcond.not.i, label %do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_set_intermediate_data.exit

ocs_hcu_set_intermediate_data.exit:               ; preds = %do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge, %if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idata, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %25 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %26, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %msg_len_hi.i = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %msg_len_hi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_len_hi.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %31, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %29) #7, !srcloc !25
  br label %if.end12

if.end12:                                         ; preds = %ocs_hcu_set_intermediate_data.exit, %lor.lhs.false6.if.end12_crit_edge
  %call13 = tail call fastcc i32 @ocs_hcu_ll_dma_start(ptr noundef nonnull %hcu_dev, ptr noundef %dma_list, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctx, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %33, label %sw.default.i.i [
    i32 3, label %if.end16.ocs_hcu_num_chains.exit.i_crit_edge
    i32 2, label %if.end16.ocs_hcu_num_chains.exit.i_crit_edge47
    i32 6, label %if.end16.ocs_hcu_num_chains.exit.i_crit_edge48
    i32 4, label %if.end16.sw.bb1.i.i34_crit_edge
    i32 5, label %if.end16.sw.bb1.i.i34_crit_edge49
  ]

if.end16.sw.bb1.i.i34_crit_edge49:                ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i34

if.end16.sw.bb1.i.i34_crit_edge:                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i.i34

if.end16.ocs_hcu_num_chains.exit.i_crit_edge48:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_num_chains.exit.i

if.end16.ocs_hcu_num_chains.exit.i_crit_edge47:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_num_chains.exit.i

if.end16.ocs_hcu_num_chains.exit.i_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_num_chains.exit.i

sw.bb1.i.i34:                                     ; preds = %if.end16.sw.bb1.i.i34_crit_edge, %if.end16.sw.bb1.i.i34_crit_edge49
  br label %ocs_hcu_num_chains.exit.i

sw.default.i.i:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_num_chains.exit.i

ocs_hcu_num_chains.exit.i:                        ; preds = %sw.default.i.i, %sw.bb1.i.i34, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge47, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge48
  %cmp33.i = phi i1 [ true, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge ], [ true, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge47 ], [ true, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge48 ], [ true, %sw.bb1.i.i34 ], [ false, %sw.default.i.i ]
  %retval.0.i.i = phi i32 [ 8, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge ], [ 8, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge47 ], [ 8, %if.end16.ocs_hcu_num_chains.exit.i_crit_edge48 ], [ 16, %sw.bb1.i.i34 ], [ 0, %sw.default.i.i ]
  %tobool.not.i35 = icmp eq ptr %idata, null
  br i1 %tobool.not.i35, label %ocs_hcu_num_chains.exit.i.cleanup_crit_edge, label %if.end.i36

ocs_hcu_num_chains.exit.i.cleanup_crit_edge:      ; preds = %ocs_hcu_num_chains.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i36:                                       ; preds = %ocs_hcu_num_chains.exit.i
  %digest.i = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 2
  %call1.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader.i, label %if.end.i36.cleanup_crit_edge

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end.i36
  br i1 %cmp33.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %retval.0.i.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i40, %for.body.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %36, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !31
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !32
  %arrayidx.i39 = getelementptr i32, ptr %digest.i, i32 %i.034.i
  %39 = ptrtoint ptr %arrayidx.i39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx.i39, align 4
  %inc.i40 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i41 = icmp eq i32 %inc.i40, %umax.i
  br i1 %exitcond.not.i41, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %40 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr10.i42 = getelementptr i8, ptr %41, i32 96
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i42) #7, !srcloc !31
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !33
  %44 = ptrtoint ptr %idata to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %idata, align 4
  %45 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %46, i32 100
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #7, !srcloc !31
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !34
  %msg_len_hi.i43 = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %msg_len_hi.i43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %msg_len_hi.i43, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %if.end.i36.cleanup_crit_edge, %ocs_hcu_num_chains.exit.i.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ 0, %for.end.i ], [ -22, %ocs_hcu_num_chains.exit.i.cleanup_crit_edge ], [ %call1.i, %if.end.i36.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocs_hcu_ll_dma_start(ptr noundef %hcu_dev, ptr noundef readonly %dma_list, i1 noundef zeroext %finalize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dma_list, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %io_base.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i, align 4
  br i1 %finalize, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !25
  %irq_err.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 6
  %2 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %irq_err.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %4, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 251658240) #7, !srcloc !25
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i49 = getelementptr i8, ptr %1, i32 1152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 -1) #7, !srcloc !25
  %irq_err.i50 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 6
  %5 = ptrtoint ptr %irq_err.i50 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %irq_err.i50, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !36
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base.i, align 4
  %add.ptr4.i51 = getelementptr i8, ptr %7, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i51, i32 -50266112) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %9, i32 1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 16777216) #7, !srcloc !25
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %irq_done = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 5
  %10 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %irq_done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %dma_addr = getelementptr inbounds %struct.ocs_hcu_dma_list, ptr %dma_list, i32 0, i32 2
  %11 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_addr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %io_base = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_base, align 4
  %add.ptr8 = getelementptr i8, ptr %17, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 4
  %add.ptr13 = getelementptr i8, ptr %19, i32 1036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %add.ptr18 = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 16777216) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 4
  %add.ptr23 = getelementptr i8, ptr %23, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 242) #7, !srcloc !25
  br i1 %finalize, label %do.body26, label %if.end3.if.end31_crit_edge

if.end3.if.end31_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.body26:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base, align 4
  %add.ptr30 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 33554432) #7, !srcloc !25
  br label %if.end31

if.end31:                                         ; preds = %do.body26, %if.end3.if.end31_crit_edge
  %call.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_done) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.ocs_hcu_wait_and_disable_irq.exit_crit_edge

if.end31.ocs_hcu_wait_and_disable_irq.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_wait_and_disable_irq.exit

if.end.i:                                         ; preds = %if.end31
  %irq_err.i52 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 6
  %26 = ptrtoint ptr %irq_err.i52 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %irq_err.i52, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool1.not.i = icmp eq i8 %27, 0
  br i1 %tobool1.not.i, label %if.end.i.ocs_hcu_wait_and_disable_irq.exit_crit_edge, label %if.then2.i

if.end.i.ocs_hcu_wait_and_disable_irq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_wait_and_disable_irq.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %irq_err.i52 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %irq_err.i52, align 4
  br label %ocs_hcu_wait_and_disable_irq.exit

ocs_hcu_wait_and_disable_irq.exit:                ; preds = %if.then2.i, %if.end.i.ocs_hcu_wait_and_disable_irq.exit_crit_edge, %if.end31.ocs_hcu_wait_and_disable_irq.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i, %if.end31.ocs_hcu_wait_and_disable_irq.exit_crit_edge ], [ -5, %if.then2.i ], [ 0, %if.end.i.ocs_hcu_wait_and_disable_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %32, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !25
  br label %cleanup

cleanup:                                          ; preds = %ocs_hcu_wait_and_disable_irq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %rc.0.i, %ocs_hcu_wait_and_disable_irq.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_hcu_hash_finup(ptr noundef %hcu_dev, ptr noundef readonly %ctx, ptr noundef %dma_list, ptr noundef writeonly %dgst, i32 noundef %dgst_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hcu_dev, null
  %tobool1.not = icmp eq ptr %ctx, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %algo.off.i = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %algo.off.i)
  %switch.i = icmp ult i32 %algo.off.i, 5
  br i1 %switch.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef nonnull %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %io_base.i.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %2 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !25
  %shl.i = shl nuw nsw i32 %1, 16
  %spec.select.i = or i32 %shl.i, -1476395008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %7 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !25
  %idata = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false6:                                   ; preds = %if.end4
  %msg_len_hi = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %msg_len_hi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_len_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false6.if.end12_crit_edge, label %lor.lhs.false6.if.then9_crit_edge

lor.lhs.false6.if.then9_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false6.if.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %lor.lhs.false6.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctx, align 4
  %switch.tableidx = add i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 5
  br i1 %15, label %switch.lookup, label %if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge

if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_set_intermediate_data.exit

switch.lookup:                                    ; preds = %if.then9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ocs_hcu_hash_finup, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %digest21.i = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %switch.lookup
  %i.018.i = phi i32 [ 0, %switch.lookup ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %digest21.i, i32 %i.018.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %20 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #7, !srcloc !25
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %switch.load
  br i1 %exitcond.not.i, label %do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_set_intermediate_data.exit

ocs_hcu_set_intermediate_data.exit:               ; preds = %do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge, %if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idata, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %25 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %26, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %msg_len_hi.i = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %msg_len_hi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_len_hi.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %31, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %29) #7, !srcloc !25
  br label %if.end12

if.end12:                                         ; preds = %ocs_hcu_set_intermediate_data.exit, %lor.lhs.false6.if.end12_crit_edge
  %call13 = tail call fastcc i32 @ocs_hcu_ll_dma_start(ptr noundef nonnull %hcu_dev, ptr noundef %dma_list, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %tobool.not.i32 = icmp eq ptr %dgst, null
  br i1 %tobool.not.i32, label %if.end16.cleanup_crit_edge, label %if.end.i33

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i33:                                       ; preds = %if.end16
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ctx, align 4
  %switch.tableidx44 = add i32 %33, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx44)
  %34 = icmp ult i32 %switch.tableidx44, 5
  br i1 %34, label %switch.lookup43, label %if.end.i33.ocs_hcu_digest_size.exit.i_crit_edge

if.end.i33.ocs_hcu_digest_size.exit.i_crit_edge:  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_digest_size.exit.i

switch.lookup43:                                  ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep45 = getelementptr inbounds [5 x i32], ptr @switch.table.ocs_hcu_hash_finup.7, i32 0, i32 %switch.tableidx44
  %35 = ptrtoint ptr %switch.gep45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load46 = load i32, ptr %switch.gep45, align 4
  br label %ocs_hcu_digest_size.exit.i

ocs_hcu_digest_size.exit.i:                       ; preds = %switch.lookup43, %if.end.i33.ocs_hcu_digest_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load46, %switch.lookup43 ], [ 0, %if.end.i33.ocs_hcu_digest_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %dgst_len)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %dgst_len
  br i1 %cmp.not.i, label %if.end2.i, label %ocs_hcu_digest_size.exit.i.cleanup_crit_edge

ocs_hcu_digest_size.exit.i.cleanup_crit_edge:     ; preds = %ocs_hcu_digest_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %ocs_hcu_digest_size.exit.i
  %call3.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dgst_len)
  %cmp719.not.i = icmp ult i32 %dgst_len, 4
  br i1 %cmp719.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %div18.i = lshr i32 %dgst_len, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i38, %for.body.i.for.body.i_crit_edge ]
  %36 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #7, !srcloc !31
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %arrayidx.i37 = getelementptr i32, ptr %dgst, i32 %i.020.i
  %40 = ptrtoint ptr %arrayidx.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.i37, align 4
  %inc.i38 = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, %div18.i
  br i1 %exitcond.not.i39, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge ], [ %call3.i, %if.end2.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_hcu_hash_final(ptr noundef %hcu_dev, ptr noundef readonly %ctx, ptr noundef writeonly %dgst, i32 noundef %dgst_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %hcu_dev, null
  %tobool1.not = icmp eq ptr %ctx, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctx, align 4
  %algo.off.i = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %algo.off.i)
  %switch.i = icmp ult i32 %algo.off.i, 5
  br i1 %switch.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef nonnull %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end4, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %io_base.i.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %2 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !25
  %shl.i = shl nuw nsw i32 %1, 16
  %spec.select.i = or i32 %shl.i, -1476395008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %7 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !25
  %idata = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %idata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %if.end4.if.then9_crit_edge

if.end4.if.then9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false6:                                   ; preds = %if.end4
  %msg_len_hi = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %msg_len_hi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_len_hi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool8.not = icmp eq i32 %12, 0
  br i1 %tobool8.not, label %lor.lhs.false6.if.end12_crit_edge, label %lor.lhs.false6.if.then9_crit_edge

lor.lhs.false6.if.then9_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false6.if.end12_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %lor.lhs.false6.if.then9_crit_edge, %if.end4.if.then9_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ctx, align 4
  %switch.tableidx = add i32 %14, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 5
  br i1 %15, label %switch.lookup, label %if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge

if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_set_intermediate_data.exit

switch.lookup:                                    ; preds = %if.then9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ocs_hcu_hash_final, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %digest21.i = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %switch.lookup
  %i.018.i = phi i32 [ 0, %switch.lookup ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %arrayidx.i = getelementptr i32, ptr %digest21.i, i32 %i.018.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  %20 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #7, !srcloc !25
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %switch.load
  br i1 %exitcond.not.i, label %do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_set_intermediate_data.exit

ocs_hcu_set_intermediate_data.exit:               ; preds = %do.body.i.ocs_hcu_set_intermediate_data.exit_crit_edge, %if.then9.ocs_hcu_set_intermediate_data.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %idata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idata, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %25 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %26, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %msg_len_hi.i = getelementptr inbounds %struct.ocs_hcu_hash_ctx, ptr %ctx, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %msg_len_hi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msg_len_hi.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %31, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %29) #7, !srcloc !25
  br label %if.end12

if.end12:                                         ; preds = %ocs_hcu_set_intermediate_data.exit, %lor.lhs.false6.if.end12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %33, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36, i32 -1) #7, !srcloc !25
  %irq_err.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 6
  %34 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %irq_err.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 251658240) #7, !srcloc !25
  %irq_done = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 5
  %37 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %irq_done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #7, !srcloc !25
  %call.i37 = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_done) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool.not.i38 = icmp eq i32 %call.i37, 0
  br i1 %tobool.not.i38, label %if.end.i40, label %if.end12.ocs_hcu_wait_and_disable_irq.exit_crit_edge

if.end12.ocs_hcu_wait_and_disable_irq.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_wait_and_disable_irq.exit

if.end.i40:                                       ; preds = %if.end12
  %40 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %irq_err.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool1.not.i = icmp eq i8 %41, 0
  br i1 %tobool1.not.i, label %if.end.i40.ocs_hcu_wait_and_disable_irq.exit_crit_edge, label %if.then2.i

if.end.i40.ocs_hcu_wait_and_disable_irq.exit_crit_edge: ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_wait_and_disable_irq.exit

if.then2.i:                                       ; preds = %if.end.i40
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %irq_err.i, align 4
  br label %ocs_hcu_wait_and_disable_irq.exit

ocs_hcu_wait_and_disable_irq.exit:                ; preds = %if.then2.i, %if.end.i40.ocs_hcu_wait_and_disable_irq.exit_crit_edge, %if.end12.ocs_hcu_wait_and_disable_irq.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i37, %if.end12.ocs_hcu_wait_and_disable_irq.exit_crit_edge ], [ -5, %if.then2.i ], [ 0, %if.end.i40.ocs_hcu_wait_and_disable_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %44, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i42, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i.i43 = getelementptr i8, ptr %46, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i43, i32 0) #7, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool14.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool14.not, label %if.end16, label %ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge

ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge: ; preds = %ocs_hcu_wait_and_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %ocs_hcu_wait_and_disable_irq.exit
  %tobool.not.i44 = icmp eq ptr %dgst, null
  br i1 %tobool.not.i44, label %if.end16.cleanup_crit_edge, label %if.end.i45

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i45:                                       ; preds = %if.end16
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ctx, align 4
  %switch.tableidx56 = add i32 %48, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx56)
  %49 = icmp ult i32 %switch.tableidx56, 5
  br i1 %49, label %switch.lookup55, label %if.end.i45.ocs_hcu_digest_size.exit.i_crit_edge

if.end.i45.ocs_hcu_digest_size.exit.i_crit_edge:  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_digest_size.exit.i

switch.lookup55:                                  ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep57 = getelementptr inbounds [5 x i32], ptr @switch.table.ocs_hcu_hash_final.8, i32 0, i32 %switch.tableidx56
  %50 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %50)
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  br label %ocs_hcu_digest_size.exit.i

ocs_hcu_digest_size.exit.i:                       ; preds = %switch.lookup55, %if.end.i45.ocs_hcu_digest_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load58, %switch.lookup55 ], [ 0, %if.end.i45.ocs_hcu_digest_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %dgst_len)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %dgst_len
  br i1 %cmp.not.i, label %if.end2.i, label %ocs_hcu_digest_size.exit.i.cleanup_crit_edge

ocs_hcu_digest_size.exit.i.cleanup_crit_edge:     ; preds = %ocs_hcu_digest_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %ocs_hcu_digest_size.exit.i
  %call3.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dgst_len)
  %cmp719.not.i = icmp ult i32 %dgst_len, 4
  br i1 %cmp719.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %div18.i = lshr i32 %dgst_len, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i50, %for.body.i.for.body.i_crit_edge ]
  %51 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %52, i32 4
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #7, !srcloc !31
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %arrayidx.i49 = getelementptr i32, ptr %dgst, i32 %i.020.i
  %55 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx.i49, align 4
  %inc.i50 = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i50, %div18.i
  br i1 %exitcond.not.i51, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %rc.0.i, %ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge ], [ %call3.i, %if.end2.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_hcu_digest(ptr noundef %hcu_dev, i32 noundef %algo, ptr noundef %data, i32 noundef %data_len, ptr noundef writeonly %dgst, i32 noundef %dgst_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %algo.off.i = add i32 %algo, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %algo.off.i)
  %switch.i = icmp ult i32 %algo.off.i, 5
  br i1 %switch.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %io_base.i.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %2 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !25
  %shl.i = shl nuw nsw i32 %algo, 16
  %spec.select.i = or i32 %shl.i, -1476395008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %7 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #7, !srcloc !25
  %call.i55 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %data) #7
  br i1 %call.i55, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !48

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %12, %if.end.i.i ], [ %10, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef -1) #7
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %data, i32 noundef %data_len) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  %14 = ptrtoint ptr %data to i32
  %sub.i = add i32 %14, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %13, i32 %shr.i
  %and.i = and i32 %14, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %data_len, i32 noundef 1, i32 noundef 0) #7
  tail call void @debug_dma_mapping_error(ptr noundef %1, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end6

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %dma_map_single_attrs.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %16, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 -1) #7, !srcloc !25
  %irq_err.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 6
  %17 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %irq_err.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !35
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 251658240) #7, !srcloc !25
  %irq_done = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 5
  %20 = ptrtoint ptr %irq_done to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %irq_done, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %22 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %data_len)
  %25 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr11 = getelementptr i8, ptr %26, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %24) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr16 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 16777216) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr21 = getelementptr i8, ptr %30, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 240) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr26 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 33554432) #7, !srcloc !25
  %call.i58 = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_done) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %tobool.not.i59 = icmp eq i32 %call.i58, 0
  br i1 %tobool.not.i59, label %if.end.i61, label %if.end6.ocs_hcu_wait_and_disable_irq.exit_crit_edge

if.end6.ocs_hcu_wait_and_disable_irq.exit_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_wait_and_disable_irq.exit

if.end.i61:                                       ; preds = %if.end6
  %33 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %irq_err.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool1.not.i = icmp eq i8 %34, 0
  br i1 %tobool1.not.i, label %if.end.i61.ocs_hcu_wait_and_disable_irq.exit_crit_edge, label %if.then2.i

if.end.i61.ocs_hcu_wait_and_disable_irq.exit_crit_edge: ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_wait_and_disable_irq.exit

if.then2.i:                                       ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %irq_err.i, align 4
  br label %ocs_hcu_wait_and_disable_irq.exit

ocs_hcu_wait_and_disable_irq.exit:                ; preds = %if.then2.i, %if.end.i61.ocs_hcu_wait_and_disable_irq.exit_crit_edge, %if.end6.ocs_hcu_wait_and_disable_irq.exit_crit_edge
  %rc.0.i = phi i32 [ %call.i58, %if.end6.ocs_hcu_wait_and_disable_irq.exit_crit_edge ], [ -5, %if.then2.i ], [ 0, %if.end.i61.ocs_hcu_wait_and_disable_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i63 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i63, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i.i64 = getelementptr i8, ptr %39, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i64, i32 0) #7, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i)
  %tobool28.not = icmp eq i32 %rc.0.i, 0
  br i1 %tobool28.not, label %if.end30, label %ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge

ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge: ; preds = %ocs_hcu_wait_and_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %ocs_hcu_wait_and_disable_irq.exit
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %call41.i, i32 noundef %data_len, i32 noundef 1, i32 noundef 0) #7
  %tobool.not.i65 = icmp eq ptr %dgst, null
  br i1 %tobool.not.i65, label %if.end30.cleanup_crit_edge, label %if.end.i66

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i66:                                       ; preds = %if.end30
  %switch.tableidx = add i32 %algo, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %40 = icmp ult i32 %switch.tableidx, 5
  br i1 %40, label %switch.lookup, label %if.end.i66.ocs_hcu_digest_size.exit.i_crit_edge

if.end.i66.ocs_hcu_digest_size.exit.i_crit_edge:  ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_digest_size.exit.i

switch.lookup:                                    ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ocs_hcu_digest, i32 0, i32 %switch.tableidx
  %41 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ocs_hcu_digest_size.exit.i

ocs_hcu_digest_size.exit.i:                       ; preds = %switch.lookup, %if.end.i66.ocs_hcu_digest_size.exit.i_crit_edge
  %retval.0.i.i67 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i66.ocs_hcu_digest_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i67, i32 %dgst_len)
  %cmp.not.i = icmp eq i32 %retval.0.i.i67, %dgst_len
  br i1 %cmp.not.i, label %if.end2.i, label %ocs_hcu_digest_size.exit.i.cleanup_crit_edge

ocs_hcu_digest_size.exit.i.cleanup_crit_edge:     ; preds = %ocs_hcu_digest_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %ocs_hcu_digest_size.exit.i
  %call3.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dgst_len)
  %cmp719.not.i = icmp ult i32 %dgst_len, 4
  br i1 %cmp719.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %div18.i = lshr i32 %dgst_len, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #7, !srcloc !31
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %arrayidx.i = getelementptr i32, ptr %dgst, i32 %i.020.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div18.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0.i, %ocs_hcu_wait_and_disable_irq.exit.cleanup_crit_edge ], [ -5, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ], [ -22, %if.end30.cleanup_crit_edge ], [ -22, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge ], [ %call3.i, %if.end2.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_hcu_hmac(ptr noundef %hcu_dev, i32 noundef %algo, ptr noundef readonly %key, i32 noundef %key_len, ptr noundef %dma_list, ptr noundef writeonly %dgst, i32 noundef %dgst_len) local_unnamed_addr #0 align 64 {
entry:
  %key_u32.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp ne ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_len)
  %cmp = icmp ne i32 %key_len, 0
  %or.cond.not = and i1 %tobool.not, %cmp
  %algo.off.i = add i32 %algo, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %algo.off.i)
  %switch.i = icmp ult i32 %algo.off.i, 5
  %or.cond42 = and i1 %switch.i, %or.cond.not
  br i1 %or.cond42, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call.i = tail call fastcc i32 @ocs_hcu_wait_busy(ptr noundef %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %io_base.i.i = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %0 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %3, i32 1156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #7, !srcloc !25
  %shl.i = shl nuw nsw i32 %algo, 16
  %spec.select.i = or i32 %shl.i, -1472200704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %5 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %key_u32.i) #7
  %7 = call ptr @memset(ptr %key_u32.i, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %key_len)
  %cmp.i = icmp ugt i32 %key_len, 64
  br i1 %cmp.i, label %ocs_hcu_write_key.exit, label %if.end.i25

if.end.i25:                                       ; preds = %if.end3
  %8 = call ptr @memcpy(ptr %key_u32.i, ptr %key, i32 %key_len)
  %add.ptr.i = getelementptr i8, ptr %key_u32.i, i32 %key_len
  %sub.i = sub nuw nsw i32 64, %key_len
  %9 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr.i) #7, !srcloc !54
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #7, !srcloc !25
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %if.end.i25
  %i.020.i = phi i32 [ 0, %if.end.i25 ], [ %inc.i, %do.body4.i.do.body4.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  call void @arm_heavy_mb() #7
  %sub7.i = sub nuw nsw i32 15, %i.020.i
  %arrayidx.i = getelementptr [16 x i32], ptr %key_u32.i, i32 0, i32 %sub7.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = call i32 @llvm.bswap.i32(i32 %13) #7
  %15 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %16, i32 12
  %mul.i = shl nuw nsw i32 %i.020.i, 2
  %add.ptr10.i = getelementptr i8, ptr %add.ptr9.i, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %14) #7, !srcloc !25
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end7, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body4.i

ocs_hcu_write_key.exit:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %key_u32.i) #7
  br label %cleanup

if.end7:                                          ; preds = %do.body4.i
  %17 = call ptr @memset(ptr %key_u32.i, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key_u32.i) #7, !srcloc !54
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %key_u32.i) #7
  %call8 = call fastcc i32 @ocs_hcu_ll_dma_start(ptr noundef %hcu_dev, ptr noundef %dma_list, i1 noundef zeroext true)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %19, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.1.i = getelementptr i8, ptr %21, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.2.i = getelementptr i8, ptr %23, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.3.i = getelementptr i8, ptr %25, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.3.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %26 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.4.i = getelementptr i8, ptr %27, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.4.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.5.i = getelementptr i8, ptr %29, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.5.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.6.i = getelementptr i8, ptr %31, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.6.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.7.i = getelementptr i8, ptr %33, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.7.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.8.i = getelementptr i8, ptr %35, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.8.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.9.i = getelementptr i8, ptr %37, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.9.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.10.i = getelementptr i8, ptr %39, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.10.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.11.i = getelementptr i8, ptr %41, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.11.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.12.i = getelementptr i8, ptr %43, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.12.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.13.i = getelementptr i8, ptr %45, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.13.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.14.i = getelementptr i8, ptr %47, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.14.i, i32 0) #7, !srcloc !25
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr1.15.i = getelementptr i8, ptr %49, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.15.i, i32 0) #7, !srcloc !25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %tobool.not.i29 = icmp eq ptr %dgst, null
  br i1 %tobool.not.i29, label %if.end11.cleanup_crit_edge, label %if.end.i30

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i30:                                       ; preds = %if.end11
  %switch.tableidx = add i32 %algo, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %50 = icmp ult i32 %switch.tableidx, 5
  br i1 %50, label %switch.lookup, label %if.end.i30.ocs_hcu_digest_size.exit.i_crit_edge

if.end.i30.ocs_hcu_digest_size.exit.i_crit_edge:  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %ocs_hcu_digest_size.exit.i

switch.lookup:                                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ocs_hcu_hmac, i32 0, i32 %switch.tableidx
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ocs_hcu_digest_size.exit.i

ocs_hcu_digest_size.exit.i:                       ; preds = %switch.lookup, %if.end.i30.ocs_hcu_digest_size.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i30.ocs_hcu_digest_size.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %dgst_len)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %dgst_len
  br i1 %cmp.not.i, label %if.end2.i, label %ocs_hcu_digest_size.exit.i.cleanup_crit_edge

ocs_hcu_digest_size.exit.i.cleanup_crit_edge:     ; preds = %ocs_hcu_digest_size.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %ocs_hcu_digest_size.exit.i
  %call3.i = call fastcc i32 @ocs_hcu_wait_busy(ptr noundef %hcu_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %if.end2.i.cleanup_crit_edge

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dgst_len)
  %cmp719.not.i = icmp ult i32 %dgst_len, 4
  br i1 %cmp719.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %div18.i = lshr i32 %dgst_len, 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i32 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i35, %for.body.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %53, i32 4
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #7, !srcloc !31
  %55 = call i32 @llvm.bswap.i32(i32 %54) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %arrayidx.i34 = getelementptr i32, ptr %dgst, i32 %i.020.i32
  %56 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx.i34, align 4
  %inc.i35 = add nuw nsw i32 %i.020.i32, 1
  %exitcond.not.i36 = icmp eq i32 %inc.i35, %div18.i
  br i1 %exitcond.not.i36, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %ocs_hcu_write_key.exit, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %ocs_hcu_write_key.exit ], [ %call8, %if.end7.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %ocs_hcu_digest_size.exit.i.cleanup_crit_edge ], [ %call3.i, %if.end2.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_hcu_irq_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.ocs_hcu_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !31
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #7, !srcloc !25
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 1152
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !31
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 1152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %8) #7, !srcloc !25
  %and = and i32 %3, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and16 = and i32 %9, 508
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond = select i1 %tobool.not, i1 %tobool17.not, i1 false
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq_err = getelementptr inbounds %struct.ocs_hcu_dev, ptr %dev_id, i32 0, i32 6
  %12 = ptrtoint ptr %irq_err to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %irq_err, align 4
  br label %complete

if.end:                                           ; preds = %entry
  %and18 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %and21 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond36 = select i1 %tobool19.not, i1 %tobool22.not, i1 false
  br i1 %or.cond36, label %if.end.cleanup_crit_edge, label %if.end.complete_crit_edge

if.end.complete_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %complete

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

complete:                                         ; preds = %if.end.complete_crit_edge, %if.then
  %irq_done = getelementptr inbounds %struct.ocs_hcu_dev, ptr %dev_id, i32 0, i32 5
  tail call void @complete(ptr noundef %irq_done) #7
  br label %cleanup

cleanup:                                          ; preds = %complete, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %complete ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocs_hcu_wait_busy(ptr nocapture noundef readonly %hcu_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #7
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 176) #7
  %io_base = getelementptr inbounds %struct.ocs_hcu_dev, ptr %hcu_dev, i32 0, i32 2
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not41 = icmp eq i32 %3, 0
  br i1 %tobool.not41, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 51, i32 noundef 200, i32 noundef 2) #7
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 88
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %7 = and i32 %6, 16777216
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then26.for.end.thread_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.then26.for.end.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 88
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  %11 = and i32 %10, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool30.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %12

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then26.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %12

12:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %13 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/keembay/ocs-hcu.c", i32 541, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ocs_hcu_dma_list_add_tail._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ocs_hcu_dma_list_add_tail._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_file230, !9, !"__UNIQUE_ID_file230", i1 false, i1 false}
!9 = !{!"../drivers/crypto/keembay/ocs-hcu.c", i32 840, i32 1}
!10 = !{ptr @__UNIQUE_ID_license231, !9, !"__UNIQUE_ID_license231", i1 false, i1 false}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!13 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2153996574}
!25 = !{i64 4807406}
!26 = !{i64 2153996976}
!27 = !{i64 2154000883}
!28 = !{i64 2153998932}
!29 = !{i64 2153999366}
!30 = !{i64 2153999824}
!31 = !{i64 4807824}
!32 = !{i64 2153997672}
!33 = !{i64 2153998187}
!34 = !{i64 2153998702}
!35 = !{i64 2153992544}
!36 = !{i64 2153994866}
!37 = !{i64 2153996095}
!38 = !{i64 2154003202}
!39 = !{i64 2154003654}
!40 = !{i64 2154004055}
!41 = !{i64 2154004562}
!42 = !{i64 2154005042}
!43 = !{i64 2154005555}
!44 = !{i8 0, i8 2}
!45 = !{i64 2154000565}
!46 = !{i64 2153991665}
!47 = !{i64 2154008618}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2154009271}
!50 = !{i64 2154009706}
!51 = !{i64 2154010234}
!52 = !{i64 2154010714}
!53 = !{i64 2154011227}
!54 = !{i64 2149216978}
!55 = !{i64 2154001863}
!56 = !{i64 2154002471}
!57 = !{i64 2154001300}
!58 = !{i64 2154012074}
!59 = !{i64 2154012303}
!60 = !{i64 2154013016}
!61 = !{i64 2154013247}
!62 = !{i64 2153990919}
!63 = !{i64 2153991429}
