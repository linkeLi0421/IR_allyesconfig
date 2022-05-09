; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufs-hwmon.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufs-hwmon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufs_stats = type { i32, i64, i32, i64, [15 x %struct.ufs_event_hist] }
%struct.ufs_event_hist = type { i32, [8 x i32], [8 x i64], i64 }
%struct.ufs_dev_cmd = type { i32, %struct.mutex, ptr, %struct.ufs_query }
%struct.ufs_query = type { %struct.ufs_query_req, ptr, %struct.ufs_query_res }
%struct.ufs_query_req = type { i8, %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i8, i8, i8, i8, i16, i16, i32, [2 x i32] }
%struct.ufs_query_res = type { i8, %struct.utp_upiu_query }
%struct.ufs_dev_info = type { i8, i8, i8, i16, ptr, i16, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ufs_vreg_info = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_pwr_mode_info = type { i8, %struct.ufs_pa_layer_attr }
%struct.ufs_clk_gating = type { %struct.delayed_work, %struct.work_struct, i32, i32, i8, %struct.device_attribute, %struct.device_attribute, i8, i8, i32, ptr }
%struct.ufs_clk_scaling = type { i32, i32, i64, i64, %struct.device_attribute, %struct.ufs_saved_pwr_info, ptr, %struct.work_struct, %struct.work_struct, i32, i8, i8, i8, i8, i8 }
%struct.ufs_saved_pwr_info = type { %struct.ufs_pa_layer_attr, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ufs_hwmon_data = type { ptr, i8 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ufs\00", [28 x i8] zeroinitializer }, align 32
@ufs_hwmon_hba_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ufs_hwmon_ops, ptr @ufs_hwmon_info }, [24 x i8] zeroinitializer }, align 32
@ufs_hwmon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to instantiate hwmon device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ufs_hwmon_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/ufs/ufs-hwmon.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ufs_hwmon_probe._entry_ptr = internal global ptr @ufs_hwmon_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ufs_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ufs_hwmon_is_visible, ptr @ufs_hwmon_read, ptr null, ptr @ufs_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@ufs_hwmon_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.6, ptr null], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 523, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@switch.table.ufs_hwmon_is_visible = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 420, i16 292, i16 0, i16 292, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 9]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 177, i32 47 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"ufs_hwmon_hba_info\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 159, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 179, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"ufs_hwmon_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 153, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"ufs_hwmon_info\00", align 1
@___asan_gen_.35 = private constant [32 x i8] c"../drivers/scsi/ufs/ufs-hwmon.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 148, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.39 = private unnamed_addr constant [34 x i8] c"switch.table.ufs_hwmon_is_visible\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @ufs_hwmon_probe._entry, ptr @ufs_hwmon_probe._entry_ptr, ptr @.str, ptr @ufs_hwmon_hba_info, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ufs_hwmon_ops, ptr @ufs_hwmon_info, ptr @.compoundliteral, ptr @.compoundliteral.6, ptr @switch.table.ufs_hwmon_is_visible], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hwmon_hba_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hwmon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_hwmon_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ufs_hwmon_is_visible to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_hwmon_probe(ptr noundef %hba, i8 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %hba, ptr %call7.i.i, align 8
  %mask3 = getelementptr inbounds %struct.ufs_hwmon_data, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %mask3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mask, ptr %mask3, align 4
  %call4 = tail call ptr @hwmon_device_register_with_info(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @ufs_hwmon_hba_info, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hwmon_device = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 10
  %5 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %hwmon_device, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_hwmon_remove(ptr nocapture noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_device = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 10
  %0 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon_device, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  tail call void @hwmon_device_unregister(ptr noundef nonnull %1) #6
  %4 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %hwmon_device, align 8
  tail call void @kfree(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufs_hwmon_notify_event(ptr nocapture noundef readonly %hba, i8 noundef zeroext %ee_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwmon_device = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 10
  %0 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwmon_device, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.end

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end:                                           ; preds = %entry
  %conv = zext i8 %ee_mask to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @hwmon_notify_event(ptr noundef nonnull %1, i32 noundef 1, i32 noundef 16, i32 noundef 0) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %and6 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end11_crit_edge, label %if.then8

if.end4.if.end11_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hwmon_device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_device, align 8
  %call10 = tail call i32 @hwmon_notify_event(ptr noundef %3, i32 noundef 1, i32 noundef 15, i32 noundef 0) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end4.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmon_notify_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ufs_hwmon_is_visible(ptr nocapture noundef readnone %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %0 = icmp ult i32 %attr, 10
  %or.cond = and i1 %cmp.not, %0
  br i1 %or.cond, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [10 x i16], ptr @switch.table.ufs_hwmon_is_visible, i32 0, i32 %attr
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %value.i42 = alloca i32, align 4
  %value.i33 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %ee_mask.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shutting_down.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb6
    i32 3, label %sw.bb8
    i32 1, label %sw.bb10
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %mask = getelementptr inbounds %struct.ufs_hwmon_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ee_mask.i) #6
  %11 = ptrtoint ptr %ee_mask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %ee_mask.i, align 4, !annotation !26
  %call.i = call i32 @ufshcd_query_attr(ptr noundef %3, i32 noundef 3, i32 noundef 13, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %ee_mask.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i29 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i29, label %if.end.i, label %sw.bb.ufs_read_temp_enable.exit_crit_edge

sw.bb.ufs_read_temp_enable.exit_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_read_temp_enable.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ee_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ee_mask.i, align 4
  %14 = and i8 %10, 24
  %and.i = zext i8 %14 to i32
  %15 = and i32 %13, %and.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %ufs_read_temp_enable.exit

ufs_read_temp_enable.exit:                        ; preds = %if.end.i, %sw.bb.ufs_read_temp_enable.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ee_mask.i) #6
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #6
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %value.i, align 4, !annotation !26
  %call.i30 = call i32 @ufshcd_query_attr(ptr noundef %3, i32 noundef 3, i32 noundef 25, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i32, label %sw.bb6.ufs_get_temp.exit_crit_edge

sw.bb6.ufs_get_temp.exit_crit_edge:               ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_get_temp.exit

if.end.i32:                                       ; preds = %sw.bb6
  %20 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %value.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %if.end.i32.ufs_get_temp.exit_crit_edge, label %if.end2.i

if.end.i32.ufs_get_temp.exit_crit_edge:           ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_get_temp.exit

if.end2.i:                                        ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #8
  %22 = mul i32 %21, 1000
  %mul.i = add i32 %22, -80000
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i, ptr %val, align 4
  br label %ufs_get_temp.exit

ufs_get_temp.exit:                                ; preds = %if.end2.i, %if.end.i32.ufs_get_temp.exit_crit_edge, %sw.bb6.ufs_get_temp.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end2.i ], [ %call.i30, %sw.bb6.ufs_get_temp.exit_crit_edge ], [ -61, %if.end.i32.ufs_get_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i33) #6
  %24 = ptrtoint ptr %value.i33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %value.i33, align 4, !annotation !26
  %call.i34 = call i32 @ufshcd_query_attr(ptr noundef %3, i32 noundef 3, i32 noundef 26, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value.i33) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool.not.i35 = icmp eq i32 %call.i34, 0
  br i1 %tobool.not.i35, label %if.end.i37, label %sw.bb8.ufs_get_temp.exit41_crit_edge

sw.bb8.ufs_get_temp.exit41_crit_edge:             ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_get_temp.exit41

if.end.i37:                                       ; preds = %sw.bb8
  %25 = ptrtoint ptr %value.i33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i36 = icmp eq i32 %26, 0
  br i1 %cmp.i36, label %if.end.i37.ufs_get_temp.exit41_crit_edge, label %if.end2.i39

if.end.i37.ufs_get_temp.exit41_crit_edge:         ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_get_temp.exit41

if.end2.i39:                                      ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %27 = mul i32 %26, 1000
  %mul.i38 = add i32 %27, -80000
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i38, ptr %val, align 4
  br label %ufs_get_temp.exit41

ufs_get_temp.exit41:                              ; preds = %if.end2.i39, %if.end.i37.ufs_get_temp.exit41_crit_edge, %sw.bb8.ufs_get_temp.exit41_crit_edge
  %retval.0.i40 = phi i32 [ 0, %if.end2.i39 ], [ %call.i34, %sw.bb8.ufs_get_temp.exit41_crit_edge ], [ -61, %if.end.i37.ufs_get_temp.exit41_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i33) #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i42) #6
  %29 = ptrtoint ptr %value.i42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %value.i42, align 4, !annotation !26
  %call.i43 = call i32 @ufshcd_query_attr(ptr noundef %3, i32 noundef 3, i32 noundef 24, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %value.i42) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool.not.i44, label %if.end.i46, label %sw.bb10.ufs_get_temp.exit50_crit_edge

sw.bb10.ufs_get_temp.exit50_crit_edge:            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_get_temp.exit50

if.end.i46:                                       ; preds = %sw.bb10
  %30 = ptrtoint ptr %value.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i45 = icmp eq i32 %31, 0
  br i1 %cmp.i45, label %if.end.i46.ufs_get_temp.exit50_crit_edge, label %if.end2.i48

if.end.i46.ufs_get_temp.exit50_crit_edge:         ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  br label %ufs_get_temp.exit50

if.end2.i48:                                      ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #8
  %32 = mul i32 %31, 1000
  %mul.i47 = add i32 %32, -80000
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul.i47, ptr %val, align 4
  br label %ufs_get_temp.exit50

ufs_get_temp.exit50:                              ; preds = %if.end2.i48, %if.end.i46.ufs_get_temp.exit50_crit_edge, %sw.bb10.ufs_get_temp.exit50_crit_edge
  %retval.0.i49 = phi i32 [ 0, %if.end2.i48 ], [ %call.i43, %sw.bb10.ufs_get_temp.exit50_crit_edge ], [ -61, %if.end.i46.ufs_get_temp.exit50_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i42) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %ufs_get_temp.exit50, %ufs_get_temp.exit41, %ufs_get_temp.exit, %ufs_read_temp_enable.exit, %if.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ %retval.0.i49, %ufs_get_temp.exit50 ], [ %retval.0.i40, %ufs_get_temp.exit41 ], [ %retval.0.i, %ufs_get_temp.exit ], [ %call.i, %ufs_read_temp_enable.exit ], [ -95, %if.end.sw.epilog_crit_edge ]
  %34 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i52 = getelementptr inbounds %struct.scsi_device, ptr %35, i32 0, i32 55
  %call.i.i53 = call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i52, i32 noundef 4) #6
  call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %err.0, %sw.epilog ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufs_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cmp.not = icmp eq i32 %attr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %switch = icmp ult i32 %val, 2
  %or.cond = and i1 %cmp.not, %switch
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %host_sem = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 51
  tail call void @down(ptr noundef %host_sem) #6
  %shutting_down.i = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %shutting_down.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shutting_down.i, align 1, !range !25
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end9, label %if.end5.cleanup.sink.split_crit_edge

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end5
  %sdev_ufs_device.i = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i = getelementptr inbounds %struct.scsi_device, ptr %7, i32 0, i32 55
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp11 = icmp eq i32 %val, 1
  %ee_usr_mask.i = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 47
  %ee_drv_mask.i = getelementptr inbounds %struct.ufs_hba, ptr %3, i32 0, i32 46
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @ufshcd_update_ee_control(ptr noundef %3, ptr noundef %ee_usr_mask.i, ptr noundef %ee_drv_mask.i, i16 noundef zeroext 24, i16 noundef zeroext 0) #6
  br label %if.end15

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call.i31 = tail call i32 @ufshcd_update_ee_control(ptr noundef %3, ptr noundef %ee_usr_mask.i, ptr noundef %ee_drv_mask.i, i16 noundef zeroext 0, i16 noundef zeroext 24) #6
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then12
  %err.0 = phi i32 [ %call.i, %if.then12 ], [ %call.i31, %if.else ]
  %8 = ptrtoint ptr %sdev_ufs_device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sdev_ufs_device.i, align 4
  %sdev_gendev.i33 = getelementptr inbounds %struct.scsi_device, ptr %9, i32 0, i32 55
  %call.i.i34 = tail call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev.i33, i32 noundef 4) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end15, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %err.0, %if.end15 ], [ -16, %if.end5.cleanup.sink.split_crit_edge ]
  tail call void @up(ptr noundef %host_sem) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_query_attr(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_update_ee_control(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufs-hwmon.c", i32 177, i32 47}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufs-hwmon.c", i32 179, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ufs_hwmon_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @ufs_hwmon_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @ufs_hwmon_hba_info, !11, !"ufs_hwmon_hba_info", i1 false, i1 false}
!11 = !{!"../drivers/scsi/ufs/ufs-hwmon.c", i32 159, i32 37}
!12 = !{ptr @ufs_hwmon_ops, !13, !"ufs_hwmon_ops", i1 false, i1 false}
!13 = !{!"../drivers/scsi/ufs/ufs-hwmon.c", i32 153, i32 31}
!14 = !{ptr @ufs_hwmon_info, !15, !"ufs_hwmon_info", i1 false, i1 false}
!15 = !{!"../drivers/scsi/ufs/ufs-hwmon.c", i32 148, i32 41}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i8 0, i8 2}
!26 = !{!"auto-init"}
