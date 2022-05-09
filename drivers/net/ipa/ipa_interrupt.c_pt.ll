; ModuleID = '/llk/IR_all_yes/drivers/net/ipa/ipa_interrupt.c_pt.bc'
source_filename = "../drivers/net/ipa/ipa_interrupt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipa = type { %struct.gsi, i32, ptr, %struct.completion, %struct.notifier_block, ptr, ptr, ptr, i32, ptr, ptr, i8, i8, i32, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.ipa_endpoint], [23 x ptr], [10 x ptr], i8, %struct.atomic_t, ptr, %struct.ipa_qmi, [24 x i8] }
%struct.gsi = type { ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex, [23 x %struct.gsi_channel], [24 x %struct.gsi_evt_ring], %struct.net_device }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gsi_channel = type { ptr, i8, i8, i8, i16, i16, %struct.gsi_ring, i32, i64, i64, i64, i64, i64, i64, %struct.gsi_trans_info, %struct.napi_struct }
%struct.gsi_ring = type { ptr, i32, i32, i32 }
%struct.gsi_trans_info = type { %struct.atomic_t, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, %struct.gsi_trans_pool, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.gsi_trans_pool = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.gsi_evt_ring = type { ptr, %struct.gsi_ring }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.99, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.113, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.99 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.113 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ipa_endpoint = type { ptr, i32, i32, i32, i8, ptr, i32, i32, ptr, [1 x i32], i32, %struct.atomic_t, %struct.atomic_t, %struct.delayed_work }
%struct.ipa_qmi = type { %struct.qmi_handle, %struct.qmi_handle, %struct.sockaddr_qrtr, %struct.work_struct, i8, i8, i8, i8, i8 }
%struct.qmi_handle = type { ptr, %struct.mutex, %struct.sockaddr_qrtr, %struct.work_struct, ptr, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.qmi_ops, %struct.idr, %struct.mutex, ptr }
%struct.qmi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sockaddr_qrtr = type { i16, i32, i32 }
%struct.ipa_interrupt = type { ptr, i32, i32, [30 x ptr] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ipa/ipa_interrupt.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipa\00", [28 x i8] zeroinitializer }, align 32
@ipa_interrupt_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DT error %d getting \22ipa\22 IRQ property\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ipa_interrupt_config\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipa_interrupt_config._entry_ptr = internal global ptr @ipa_interrupt_config._entry, section ".printk_index", align 4
@ipa_interrupt_config._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error %d requesting \22ipa\22 IRQ\0A\00", [33 x i8] zeroinitializer }, align 32
@ipa_interrupt_config._entry_ptr.8 = internal global ptr @ipa_interrupt_config._entry.6, section ".printk_index", align 4
@ipa_interrupt_config._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error %d enabling wakeup for \22ipa\22 IRQ\0A\00", [56 x i8] zeroinitializer }, align 32
@ipa_interrupt_config._entry_ptr.11 = internal global ptr @ipa_interrupt_config._entry.9, section ".printk_index", align 4
@ipa_interrupt_deconfig._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error %d disabling \22ipa\22 IRQ wakeup\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipa_interrupt_deconfig\00", [41 x i8] zeroinitializer }, align 32
@ipa_interrupt_deconfig._entry_ptr = internal global ptr @ipa_interrupt_deconfig._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipa_isr_thread.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ipa_isr_thread\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"clearing disabled IPA interrupts 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 194, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 230, i32 43 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 232, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 251, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 257, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 279, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [35 x i8] c"../drivers/net/ipa/ipa_interrupt.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 113, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @ipa_interrupt_config._entry, ptr @ipa_interrupt_config._entry.6, ptr @ipa_interrupt_config._entry.9, ptr @ipa_interrupt_config._entry_ptr, ptr @ipa_interrupt_config._entry_ptr.11, ptr @ipa_interrupt_config._entry_ptr.8, ptr @ipa_interrupt_deconfig._entry, ptr @ipa_interrupt_deconfig._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interrupt_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interrupt_config._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interrupt_config._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipa_interrupt_deconfig._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_interrupt_suspend_enable(ptr nocapture noundef readonly %interrupt, i32 noundef %endpoint_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 4
  %shl.i = shl nuw i32 1, %endpoint_id
  %available.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %available.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available.i, align 4
  %and.i = and i32 %3, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !39

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %version.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end.i.ipa_interrupt_suspend_control.exit_crit_edge, label %if.end23.i

if.end.i.ipa_interrupt_suspend_control.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_interrupt_suspend_control.exit

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp19.i.i.i = icmp ult i32 %5, 9
  %retval.0.i.i.i = select i1 %cmp19.i.i.i, i32 12340, i32 16436
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %retval.0.i.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %or.i = or i32 %9, %shl.i
  %10 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %11, i32 %retval.0.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %12) #5, !srcloc !43
  br label %ipa_interrupt_suspend_control.exit

ipa_interrupt_suspend_control.exit:               ; preds = %if.end23.i, %if.end.i.ipa_interrupt_suspend_control.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_interrupt_suspend_disable(ptr nocapture noundef readonly %interrupt, i32 noundef %endpoint_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 4
  %shl.i = shl nuw i32 1, %endpoint_id
  %available.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %available.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %available.i, align 4
  %and.i = and i32 %3, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %entry.if.end.i_crit_edge, !prof !39

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 134, i32 noundef 9, ptr noundef null) #5
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %version.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %if.end.i.ipa_interrupt_suspend_control.exit_crit_edge, label %if.end23.i

if.end.i.ipa_interrupt_suspend_control.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_interrupt_suspend_control.exit

if.end23.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp19.i.i.i = icmp ult i32 %5, 9
  %retval.0.i.i.i = select i1 %cmp19.i.i.i, i32 12340, i32 16436
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %retval.0.i.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !40
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %neg.i = xor i32 %shl.i, -1
  %and28.i = and i32 %9, %neg.i
  %10 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %11, i32 %retval.0.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and28.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %12) #5, !srcloc !43
  br label %ipa_interrupt_suspend_control.exit

ipa_interrupt_suspend_control.exit:               ; preds = %if.end23.i, %if.end.i.ipa_interrupt_suspend_control.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_interrupt_suspend_clear_all(ptr nocapture noundef readonly %interrupt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 4
  %version = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp1.i.i = icmp ult i32 %3, 9
  %..i.i = select i1 %cmp1.i.i, i32 12336, i32 16432
  %retval.0.i.i = select i1 %cmp.i.i, i32 12440, i32 %..i.i
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %retval.0.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %7 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %8)
  %cmp19.i.i = icmp ult i32 %8, 9
  %retval.0.i.i15 = select i1 %cmp19.i.i, i32 12344, i32 16440
  %9 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_virt, align 4
  %add.ptr7 = getelementptr i8, ptr %10, i32 %retval.0.i.i15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %6) #5, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_interrupt_simulate_suspend(ptr nocapture noundef readonly %interrupt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 4
  %version.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version.i, align 128
  %arrayidx.i = getelementptr %struct.ipa_interrupt, ptr %interrupt, i32 0, i32 3, i32 14
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %entry.ipa_interrupt_process.exit_crit_edge, label %if.then4.i

entry.ipa_interrupt_process.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_interrupt_process.exit

if.then4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %1, i32 noundef 14) #5
  br label %ipa_interrupt_process.exit

ipa_interrupt_process.exit:                       ; preds = %if.then4.i, %entry.ipa_interrupt_process.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp.i.i.i = icmp ult i32 %3, 9
  %..i.i.i = select i1 %cmp.i.i.i, i32 12304, i32 16400
  %reg_virt11.i = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %reg_virt11.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_virt11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %7, i32 %..i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 4194304) #5, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_interrupt_add(ptr nocapture noundef %interrupt, i32 noundef %ipa_irq, ptr noundef %handler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %ipa_irq)
  %cmp = icmp ugt i32 %ipa_irq, 29
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !39

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %arrayidx = getelementptr %struct.ipa_interrupt, ptr %interrupt, i32 0, i32 3, i32 %ipa_irq
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %handler, ptr %arrayidx, align 4
  %shl = shl nuw i32 1, %ipa_irq
  %enabled = getelementptr inbounds %struct.ipa_interrupt, ptr %interrupt, i32 0, i32 2
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enabled, align 4
  %or = or i32 %4, %shl
  store i32 %or, ptr %enabled, align 4
  %version = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %6)
  %cmp.i.i = icmp ult i32 %6, 9
  %..i.i = select i1 %cmp.i.i, i32 12300, i32 16396
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #5, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_interrupt_remove(ptr nocapture noundef %interrupt, i32 noundef %ipa_irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %ipa_irq)
  %cmp = icmp ugt i32 %ipa_irq, 29
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge, !prof !39

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 211, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %shl = shl nuw i32 1, %ipa_irq
  %neg = xor i32 %shl, -1
  %enabled = getelementptr inbounds %struct.ipa_interrupt, ptr %interrupt, i32 0, i32 2
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %enabled, align 4
  %version = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %5)
  %cmp.i.i = icmp ult i32 %5, 9
  %..i.i = select i1 %cmp.i.i, i32 12300, i32 16396
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #5, !srcloc !43
  %arrayidx = getelementptr %struct.ipa_interrupt, ptr %interrupt, i32 0, i32 3, i32 %ipa_irq
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ipa_interrupt_config(ptr noundef %ipa) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 -22, i32 %call
  %2 = inttoptr i32 %. to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 132) #9
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %ipa, ptr %call7.i.i, align 8
  %irq10 = getelementptr inbounds %struct.ipa_interrupt, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %irq10, align 4
  %version = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 9
  %..i.i = select i1 %cmp.i.i, i32 12300, i32 16396
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %ipa, i32 0, i32 14
  %8 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %..i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !43
  %call12 = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef null, ptr noundef nonnull @ipa_isr_thread, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %call12) #8
  br label %err_kfree

if.end18:                                         ; preds = %if.end8
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %call, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.end24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call.i) #8
  %10 = ptrtoint ptr %irq10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq10, align 4
  %call27 = tail call ptr @free_irq(i32 noundef %11, ptr noundef nonnull %call7.i.i) #5
  br label %err_kfree

err_kfree:                                        ; preds = %do.end24, %do.end17
  %ret.0 = phi i32 [ %call12, %do.end17 ], [ %call.i, %do.end24 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %12 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %2, %do.end ], [ %12, %err_kfree ], [ %call7.i.i, %if.end18.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipa_isr_thread(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %enabled2 = getelementptr inbounds %struct.ipa_interrupt, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %enabled2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled2, align 4
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev3, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end24.critedge, !prof !39

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 91, i32 noundef 9, ptr noundef null) #5
  br label %out_power_put

if.end24.critedge:                                ; preds = %entry
  %version = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 9
  %..i.i = select i1 %cmp.i.i, i32 12296, i32 16392
  %reg_virt = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_virt, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %..i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !40
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %and82 = and i32 %11, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool27.not83 = icmp eq i32 %and82, 0
  br i1 %tobool27.not83, label %if.end24.critedge.while.end_crit_edge, label %if.end24.critedge.do.body28_crit_edge

if.end24.critedge.do.body28_crit_edge:            ; preds = %if.end24.critedge
  br label %do.body28

if.end24.critedge.while.end_crit_edge:            ; preds = %if.end24.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

do.body28:                                        ; preds = %do.body28.backedge, %if.end24.critedge.do.body28_crit_edge
  %mask.0 = phi i32 [ %mask.0.be, %do.body28.backedge ], [ %and82, %if.end24.critedge.do.body28_crit_edge ]
  %12 = tail call i32 @llvm.cttz.i32(i32 %mask.0, i1 false) #5, !range !44
  %shl = shl nuw i32 1, %12
  %xor = xor i32 %shl, %mask.0
  %13 = and i32 %12, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %14 = icmp eq i32 %13, 2
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %version.i = getelementptr inbounds %struct.ipa, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %version.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %18)
  %cmp.i.i.i = icmp ult i32 %18, 9
  %..i.i.i = select i1 %cmp.i.i.i, i32 12304, i32 16400
  br i1 %14, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #7
  %reg_virt.i = getelementptr inbounds %struct.ipa, ptr %16, i32 0, i32 14
  %19 = ptrtoint ptr %reg_virt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %..i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %21) #5, !srcloc !43
  br label %land.lhs.true.i

if.end.i:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %12)
  %cmp.i = icmp ult i32 %12, 30
  br i1 %cmp.i, label %if.end.i.land.lhs.true.i_crit_edge, label %if.end.i.if.then10.i_crit_edge

if.end.i.if.then10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i.land.lhs.true.i_crit_edge, %if.end.thread.i
  %arrayidx.i = getelementptr %struct.ipa_interrupt, ptr %dev_id, i32 0, i32 3, i32 %12
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end8.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_id, align 4
  tail call void %23(ptr noundef %25, i32 noundef %12) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then4.i, %land.lhs.true.i.if.end8.i_crit_edge
  br i1 %14, label %if.end8.i.ipa_interrupt_process.exit_crit_edge, label %if.end8.i.if.then10.i_crit_edge

if.end8.i.if.then10.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10.i

if.end8.i.ipa_interrupt_process.exit_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ipa_interrupt_process.exit

if.then10.i:                                      ; preds = %if.end8.i.if.then10.i_crit_edge, %if.end.i.if.then10.i_crit_edge
  %reg_virt11.i = getelementptr inbounds %struct.ipa, ptr %16, i32 0, i32 14
  %26 = ptrtoint ptr %reg_virt11.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_virt11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %27, i32 %..i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %28 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %28) #5, !srcloc !43
  br label %ipa_interrupt_process.exit

ipa_interrupt_process.exit:                       ; preds = %if.then10.i, %if.end8.i.ipa_interrupt_process.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool31.not = icmp eq i32 %xor, 0
  br i1 %tobool31.not, label %do.end32, label %ipa_interrupt_process.exit.do.body28.backedge_crit_edge

ipa_interrupt_process.exit.do.body28.backedge_crit_edge: ; preds = %ipa_interrupt_process.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28.backedge

do.body28.backedge:                               ; preds = %do.end32.do.body28.backedge_crit_edge, %ipa_interrupt_process.exit.do.body28.backedge_crit_edge
  %mask.0.be = phi i32 [ %xor, %ipa_interrupt_process.exit.do.body28.backedge_crit_edge ], [ %and, %do.end32.do.body28.backedge_crit_edge ]
  br label %do.body28

do.end32:                                         ; preds = %ipa_interrupt_process.exit
  %29 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_virt, align 4
  %add.ptr34 = getelementptr i8, ptr %30, i32 %..i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #5, !srcloc !40
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %and = and i32 %32, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %do.end32.while.end_crit_edge, label %do.end32.do.body28.backedge_crit_edge

do.end32.do.body28.backedge_crit_edge:            ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body28.backedge

do.end32.while.end_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %do.end32.while.end_crit_edge, %if.end24.critedge.while.end_crit_edge
  %pending.0.lcssa = phi i32 [ %11, %if.end24.critedge.while.end_crit_edge ], [ %32, %do.end32.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending.0.lcssa)
  %tobool36.not = icmp eq i32 %pending.0.lcssa, 0
  br i1 %tobool36.not, label %while.end.out_power_put_crit_edge, label %do.body38

while.end.out_power_put_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_power_put

do.body38:                                        ; preds = %while.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipa_isr_thread.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipa_isr_thread, %if.then48)) #5
          to label %do.end51 [label %if.then48], !srcloc !45

if.then48:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipa_isr_thread.__UNIQUE_ID_ddebug338, ptr noundef %dev3, ptr noundef nonnull @.str.16, i32 noundef %pending.0.lcssa) #5
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.body38
  %33 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %version, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %34)
  %cmp.i.i77 = icmp ult i32 %34, 9
  %..i.i78 = select i1 %cmp.i.i77, i32 12304, i32 16400
  %35 = ptrtoint ptr %reg_virt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_virt, align 4
  %add.ptr55 = getelementptr i8, ptr %36, i32 %..i.i78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %pending.0.lcssa) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %37) #5, !srcloc !43
  br label %out_power_put

out_power_put:                                    ; preds = %do.end51, %while.end.out_power_put_crit_edge, %do.end
  %call.i79 = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 22
  %38 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store volatile i64 %call.i79, ptr %last_busy.i, align 8
  %call.i80 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev3, i32 noundef 13) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipa_interrupt_deconfig(ptr noundef %interrupt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %interrupt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt, align 4
  %pdev = getelementptr inbounds %struct.ipa, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.ipa_interrupt, ptr %interrupt, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %interrupt) #5
  tail call void @kfree(ptr noundef %interrupt) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

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
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ipa/ipa_interrupt.c", i32 194, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ipa/ipa_interrupt.c", i32 230, i32 43}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ipa/ipa_interrupt.c", i32 232, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ipa_interrupt_config._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @ipa_interrupt_config._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ipa/ipa_interrupt.c", i32 251, i32 3}
!13 = !{ptr @ipa_interrupt_config._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @ipa_interrupt_config._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ipa/ipa_interrupt.c", i32 257, i32 3}
!17 = !{ptr @ipa_interrupt_config._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ipa_interrupt_config._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ipa/ipa_interrupt.c", i32 279, i32 3}
!21 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ipa_interrupt_deconfig._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @ipa_interrupt_deconfig._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ipa/ipa_reg.h", i32 815, i32 2}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ipa/ipa_interrupt.c", i32 113, i32 3}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ipa_isr_thread.__UNIQUE_ID_ddebug338, !27, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 4204302}
!41 = !{i64 2151744651}
!42 = !{i64 2151746006}
!43 = !{i64 4203884}
!44 = !{i32 0, i32 33}
!45 = !{i64 2148723076, i64 2148723081, i64 2148723094, i64 2148723138, i64 2148723172, i64 2148723193}
