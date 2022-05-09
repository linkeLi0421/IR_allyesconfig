; ModuleID = '/llk/IR_all_yes/drivers/scsi/csiostor/csio_isr.c_pt.bc'
source_filename = "../drivers/scsi/csiostor/csio_isr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.csio_hw = type { %struct.csio_sm, %struct.spinlock, %struct.csio_scsim, %struct.csio_wrm, ptr, ptr, i32, i32, [4 x [128 x %struct.csio_scsi_qset]], [4 x %struct.csio_scsi_cpu_info], i32, i32, %struct.csio_mgmtm, %struct.csio_mbm, i32, ptr, %struct.list_head, i32, i32, %struct.work_struct, %struct.list_head, %struct.list_head, [32 x i8], [16 x i8], [32 x i8], [32 x i8], [32 x i8], i32, i32, i32, i8, i16, i32, %struct.csio_vpd, i8, i32, i8, i8, i8, i8, i32, [4 x %struct.csio_pport], %struct.csio_hw_params, ptr, ptr, ptr, i32, i32, i32, i8, i8, %struct.csio_fcoe_res_info, ptr, [514 x %struct.csio_msix_entries], ptr, %struct.csio_hw_stats }
%struct.csio_sm = type { %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.csio_scsim = type { ptr, i8, i8, i16, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.csio_scsi_stats }
%struct.csio_scsi_stats = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_wrm = type { i32, ptr, i32, i32, [128 x ptr], i32, %struct.csio_sge }
%struct.csio_sge = type { i32, i32, i32, [16 x i32], [6 x i16], [4 x i8] }
%struct.csio_scsi_qset = type { i32, i32, i32 }
%struct.csio_scsi_cpu_info = type { i16 }
%struct.csio_mgmtm = type { ptr, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.csio_mgmtm_stats }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.csio_mgmtm_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_mbm = type { i32, i32, %struct.timer_list, ptr, %struct.list_head, %struct.list_head, ptr, i32, %struct.csio_mbm_stats }
%struct.csio_mbm_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.csio_vpd = type { i32, [17 x i8], [17 x i8], [17 x i8] }
%struct.csio_pport = type { i16, i16, i8, i8, i16, [6 x i8], i8, i8, i8, i8, %struct.link_config }
%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.csio_hw_params = type { i32, i32, %struct.pci_params, i32 }
%struct.pci_params = type { i16, i16, i32, i16, i8 }
%struct.csio_fcoe_res_info = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_msix_entries = type { ptr, [24 x i8] }
%struct.csio_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [15 x i32], i64, i32 }
%struct.csio_q = type { i16, i16, i16, i16, i32, ptr, ptr, i32, ptr, %union.anon.2, i32, i32, i32, %struct.csio_qstats, [44 x i8] }
%union.anon.2 = type { %struct.csio_iq, [500 x i8] }
%struct.csio_iq = type { i16, i16, i16, i32, ptr }
%struct.csio_qstats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.csio_ioreq = type { %struct.csio_sm, i32, i32, i32, i32, i32, %struct.csio_dma_buf, i16, i16, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i64, i8, i8, i16, %struct.completion, [100 x i8] }
%struct.csio_dma_buf = type { %struct.list_head, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.irq_affinity = type { i32, i32, i32, [4 x i32], ptr, ptr }
%struct.fw_scsi_abrt_cls_wr = type { i32, i32, i64, i16, i8, i8, [4 x i8], i64 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"csiostor\00", [23 x i8] zeroinitializer }, align 32
@csio_request_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to allocate interrupt line.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csio_request_irqs\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/csiostor/csio_isr.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@csio_request_irqs._entry_ptr = internal global ptr @csio_request_irqs._entry, section ".printk_index", align 4
@csio_request_irqs._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IRQ request failed for vec %d err:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@csio_request_irqs._entry_ptr.8 = internal global ptr @csio_request_irqs._entry.6, section ".printk_index", align 4
@csio_request_irqs._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@csio_request_irqs._entry_ptr.10 = internal global ptr @csio_request_irqs._entry.9, section ".printk_index", align 4
@csio_request_irqs._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@csio_request_irqs._entry_ptr.12 = internal global ptr @csio_request_irqs._entry.11, section ".printk_index", align 4
@csio_msi = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"csio-%02x:%02x:%x-nondata\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"csio-%02x:%02x:%x-fwevt\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"csio-%02x:%02x:%x-scsi%d\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 391, i32 5 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 393, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 406, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 416, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 433, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 362, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 367, i32 30 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [36 x i8] c"../drivers/scsi/csiostor/csio_isr.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 374, i32 31 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @csio_request_irqs._entry, ptr @csio_request_irqs._entry.11, ptr @csio_request_irqs._entry.6, ptr @csio_request_irqs._entry.9, ptr @csio_request_irqs._entry_ptr, ptr @csio_request_irqs._entry_ptr.10, ptr @csio_request_irqs._entry_ptr.12, ptr @csio_request_irqs._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_request_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_request_irqs._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_request_irqs._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csio_request_irqs._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_fwevt_intx_handler(ptr noundef %hw, ptr nocapture noundef readnone %wr, i32 noundef %len, ptr nocapture noundef readnone %flb, ptr nocapture noundef readnone %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @csio_fwevtq_handler(ptr noundef %hw) #8
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp eq i32 %call.i, 0
  br i1 %cmp6.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %flags8.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %0 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %1, 4
  %2 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %flags8.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  %evtq_work.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %evtq_work.i) #8
  br label %csio_fwevt_handler.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br label %csio_fwevt_handler.exit

csio_fwevt_handler.exit:                          ; preds = %if.end.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_scsi_intx_handler(ptr nocapture noundef readnone %hw, ptr nocapture noundef readnone %wr, i32 noundef %len, ptr nocapture noundef readnone %flb, ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @csio_scsi_isr_handler(ptr noundef %priv)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_isr_handler(ptr noundef %iq) unnamed_addr #2 align 64 {
entry:
  %cbfn_q = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  %owner = getelementptr inbounds %struct.csio_q, ptr %iq, i32 0, i32 8
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cbfn_q) #8
  %2 = getelementptr inbounds %struct.list_head, ptr %cbfn_q, i32 0, i32 1
  %3 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cbfn_q, ptr %cbfn_q, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cbfn_q, ptr %2, align 4
  %scsim = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2
  %call = call i32 @csio_wr_process_iq(ptr noundef %1, ptr noundef %iq, ptr noundef nonnull @csio_process_scsi_cmpl, ptr noundef nonnull %cbfn_q) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge, !prof !35

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.01 = load ptr, ptr %cbfn_q, align 4
  %cmp.i.not2 = icmp eq ptr %tmp.01, %cbfn_q
  br i1 %cmp.i.not2, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %tmp.04 = phi ptr [ %tmp.0, %for.inc.for.body_crit_edge ], [ %tmp.01, %for.cond.preheader.for.body_crit_edge ]
  %isr_completions.03 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inc = add i32 %isr_completions.03, 1
  %io_cbfn = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.04, i32 0, i32 11
  %6 = ptrtoint ptr %io_cbfn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_cbfn, align 64
  call void %7(ptr noundef %1, ptr noundef %tmp.04) #8
  %dcopy = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.04, i32 0, i32 16
  %8 = ptrtoint ptr %dcopy to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dcopy, align 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then14, !prof !35

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %gen_list = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.04, i32 0, i32 14
  %nsge = getelementptr inbounds %struct.csio_ioreq, ptr %tmp.04, i32 0, i32 3
  %10 = ptrtoint ptr %nsge to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nsge, align 4
  call fastcc void @csio_put_scsi_ddp_list_lock(ptr noundef %1, ptr noundef %scsim, ptr noundef %gen_list, i32 noundef %11)
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %for.body.for.inc_crit_edge
  %12 = ptrtoint ptr %tmp.04 to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp.0 = load ptr, ptr %tmp.04, align 4
  %cmp.i.not = icmp eq ptr %tmp.0, %cbfn_q
  br i1 %cmp.i.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool17.not = icmp eq i32 %inc, 0
  br i1 %tobool17.not, label %for.end.cleanup_crit_edge, label %if.then18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %for.end
  %freelist_lock.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %freelist_lock.i) #8
  %13 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cbfn_q, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %14, %cbfn_q
  br i1 %cmp.i.not.i.i.i, label %if.then18.csio_put_scsi_ioreq_list_lock.exit_crit_edge, label %if.then.i.i.i

if.then18.csio_put_scsi_ioreq_list_lock.exit_crit_edge: ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_put_scsi_ioreq_list_lock.exit

if.then.i.i.i:                                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  %ioreq_freelist.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 6
  %15 = ptrtoint ptr %ioreq_freelist.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioreq_freelist.i.i, align 4
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ioreq_freelist.i.i, ptr %prev3.i.i.i.i, align 4
  store ptr %14, ptr %ioreq_freelist.i.i, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i.i.i, align 4
  %22 = ptrtoint ptr %cbfn_q to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %cbfn_q, ptr %cbfn_q, align 4
  store ptr %cbfn_q, ptr %2, align 4
  br label %csio_put_scsi_ioreq_list_lock.exit

csio_put_scsi_ioreq_list_lock.exit:               ; preds = %if.then.i.i.i, %if.then18.csio_put_scsi_ioreq_list_lock.exit_crit_edge
  %n_free_ioreq.i.i = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 2, i32 8, i32 29
  %23 = ptrtoint ptr %n_free_ioreq.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_free_ioreq.i.i, align 8
  %add.i.i = add i32 %24, %inc
  store i32 %add.i.i, ptr %n_free_ioreq.i.i, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %freelist_lock.i, i32 noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %csio_put_scsi_ioreq_list_lock.exit, %for.end.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cbfn_q) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @csio_request_irqs(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msix_entries = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 53
  %pdev1 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %intr_mode = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %2 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #8
  %4 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  %cond = select i1 %cmp3, i32 0, i32 128
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @csio_fcoe_isr, ptr noundef null, i32 noundef %cond, ptr noundef nonnull @.str, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then.out_crit_edge, label %do.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %for.end83

if.end7:                                          ; preds = %entry
  %num_sqsets.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 6
  %8 = ptrtoint ptr %num_sqsets.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_sqsets.i, align 8
  %add.i = add i32 %9, 2
  %desc.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 53, i32 0, i32 1
  %10 = call ptr @memset(ptr %desc.i, i32 0, i32 24)
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bus.i, align 8
  %number.i = getelementptr inbounds %struct.pci_bus, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %14 to i32
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devfn.i, align 4
  %shr.i = lshr i32 %16, 3
  %and.i = and i32 %shr.i, 31
  %and7.i = and i32 %16, 7
  %call.i154 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc.i, i32 noundef 23, ptr noundef nonnull @.str.13, i32 noundef %conv.i, i32 noundef %and.i, i32 noundef %and7.i) #8
  %desc8.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 53, i32 1, i32 1
  %17 = call ptr @memset(ptr %desc8.i, i32 0, i32 24)
  %18 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev1, align 8
  %bus14.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %bus14.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus14.i, align 8
  %number15.i = getelementptr inbounds %struct.pci_bus, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %number15.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %number15.i, align 4
  %conv16.i = zext i8 %23 to i32
  %devfn18.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 6
  %24 = ptrtoint ptr %devfn18.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %devfn18.i, align 4
  %shr19.i = lshr i32 %25, 3
  %and20.i = and i32 %shr19.i, 31
  %and23.i = and i32 %25, 7
  %call24.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc8.i, i32 noundef 23, ptr noundef nonnull @.str.14, i32 noundef %conv16.i, i32 noundef %and20.i, i32 noundef %and23.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp71.i = icmp sgt i32 %add.i, 2
  br i1 %cmp71.i, label %for.body.preheader.i, label %if.end7.csio_add_msix_desc.exit_crit_edge

if.end7.csio_add_msix_desc.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_add_msix_desc.exit

for.body.preheader.i:                             ; preds = %if.end7
  %incdec.ptr25.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 53, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.073.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 2, %for.body.preheader.i ]
  %entryp.072.i = phi ptr [ %incdec.ptr44.i, %for.body.i.for.body.i_crit_edge ], [ %incdec.ptr25.i, %for.body.preheader.i ]
  %desc27.i = getelementptr inbounds %struct.csio_msix_entries, ptr %entryp.072.i, i32 0, i32 1
  %26 = call ptr @memset(ptr %desc27.i, i32 0, i32 24)
  %27 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev1, align 8
  %bus33.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %bus33.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus33.i, align 8
  %number34.i = getelementptr inbounds %struct.pci_bus, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %number34.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %number34.i, align 4
  %conv35.i = zext i8 %32 to i32
  %devfn37.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 6
  %33 = ptrtoint ptr %devfn37.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devfn37.i, align 4
  %shr38.i = lshr i32 %34, 3
  %and39.i = and i32 %shr38.i, 31
  %and42.i = and i32 %34, 7
  %sub.i = add nsw i32 %i.073.i, -2
  %call43.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %desc27.i, i32 noundef 23, ptr noundef nonnull @.str.15, i32 noundef %conv35.i, i32 noundef %and39.i, i32 noundef %and42.i, i32 noundef %sub.i) #8
  %inc.i = add nuw nsw i32 %i.073.i, 1
  %incdec.ptr44.i = getelementptr %struct.csio_msix_entries, ptr %entryp.072.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %add.i
  br i1 %exitcond.not.i, label %for.body.i.csio_add_msix_desc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.csio_add_msix_desc.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_add_msix_desc.exit

csio_add_msix_desc.exit:                          ; preds = %for.body.i.csio_add_msix_desc.exit_crit_edge, %if.end7.csio_add_msix_desc.exit_crit_edge
  %call8 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #8
  %call.i155 = tail call i32 @request_threaded_irq(i32 noundef %call8, ptr noundef nonnull @csio_nondata_isr, ptr noundef null, i32 noundef 0, ptr noundef %desc.i, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %tobool11.not = icmp eq i32 %call.i155, 0
  br i1 %tobool11.not, label %if.end19, label %do.end15

do.end15:                                         ; preds = %csio_add_msix_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev1, align 8
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %call18 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 0) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.7, i32 noundef %call18, i32 noundef %call.i155) #11
  br label %for.end83

if.end19:                                         ; preds = %csio_add_msix_desc.exit
  %37 = ptrtoint ptr %msix_entries to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %hw, ptr %msix_entries, align 4
  %call21 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 1) #8
  %call.i156 = tail call i32 @request_threaded_irq(i32 noundef %call21, ptr noundef nonnull @csio_fwevt_isr, ptr noundef null, i32 noundef 0, ptr noundef %desc8.i, ptr noundef %hw) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool26.not = icmp eq i32 %call.i156, 0
  br i1 %tobool26.not, label %if.end34, label %out_free_irqs.thread176

out_free_irqs.thread176:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev1, align 8
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %call33 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef 1) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.7, i32 noundef %call33, i32 noundef %call.i156) #11
  br label %for.body75.preheader

if.end34:                                         ; preds = %if.end19
  %arrayidx22 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 53, i32 1
  %40 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %hw, ptr %arrayidx22, align 4
  %num_pports = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 36
  %41 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %num_pports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp38166.not = icmp eq i8 %42, 0
  br i1 %cmp38166.not, label %if.end34.out_crit_edge, label %for.body.lr.ph

if.end34.out_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.lr.ph:                                   ; preds = %if.end34
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc69.for.body_crit_edge, %for.body.lr.ph
  %k.0169 = phi i32 [ 2, %for.body.lr.ph ], [ %k.1.lcssa, %for.inc69.for.body_crit_edge ]
  %i.0167 = phi i32 [ 0, %for.body.lr.ph ], [ %inc70, %for.inc69.for.body_crit_edge ]
  %arrayidx40 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 9, i32 %i.0167
  %43 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx40, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp43162 = icmp sgt i16 %44, 0
  br i1 %cmp43162, label %for.body.for.body45_crit_edge, label %for.body.for.inc69_crit_edge

for.body.for.inc69_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

for.body.for.body45_crit_edge:                    ; preds = %for.body
  br label %for.body45

for.body45:                                       ; preds = %for.inc.for.body45_crit_edge, %for.body.for.body45_crit_edge
  %k.1164 = phi i32 [ %inc68, %for.inc.for.body45_crit_edge ], [ %k.0169, %for.body.for.body45_crit_edge ]
  %j.0163 = phi i32 [ %inc67, %for.inc.for.body45_crit_edge ], [ 0, %for.body.for.body45_crit_edge ]
  %arrayidx48 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.0167, i32 %j.0163
  %45 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %q_arr, align 4
  %47 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr ptr, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx49, align 4
  %call50 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %k.1164) #8
  %desc52 = getelementptr %struct.csio_msix_entries, ptr %msix_entries, i32 %k.1164, i32 1
  %call.i157 = tail call i32 @request_threaded_irq(i32 noundef %call50, ptr noundef nonnull @csio_scsi_isr, ptr noundef null, i32 noundef 0, ptr noundef %desc52, ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool55.not = icmp eq i32 %call.i157, 0
  br i1 %tobool55.not, label %for.inc, label %out_free_irqs

for.inc:                                          ; preds = %for.body45
  %arrayidx51 = getelementptr %struct.csio_msix_entries, ptr %msix_entries, i32 %k.1164
  %51 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %arrayidx51, align 4
  %inc67 = add nuw nsw i32 %j.0163, 1
  %inc68 = add i32 %k.1164, 1
  %52 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %arrayidx40, align 2
  %conv42 = sext i16 %53 to i32
  %cmp43 = icmp slt i32 %inc67, %conv42
  br i1 %cmp43, label %for.inc.for.body45_crit_edge, label %for.inc.for.inc69_crit_edge

for.inc.for.inc69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69

for.inc.for.body45_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body45

for.inc69:                                        ; preds = %for.inc.for.inc69_crit_edge, %for.body.for.inc69_crit_edge
  %k.1.lcssa = phi i32 [ %k.0169, %for.body.for.inc69_crit_edge ], [ %inc68, %for.inc.for.inc69_crit_edge ]
  %inc70 = add nuw nsw i32 %i.0167, 1
  %54 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_pports, align 8
  %conv = zext i8 %55 to i32
  %cmp38 = icmp ult i32 %inc70, %conv
  br i1 %cmp38, label %for.inc69.for.body_crit_edge, label %for.inc69.out_crit_edge

for.inc69.out_crit_edge:                          ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.inc69.for.body_crit_edge:                     ; preds = %for.inc69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

out:                                              ; preds = %for.inc69.out_crit_edge, %if.end34.out_crit_edge, %if.then.out_crit_edge
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %or = or i32 %57, 512
  store i32 %or, ptr %flags, align 4
  br label %cleanup85

out_free_irqs:                                    ; preds = %for.body45
  %58 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdev1, align 8
  %dev61 = getelementptr inbounds %struct.pci_dev, ptr %59, i32 0, i32 44
  %call62 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %k.1164) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef nonnull @.str.7, i32 noundef %call62, i32 noundef %call.i157) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.1164)
  %cmp73170 = icmp sgt i32 %k.1164, 0
  br i1 %cmp73170, label %out_free_irqs.for.body75.preheader_crit_edge, label %out_free_irqs.for.end83_crit_edge

out_free_irqs.for.end83_crit_edge:                ; preds = %out_free_irqs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end83

out_free_irqs.for.body75.preheader_crit_edge:     ; preds = %out_free_irqs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body75.preheader

for.body75.preheader:                             ; preds = %out_free_irqs.for.body75.preheader_crit_edge, %out_free_irqs.thread176
  %k.2179 = phi i32 [ 1, %out_free_irqs.thread176 ], [ %k.1164, %out_free_irqs.for.body75.preheader_crit_edge ]
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.body75.preheader
  %i.1171 = phi i32 [ %inc82, %for.body75.for.body75_crit_edge ], [ 0, %for.body75.preheader ]
  %call76 = tail call i32 @pci_irq_vector(ptr noundef %1, i32 noundef %i.1171) #8
  %arrayidx78 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 53, i32 %i.1171
  %60 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx78, align 4
  %call80 = tail call ptr @free_irq(i32 noundef %call76, ptr noundef %61) #8
  %inc82 = add nuw nsw i32 %i.1171, 1
  %exitcond.not = icmp eq i32 %inc82, %k.2179
  br i1 %exitcond.not, label %for.body75.for.end83_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body75

for.body75.for.end83_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end83

for.end83:                                        ; preds = %for.body75.for.end83_crit_edge, %out_free_irqs.for.end83_crit_edge, %do.end15, %do.end
  %62 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev1, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %63) #8
  br label %cleanup85

cleanup85:                                        ; preds = %for.end83, %out
  %retval.0 = phi i32 [ -22, %for.end83 ], [ 0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_fcoe_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %if.end12, label %if.then11, !prof !35

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %n_pcich_offline = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 55, i32 4
  %4 = ptrtoint ptr %n_pcich_offline to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_pcich_offline, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_pcich_offline, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %intr_mode = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 46
  %6 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %intr_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %do.body, label %if.end12.if.end14_crit_edge

if.end12.if.end14_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !37
  tail call void @arm_heavy_mb() #8
  %regstart = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 5
  %8 = ptrtoint ptr %regstart to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regstart, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 110660
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !38
  br label %if.end14

if.end14:                                         ; preds = %do.body, %if.end12.if.end14_crit_edge
  %call15 = tail call i32 @csio_hw_slow_intr_handler(ptr noundef nonnull %dev_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp ne i32 %call15, 0
  %q_arr = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %q_arr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %q_arr, align 4
  %intr_iq_idx = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 17
  %12 = ptrtoint ptr %intr_iq_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_iq_idx, align 8
  %arrayidx = getelementptr ptr, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 @csio_wr_process_iq(ptr noundef nonnull %dev_id, ptr noundef %15, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  %narrow = select i1 %cmp20, i1 true, i1 %tobool16.not, !prof !35
  %ret.1 = zext i1 %narrow to i32
  %lock = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 1
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call38 = tail call i32 @csio_mb_isr_handler(ptr noundef nonnull %dev_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp eq i32 %call38, 0
  br i1 %cmp39, label %land.lhs.true, label %if.end14.if.end47_crit_edge

if.end14.if.end47_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end14
  %flags41 = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 11
  %16 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags41, align 4
  %and = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true.if.end47_crit_edge

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %17, 4
  %18 = ptrtoint ptr %flags41 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or, ptr %flags41, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #8
  %evtq_work = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %evtq_work) #8
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true.if.end47_crit_edge, %if.end14.if.end47_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call33) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then43, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ %ret.1, %if.end47 ], [ 1, %if.then43 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_nondata_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %do.body13, label %if.then11, !prof !35

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %n_pcich_offline = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 55, i32 4
  %4 = ptrtoint ptr %n_pcich_offline to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_pcich_offline, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_pcich_offline, align 8
  br label %cleanup

do.body13:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 1
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %call18 = tail call i32 @csio_hw_slow_intr_handler(ptr noundef nonnull %dev_id) #8
  %call19 = tail call i32 @csio_mb_isr_handler(ptr noundef nonnull %dev_id) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp eq i32 %call19, 0
  br i1 %cmp20, label %land.lhs.true, label %do.body13.if.end28_crit_edge

do.body13.if.end28_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %do.body13
  %flags22 = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 11
  %6 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags22, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then24, label %land.lhs.true.if.end28_crit_edge

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %7, 4
  %8 = ptrtoint ptr %flags22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %flags22, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #8
  %evtq_work = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %evtq_work) #8
  br label %cleanup

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %do.body13.if.end28_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then24, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %if.end28 ], [ 1, %if.then24 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_fwevt_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 43
  %2 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 1
  br i1 %cmp.i.not, label %if.end12, label %if.then11, !prof !35

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %n_pcich_offline = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 55, i32 4
  %4 = ptrtoint ptr %n_pcich_offline to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_pcich_offline, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %n_pcich_offline, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call.i = tail call i32 @csio_fwevtq_handler(ptr noundef nonnull %dev_id) #8
  %lock.i = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp eq i32 %call.i, 0
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.end12.if.end.i_crit_edge

if.end12.if.end.i_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end12
  %flags8.i = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 11
  %6 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags8.i, align 4
  %and.i = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %or.i = or i32 %7, 4
  %8 = ptrtoint ptr %flags8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i, ptr %flags8.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  %evtq_work.i = getelementptr inbounds %struct.csio_hw, ptr %dev_id, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %evtq_work.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end12.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then.i, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csio_scsi_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %owner = getelementptr inbounds %struct.csio_q, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner, align 8
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %error_state.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %error_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 1
  br i1 %cmp.i.not, label %if.end12, label %if.then11, !prof !35

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %n_pcich_offline = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 55, i32 4
  %6 = ptrtoint ptr %n_pcich_offline to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_pcich_offline, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %n_pcich_offline, align 8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @csio_scsi_isr_handler(ptr noundef nonnull %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then11 ], [ 1, %if.end12 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_intr_enable(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  %desc.i = alloca %struct.irq_affinity, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %0 = ptrtoint ptr %intr_mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %intr_mode, align 4
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %and = and i32 %2, -513
  store i32 %and, ptr %flags, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @csio_msi to i32))
  %3 = load i32, ptr @csio_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %desc.i) #8
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %desc.i, align 4
  %post_vectors.i = getelementptr inbounds %struct.irq_affinity, ptr %desc.i, i32 0, i32 1
  %calc_sets.i = getelementptr inbounds %struct.irq_affinity, ptr %desc.i, i32 0, i32 4
  %5 = call ptr @memset(ptr %post_vectors.i, i32 0, i32 24)
  %6 = ptrtoint ptr %calc_sets.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @csio_calc_sets, ptr %calc_sets.i, align 4
  %priv.i = getelementptr inbounds %struct.irq_affinity, ptr %desc.i, i32 0, i32 5
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %hw, ptr %priv.i, align 4
  %num_pports.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 36
  %8 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_pports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp.i = icmp ugt i8 %9, 4
  br i1 %cmp.i, label %land.lhs.true.csio_enable_msix.exit_crit_edge, label %if.end.i

land.lhs.true.csio_enable_msix.exit_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_enable_msix.exit

if.end.i:                                         ; preds = %land.lhs.true
  %conv.i = zext i8 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 2
  %num_sqsets.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 6
  %10 = ptrtoint ptr %num_sqsets.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_sqsets.i, align 8
  %add4.i = add i32 %11, 2
  %12 = and i32 %2, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %.not.i = icmp eq i32 %12, 1
  br i1 %.not.i, label %if.end.i.if.end16.i_crit_edge, label %if.then8.i

if.end.i.if.end16.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %cfg_niq.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 50
  %13 = ptrtoint ptr %cfg_niq.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cfg_niq.i, align 1
  %conv10.i = zext i8 %14 to i32
  %conv11.i = and i32 %add4.i, 255
  %15 = tail call i32 @llvm.umin.i32(i32 %conv11.i, i32 %conv10.i) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then8.i, %if.end.i.if.end16.i_crit_edge
  %cnt.0.i = phi i32 [ %15, %if.then8.i ], [ %add4.i, %if.end.i.if.end16.i_crit_edge ]
  %pdev.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev.i, align 8
  %call.i = call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %17, i32 noundef %add.i, i32 noundef %cnt.0.i, i32 noundef 12, ptr noundef nonnull %desc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp17.i = icmp slt i32 %call.i, 0
  br i1 %cmp17.i, label %if.end16.i.csio_enable_msix.exit_crit_edge, label %if.end20.i

if.end16.i.csio_enable_msix.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_enable_msix.exit

if.end20.i:                                       ; preds = %if.end16.i
  %18 = ptrtoint ptr %num_sqsets.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sqsets.i, align 8
  %add22.i = add i32 %19, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add22.i)
  %cmp23.i = icmp ult i32 %call.i, %add22.i
  br i1 %cmp23.i, label %if.then25.i, label %if.end20.i.if.end26.i_crit_edge

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then25.i:                                      ; preds = %if.end20.i
  %sub.i = add nsw i32 %call.i, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub.i)
  %cmp25.i.i = icmp ugt i32 %19, %sub.i
  br i1 %cmp25.i.i, label %if.then25.i.for.cond.preheader.i.i_crit_edge, label %if.then25.i.if.end26.i_crit_edge

if.then25.i.if.end26.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then25.i.for.cond.preheader.i.i_crit_edge:     ; preds = %if.then25.i
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %for.end.i.i.for.cond.preheader.i.i_crit_edge, %if.then25.i.for.cond.preheader.i.i_crit_edge
  %20 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %num_pports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp123.not.i.i = icmp eq i8 %21, 0
  br i1 %cmp123.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 9, i32 %i.024.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %23)
  %cmp4.i.i = icmp sgt i16 %23, 1
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %dec.i.i = add nsw i16 %23, -1
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %dec.i.i, ptr %arrayidx.i.i, align 2
  %25 = ptrtoint ptr %num_sqsets.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_sqsets.i, align 8
  %dec8.i.i = add i32 %26, -1
  store i32 %dec8.i.i, ptr %num_sqsets.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %dec8.i.i, i32 %sub.i)
  %cmp10.not.i.i = icmp ugt i32 %dec8.i.i, %sub.i
  br i1 %cmp10.not.i.i, label %if.then.i.i.for.inc.i.i_crit_edge, label %if.then.i.i.for.end.i.i_crit_edge

if.then.i.i.for.end.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.024.i.i, 1
  %27 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %num_pports.i, align 8
  %conv.i.i = zext i8 %28 to i32
  %cmp1.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp1.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %29 = ptrtoint ptr %num_sqsets.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_sqsets.i, align 8
  %cmp.i.i = icmp ugt i32 %30, %sub.i
  br i1 %cmp.i.i, label %for.end.i.i.for.cond.preheader.i.i_crit_edge, label %for.end.i.i.if.end26.i_crit_edge

for.end.i.i.if.end26.i_crit_edge:                 ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

for.end.i.i.for.cond.preheader.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i.i

if.end26.i:                                       ; preds = %for.end.i.i.if.end26.i_crit_edge, %if.then25.i.if.end26.i_crit_edge, %if.end20.i.if.end26.i_crit_edge
  %nondata_intr_idx.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 48
  %31 = ptrtoint ptr %nondata_intr_idx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %nondata_intr_idx.i, align 4
  %intr_idx.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %intr_idx.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %intr_idx.i, align 4
  %fwevt_intr_idx.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 47
  %33 = ptrtoint ptr %fwevt_intr_idx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %fwevt_intr_idx.i, align 8
  %34 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %num_pports.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp3096.not.i = icmp eq i8 %35, 0
  br i1 %cmp3096.not.i, label %if.end26.i.if.then_crit_edge, label %for.body.lr.ph.i

if.end26.i.if.then_crit_edge:                     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.body.lr.ph.i:                                 ; preds = %if.end26.i
  %num_scsi_msix_cpus.i = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %k.099.i = phi i32 [ 2, %for.body.lr.ph.i ], [ %add44.i, %for.end.i.for.body.i_crit_edge ]
  %i.097.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc46.i, %for.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 9, i32 %i.097.i
  %36 = ptrtoint ptr %num_scsi_msix_cpus.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_scsi_msix_cpus.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp3393.not.i = icmp eq i32 %37, 0
  br i1 %cmp3393.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body35.i_crit_edge

for.body.i.for.body35.i_crit_edge:                ; preds = %for.body.i
  br label %for.body35.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %for.body.i.for.body35.i_crit_edge
  %j.094.i = phi i32 [ %inc41.i, %for.body35.i.for.body35.i_crit_edge ], [ 0, %for.body.i.for.body35.i_crit_edge ]
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx.i, align 2
  %conv36.i = sext i16 %39 to i32
  %rem.i = srem i32 %j.094.i, %conv36.i
  %add37.i = add i32 %rem.i, %k.099.i
  %intr_idx40.i = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 8, i32 %i.097.i, i32 %j.094.i, i32 2
  %40 = ptrtoint ptr %intr_idx40.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add37.i, ptr %intr_idx40.i, align 4
  %inc41.i = add nuw i32 %j.094.i, 1
  %41 = ptrtoint ptr %num_scsi_msix_cpus.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_scsi_msix_cpus.i, align 4
  %cmp33.i = icmp ult i32 %inc41.i, %42
  br i1 %cmp33.i, label %for.body35.i.for.body35.i_crit_edge, label %for.body35.i.for.end.i_crit_edge

for.body35.i.for.end.i_crit_edge:                 ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.i

for.end.i:                                        ; preds = %for.body35.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i, align 2
  %conv43.i = sext i16 %44 to i32
  %add44.i = add i32 %k.099.i, %conv43.i
  %inc46.i = add nuw nsw i32 %i.097.i, 1
  %45 = ptrtoint ptr %num_pports.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_pports.i, align 8
  %conv29.i = zext i8 %46 to i32
  %cmp30.i = icmp ult i32 %inc46.i, %conv29.i
  br i1 %cmp30.i, label %for.end.i.for.body.i_crit_edge, label %for.end.i.if.then_crit_edge

for.end.i.if.then_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

csio_enable_msix.exit:                            ; preds = %if.end16.i.csio_enable_msix.exit_crit_edge, %land.lhs.true.csio_enable_msix.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %desc.i) #8
  br label %if.else

if.then:                                          ; preds = %for.end.i.if.then_crit_edge, %if.end26.i.if.then_crit_edge
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %desc.i) #8
  br label %if.end25

if.else:                                          ; preds = %csio_enable_msix.exit, %entry.if.else_crit_edge
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %49 = and i32 %48, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %49)
  %.not = icmp eq i32 %49, 1
  br i1 %.not, label %if.else.if.end14_crit_edge, label %if.then8

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then8:                                         ; preds = %if.else
  %cfg_niq = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 50
  %50 = ptrtoint ptr %cfg_niq to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cfg_niq, align 1
  %conv = zext i8 %51 to i32
  %num_sqsets = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 6
  %52 = ptrtoint ptr %num_sqsets to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_sqsets, align 8
  %add = add i32 %53, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp9 = icmp ugt i32 %add, %conv
  br i1 %cmp9, label %if.then11, label %if.then8.if.end14_crit_edge

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.then8
  %sub = add nsw i32 %conv, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %sub)
  %cmp25.i = icmp ugt i32 %53, %sub
  br i1 %cmp25.i, label %for.cond.preheader.lr.ph.i, label %if.then11.if.end14_crit_edge

if.then11.if.end14_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.cond.preheader.lr.ph.i:                       ; preds = %if.then11
  %num_pports.i40 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 36
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.end.i45.for.cond.preheader.i_crit_edge, %for.cond.preheader.lr.ph.i
  %54 = ptrtoint ptr %num_pports.i40 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_pports.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp123.not.i = icmp eq i8 %55, 0
  br i1 %cmp123.not.i, label %for.cond.preheader.i.for.end.i45_crit_edge, label %for.cond.preheader.i.for.body.i42_crit_edge

for.cond.preheader.i.for.body.i42_crit_edge:      ; preds = %for.cond.preheader.i
  br label %for.body.i42

for.cond.preheader.i.for.end.i45_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i45

for.body.i42:                                     ; preds = %for.inc.i.for.body.i42_crit_edge, %for.cond.preheader.i.for.body.i42_crit_edge
  %i.024.i = phi i32 [ %inc.i, %for.inc.i.for.body.i42_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i42_crit_edge ]
  %arrayidx.i41 = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 9, i32 %i.024.i
  %56 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i41, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %57)
  %cmp4.i = icmp sgt i16 %57, 1
  br i1 %cmp4.i, label %if.then.i, label %for.body.i42.for.inc.i_crit_edge

for.body.i42.for.inc.i_crit_edge:                 ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i42
  %dec.i = add nsw i16 %57, -1
  %58 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %dec.i, ptr %arrayidx.i41, align 2
  %59 = ptrtoint ptr %num_sqsets to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_sqsets, align 8
  %dec8.i = add i32 %60, -1
  store i32 %dec8.i, ptr %num_sqsets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %dec8.i, i32 %sub)
  %cmp10.not.i = icmp ugt i32 %dec8.i, %sub
  br i1 %cmp10.not.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.for.end.i45_crit_edge

if.then.i.for.end.i45_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i45

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %for.body.i42.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %61 = ptrtoint ptr %num_pports.i40 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %num_pports.i40, align 8
  %conv.i43 = zext i8 %62 to i32
  %cmp1.i = icmp ult i32 %inc.i, %conv.i43
  br i1 %cmp1.i, label %for.inc.i.for.body.i42_crit_edge, label %for.inc.i.for.end.i45_crit_edge

for.inc.i.for.end.i45_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i45

for.inc.i.for.body.i42_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i42

for.end.i45:                                      ; preds = %for.inc.i.for.end.i45_crit_edge, %if.then.i.for.end.i45_crit_edge, %for.cond.preheader.i.for.end.i45_crit_edge
  %63 = ptrtoint ptr %num_sqsets to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_sqsets, align 8
  %cmp.i44 = icmp ugt i32 %64, %sub
  br i1 %cmp.i44, label %for.end.i45.for.cond.preheader.i_crit_edge, label %for.end.i45.if.end14_crit_edge

for.end.i45.if.end14_crit_edge:                   ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

for.end.i45.for.cond.preheader.i_crit_edge:       ; preds = %for.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.preheader.i

if.end14:                                         ; preds = %for.end.i45.if.end14_crit_edge, %if.then11.if.end14_crit_edge, %if.then8.if.end14_crit_edge, %if.else.if.end14_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @csio_msi to i32))
  %65 = load i32, ptr @csio_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %cmp15 = icmp eq i32 %65, 1
  br i1 %cmp15, label %land.lhs.true17, label %if.end14.if.else22_crit_edge

if.end14.if.else22_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22

land.lhs.true17:                                  ; preds = %if.end14
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %66 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev, align 8
  %call18 = call i32 @pci_enable_msi(ptr noundef %67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.end25_crit_edge, label %land.lhs.true17.if.else22_crit_edge

land.lhs.true17.if.else22_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22

land.lhs.true17.if.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.else22:                                        ; preds = %land.lhs.true17.if.else22_crit_edge, %if.end14.if.else22_crit_edge
  br label %if.end25

if.end25:                                         ; preds = %if.else22, %land.lhs.true17.if.end25_crit_edge, %if.then
  %.sink = phi i32 [ 1, %if.else22 ], [ 3, %if.then ], [ 2, %land.lhs.true17.if.end25_crit_edge ]
  %68 = ptrtoint ptr %intr_mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %.sink, ptr %intr_mode, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @csio_intr_disable(ptr noundef %hw, i1 noundef zeroext %free) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @csio_hw_intr_disable(ptr noundef %hw) #8
  br i1 %free, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %intr_mode = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %0 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then.if.end_crit_edge [
    i32 3, label %for.cond.preheader
    i32 2, label %if.then.sw.bb2_crit_edge
    i32 1, label %if.then.sw.bb2_crit_edge23
  ]

if.then.sw.bb2_crit_edge23:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

if.then.sw.bb2_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.cond.preheader:                               ; preds = %if.then
  %num_sqsets = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 6
  %3 = ptrtoint ptr %num_sqsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_sqsets, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %cmp21.not = icmp eq i32 %4, -2
  br i1 %cmp21.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdev = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @pci_irq_vector(ptr noundef %6, i32 noundef %i.022) #8
  %arrayidx = getelementptr %struct.csio_hw, ptr %hw, i32 0, i32 53, i32 %i.022
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %8) #8
  %inc = add nuw i32 %i.022, 1
  %9 = ptrtoint ptr %num_sqsets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_sqsets, align 8
  %add = add i32 %10, 2
  %cmp = icmp ult i32 %inc, %add
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.bb2:                                           ; preds = %if.then.sw.bb2_crit_edge, %if.then.sw.bb2_crit_edge23
  %pdev3 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %11 = ptrtoint ptr %pdev3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev3, align 8
  %call4 = tail call i32 @pci_irq_vector(ptr noundef %12, i32 noundef 0) #8
  %call5 = tail call ptr @free_irq(i32 noundef %call4, ptr noundef %hw) #8
  br label %if.end

if.end:                                           ; preds = %sw.bb2, %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %pdev6 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev6, align 8
  tail call void @pci_free_irq_vectors(ptr noundef %14) #8
  %intr_mode7 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 46
  %15 = ptrtoint ptr %intr_mode7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %intr_mode7, align 4
  %flags = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 11
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, -513
  store i32 %and, ptr %flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @csio_hw_intr_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_fwevtq_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_wr_process_iq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_process_scsi_cmpl(ptr noundef %hw, ptr noundef %wr, i32 noundef %len, ptr noundef %flb, ptr noundef %cbfn_q) #0 align 64 {
entry:
  %scsiwr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scsiwr) #8
  %0 = ptrtoint ptr %scsiwr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %scsiwr, align 4, !annotation !39
  %call = call ptr @csio_scsi_cmpl_handler(ptr noundef %hw, ptr noundef %wr, i32 noundef %len, ptr noundef %flb, ptr noundef null, ptr noundef nonnull %scsiwr) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end60_crit_edge, label %if.then, !prof !36

entry.if.end60_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %scsiwr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scsiwr, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %4)
  %cmp = icmp eq i8 %4, 52
  br i1 %cmp, label %if.then10, label %do.body45, !prof !36

if.then10:                                        ; preds = %if.then
  %sub_opcode_to_chk_all_io = getelementptr inbounds %struct.fw_scsi_abrt_cls_wr, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %sub_opcode_to_chk_all_io to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sub_opcode_to_chk_all_io, align 1
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %tobool20.not = icmp ult i8 %6, 4
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @csio_scsi_closed(ptr noundef nonnull %call, ptr noundef %cbfn_q)
  br label %if.end

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @csio_scsi_aborted(ptr noundef nonnull %call, ptr noundef %cbfn_q)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then21
  %scratch1 = getelementptr inbounds %struct.csio_ioreq, ptr %call, i32 0, i32 12
  %7 = ptrtoint ptr %scratch1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %scratch1, align 4
  %cmp22 = icmp eq ptr %8, null
  br i1 %cmp22, label %if.then30, label %if.end60.critedge, !prof !36

if.then30:                                        ; preds = %if.end
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then30.list_del_init.exit_crit_edge

if.then30.list_del_init.exit_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then30.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %call, ptr %call, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #8
  %scsim = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 2
  call fastcc void @csio_put_scsi_ioreq_lock(ptr noundef %scsim, ptr noundef nonnull %call)
  br label %if.end60

do.body45:                                        ; preds = %if.then
  %lock51 = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call53 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock51) #8
  %sm_state.i.i = getelementptr inbounds %struct.csio_sm, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %sm_state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sm_state.i.i, align 4
  call void %18(ptr noundef nonnull %call, i32 noundef 3) #8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %cmp.i.i = icmp eq ptr %20, %call
  br i1 %cmp.i.i, label %csio_list_deleted.exit.i, label %do.body45.csio_scsi_completed.exit_crit_edge

do.body45.csio_scsi_completed.exit_crit_edge:     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_scsi_completed.exit

csio_list_deleted.exit.i:                         ; preds = %do.body45
  %prev.i.i77 = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i77 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i77, align 4
  %cmp1.i.not.i = icmp eq ptr %22, %call
  br i1 %cmp1.i.not.i, label %if.then.i, label %csio_list_deleted.exit.i.csio_scsi_completed.exit_crit_edge

csio_list_deleted.exit.i.csio_scsi_completed.exit_crit_edge: ; preds = %csio_list_deleted.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_scsi_completed.exit

if.then.i:                                        ; preds = %csio_list_deleted.exit.i
  %prev.i6.i = getelementptr inbounds %struct.list_head, ptr %cbfn_q, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i6.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call, ptr noundef %24, ptr noundef %cbfn_q) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.csio_scsi_completed.exit_crit_edge

if.then.i.csio_scsi_completed.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_scsi_completed.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %prev.i6.i, align 4
  %26 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %cbfn_q, ptr %call, align 4
  %27 = ptrtoint ptr %prev.i.i77 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev.i.i77, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call, ptr %24, align 4
  br label %csio_scsi_completed.exit

csio_scsi_completed.exit:                         ; preds = %if.end.i.i.i, %if.then.i.csio_scsi_completed.exit_crit_edge, %csio_list_deleted.exit.i.csio_scsi_completed.exit_crit_edge, %do.body45.csio_scsi_completed.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock51, i32 noundef %call53) #8
  br label %if.end60

if.end60.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #8
  br label %if.end60

if.end60:                                         ; preds = %if.end60.critedge, %csio_scsi_completed.exit, %list_del_init.exit, %entry.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scsiwr) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_put_scsi_ddp_list_lock(ptr noundef %hw, ptr noundef %scsim, ptr noundef %reqlist, i32 noundef %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr inbounds %struct.csio_hw, ptr %hw, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %0 = ptrtoint ptr %reqlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %reqlist, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %reqlist
  br i1 %cmp.i.not.i.i, label %entry.csio_put_scsi_ddp_list.exit_crit_edge, label %if.then.i.i

entry.csio_put_scsi_ddp_list.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_put_scsi_ddp_list.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ddp_freelist.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %reqlist, i32 0, i32 1
  %4 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ddp_freelist.i, ptr %5, align 4
  store ptr %5, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %reqlist to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %reqlist, ptr %reqlist, align 4
  store ptr %reqlist, ptr %prev2.i.i.i, align 4
  br label %csio_put_scsi_ddp_list.exit

csio_put_scsi_ddp_list.exit:                      ; preds = %if.then.i.i, %entry.csio_put_scsi_ddp_list.exit_crit_edge
  %n_free_ddp.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 8, i32 30
  %10 = ptrtoint ptr %n_free_ddp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_free_ddp.i, align 4
  %add.i = add i32 %11, %n
  store i32 %add.i, ptr %n_free_ddp.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @csio_scsi_cmpl_handler(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_closed(ptr noundef %ioreq, ptr noundef %cbfn_q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ioreq, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i, align 4
  tail call void %1(ptr noundef %ioreq, i32 noundef 7) #8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cbfn_q, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioreq, ptr noundef %3, ptr noundef %cbfn_q) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ioreq, ptr %prev.i, align 4
  %5 = ptrtoint ptr %ioreq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn_q, ptr %ioreq, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ioreq, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ioreq, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_scsi_aborted(ptr noundef %ioreq, ptr noundef %cbfn_q) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %sm_state.i = getelementptr inbounds %struct.csio_sm, ptr %ioreq, i32 0, i32 1
  %0 = ptrtoint ptr %sm_state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sm_state.i, align 4
  tail call void %1(ptr noundef %ioreq, i32 noundef 5) #8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cbfn_q, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioreq, ptr noundef %3, ptr noundef %cbfn_q) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ioreq, ptr %prev.i, align 4
  %5 = ptrtoint ptr %ioreq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cbfn_q, ptr %ioreq, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ioreq, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %ioreq, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @csio_put_scsi_ioreq_lock(ptr noundef %scsim, ptr noundef %ioreq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %freelist_lock = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %freelist_lock) #8
  %ioreq_freelist.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 6
  %prev.i.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ioreq, ptr noundef %1, ptr noundef %ioreq_freelist.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.csio_put_scsi_ioreq.exit_crit_edge

entry.csio_put_scsi_ioreq.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %csio_put_scsi_ioreq.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ioreq, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %ioreq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ioreq_freelist.i, ptr %ioreq, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %ioreq, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ioreq, ptr %1, align 4
  br label %csio_put_scsi_ioreq.exit

csio_put_scsi_ioreq.exit:                         ; preds = %if.end.i.i.i, %entry.csio_put_scsi_ioreq.exit_crit_edge
  %n_free_ioreq.i = getelementptr inbounds %struct.csio_scsim, ptr %scsim, i32 0, i32 8, i32 29
  %6 = ptrtoint ptr %n_free_ioreq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_free_ioreq.i, align 8
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %n_free_ioreq.i, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %freelist_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_hw_slow_intr_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csio_mb_isr_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csio_calc_sets(ptr nocapture noundef %affd, i32 noundef %nvecs) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvecs)
  %tobool.not = icmp eq i32 %nvecs, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %num_pports = getelementptr inbounds %struct.csio_hw, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_pports, align 8
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %nvecs)
  %cmp = icmp ugt i32 %conv, %nvecs
  %nr_sets = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 2
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %nr_sets to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %nr_sets, align 4
  %set_size = getelementptr inbounds %struct.irq_affinity, ptr %affd, i32 0, i32 3
  %5 = ptrtoint ptr %set_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %nvecs, ptr %set_size, align 4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %nr_sets to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %nr_sets, align 4
  %7 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num_pports, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp1029.not = icmp eq i8 %8, 0
  br i1 %cmp1029.not, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end3.for.body_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %9 = phi i8 [ %12, %for.body.for.body_crit_edge ], [ %8, %if.end3.for.body_crit_edge ]
  %conv9 = zext i8 %9 to i32
  %div = udiv i32 %nvecs, %conv9
  %arrayidx15 = getelementptr %struct.irq_affinity, ptr %affd, i32 0, i32 3, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %arrayidx15, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %11 = ptrtoint ptr %num_pports to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_pports, align 8
  %13 = zext i8 %12 to i32
  %cmp10 = icmp ult i32 %indvars.iv.next, %13
  br i1 %cmp10, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 391, i32 5}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 393, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @csio_request_irqs._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @csio_request_irqs._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 406, i32 3}
!12 = !{ptr @csio_request_irqs._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @csio_request_irqs._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @csio_request_irqs._entry.9, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 416, i32 3}
!16 = !{ptr @csio_request_irqs._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @csio_request_irqs._entry.11, !18, !"_entry", i1 false, i1 false}
!18 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 433, i32 5}
!19 = !{ptr @csio_request_irqs._entry_ptr.12, !18, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 362, i32 30}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 367, i32 30}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/csiostor/csio_isr.c", i32 374, i32 31}
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
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{i64 2156139350}
!38 = !{i64 4993085}
!39 = !{!"auto-init"}
