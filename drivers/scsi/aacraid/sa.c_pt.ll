; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/sa.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/sa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.85, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.adapter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr }
%struct.aac_adapter_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { [18 x i8], [2 x i8], i32, i32, i32, i32, i32, i8, [3 x i8], [12 x i8], i32, %struct.anon.90, i32, i32, i32, i32, i32, [12 x i8], [8 x i8], i32, i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i64, i32, [12 x i8], i16, i16, i32, i16, i16, i16, i16, [68 x i32] }
%struct.anon.90 = type { [8 x i8], [8 x i8], [8 x i8], [8 x i8], [12 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.sa_drawbridge_CSR = type { [10 x i32], i8, [3 x i8], i32, [26 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [64 x i32] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct._r7 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_queue = type { i64, ptr, %struct.aac_qhdr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, ptr }
%struct.aac_qhdr = type { i64, ptr, ptr }

@aac_sa_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: unable to map adapter.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aac_sa_init\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/scsi/aacraid/sa.c\00", [38 x i8] zeroinitializer }, align 32
@aac_sa_init._entry_ptr = internal global ptr @aac_sa_init._entry, section ".printk_index", align 4
@aac_sa_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s%d: adapter self-test failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@aac_sa_init._entry_ptr.5 = internal global ptr @aac_sa_init._entry.3, section ".printk_index", align 4
@aac_sa_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s%d: adapter kernel panic'd.\0A\00", [63 x i8] zeroinitializer }, align 32
@aac_sa_init._entry_ptr.8 = internal global ptr @aac_sa_init._entry.6, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@startup_timeout = external dso_local local_unnamed_addr global i32, align 4
@aac_sa_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s%d: adapter kernel failed to start, init status = %lx.\0A\00", [36 x i8] zeroinitializer }, align 32
@aac_sa_init._entry_ptr.11 = internal global ptr @aac_sa_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aacraid\00", [24 x i8] zeroinitializer }, align 32
@aac_sa_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s%d: Interrupt unavailable.\0A\00", [32 x i8] zeroinitializer }, align 32
@aac_sa_init._entry_ptr.15 = internal global ptr @aac_sa_init._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 6, i64 8, i64 11, i64 13, i64 15, i64 16]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 344, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 352, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 359, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 369, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 387, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [29 x i8] c"../drivers/scsi/aacraid/sa.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 388, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @aac_sa_init._entry, ptr @aac_sa_init._entry.13, ptr @aac_sa_init._entry.3, ptr @aac_sa_init._entry.6, ptr @aac_sa_init._entry.9, ptr @aac_sa_init._entry_ptr, ptr @aac_sa_init._entry_ptr.11, ptr @aac_sa_init._entry_ptr.15, ptr @aac_sa_init._entry_ptr.5, ptr @aac_sa_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_sa_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_sa_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_sa_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_sa_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_sa_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_sa_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %name1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 8
  %a_ops = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @aac_sa_interrupt_adapter, ptr %a_ops, align 4
  %adapter_disable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @aac_sa_disable_interrupt, ptr %adapter_disable_int, align 4
  %adapter_enable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %6 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @aac_sa_enable_interrupt, ptr %adapter_enable_int, align 4
  %adapter_notify = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %adapter_notify to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @aac_sa_notify_adapter, ptr %adapter_notify, align 4
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sa_sync_cmd, ptr %adapter_sync_cmd, align 4
  %adapter_check_health = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 5
  %9 = ptrtoint ptr %adapter_check_health to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @aac_sa_check_health, ptr %adapter_check_health, align 4
  %adapter_restart = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 6
  %10 = ptrtoint ptr %adapter_restart to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @aac_sa_restart_adapter, ptr %adapter_restart, align 4
  %adapter_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 7
  %11 = ptrtoint ptr %adapter_start to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @aac_sa_start_adapter, ptr %adapter_start, align 4
  %adapter_intr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 9
  %12 = ptrtoint ptr %adapter_intr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @aac_sa_intr, ptr %adapter_intr, align 4
  %adapter_deliver = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 10
  %13 = ptrtoint ptr %adapter_deliver to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @aac_rx_deliver_producer, ptr %adapter_deliver, align 4
  %adapter_ioremap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 8
  %14 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @aac_sa_ioremap, ptr %adapter_ioremap, align 4
  %base_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 21
  %15 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %aac_sa_ioremap.exit.thread, label %aac_sa_ioremap.exit

aac_sa_ioremap.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 8
  tail call void @iounmap(ptr noundef %18) #5
  br label %if.end

aac_sa_ioremap.exit:                              ; preds = %entry
  %base_start.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %19 = ptrtoint ptr %base_start.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_start.i, align 8
  %call.i = tail call ptr @ioremap(i32 noundef %20, i32 noundef %16) #5
  %regs1.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %21 = ptrtoint ptr %regs1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %regs1.i, align 8
  %base.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %base.i, align 8
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %do.end, label %aac_sa_ioremap.exit.if.end_crit_edge

aac_sa_ioremap.exit.if.end_crit_edge:             ; preds = %aac_sa_ioremap.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %aac_sa_ioremap.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %3) #8
  br label %cleanup

if.end:                                           ; preds = %aac_sa_ioremap.exit.if.end_crit_edge, %aac_sa_ioremap.exit.thread
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %MAILBOX7 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %24, i32 0, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX7) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  %26 = and i32 %25, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %if.end23, label %do.end20

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %3, i32 noundef %1) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %MAILBOX728 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %28, i32 0, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX728) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %30 = and i32 %29, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool33.not = icmp eq i32 %30, 0
  br i1 %tobool33.not, label %if.end40, label %do.end37

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %1) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %MAILBOX745145 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %33, i32 0, i32 20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX745145) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool50.not146 = icmp sgt i32 %34, -1
  br i1 %tobool50.not146, label %if.end40.while.body_crit_edge, label %if.end40.while.end_crit_edge

if.end40.while.end_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end40.while.body_crit_edge:                    ; preds = %if.end40
  br label %while.body

while.body:                                       ; preds = %if.end65.while.body_crit_edge, %if.end40.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  %35 = load i32, ptr @startup_timeout, align 4
  %mul = mul i32 %35, 100
  %add = add i32 %mul, %31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then51, label %if.end65

if.then51:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 8
  %MAILBOX756 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %38, i32 0, i32 20
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX756) #5, !srcloc !33
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %3, i32 noundef %1, i32 noundef %40) #8
  br label %cleanup

if.end65:                                         ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #5
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 8
  %MAILBOX745 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %42, i32 0, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX745) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  %tobool50.not = icmp sgt i32 %43, -1
  br i1 %tobool50.not, label %if.end65.while.body_crit_edge, label %if.end65.while.end_crit_edge

if.end65.while.end_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end65.while.body_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %if.end65.while.end_crit_edge, %if.end40.while.end_crit_edge
  %44 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter_disable_int, align 4
  tail call void %45(ptr noundef %dev) #5
  %46 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter_enable_int, align 4
  tail call void %47(ptr noundef %dev) #5
  %call70 = tail call ptr @aac_init_adapter(ptr noundef %dev) #5
  %cmp71 = icmp eq ptr %call70, null
  br i1 %cmp71, label %error_irq, label %if.end73

if.end73:                                         ; preds = %while.end
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %48 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %sync_mode, align 4
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %49 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %50, i32 0, i32 46
  %51 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %irq, align 4
  %53 = ptrtoint ptr %adapter_intr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter_intr, align 4
  %call.i140 = tail call i32 @request_threaded_irq(i32 noundef %52, ptr noundef %54, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %cmp77 = icmp slt i32 %call.i140, 0
  br i1 %cmp77, label %do.end81, label %if.end84

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %1) #8
  br label %cleanup

if.end84:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  %base_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %55 = ptrtoint ptr %base_start to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %base_start, align 8
  %dbg_base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 20
  %57 = ptrtoint ptr %dbg_base to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %dbg_base, align 4
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 8
  %dbg_base_mapped = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 47
  %60 = ptrtoint ptr %dbg_base_mapped to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %dbg_base_mapped, align 4
  %61 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %base_size, align 8
  %dbg_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 22
  %63 = ptrtoint ptr %dbg_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %dbg_size, align 4
  %64 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter_enable_int, align 4
  tail call void %65(ptr noundef %dev) #5
  %init1.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %66 = ptrtoint ptr %init1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init1.i, align 8
  %call.i141 = tail call i64 @ktime_get_real_seconds() #5
  %conv.i = trunc i64 %call.i141 to i32
  %68 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %host_elapsed_seconds.i = getelementptr inbounds %struct._r7, ptr %67, i32 0, i32 12
  %69 = ptrtoint ptr %host_elapsed_seconds.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %host_elapsed_seconds.i, align 4
  %init_pa.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 24
  %70 = ptrtoint ptr %init_pa.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %init_pa.i, align 4
  %call2.i = tail call i32 @sa_sync_cmd(ptr noundef %dev, i32 noundef 5, i32 noundef %71, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #5
  br label %cleanup

error_irq:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 8
  %PRISETIRQMASK.i = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %73, i32 0, i32 11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRISETIRQMASK.i, i16 -1) #5, !srcloc !39
  %pdev88 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %74 = ptrtoint ptr %pdev88 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev88, align 4
  %irq89 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %irq89 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq89, align 4
  %call90 = tail call ptr @free_irq(i32 noundef %77, ptr noundef %dev) #5
  br label %cleanup

cleanup:                                          ; preds = %error_irq, %if.end84, %do.end81, %if.then51, %do.end37, %do.end20, %do.end
  %retval.0 = phi i32 [ 0, %if.end84 ], [ -1, %error_irq ], [ -1, %do.end81 ], [ -1, %if.then51 ], [ -1, %do.end37 ], [ -1, %do.end20 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_sa_interrupt_adapter(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sa_sync_cmd(ptr noundef %dev, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_sa_disable_interrupt(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %PRISETIRQMASK = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %1, i32 0, i32 11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRISETIRQMASK, i16 -1) #5, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_sa_enable_interrupt(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %PRICLEARIRQMASK = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQMASK, i16 15872) #5, !srcloc !39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_sa_notify_adapter(ptr nocapture noundef readonly %dev, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %do.body31 [
    i32 2, label %do.body
    i32 11, label %do.body2
    i32 6, label %do.body8
    i32 13, label %do.body14
    i32 8, label %entry.sw.epilog_crit_edge
    i32 15, label %do.body20
    i32 16, label %do.body26
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %SECSETIRQ = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %2, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ, i16 512) #5, !srcloc !39
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %regs4 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %3 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs4, align 8
  %SECSETIRQ6 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %4, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ6, i16 4096) #5, !srcloc !39
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %regs10 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %5 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs10, align 8
  %SECSETIRQ12 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %6, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ12, i16 1024) #5, !srcloc !39
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %regs16 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %7 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs16, align 8
  %SECSETIRQ18 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %8, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ18, i16 2048) #5, !srcloc !39
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %regs22 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %9 = ptrtoint ptr %regs22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs22, align 8
  %SECSETIRQ24 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %10, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ24, i16 16384) #5, !srcloc !39
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %regs28 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %11 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs28, align 8
  %SECSETIRQ30 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %12, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ30, i16 8192) #5, !srcloc !39
  br label %sw.epilog

do.body31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/sa.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 127, 0\0A.popsection", ""() #5, !srcloc !47
  unreachable

sw.epilog:                                        ; preds = %do.body26, %do.body20, %do.body14, %do.body8, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sa_sync_cmd(ptr nocapture noundef readonly %dev, i32 noundef %command, i32 noundef %p1, i32 noundef %p2, i32 noundef %p3, i32 noundef %p4, i32 noundef %p5, i32 noundef %p6, ptr noundef writeonly %ret, ptr noundef writeonly %r1, ptr noundef writeonly %r2, ptr noundef writeonly %r3, ptr noundef writeonly %r4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %0 = tail call i32 @llvm.bswap.i32(i32 %command)
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %MAILBOX0 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %2, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAILBOX0, i32 %0) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %3 = tail call i32 @llvm.bswap.i32(i32 %p1)
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %MAILBOX1 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %5, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAILBOX1, i32 %3) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %p2)
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %MAILBOX2 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %8, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAILBOX2, i32 %6) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %p3)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %MAILBOX3 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %11, i32 0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAILBOX3, i32 %9) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %p4)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %MAILBOX4 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %14, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MAILBOX4, i32 %12) #5, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %PRICLEARIRQ = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %16, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQ, i16 256) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %SECSETIRQ = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %18, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ, i16 256) #5, !srcloc !39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -3000, %19
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub117 = add i32 %add.neg, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub117)
  %cmp118 = icmp slt i32 %sub117, 0
  br i1 %cmp118, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 1073740) #5
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %PRISETIRQ = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %23, i32 0, i32 7
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PRISETIRQ) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  br i1 %tobool.not, label %if.end, label %do.body37

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %26
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.body37:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %PRICLEARIRQ42 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %28, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQ42, i16 256) #5, !srcloc !39
  %tobool43.not = icmp eq ptr %ret, null
  br i1 %tobool43.not, label %do.body37.if.end53_crit_edge, label %if.then44

do.body37.if.end53_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %MAILBOX049 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %30, i32 0, i32 13
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX049) #5, !srcloc !33
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %33 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %ret, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %do.body37.if.end53_crit_edge
  %tobool54.not = icmp eq ptr %r1, null
  br i1 %tobool54.not, label %if.end53.if.end64_crit_edge, label %if.then55

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %MAILBOX160 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %35, i32 0, i32 14
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX160) #5, !srcloc !33
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %38 = ptrtoint ptr %r1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %r1, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then55, %if.end53.if.end64_crit_edge
  %tobool65.not = icmp eq ptr %r2, null
  br i1 %tobool65.not, label %if.end64.if.end75_crit_edge, label %if.then66

if.end64.if.end75_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %MAILBOX271 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %40, i32 0, i32 15
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX271) #5, !srcloc !33
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %43 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %r2, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %if.end64.if.end75_crit_edge
  %tobool76.not = icmp eq ptr %r3, null
  br i1 %tobool76.not, label %if.end75.if.end86_crit_edge, label %if.then77

if.end75.if.end86_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then77:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %MAILBOX382 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %45, i32 0, i32 16
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX382) #5, !srcloc !33
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %48 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %r3, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.then77, %if.end75.if.end86_crit_edge
  %tobool87.not = icmp eq ptr %r4, null
  br i1 %tobool87.not, label %if.end86.cleanup_crit_edge, label %if.then88

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then88:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %MAILBOX493 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %50, i32 0, i32 17
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX493) #5, !srcloc !33
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  %53 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %r4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %if.end86.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then88 ], [ 0, %if.end86.cleanup_crit_edge ], [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_sa_check_health(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %MAILBOX7 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %1, i32 0, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX7) #5, !srcloc !33
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and6 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %. = select i1 %tobool7.not, i32 -3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %., %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aac_sa_restart_adapter(ptr nocapture noundef readnone %dev, i32 noundef %bled, i8 noundef zeroext %reset_type) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_sa_start_adapter(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %init1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %init1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init1, align 8
  %call = tail call i64 @ktime_get_real_seconds() #5
  %conv = trunc i64 %call to i32
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %host_elapsed_seconds = getelementptr inbounds %struct._r7, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %host_elapsed_seconds to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %host_elapsed_seconds, align 4
  %init_pa = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 24
  %4 = ptrtoint ptr %init_pa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_pa, align 4
  %call2 = tail call i32 @sa_sync_cmd(ptr noundef %dev, i32 noundef 5, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_sa_intr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %PRISETIRQ = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %1, i32 0, i32 7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PRISETIRQ) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %PRISETIRQMASK = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %4, i32 0, i32 11
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %PRISETIRQMASK) #5, !srcloc !33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %6 = and i32 %2, -65536
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = and i32 %5, -65536
  %9 = xor i32 %8, -65536
  %10 = and i32 %9, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %and13 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %MAILBOX5 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %12, i32 0, i32 18
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MAILBOX5) #5, !srcloc !33
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @aac_printf(ptr noundef %dev_id, i32 noundef %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %PRICLEARIRQ = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %16, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQ, i16 8192) #5, !srcloc !39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %SECSETIRQ = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %18, i32 0, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %SECSETIRQ, i16 8192) #5, !srcloc !39
  br label %cleanup

if.else:                                          ; preds = %if.then
  %and31 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else41, label %do.body34

do.body34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %PRICLEARIRQ39 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %20, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQ39, i16 512) #5, !srcloc !39
  %queues = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 15
  %21 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %queues, align 8
  %call40 = tail call i32 @aac_command_normal(ptr noundef %22) #5
  br label %cleanup

if.else41:                                        ; preds = %if.else
  %and43 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.else56, label %do.body46

do.body46:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %PRICLEARIRQ51 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %24, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQ51, i16 1024) #5, !srcloc !39
  %queues52 = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 15
  %25 = ptrtoint ptr %queues52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %queues52, align 8
  %arrayidx54 = getelementptr [8 x %struct.aac_queue], ptr %26, i32 0, i32 4
  %call55 = tail call i32 @aac_response_normal(ptr noundef %arrayidx54) #5
  br label %cleanup

if.else56:                                        ; preds = %if.else41
  %and58 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else67, label %do.body61

do.body61:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %PRICLEARIRQ66 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %28, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQ66, i16 2048) #5, !srcloc !39
  br label %cleanup

if.else67:                                        ; preds = %if.else56
  %and69 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else67.cleanup_crit_edge, label %do.body72

if.else67.cleanup_crit_edge:                      ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body72:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %PRICLEARIRQ77 = getelementptr inbounds %struct.sa_drawbridge_CSR, ptr %30, i32 0, i32 5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PRICLEARIRQ77, i16 4096) #5, !srcloc !39
  br label %cleanup

cleanup:                                          ; preds = %do.body72, %if.else67.cleanup_crit_edge, %do.body61, %do.body46, %do.body34, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body34 ], [ 1, %do.body61 ], [ 1, %do.body72 ], [ 1, %if.else67.cleanup_crit_edge ], [ 1, %do.body46 ], [ 1, %if.then15 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_rx_deliver_producer(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_sa_ioremap(ptr nocapture noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %1) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %base_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_start, align 8
  %call = tail call ptr @ioremap(i32 noundef %3, i32 noundef %size) #5
  %regs1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %regs1, align 8
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %base, align 8
  %cmp = icmp eq ptr %call, null
  %cond = sext i1 %cmp to i32
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.end ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_init_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_printf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_command_normal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_response_normal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aacraid/sa.c", i32 344, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @aac_sa_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @aac_sa_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aacraid/sa.c", i32 352, i32 3}
!8 = !{ptr @aac_sa_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @aac_sa_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aacraid/sa.c", i32 359, i32 3}
!12 = !{ptr @aac_sa_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @aac_sa_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aacraid/sa.c", i32 369, i32 4}
!16 = !{ptr @aac_sa_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @aac_sa_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aacraid/sa.c", i32 387, i32 17}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aacraid/sa.c", i32 388, i32 3}
!22 = !{ptr @aac_sa_init._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @aac_sa_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i64 4988330}
!34 = !{i64 2155063813}
!35 = !{i64 2155065960}
!36 = !{i64 2155068095}
!37 = !{i64 2155069165}
!38 = !{i64 2155045986}
!39 = !{i64 4987292}
!40 = !{i64 2155046642}
!41 = !{i64 2155047309}
!42 = !{i64 2155047851}
!43 = !{i64 2155048392}
!44 = !{i64 2155048934}
!45 = !{i64 2155049478}
!46 = !{i64 2155050020}
!47 = !{i64 2155050473, i64 2155050963, i64 2155050510, i64 2155050566, i64 2155050600, i64 2155050624, i64 2155050665, i64 2155050686, i64 2155050714, i64 2155050748}
!48 = !{i64 2155052047}
!49 = !{i64 4987912}
!50 = !{i64 2155052570}
!51 = !{i64 2155053078}
!52 = !{i64 2155053586}
!53 = !{i64 2155054094}
!54 = !{i64 2155054626}
!55 = !{i64 2155055167}
!56 = !{i64 2155056974}
!57 = !{i64 2155057323}
!58 = !{i64 2155058174}
!59 = !{i64 2155058816}
!60 = !{i64 2155059458}
!61 = !{i64 2155060100}
!62 = !{i64 2155060742}
!63 = !{i64 2155061666}
!64 = !{i64 2155041037}
!65 = !{i64 2155041687}
!66 = !{i64 2155042347}
!67 = !{i64 2155042696}
!68 = !{i64 2155043248}
!69 = !{i64 2155043800}
!70 = !{i64 2155044354}
!71 = !{i64 2155044908}
!72 = !{i64 2155045462}
