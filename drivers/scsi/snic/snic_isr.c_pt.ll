; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/snic_isr.c_pt.bc'
source_filename = "../drivers/scsi/snic/snic_isr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snic = type { %struct.list_head, [16 x i8], %struct.atomic_t, %struct.spinlock, ptr, i8, i8, %struct.snic_disc, ptr, %struct.vnic_dev_bar, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.snic_msix_entry], [3 x ptr], [4 x i8], [64 x %struct.spinlock], %struct.spinlock, %struct.list_head, i32, %struct.atomic_t, %struct.vnic_snic_config, %struct.work_struct, %struct.snic_fw_info, %struct.work_struct, %struct.work_struct, i32, %struct.atomic64_t, %struct.snic_stats, ptr, ptr, ptr, [60 x i8], [2 x %struct.vnic_cq], [8 x i8], [1 x %struct.vnic_wq], [1 x %struct.spinlock], [20 x i8], [3 x %struct.vnic_intr], [92 x i8] }
%struct.snic_disc = type { %struct.list_head, i32, %struct.mutex, i16, i8, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.snic_msix_entry = type { i32, [32 x i8], ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vnic_snic_config = type { i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i8 }
%struct.snic_fw_info = type { i32, i32, i32, i32, i32, i32, i32, i16, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.snic_stats = type { %struct.snic_io_stats, %struct.snic_abort_stats, %struct.snic_reset_stats, %struct.snic_fw_stats, %struct.snic_misc_stats, %struct.atomic64_t }
%struct.snic_io_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, [60 x %struct.atomic64_t], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_abort_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_reset_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_fw_stats = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.snic_misc_stats = type { i64, i64, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.vnic_cq = type { i32, ptr, ptr, %struct.vnic_dev_ring, i32, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_intr = type { i32, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vnic_intr_ctrl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@snic_request_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013snic:SNIC BUG(%s) at %s : %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snic_request_intr\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/snic/snic_isr.c\00", [35 x i8] zeroinitializer }, align 32
@snic_request_intr._entry_ptr = internal global ptr @snic_request_intr._entry, section ".printk_index", align 4
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"intr_mode != VNIC_DEV_INTR_MODE_MSIX\00", [59 x i8] zeroinitializer }, align 32
@snic_request_intr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%.11s-scsi-wq\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%.11s-io-cmpl\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%.11s-err-notify\00", [47 x i8] zeroinitializer }, align 32
@snic_request_intr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 146, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MSI-X: request_irq(%d) failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snic_request_intr._entry_ptr.11 = internal global ptr @snic_request_intr._entry.7, section ".printk_index", align 4
@snic_log_level = external dso_local local_unnamed_addr global i32, align 4
@snic_set_intr_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 181, ptr @.str.14, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Using MSI-X Interrupts\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snic_set_intr_mode\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snic_set_intr_mode._entry_ptr = internal global ptr @snic_set_intr_mode._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 109, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 119, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 125, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 131, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 143, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [32 x i8] c"../drivers/scsi/snic/snic_isr.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 181, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @snic_request_intr._entry, ptr @snic_request_intr._entry.7, ptr @snic_request_intr._entry_ptr, ptr @snic_request_intr._entry_ptr.11, ptr @snic_set_intr_mode._entry, ptr @snic_set_intr_mode._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_request_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_request_intr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snic_set_intr_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_free_intr(ptr nocapture noundef readonly %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %arrayidx = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef 0) #5
  %devid = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 0, i32 3
  %4 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devid, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %5) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1 = icmp eq i32 %7, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call.1 = tail call i32 @pci_irq_vector(ptr noundef %9, i32 noundef 1) #5
  %devid.1 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 1, i32 3
  %10 = ptrtoint ptr %devid.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devid.1, align 4
  %call3.1 = tail call ptr @free_irq(i32 noundef %call.1, ptr noundef %11) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.2 = icmp eq i32 %13, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev, align 8
  %call.2 = tail call i32 @pci_irq_vector(ptr noundef %15, i32 noundef 2) #5
  %devid.2 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 2, i32 3
  %16 = ptrtoint ptr %devid.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %devid.2, align 4
  %call3.2 = tail call ptr @free_irq(i32 noundef %call.2, ptr noundef %17) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_request_intr(ptr noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 13
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %call = tail call i32 @svnic_dev_get_intr_mode(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %entry.if.end42_crit_edge, label %do.end

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 109) #8
  %.b130 = load i1, ptr @snic_request_intr.__already_done, align 1
  br i1 %.b130, label %do.end.if.end42_crit_edge, label %if.then9, !prof !35

do.end.if.end42_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @snic_request_intr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 109, i32 noundef 9, ptr noundef null) #5
  br label %if.end42

if.end42:                                         ; preds = %if.then9, %do.end.if.end42_crit_edge, %entry.if.end42_crit_edge
  %devname = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 0, i32 1
  %name = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 1
  %call44 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %devname, ptr noundef nonnull @.str.4, ptr noundef %name)
  %isr = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 0, i32 2
  %2 = ptrtoint ptr %isr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @snic_isr_msix_wq, ptr %isr, align 4
  %devid = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 0, i32 3
  %3 = ptrtoint ptr %devid to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %snic, ptr %devid, align 4
  %devname51 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 1, i32 1
  %call55 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %devname51, ptr noundef nonnull @.str.5, ptr noundef %name)
  %isr58 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 1, i32 2
  %4 = ptrtoint ptr %isr58 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snic_isr_msix_io_cmpl, ptr %isr58, align 4
  %devid61 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 1, i32 3
  %5 = ptrtoint ptr %devid61 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %snic, ptr %devid61, align 4
  %devname64 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 2, i32 1
  %call68 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %devname64, ptr noundef nonnull @.str.6, ptr noundef %name)
  %isr71 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 2, i32 2
  %6 = ptrtoint ptr %isr71 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snic_isr_msix_err_notify, ptr %isr71, align 4
  %devid74 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 2, i32 3
  %7 = ptrtoint ptr %devid74 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %snic, ptr %devid74, align 4
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %call76 = tail call i32 @pci_irq_vector(ptr noundef %9, i32 noundef 0) #5
  %10 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isr, align 4
  %12 = ptrtoint ptr %devid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devid, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call76, ptr noundef %11, ptr noundef null, i32 noundef 0, ptr noundef %devname, ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool88.not = icmp eq i32 %call.i, 0
  br i1 %tobool88.not, label %if.end93, label %if.end42.do.end92_crit_edge

if.end42.do.end92_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end92

do.end92:                                         ; preds = %if.end93.1.do.end92_crit_edge, %if.end93.do.end92_crit_edge, %if.end42.do.end92_crit_edge
  %i.0132.lcssa = phi i32 [ 0, %if.end42.do.end92_crit_edge ], [ 1, %if.end93.do.end92_crit_edge ], [ 2, %if.end93.1.do.end92_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %if.end42.do.end92_crit_edge ], [ %call.i.1, %if.end93.do.end92_crit_edge ], [ %call.i.2, %if.end93.1.do.end92_crit_edge ]
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %14 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %15, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.9, ptr noundef %shost_gendev, ptr noundef nonnull @.str.8, i32 noundef %i.0132.lcssa, i32 noundef %call.i.lcssa) #8
  tail call void @snic_free_intr(ptr noundef %snic)
  br label %for.end

if.end93:                                         ; preds = %if.end42
  %arrayidx78 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 0
  %16 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %arrayidx78, align 4
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 8
  %call76.1 = tail call i32 @pci_irq_vector(ptr noundef %18, i32 noundef 1) #5
  %19 = ptrtoint ptr %isr58 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %isr58, align 4
  %21 = ptrtoint ptr %devid61 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %devid61, align 4
  %call.i.1 = tail call i32 @request_threaded_irq(i32 noundef %call76.1, ptr noundef %20, ptr noundef null, i32 noundef 0, ptr noundef %devname51, ptr noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool88.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool88.not.1, label %if.end93.1, label %if.end93.do.end92_crit_edge

if.end93.do.end92_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end92

if.end93.1:                                       ; preds = %if.end93
  %arrayidx78.1 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 1
  %23 = ptrtoint ptr %arrayidx78.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx78.1, align 4
  %24 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev, align 8
  %call76.2 = tail call i32 @pci_irq_vector(ptr noundef %25, i32 noundef 2) #5
  %26 = ptrtoint ptr %isr71 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %isr71, align 4
  %28 = ptrtoint ptr %devid74 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %devid74, align 4
  %call.i.2 = tail call i32 @request_threaded_irq(i32 noundef %call76.2, ptr noundef %27, ptr noundef null, i32 noundef 0, ptr noundef %devname64, ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool88.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool88.not.2, label %if.end93.2, label %if.end93.1.do.end92_crit_edge

if.end93.1.do.end92_crit_edge:                    ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end92

if.end93.2:                                       ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx78.2 = getelementptr %struct.snic, ptr %snic, i32 0, i32 21, i32 2
  %30 = ptrtoint ptr %arrayidx78.2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx78.2, align 4
  br label %for.end

for.end:                                          ; preds = %if.end93.2, %do.end92
  %ret.1 = phi i32 [ %call.i.lcssa, %do.end92 ], [ 0, %if.end93.2 ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_dev_get_intr_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_isr_msix_wq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  %misc = getelementptr inbounds %struct.snic, ptr %data, i32 0, i32 36, i32 4
  %1 = ptrtoint ptr %misc to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %misc, align 16
  %ack_isr_cnt = getelementptr inbounds %struct.snic, ptr %data, i32 0, i32 36, i32 4, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ack_isr_cnt, i32 noundef 8) #5
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %ack_isr_cnt) #5
  %call = tail call i32 @snic_wq_cmpl_handler(ptr noundef %data, i32 noundef -1) #5
  %and.i = and i32 %call, 65535
  %or3.i = or i32 %and.i, 196608
  %ctrl.i = getelementptr inbounds %struct.snic, ptr %data, i32 0, i32 46, i32 0, i32 2
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl.i, align 4
  %int_credit_return4.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %3, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i, i32 %4) #5, !srcloc !37
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_isr_msix_io_cmpl(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  %misc = getelementptr inbounds %struct.snic, ptr %data, i32 0, i32 36, i32 4
  %1 = ptrtoint ptr %misc to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %misc, align 16
  %cmpl_isr_cnt = getelementptr inbounds %struct.snic, ptr %data, i32 0, i32 36, i32 4, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmpl_isr_cnt, i32 noundef 8) #5
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %cmpl_isr_cnt) #5
  %call = tail call i32 @snic_fwcq_cmpl_handler(ptr noundef %data, i32 noundef -1) #5
  %and.i = and i32 %call, 65535
  %or3.i = or i32 %and.i, 196608
  %ctrl.i = getelementptr %struct.snic, ptr %data, i32 0, i32 46, i32 1, i32 2
  %2 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl.i, align 4
  %int_credit_return4.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %3, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i, i32 %4) #5, !srcloc !37
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snic_isr_msix_err_notify(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i32 %0 to i64
  %misc = getelementptr inbounds %struct.snic, ptr %data, i32 0, i32 36, i32 4
  %1 = ptrtoint ptr %misc to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %conv, ptr %misc, align 16
  %errnotify_isr_cnt = getelementptr inbounds %struct.snic, ptr %data, i32 0, i32 36, i32 4, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %errnotify_isr_cnt, i32 noundef 8) #5
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %errnotify_isr_cnt) #5
  %ctrl.i.i = getelementptr %struct.snic, ptr %data, i32 0, i32 46, i32 2, i32 2
  %2 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl.i.i, align 4
  %int_credits.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %3, i32 0, i32 10
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_credits.i.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %5 = and i32 %4, -65536
  %6 = or i32 %5, 768
  %7 = ptrtoint ptr %ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctrl.i.i, align 4
  %int_credit_return4.i.i = getelementptr inbounds %struct.vnic_intr_ctrl, ptr %8, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_credit_return4.i.i, i32 %6) #5, !srcloc !37
  tail call void @snic_log_q_error(ptr noundef %data) #5
  tail call void @snic_handle_link_event(ptr noundef %data) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snic_set_intr_mode(ptr nocapture noundef %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %wq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 14
  %0 = ptrtoint ptr %wq_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wq_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cq_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 15
  %2 = ptrtoint ptr %cq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3 = icmp ult i32 %3, 2
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %5, i32 noundef 3, i32 noundef 3, i32 noundef 4, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %wq_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %wq_count, align 16
  %7 = ptrtoint ptr %cq_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %cq_count, align 4
  %intr_count = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 16
  %8 = ptrtoint ptr %intr_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %intr_count, align 8
  %err_intr_offset = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 17
  %9 = ptrtoint ptr %err_intr_offset to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %err_intr_offset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snic_log_level to i32))
  %10 = load i32, ptr @snic_log_level, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6.cleanup_crit_edge, label %do.end17, !prof !35

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %shost = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 8
  %11 = ptrtoint ptr %shost to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %shost, align 16
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %12, i32 0, i32 49
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.14, ptr noundef %shost_gendev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink43 = phi i32 [ 3, %do.end17 ], [ 3, %if.end6.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %do.end17 ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  %vdev23 = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 13
  %13 = ptrtoint ptr %vdev23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vdev23, align 4
  tail call void @svnic_dev_set_intr_mode(ptr noundef %14, i32 noundef %.sink43) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_dev_set_intr_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snic_clear_intr_mode(ptr nocapture noundef readonly %snic) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 20
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %1) #5
  %vdev = getelementptr inbounds %struct.snic, ptr %snic, i32 0, i32 13
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  tail call void @svnic_dev_set_intr_mode(ptr noundef %3, i32 noundef 1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_wq_cmpl_handler(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snic_fwcq_cmpl_handler(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_log_q_error(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snic_handle_link_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/snic_isr.c", i32 109, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @snic_request_intr._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @snic_request_intr._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/snic/snic_isr.c", i32 119, i32 3}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/snic/snic_isr.c", i32 125, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/snic/snic_isr.c", i32 131, i32 3}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/snic/snic_isr.c", i32 143, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @snic_request_intr._entry.7, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @snic_request_intr._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/snic/snic_isr.c", i32 181, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @snic_set_intr_mode._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @snic_set_intr_mode._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2152525128}
!37 = !{i64 4983006}
!38 = !{i64 4983424}
!39 = !{i64 2152523773}
