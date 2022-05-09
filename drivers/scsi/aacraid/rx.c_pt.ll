; ModuleID = '/llk/IR_all_yes/drivers/scsi/aacraid/rx.c_pt.bc'
source_filename = "../drivers/scsi/aacraid/rx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aac_common = type { i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.fib = type { ptr, i16, i16, ptr, %struct.completion, %struct.spinlock, i32, ptr, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.aac_dev = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, %struct.list_head, %struct.adapter_ops, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, [32 x i32], [32 x %struct.atomic_t], i32, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.delayed_work, %struct.delayed_work, i32, %struct.spinlock, %union.anon.85, ptr, ptr, ptr, i32, i32, %struct.aac_adapter_info, %struct.aac_supplement_adapter_info, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, i32, i32, i32, i32, %struct.atomic_t, i32, [32 x %struct.msix_entry], [32 x %struct.aac_msix_ctx], [5 x [256 x %struct.aac_hba_map_info]], ptr, i8, i32, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.atomic_t = type { i32 }
%struct.msix_entry = type { i32, i16 }
%struct.aac_msix_ctx = type { i32, ptr }
%struct.aac_hba_map_info = type { i32, i8, i8, i16, i32, ptr }
%struct.aac_queue = type { i64, ptr, %struct.aac_qhdr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, %struct.spinlock, %struct.list_head, %struct.atomic_t, ptr }
%struct.aac_qhdr = type { i64, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.rx_mu_registers = type { i32, i32, i32, i32, [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_fibhdr = type { i32, i16, i8, i8, i16, i16, i32, %union.anon, i32, i32, i32 }
%union.anon = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.79, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.79 = type { ptr }
%struct._r7 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.POSTSTATUS = type { i32, i32 }
%struct.rx_registers = type { %struct.rx_mu_registers, [2 x i32], %struct.rx_inbound }
%struct.rx_inbound = type { [8 x i32] }

@aac_config = external dso_local local_unnamed_addr global %struct.aac_common, align 4
@_aac_rx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: unable to map adapter.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"_aac_rx_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/scsi/aacraid/rx.c\00", [38 x i8] zeroinitializer }, align 32
@_aac_rx_init._entry_ptr = internal global ptr @_aac_rx_init._entry, section ".printk_index", align 4
@_aac_rx_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s%d: adapter self-test failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@_aac_rx_init._entry_ptr.5 = internal global ptr @_aac_rx_init._entry.3, section ".printk_index", align 4
@_aac_rx_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s%d: adapter monitor panic.\0A\00", [32 x i8] zeroinitializer }, align 32
@_aac_rx_init._entry_ptr.8 = internal global ptr @_aac_rx_init._entry.6, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@startup_timeout = external dso_local local_unnamed_addr global i32, align 4
@_aac_rx_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013%s%d: adapter kernel failed to start, init status = %lx.\0A\00", [36 x i8] zeroinitializer }, align 32
@_aac_rx_init._entry_ptr.11 = internal global ptr @_aac_rx_init._entry.9, section ".printk_index", align 4
@aac_commit = external dso_local local_unnamed_addr global i32, align 4
@aac_msi = external dso_local local_unnamed_addr global i32, align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aacraid\00", [24 x i8] zeroinitializer }, align 32
@_aac_rx_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s%d: Interrupt unavailable.\0A\00", [32 x i8] zeroinitializer }, align 32
@_aac_rx_init._entry_ptr.15 = internal global ptr @_aac_rx_init._entry.13, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@aac_rx_restart_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 480, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s%d: adapter kernel panic'd %x.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aac_rx_restart_adapter\00", [41 x i8] zeroinitializer }, align 32
@aac_rx_restart_adapter._entry_ptr = internal global ptr @aac_rx_restart_adapter._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 939720719]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 939720719]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 88, i64 120]
@__sancov_gen_cov_switch_values.22 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 6, i64 8, i64 11, i64 13, i64 15, i64 16]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 552, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 585, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 592, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 604, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 649, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 652, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [29 x i8] c"../drivers/scsi/aacraid/rx.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 479, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @_aac_rx_init._entry, ptr @_aac_rx_init._entry.13, ptr @_aac_rx_init._entry.3, ptr @_aac_rx_init._entry.6, ptr @_aac_rx_init._entry.9, ptr @_aac_rx_init._entry_ptr, ptr @_aac_rx_init._entry_ptr.11, ptr @_aac_rx_init._entry_ptr.15, ptr @_aac_rx_init._entry_ptr.5, ptr @_aac_rx_init._entry_ptr.8, ptr @aac_rx_restart_adapter._entry, ptr @aac_rx_restart_adapter._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_aac_rx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_aac_rx_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_aac_rx_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_aac_rx_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_aac_rx_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aac_rx_restart_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_rx_deliver_producer(ptr noundef %fib) #0 align 64 {
entry:
  %Index = alloca i32, align 4
  %nointr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %queues = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queues, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Index) #7
  %4 = ptrtoint ptr %Index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %Index, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nointr) #7
  %5 = ptrtoint ptr %nointr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %nointr, align 4
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %6 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_fib_va, align 4
  %call = call i32 @aac_queue_get(ptr noundef %1, ptr noundef nonnull %Index, i32 noundef 2, ptr noundef %7, i32 noundef 1, ptr noundef %fib, ptr noundef nonnull %nointr) #7
  %numpending = getelementptr [8 x %struct.aac_queue], ptr %3, i32 0, i32 2, i32 9
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %numpending, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %numpending, i32 1, i32 3, i32 1) #7
  %8 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %numpending, ptr %numpending, i32 1, ptr elementtype(i32) %numpending) #7, !srcloc !39
  %9 = ptrtoint ptr %Index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %Index, align 4
  %add = add i32 %10, 1
  %11 = call i32 @llvm.bswap.i32(i32 %add)
  %producer = getelementptr [8 x %struct.aac_queue], ptr %3, i32 0, i32 2, i32 2, i32 1
  %12 = ptrtoint ptr %producer to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %producer, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %13, align 4
  %15 = ptrtoint ptr %nointr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nointr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_config to i32))
  %17 = load i32, ptr @aac_config, align 4
  %and = and i32 %17, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %adapter_notify = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 17, i32 1
  %18 = ptrtoint ptr %adapter_notify to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter_notify, align 4
  call void %19(ptr noundef %1, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nointr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Index) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_queue_get(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @aac_rx_select_comm(ptr nocapture noundef writeonly %dev, i32 noundef %comm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %comm to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %comm, label %entry.return_crit_edge [
    i32 0, label %entry.return.sink.split_crit_edge
    i32 1, label %sw.bb3
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb3, %entry.return.sink.split_crit_edge
  %aac_rx_enable_interrupt_producer.sink = phi ptr [ @aac_rx_enable_interrupt_message, %sw.bb3 ], [ @aac_rx_enable_interrupt_producer, %entry.return.sink.split_crit_edge ]
  %aac_rx_intr_producer.sink = phi ptr [ @aac_rx_intr_message, %sw.bb3 ], [ @aac_rx_intr_producer, %entry.return.sink.split_crit_edge ]
  %aac_rx_deliver_producer.sink = phi ptr [ @aac_rx_deliver_message, %sw.bb3 ], [ @aac_rx_deliver_producer, %entry.return.sink.split_crit_edge ]
  %adapter_enable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %1 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %aac_rx_enable_interrupt_producer.sink, ptr %adapter_enable_int, align 4
  %adapter_intr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 9
  %2 = ptrtoint ptr %adapter_intr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %aac_rx_intr_producer.sink, ptr %adapter_intr, align 4
  %adapter_deliver = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 10
  %3 = ptrtoint ptr %adapter_deliver to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %aac_rx_deliver_producer.sink, ptr %adapter_deliver, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_rx_enable_interrupt_producer(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %OIMR to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 251, ptr %OIMR, align 4
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %OIMR1 = getelementptr inbounds %struct.rx_mu_registers, ptr %2, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %OIMR1, i8 -5) #7, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_rx_intr_producer(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %OISR = getelementptr inbounds %struct.rx_mu_registers, ptr %1, i32 0, i32 10
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %OISR) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %conv = zext i8 %2 to i32
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 49
  %3 = ptrtoint ptr %OIMR to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %OIMR, align 4
  %neg = xor i32 %4, -1
  %and = and i32 %neg, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then, !prof !44

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %ODR = getelementptr inbounds %struct.rx_mu_registers, ptr %6, i32 0, i32 9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR) #7, !srcloc !45
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %and11 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then19, !prof !47

if.then19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %IndexRegs = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 48
  %9 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %IndexRegs, align 8
  %arrayidx = getelementptr [8 x i32], ptr %10, i32 0, i32 5
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #7, !srcloc !45
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @aac_printf(ptr noundef %dev_id, i32 noundef %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %ODR27 = getelementptr inbounds %struct.rx_mu_registers, ptr %14, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR27, i32 536870912) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %IDR = getelementptr inbounds %struct.rx_mu_registers, ptr %16, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR, i32 536870912) #7, !srcloc !50
  br label %cleanup

if.else:                                          ; preds = %if.then
  %and33 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else50, label %do.body42, !prof !47

do.body42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %ODR47 = getelementptr inbounds %struct.rx_mu_registers, ptr %18, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR47, i32 33554432) #7, !srcloc !50
  %queues = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 15
  %19 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %queues, align 8
  %call49 = tail call i32 @aac_command_normal(ptr noundef %20) #7
  br label %cleanup

if.else50:                                        ; preds = %if.else
  %and51 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.else70, label %do.body60, !prof !44

do.body60:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !53
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %ODR65 = getelementptr inbounds %struct.rx_mu_registers, ptr %22, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR65, i32 67108864) #7, !srcloc !50
  %queues66 = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 15
  %23 = ptrtoint ptr %queues66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %queues66, align 8
  %arrayidx68 = getelementptr [8 x %struct.aac_queue], ptr %24, i32 0, i32 4
  %call69 = tail call i32 @aac_response_normal(ptr noundef %arrayidx68) #7
  br label %cleanup

if.else70:                                        ; preds = %if.else50
  %and71 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.else86, label %do.body80, !prof !47

do.body80:                                        ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %ODR85 = getelementptr inbounds %struct.rx_mu_registers, ptr %26, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR85, i32 134217728) #7, !srcloc !50
  br label %cleanup

if.else86:                                        ; preds = %if.else70
  %and87 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.else86.cleanup_crit_edge, label %do.body96, !prof !47

if.else86.cleanup_crit_edge:                      ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body96:                                        ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %ODR101 = getelementptr inbounds %struct.rx_mu_registers, ptr %28, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR101, i32 134217728) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 8
  %ODR107 = getelementptr inbounds %struct.rx_mu_registers, ptr %30, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR107, i32 268435456) #7, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %do.body96, %if.else86.cleanup_crit_edge, %do.body80, %do.body60, %do.body42, %if.then19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body42 ], [ 1, %do.body80 ], [ 1, %do.body96 ], [ 1, %if.else86.cleanup_crit_edge ], [ 1, %do.body60 ], [ 1, %if.then19 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_rx_enable_interrupt_message(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %OIMR to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 247, ptr %OIMR, align 4
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %OIMR1 = getelementptr inbounds %struct.rx_mu_registers, ptr %2, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %OIMR1, i8 -9) #7, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_rx_intr_message(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev_id, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %OutboundQueue = getelementptr inbounds %struct.rx_mu_registers, ptr %1, i32 0, i32 15
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OutboundQueue) #7, !srcloc !45
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !44

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %OutboundQueue7 = getelementptr inbounds %struct.rx_mu_registers, ptr %5, i32 0, i32 15
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OutboundQueue7) #7, !srcloc !45
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %Index.0 = phi i32 [ %7, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %Index.0)
  %cmp11.not = icmp eq i32 %Index.0, -1
  br i1 %cmp11.not, label %if.end.cleanup_crit_edge, label %if.end.do.body_crit_edge, !prof !44

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end51.do.body_crit_edge, %if.end.do.body_crit_edge
  %Index.1 = phi i32 [ %16, %if.end51.do.body_crit_edge ], [ %Index.0, %if.end.do.body_crit_edge ]
  %and = and i32 %Index.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %Index.1)
  %cmp21 = icmp eq i32 %Index.1, -2
  %and24 = and i32 %Index.1, -3
  br i1 %cmp21, label %if.then20.if.end51_crit_edge, label %if.then20.if.then31_crit_edge

if.then20.if.then31_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then20.if.end51_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %and25 = and i32 %Index.1, 1
  %shr = lshr i32 %Index.1, 2
  br label %if.then31

if.then31:                                        ; preds = %if.else, %if.then20.if.then31_crit_edge
  %Index.2.ph = phi i32 [ %shr, %if.else ], [ %and24, %if.then20.if.then31_crit_edge ]
  %isFastResponse.1.ph = phi i32 [ %and25, %if.else ], [ 0, %if.then20.if.then31_crit_edge ]
  %isAif.0.ph = phi i32 [ 0, %if.else ], [ 1, %if.then20.if.then31_crit_edge ]
  %call32 = tail call i32 @aac_intr_normal(ptr noundef %dev_id, i32 noundef %Index.2.ph, i32 noundef %isAif.0.ph, i32 noundef %isFastResponse.1.ph, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then31.if.end51_crit_edge, label %do.body41, !prof !47

if.then31.if.end51_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.body41:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %Index.2.ph)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %OutboundQueue44 = getelementptr inbounds %struct.rx_mu_registers, ptr %10, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %OutboundQueue44, i32 %8) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 8
  %ODR = getelementptr inbounds %struct.rx_mu_registers, ptr %12, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR, i32 67108864) #7, !srcloc !50
  br label %if.end51

if.end51:                                         ; preds = %do.body41, %if.then31.if.end51_crit_edge, %if.then20.if.end51_crit_edge
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %OutboundQueue56 = getelementptr inbounds %struct.rx_mu_registers, ptr %14, i32 0, i32 15
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OutboundQueue56) #7, !srcloc !45
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %cmp61.not = icmp eq i32 %15, -1
  br i1 %cmp61.not, label %if.end51.cleanup_crit_edge, label %if.end51.do.body_crit_edge

if.end51.do.body_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end51.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_rx_deliver_message(ptr nocapture noundef readonly %fib) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %queues = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queues, align 8
  %numpending = getelementptr [8 x %struct.aac_queue], ptr %3, i32 0, i32 2, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %numpending, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %numpending, i32 1, i32 3, i32 1) #7
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %numpending, ptr %numpending, i32 1, ptr elementtype(i32) %numpending) #7, !srcloc !39
  %regs = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 45
  br label %for.cond

for.cond:                                         ; preds = %if.end24, %entry
  %count.0 = phi i32 [ 10000000, %entry ], [ %dec, %if.end24 ]
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %InboundQueue = getelementptr inbounds %struct.rx_mu_registers, ptr %6, i32 0, i32 14
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %InboundQueue) #7, !srcloc !45
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp eq i32 %7, -1
  br i1 %cmp, label %if.then, label %for.cond.if.end_crit_edge, !prof !44

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %InboundQueue8 = getelementptr inbounds %struct.rx_mu_registers, ptr %10, i32 0, i32 14
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %InboundQueue8) #7, !srcloc !45
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.if.end_crit_edge
  %Index.0 = phi i32 [ %12, %if.then ], [ %8, %for.cond.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %Index.0)
  %cmp12.not = icmp eq i32 %Index.0, -1
  br i1 %cmp12.not, label %if.end20, label %for.end, !prof !44

if.end20:                                         ; preds = %if.end
  %dec = add nsw i32 %count.0, -1
  %cmp21 = icmp eq i32 %dec, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i62 = tail call zeroext i1 @__kasan_check_write(ptr noundef %numpending, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %numpending, i32 1, i32 3, i32 1) #7
  %13 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %numpending, ptr %numpending, i32 1, ptr elementtype(i32) %numpending) #7, !srcloc !65
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #7
  br label %for.cond

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.aac_dev, ptr %1, i32 0, i32 46
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %16, i32 %Index.0
  %hw_fib_pa = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 14
  %17 = ptrtoint ptr %hw_fib_pa to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_fib_pa, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #7, !srcloc !50
  %add.ptr26 = getelementptr i8, ptr %add.ptr, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 0) #7, !srcloc !50
  %add.ptr31 = getelementptr i8, ptr %add.ptr26, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %hw_fib_va = getelementptr inbounds %struct.fib, ptr %fib, i32 0, i32 13
  %20 = ptrtoint ptr %hw_fib_va to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw_fib_va, align 4
  %Size = getelementptr inbounds %struct.aac_fibhdr, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %Size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %Size, align 4
  %24 = tail call i16 @llvm.bswap.i16(i16 %23)
  %conv35 = zext i16 %24 to i32
  %25 = tail call i32 @llvm.bswap.i32(i32 %conv35)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %25) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %Index.0)
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 8
  %InboundQueue41 = getelementptr inbounds %struct.rx_mu_registers, ptr %28, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %InboundQueue41, i32 %26) #7, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then22
  %retval.0 = phi i32 [ 0, %for.end ], [ -110, %if.then22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_aac_rx_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %adapter_ioremap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 8
  %4 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter_ioremap, align 4
  %base_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 21
  %6 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_size, align 8
  %call = tail call i32 %5(ptr noundef %dev, i32 noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %8 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rx_sync_cmd, ptr %adapter_sync_cmd, align 4
  %adapter_enable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %9 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @aac_rx_disable_interrupt, ptr %adapter_enable_int, align 4
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %OIMR = getelementptr inbounds %struct.rx_mu_registers, ptr %11, i32 0, i32 11
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %OIMR) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %conv = zext i8 %12 to i32
  %OIMR8 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %13 = ptrtoint ptr %OIMR8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %OIMR8, align 4
  %and = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and)
  %cmp.not = icmp eq i32 %and, 12
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %init_reset = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 85
  %14 = ptrtoint ptr %init_reset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %init_reset, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool10.not = icmp eq i8 %15, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end29_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false.if.end29_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %init_reset13 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 85
  %16 = ptrtoint ptr %init_reset13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %init_reset13, align 8
  %call14 = tail call i32 @aac_rx_restart_adapter(ptr noundef %dev, i32 noundef 0, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.while.cond_crit_edge, label %if.then12.if.end29_crit_edge

if.then12.if.end29_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then12.while.cond_crit_edge:                   ; preds = %if.then12
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.then12.while.cond_crit_edge
  %restart.0 = phi i32 [ %inc, %land.rhs.while.cond_crit_edge ], [ 0, %if.then12.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %restart.0)
  %exitcond.not = icmp eq i32 %restart.0, 511
  br i1 %exitcond.not, label %while.cond.if.end29_crit_edge, label %land.rhs

while.cond.if.end29_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.rhs:                                         ; preds = %while.cond
  %inc = add nuw nsw i32 %restart.0, 1
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %OutboundQueue = getelementptr inbounds %struct.rx_mu_registers, ptr %18, i32 0, i32 15
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OutboundQueue) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %cmp26.not = icmp eq i32 %19, -1
  br i1 %cmp26.not, label %land.rhs.if.end29_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.end29:                                         ; preds = %land.rhs.if.end29_crit_edge, %while.cond.if.end29_crit_edge, %if.then12.if.end29_crit_edge, %lor.lhs.false.if.end29_crit_edge
  %restart.1 = phi i32 [ 0, %if.then12.if.end29_crit_edge ], [ 0, %lor.lhs.false.if.end29_crit_edge ], [ 512, %while.cond.if.end29_crit_edge ], [ %inc, %land.rhs.if.end29_crit_edge ]
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %OMRx = getelementptr inbounds %struct.rx_mu_registers, ptr %21, i32 0, i32 5
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMRx) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool38.not = icmp eq i32 %23, 0
  br i1 %tobool38.not, label %if.end29.if.end46_crit_edge, label %if.then39

if.end29.if.end46_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then39:                                        ; preds = %if.end29
  %call40 = tail call i32 @aac_rx_check_health(ptr noundef %dev)
  %call41 = tail call i32 @aac_rx_restart_adapter(ptr noundef %dev, i32 noundef %call40, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %inc45 = add i32 %restart.1, 1
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end29.if.end46_crit_edge
  %restart.2 = phi i32 [ %inc45, %if.end44 ], [ %restart.1, %if.end29.if.end46_crit_edge ]
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %OMRx51 = getelementptr inbounds %struct.rx_mu_registers, ptr %25, i32 0, i32 5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMRx51) #7, !srcloc !45
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %and56 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end65, label %do.end61

do.end61:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name1, align 8
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %29, i32 noundef %1) #10
  br label %cleanup

if.end65:                                         ; preds = %if.end46
  %and66 = and i32 %27, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.end75, label %do.end71

do.end71:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name1, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %31, i32 noundef %1) #10
  br label %cleanup

if.end75:                                         ; preds = %if.end65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 8
  %OMRx81271 = getelementptr inbounds %struct.rx_mu_registers, ptr %34, i32 0, i32 5
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMRx81271) #7, !srcloc !45
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %and86272 = and i32 %36, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86272)
  %tobool87.not273 = icmp eq i32 %and86272, 0
  br i1 %tobool87.not273, label %if.end75.while.body88_crit_edge, label %if.end75.while.end128_crit_edge

if.end75.while.end128_crit_edge:                  ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end128

if.end75.while.body88_crit_edge:                  ; preds = %if.end75
  br label %while.body88

while.body88:                                     ; preds = %if.end127.while.body88_crit_edge, %if.end75.while.body88_crit_edge
  %37 = phi i32 [ %47, %if.end127.while.body88_crit_edge ], [ %36, %if.end75.while.body88_crit_edge ]
  %start.0275 = phi i32 [ %start.2, %if.end127.while.body88_crit_edge ], [ %32, %if.end75.while.body88_crit_edge ]
  %restart.3274 = phi i32 [ %restart.4, %if.end127.while.body88_crit_edge ], [ %restart.2, %if.end75.while.body88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.3274)
  %tobool89.not = icmp eq i32 %restart.3274, 0
  %and90 = and i32 %37, 292
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %or.cond = select i1 %tobool89.not, i1 true, i1 %tobool91.not
  br i1 %or.cond, label %lor.lhs.false92, label %while.body88.do.end98_crit_edge

while.body88.do.end98_crit_edge:                  ; preds = %while.body88
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

lor.lhs.false92:                                  ; preds = %while.body88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  %38 = load i32, ptr @startup_timeout, align 4
  %mul = mul i32 %38, 100
  %add = add i32 %mul, %start.0275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp93 = icmp slt i32 %sub, 0
  br i1 %cmp93, label %lor.lhs.false92.do.end98_crit_edge, label %if.end102

lor.lhs.false92.do.end98_crit_edge:               ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end98

do.end98:                                         ; preds = %lor.lhs.false92.do.end98_crit_edge, %while.body88.do.end98_crit_edge
  %40 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name1, align 8
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %41, i32 noundef %1, i32 noundef %37) #10
  br label %cleanup

if.end102:                                        ; preds = %lor.lhs.false92
  br i1 %tobool89.not, label %land.lhs.true104, label %if.end102.if.end127_crit_edge

if.end102.if.end127_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

land.lhs.true104:                                 ; preds = %if.end102
  br i1 %tobool91.not, label %lor.lhs.false107, label %land.lhs.true104.if.then116_crit_edge

land.lhs.true104.if.then116_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

lor.lhs.false107:                                 ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %38)
  %cmp108 = icmp sgt i32 %38, 60
  %sub110 = add i32 %38, -60
  %div = sdiv i32 %38, 2
  %cond = select i1 %cmp108, i32 %sub110, i32 %div
  %mul111 = mul i32 %cond, 100
  %add112 = add i32 %mul111, %start.0275
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %sub113 = sub i32 %add112, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub113)
  %cmp114 = icmp slt i32 %sub113, 0
  br i1 %cmp114, label %lor.lhs.false107.if.then116_crit_edge, label %lor.lhs.false107.if.end127_crit_edge

lor.lhs.false107.if.end127_crit_edge:             ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

lor.lhs.false107.if.then116_crit_edge:            ; preds = %lor.lhs.false107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then116

if.then116:                                       ; preds = %lor.lhs.false107.if.then116_crit_edge, %land.lhs.true104.if.then116_crit_edge
  %call117 = tail call i32 @aac_rx_check_health(ptr noundef %dev)
  %call118 = tail call i32 @aac_rx_restart_adapter(ptr noundef %dev, i32 noundef %call117, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then124, label %if.then116.if.end127_crit_edge, !prof !47

if.then116.if.end127_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127

if.then124:                                       ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  br label %if.end127

if.end127:                                        ; preds = %if.then124, %if.then116.if.end127_crit_edge, %lor.lhs.false107.if.end127_crit_edge, %if.end102.if.end127_crit_edge
  %restart.4 = phi i32 [ %restart.3274, %if.end102.if.end127_crit_edge ], [ 0, %lor.lhs.false107.if.end127_crit_edge ], [ 1, %if.then124 ], [ 1, %if.then116.if.end127_crit_edge ]
  %start.2 = phi i32 [ %start.0275, %if.end102.if.end127_crit_edge ], [ %start.0275, %lor.lhs.false107.if.end127_crit_edge ], [ %43, %if.then124 ], [ %start.0275, %if.then116.if.end127_crit_edge ]
  tail call void @msleep(i32 noundef 1) #7
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %OMRx81 = getelementptr inbounds %struct.rx_mu_registers, ptr %45, i32 0, i32 5
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMRx81) #7, !srcloc !45
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %and86 = and i32 %47, 128
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end127.while.body88_crit_edge, label %if.end127.while.end128_crit_edge

if.end127.while.end128_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end128

if.end127.while.body88_crit_edge:                 ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body88

while.end128:                                     ; preds = %if.end127.while.end128_crit_edge, %if.end75.while.end128_crit_edge
  %restart.3.lcssa = phi i32 [ %restart.2, %if.end75.while.end128_crit_edge ], [ %restart.4, %if.end127.while.end128_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %restart.3.lcssa)
  %tobool129.not = icmp eq i32 %restart.3.lcssa, 0
  br i1 %tobool129.not, label %while.end128.if.end133_crit_edge, label %land.lhs.true130

while.end128.if.end133_crit_edge:                 ; preds = %while.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

land.lhs.true130:                                 ; preds = %while.end128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_commit to i32))
  %48 = load i32, ptr @aac_commit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool131.not = icmp eq i32 %48, 0
  br i1 %tobool131.not, label %land.lhs.true130.if.end133_crit_edge, label %if.then132

land.lhs.true130.if.end133_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then132:                                       ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @aac_commit to i32))
  store i32 1, ptr @aac_commit, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then132, %land.lhs.true130.if.end133_crit_edge, %while.end128.if.end133_crit_edge
  %49 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @aac_rx_interrupt_adapter, ptr %a_ops, align 4
  %adapter_disable_int = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 2
  %50 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @aac_rx_disable_interrupt, ptr %adapter_disable_int, align 4
  %adapter_notify = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 1
  %51 = ptrtoint ptr %adapter_notify to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @aac_rx_notify_adapter, ptr %adapter_notify, align 4
  %52 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @rx_sync_cmd, ptr %adapter_sync_cmd, align 4
  %adapter_check_health = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 5
  %53 = ptrtoint ptr %adapter_check_health to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @aac_rx_check_health, ptr %adapter_check_health, align 4
  %adapter_restart = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 6
  %54 = ptrtoint ptr %adapter_restart to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @aac_rx_restart_adapter, ptr %adapter_restart, align 4
  %adapter_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 7
  %55 = ptrtoint ptr %adapter_start to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @aac_rx_start_adapter, ptr %adapter_start, align 4
  %adapter_comm = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 15
  %56 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter_comm, align 4
  %call143 = tail call i32 %57(ptr noundef %dev, i32 noundef 0) #7
  %58 = ptrtoint ptr %adapter_disable_int to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter_disable_int, align 4
  tail call void %59(ptr noundef %dev) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %ODR = getelementptr inbounds %struct.rx_mu_registers, ptr %61, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR, i32 -1) #7, !srcloc !50
  %62 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter_enable_int, align 4
  tail call void %63(ptr noundef %dev) #7
  %call153 = tail call ptr @aac_init_adapter(ptr noundef %dev) #7
  %cmp154 = icmp eq ptr %call153, null
  br i1 %cmp154, label %if.end133.cleanup_crit_edge, label %if.end157

if.end133.cleanup_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end157:                                        ; preds = %if.end133
  %64 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %adapter_comm, align 4
  %comm_interface = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 59
  %66 = ptrtoint ptr %comm_interface to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %comm_interface, align 2
  %conv160 = zext i8 %67 to i32
  %call161 = tail call i32 %65(ptr noundef %dev, i32 noundef %conv160) #7
  %sync_mode = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 70
  %68 = ptrtoint ptr %sync_mode to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %sync_mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aac_msi to i32))
  %69 = load i32, ptr @aac_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool162.not = icmp eq i32 %69, 0
  br i1 %tobool162.not, label %if.end157.land.end168_crit_edge, label %land.rhs163

if.end157.land.end168_crit_edge:                  ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end168

land.rhs163:                                      ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %70 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev, align 4
  %call164 = tail call i32 @pci_enable_msi(ptr noundef %71) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br label %land.end168

land.end168:                                      ; preds = %land.rhs163, %if.end157.land.end168_crit_edge
  %72 = phi i1 [ false, %if.end157.land.end168_crit_edge ], [ %tobool165.not, %land.rhs163 ]
  %conv169 = zext i1 %72 to i8
  %msi = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 65
  %73 = ptrtoint ptr %msi to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv169, ptr %msi, align 4
  %pdev170 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %74 = ptrtoint ptr %pdev170 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev170, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 46
  %76 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq, align 4
  %adapter_intr = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 9
  %78 = ptrtoint ptr %adapter_intr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %adapter_intr, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %77, ptr noundef %79, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp173 = icmp slt i32 %call.i, 0
  br i1 %cmp173, label %if.then175, label %if.end186

if.then175:                                       ; preds = %land.end168
  %80 = ptrtoint ptr %msi to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %msi, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool177.not = icmp eq i8 %81, 0
  br i1 %tobool177.not, label %if.then175.do.end183_crit_edge, label %if.then178

if.then175.do.end183_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end183

if.then178:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %pdev170 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdev170, align 4
  tail call void @pci_disable_msi(ptr noundef %83) #7
  br label %do.end183

do.end183:                                        ; preds = %if.then178, %if.then175.do.end183_crit_edge
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %1) #10
  br label %cleanup

if.end186:                                        ; preds = %land.end168
  call void @__sanitizer_cov_trace_pc() #9
  %base_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %84 = ptrtoint ptr %base_start to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %base_start, align 8
  %dbg_base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 20
  %86 = ptrtoint ptr %dbg_base to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %dbg_base, align 4
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %87 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base, align 8
  %dbg_base_mapped = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 47
  %89 = ptrtoint ptr %dbg_base_mapped to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %dbg_base_mapped, align 4
  %90 = ptrtoint ptr %base_size to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %base_size, align 8
  %dbg_size = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 22
  %92 = ptrtoint ptr %dbg_size to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %dbg_size, align 4
  %93 = ptrtoint ptr %adapter_enable_int to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adapter_enable_int, align 4
  tail call void %94(ptr noundef %dev) #7
  %init1.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %95 = ptrtoint ptr %init1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init1.i, align 8
  %call.i267 = tail call i64 @ktime_get_real_seconds() #7
  %conv.i = trunc i64 %call.i267 to i32
  %97 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #7
  %host_elapsed_seconds.i = getelementptr inbounds %struct._r7, ptr %96, i32 0, i32 12
  %98 = ptrtoint ptr %host_elapsed_seconds.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %host_elapsed_seconds.i, align 4
  %init_pa.i = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 24
  %99 = ptrtoint ptr %init_pa.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %init_pa.i, align 4
  %call2.i = tail call i32 @rx_sync_cmd(ptr noundef %dev, i32 noundef 5, i32 noundef %100, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end186, %do.end183, %if.end133.cleanup_crit_edge, %do.end98, %do.end71, %do.end61, %if.then39.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end186 ], [ -1, %if.end133.cleanup_crit_edge ], [ -1, %if.then39.cleanup_crit_edge ], [ -1, %do.end183 ], [ -1, %do.end98 ], [ -1, %do.end71 ], [ -1, %do.end61 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_sync_cmd(ptr noundef %dev, i32 noundef %command, i32 noundef %p1, i32 noundef %p2, i32 noundef %p3, i32 noundef %p4, i32 noundef %p5, i32 noundef %p6, ptr noundef writeonly %status, ptr noundef writeonly %r1, ptr noundef writeonly %r2, ptr noundef writeonly %r3, ptr noundef writeonly %r4) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %command)
  %IndexRegs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %1 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %IndexRegs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %3 = tail call i32 @llvm.bswap.i32(i32 %p1)
  %4 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %IndexRegs, align 8
  %arrayidx6 = getelementptr [8 x i32], ptr %5, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx6, i32 %3) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %p2)
  %7 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %IndexRegs, align 8
  %arrayidx12 = getelementptr [8 x i32], ptr %8, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx12, i32 %6) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %p3)
  %10 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %IndexRegs, align 8
  %arrayidx18 = getelementptr [8 x i32], ptr %11, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx18, i32 %9) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %p4)
  %13 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %IndexRegs, align 8
  %arrayidx24 = getelementptr [8 x i32], ptr %14, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24, i32 %12) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %ODR = getelementptr inbounds %struct.rx_mu_registers, ptr %16, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR, i32 16777216) #7, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %17 = ptrtoint ptr %OIMR to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 255, ptr %OIMR, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %OIMR33 = getelementptr inbounds %struct.rx_mu_registers, ptr %19, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %OIMR33, i8 -1) #7, !srcloc !41
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %OIMR36 = getelementptr inbounds %struct.rx_mu_registers, ptr %21, i32 0, i32 11
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %OIMR36) #7, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %IDR = getelementptr inbounds %struct.rx_mu_registers, ptr %24, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR, i32 16777216) #7, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -3000, %25
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub152 = add i32 %add.neg, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub152)
  %cmp153 = icmp slt i32 %sub152, 0
  br i1 %cmp153, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 1073740) #7
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %ODR47 = getelementptr inbounds %struct.rx_mu_registers, ptr %29, i32 0, i32 9
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ODR47) #7, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not = icmp eq i32 %31, 0
  br i1 %tobool.not, label %if.end, label %do.body51

do.body51:                                        ; preds = %while.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %ODR56 = getelementptr inbounds %struct.rx_mu_registers, ptr %33, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR56, i32 16777216) #7, !srcloc !50
  %tobool62.not = icmp eq ptr %status, null
  br i1 %tobool62.not, label %do.body51.if.end72_crit_edge, label %if.then63

do.body51.if.end72_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %34
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %IndexRegs, align 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !45
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %39 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %status, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then63, %do.body51.if.end72_crit_edge
  %tobool73.not = icmp eq ptr %r1, null
  br i1 %tobool73.not, label %if.end72.if.end83_crit_edge, label %if.then74

if.end72.if.end83_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then74:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %IndexRegs, align 8
  %arrayidx79 = getelementptr [8 x i32], ptr %41, i32 0, i32 1
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx79) #7, !srcloc !45
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %44 = ptrtoint ptr %r1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %r1, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then74, %if.end72.if.end83_crit_edge
  %tobool84.not = icmp eq ptr %r2, null
  br i1 %tobool84.not, label %if.end83.if.end94_crit_edge, label %if.then85

if.end83.if.end94_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then85:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %IndexRegs, align 8
  %arrayidx90 = getelementptr [8 x i32], ptr %46, i32 0, i32 2
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx90) #7, !srcloc !45
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %49 = ptrtoint ptr %r2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %r2, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then85, %if.end83.if.end94_crit_edge
  %tobool95.not = icmp eq ptr %r3, null
  br i1 %tobool95.not, label %if.end94.if.end105_crit_edge, label %if.then96

if.end94.if.end105_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %IndexRegs, align 8
  %arrayidx101 = getelementptr [8 x i32], ptr %51, i32 0, i32 3
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx101) #7, !srcloc !45
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  %54 = ptrtoint ptr %r3 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %r3, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then96, %if.end94.if.end105_crit_edge
  %tobool106.not = icmp eq ptr %r4, null
  br i1 %tobool106.not, label %if.end105.do.body117_crit_edge, label %if.then107

if.end105.do.body117_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body117

if.then107:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %IndexRegs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %IndexRegs, align 8
  %arrayidx112 = getelementptr [8 x i32], ptr %56, i32 0, i32 4
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx112) #7, !srcloc !45
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %59 = ptrtoint ptr %r4 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %r4, align 4
  br label %do.body117

do.body117:                                       ; preds = %if.then107, %if.end105.do.body117_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %ODR122 = getelementptr inbounds %struct.rx_mu_registers, ptr %61, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ODR122, i32 16777216) #7, !srcloc !50
  br label %cleanup

cleanup:                                          ; preds = %do.body117, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body117 ], [ -110, %entry.cleanup_crit_edge ], [ -110, %if.end.cleanup_crit_edge ]
  %adapter_enable_int124 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 3
  %62 = ptrtoint ptr %adapter_enable_int124 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter_enable_int124, align 4
  tail call void %63(ptr noundef %dev) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_rx_disable_interrupt(ptr nocapture noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %OIMR = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %OIMR to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %OIMR, align 4
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %OIMR1 = getelementptr inbounds %struct.rx_mu_registers, ptr %2, i32 0, i32 11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %OIMR1, i8 -1) #7, !srcloc !41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_rx_restart_adapter(ptr noundef %dev, i32 noundef %bled, i8 noundef zeroext %reset_type) #0 align 64 {
entry:
  %var = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %var) #7
  %0 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %var, align 4
  %supported_options2 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 52, i32 19
  %1 = ptrtoint ptr %supported_options2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %supported_options2, align 8
  %and = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bled)
  %cmp = icmp sgt i32 %bled, -1
  %or.cond = or i1 %cmp, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %bled)
  %cmp2 = icmp eq i32 %bled, -2
  %or.cond69 = or i1 %cmp2, %or.cond
  br i1 %or.cond69, label %if.then, label %entry.land.lhs.true27_crit_edge

entry.land.lhs.true27_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bled)
  %tobool3.not = icmp eq i32 %bled, 0
  br i1 %tobool3.not, label %if.else, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 8
  %id = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %4, i32 noundef %6, i32 noundef %bled) #10
  br label %if.end11

if.else:                                          ; preds = %if.then
  %adapter_sync_cmd = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %7 = ptrtoint ptr %adapter_sync_cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter_sync_cmd, align 4
  %call5 = call i32 %8(ptr noundef %dev, i32 noundef 4097, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %var, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.lhs.true:                                    ; preds = %if.else
  %9 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %var, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %10, label %land.lhs.true.if.end19_crit_edge [
    i32 939720719, label %land.lhs.true.if.end38_crit_edge
    i32 1, label %land.lhs.true.if.end38_crit_edge78
  ]

land.lhs.true.if.end38_crit_edge78:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %do.end
  %bled.addr.0 = phi i32 [ %bled, %do.end ], [ %call5, %if.else.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %bled.addr.0)
  %cond = icmp eq i32 %bled.addr.0, -110
  br i1 %cond, label %if.end11.land.lhs.true27_crit_edge, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end11.land.lhs.true27_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true27

if.end19:                                         ; preds = %if.end11.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge
  %adapter_sync_cmd17 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 4
  %12 = ptrtoint ptr %adapter_sync_cmd17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter_sync_cmd17, align 4
  %call18 = call i32 %13(ptr noundef %dev, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %var, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #7
  %14 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call18, label %if.end19.cleanup_crit_edge [
    i32 0, label %if.end19.if.end38_crit_edge
    i32 -110, label %if.end19.land.lhs.true27_crit_edge
  ]

if.end19.land.lhs.true27_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true27

if.end19.if.end38_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true27:                                  ; preds = %if.end19.land.lhs.true27_crit_edge, %if.end11.land.lhs.true27_crit_edge, %entry.land.lhs.true27_crit_edge
  %15 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %16, label %land.lhs.true27.cleanup_crit_edge [
    i32 939720719, label %land.lhs.true35.thread
    i32 1, label %land.lhs.true27.if.end38_crit_edge
  ]

land.lhs.true27.if.end38_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true35.thread:                           ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %reserved2 = getelementptr inbounds %struct.rx_mu_registers, ptr %19, i32 0, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reserved2, i32 50331648) #7, !srcloc !50
  call void @msleep(i32 noundef 5000) #7
  %20 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %var, align 4
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true35.thread, %land.lhs.true27.if.end38_crit_edge, %if.end19.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge78
  call void @msleep(i32 noundef 5000) #7
  %regs39 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %21 = ptrtoint ptr %regs39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs39, align 8
  %OMRx = getelementptr inbounds %struct.rx_mu_registers, ptr %22, i32 0, i32 5
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMRx) #7, !srcloc !45
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool45.not = icmp eq i32 %24, 0
  br i1 %tobool45.not, label %if.end47, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  %25 = load i32, ptr @startup_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %25)
  %cmp48 = icmp slt i32 %25, 300
  br i1 %cmp48, label %if.then49, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @startup_timeout to i32))
  store i32 300, ptr @startup_timeout, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end47.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end19.cleanup_crit_edge ], [ -19, %if.end38.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end47.cleanup_crit_edge ], [ -22, %land.lhs.true27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %var) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_rx_check_health(ptr noundef %dev) #0 align 64 {
entry:
  %paddr = alloca i32, align 4
  %baddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %OMRx = getelementptr inbounds %struct.rx_mu_registers, ptr %1, i32 0, i32 5
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %OMRx) #7, !srcloc !45
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup96_crit_edge, !prof !47

entry.cleanup96_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup96

if.end:                                           ; preds = %entry
  %and4 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end83, label %if.then12, !prof !47

if.then12:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %paddr) #7
  %4 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %paddr, align 4, !annotation !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %baddr) #7
  %5 = ptrtoint ptr %baddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %baddr, align 4, !annotation !38
  %and13 = and i32 %3, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1140850688, i32 %and13)
  %cmp = icmp eq i32 %and13, -1140850688
  br i1 %cmp, label %if.then20, label %if.end22, !prof !47

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %3, 16
  %and21 = and i32 %shr, 255
  br label %cleanup

if.end22:                                         ; preds = %if.then12
  %pdev = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 30
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev23, i32 noundef 512, ptr noundef nonnull %baddr, i32 noundef 3264, i32 noundef 0) #7
  %cmp25 = icmp eq ptr %call.i, null
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end33, !prof !44

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end22
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev35 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call.i121 = call ptr @dma_alloc_attrs(ptr noundef %dev35, i32 noundef 8, ptr noundef nonnull %paddr, i32 noundef 3264, i32 noundef 0) #7
  %cmp37 = icmp eq ptr %call.i121, null
  br i1 %cmp37, label %if.then44, label %if.end47, !prof !44

if.then44:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %12 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baddr, align 4
  call void @dma_free_attrs(ptr noundef %dev46, i32 noundef 512, ptr noundef nonnull %call.i, i32 noundef %13, i32 noundef 0) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %14 = call ptr @memset(ptr %call.i, i32 0, i32 512)
  %15 = ptrtoint ptr %call.i121 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 335544320, ptr %call.i121, align 4
  %16 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %baddr, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %Post_Address = getelementptr inbounds %struct.POSTSTATUS, ptr %call.i121, i32 0, i32 1
  %19 = ptrtoint ptr %Post_Address to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %Post_Address, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %paddr, align 4
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %IMRx = getelementptr inbounds %struct.rx_mu_registers, ptr %24, i32 0, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IMRx, i32 %22) #7, !srcloc !50
  %25 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %baddr, align 4
  %call51 = call i32 @rx_sync_cmd(ptr noundef %dev, i32 noundef 20, i32 noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  %29 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %paddr, align 4
  call void @dma_free_attrs(ptr noundef %dev53, i32 noundef 8, ptr noundef nonnull %call.i121, i32 noundef %30, i32 noundef 0) #7
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %call.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %32)
  %cmp55 = icmp eq i8 %32, 48
  br i1 %cmp55, label %land.rhs, label %if.end47.if.end76_crit_edge, !prof !47

if.end47.if.end76_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.rhs:                                         ; preds = %if.end47
  %arrayidx57 = getelementptr i8, ptr %call.i, i32 1
  %33 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx57, align 1
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %34, label %land.rhs.if.end76_crit_edge [
    i8 120, label %land.rhs.if.then71_crit_edge
    i8 88, label %land.rhs.if.then71_crit_edge122
  ]

land.rhs.if.then71_crit_edge122:                  ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

land.rhs.if.then71_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

land.rhs.if.end76_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then71:                                        ; preds = %land.rhs.if.then71_crit_edge, %land.rhs.if.then71_crit_edge122
  %arrayidx72 = getelementptr i8, ptr %call.i, i32 2
  %36 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx72, align 1
  %call73 = call i32 @hex_to_bin(i8 noundef zeroext %37) #7
  %shl = shl i32 %call73, 4
  %arrayidx74 = getelementptr i8, ptr %call.i, i32 3
  %38 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx74, align 1
  %call75 = call i32 @hex_to_bin(i8 noundef zeroext %39) #7
  %add = add i32 %call75, %shl
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %land.rhs.if.end76_crit_edge, %if.end47.if.end76_crit_edge
  %ret.0 = phi i32 [ %add, %if.then71 ], [ -2, %land.rhs.if.end76_crit_edge ], [ -2, %if.end47.if.end76_crit_edge ]
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 4
  %dev78 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %baddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %baddr, align 4
  call void @dma_free_attrs(ptr noundef %dev78, i32 noundef 512, ptr noundef nonnull %call.i, i32 noundef %43, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then44, %if.end22.cleanup_crit_edge, %if.then20
  %retval.0 = phi i32 [ %and21, %if.then20 ], [ -2, %if.then44 ], [ %ret.0, %if.end76 ], [ -2, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %baddr) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %paddr) #7
  br label %cleanup96

if.end83:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and84 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  %. = select i1 %tobool85.not, i32 -3, i32 0, !prof !44
  br label %cleanup96

cleanup96:                                        ; preds = %if.end83, %cleanup, %entry.cleanup96_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ -1, %entry.cleanup96_crit_edge ], [ %., %if.end83 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_rx_interrupt_adapter(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rx_sync_cmd(ptr noundef %dev, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_rx_notify_adapter(ptr nocapture noundef readonly %dev, i32 noundef %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  %IDR = getelementptr inbounds %struct.rx_mu_registers, ptr %2, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR, i32 33554432) #7, !srcloc !50
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %regs4 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %3 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs4, align 8
  %IDR6 = getelementptr inbounds %struct.rx_mu_registers, ptr %4, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR6, i32 268435456) #7, !srcloc !50
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %regs10 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %5 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs10, align 8
  %IDR12 = getelementptr inbounds %struct.rx_mu_registers, ptr %6, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR12, i32 67108864) #7, !srcloc !50
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %regs16 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %7 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs16, align 8
  %IDR18 = getelementptr inbounds %struct.rx_mu_registers, ptr %8, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR18, i32 134217728) #7, !srcloc !50
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %regs22 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %9 = ptrtoint ptr %regs22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs22, align 8
  %IDR24 = getelementptr inbounds %struct.rx_mu_registers, ptr %10, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR24, i32 1073741824) #7, !srcloc !50
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %regs28 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %11 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs28, align 8
  %IDR30 = getelementptr inbounds %struct.rx_mu_registers, ptr %12, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IDR30, i32 536870912) #7, !srcloc !50
  br label %sw.epilog

do.body31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/aacraid/rx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 300, 0\0A.popsection", ""() #7, !srcloc !105
  unreachable

sw.epilog:                                        ; preds = %do.body26, %do.body20, %do.body14, %do.body8, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aac_rx_start_adapter(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %init1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init1, align 8
  %call = tail call i64 @ktime_get_real_seconds() #7
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
  %call2 = tail call i32 @rx_sync_cmd(ptr noundef %dev, i32 noundef 5, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @aac_init_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aac_rx_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter_ioremap = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 8
  %0 = ptrtoint ptr %adapter_ioremap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @aac_rx_ioremap, ptr %adapter_ioremap, align 4
  %adapter_comm = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 17, i32 15
  %1 = ptrtoint ptr %adapter_comm to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @aac_rx_select_comm, ptr %adapter_comm, align 4
  %call = tail call i32 @_aac_rx_init(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aac_rx_ioremap(ptr nocapture noundef %dev, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not = icmp eq i32 %size, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %1) #7
  br label %return

if.end:                                           ; preds = %entry
  %base_start = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 19
  %2 = ptrtoint ptr %base_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base_start, align 8
  %call = tail call ptr @ioremap(i32 noundef %3, i32 noundef %size) #7
  %regs1 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 45
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %regs1, align 8
  %base = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 46
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %base, align 8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %IndexRegs = getelementptr inbounds %struct.rx_registers, ptr %call, i32 0, i32 2
  %IndexRegs6 = getelementptr inbounds %struct.aac_dev, ptr %dev, i32 0, i32 48
  %6 = ptrtoint ptr %IndexRegs6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %IndexRegs, ptr %IndexRegs6, align 8
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end4 ], [ 0, %if.then ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @aac_printf(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_command_normal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_response_normal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aac_intr_normal(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex_to_bin(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_real_seconds() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/aacraid/rx.c", i32 552, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @_aac_rx_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @_aac_rx_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/aacraid/rx.c", i32 585, i32 3}
!8 = !{ptr @_aac_rx_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @_aac_rx_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/aacraid/rx.c", i32 592, i32 3}
!12 = !{ptr @_aac_rx_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @_aac_rx_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/aacraid/rx.c", i32 604, i32 4}
!16 = !{ptr @_aac_rx_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @_aac_rx_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/scsi/aacraid/rx.c", i32 649, i32 17}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/aacraid/rx.c", i32 652, i32 3}
!22 = !{ptr @_aac_rx_init._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @_aac_rx_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/aacraid/rx.c", i32 479, i32 4}
!26 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @aac_rx_restart_adapter._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @aac_rx_restart_adapter._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"auto-init"}
!39 = !{i64 2148225296, i64 2148225322, i64 2148225351, i64 2148225385, i64 2148225416, i64 2148225439}
!40 = !{i64 2155056964}
!41 = !{i64 4995204}
!42 = !{i64 4995599}
!43 = !{i64 2155048187}
!44 = !{!"branch_weights", i32 1, i32 2000}
!45 = !{i64 4995819}
!46 = !{i64 2155048837}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2155049415}
!49 = !{i64 2155049713}
!50 = !{i64 4995401}
!51 = !{i64 2155050220}
!52 = !{i64 2155050769}
!53 = !{i64 2155051318}
!54 = !{i64 2155051867}
!55 = !{i64 2155052416}
!56 = !{i64 2155052913}
!57 = !{i64 2155057359}
!58 = !{i64 2155053752}
!59 = !{i64 2155054440}
!60 = !{i64 2155054913}
!61 = !{i64 2155055417}
!62 = !{i64 2155056256}
!63 = !{i64 2155074576}
!64 = !{i64 2155075259}
!65 = !{i64 2148227761, i64 2148227787, i64 2148227816, i64 2148227850, i64 2148227881, i64 2148227904}
!66 = !{i64 2155076071}
!67 = !{i64 2155076515}
!68 = !{i64 2155077183}
!69 = !{i64 2155077918}
!70 = !{i64 2155083218}
!71 = !{i8 0, i8 2}
!72 = !{i64 2155083899}
!73 = !{i64 2155084509}
!74 = !{i64 2155085171}
!75 = !{i64 2155088793}
!76 = !{i64 2155092147}
!77 = !{i64 2155057669}
!78 = !{i64 2155058089}
!79 = !{i64 2155058494}
!80 = !{i64 2155058899}
!81 = !{i64 2155059304}
!82 = !{i64 2155059806}
!83 = !{i64 2155060330}
!84 = !{i64 2155060721}
!85 = !{i64 2155061041}
!86 = !{i64 2155062804}
!87 = !{i64 2155063135}
!88 = !{i64 2155063956}
!89 = !{i64 2155064482}
!90 = !{i64 2155065008}
!91 = !{i64 2155065534}
!92 = !{i64 2155066060}
!93 = !{i64 2155066380}
!94 = !{i64 2155056569}
!95 = !{i64 2155080581}
!96 = !{i64 2155081384}
!97 = !{i64 2155072165}
!98 = !{i64 2155073344}
!99 = !{i64 2155067019}
!100 = !{i64 2155067543}
!101 = !{i64 2155068066}
!102 = !{i64 2155068590}
!103 = !{i64 2155069116}
!104 = !{i64 2155069640}
!105 = !{i64 2155070097, i64 2155070587, i64 2155070134, i64 2155070190, i64 2155070224, i64 2155070248, i64 2155070289, i64 2155070310, i64 2155070338, i64 2155070372}
