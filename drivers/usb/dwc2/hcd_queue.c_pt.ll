; ModuleID = '/llk/IR_all_yes/drivers/usb/dwc2/hcd_queue.c_pt.bc'
source_filename = "../drivers/usb/dwc2/hcd_queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dwc2_hcd_urb = type { ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i16, %struct.dwc2_hcd_pipe_info, [0 x %struct.dwc2_hcd_iso_packet_desc] }
%struct.dwc2_hcd_pipe_info = type { i8, i8, i8, i8, i16, i16 }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i32, i32, i32 }
%struct.dwc2_hsotg = type { ptr, ptr, %struct.dwc2_hw_params, %struct.dwc2_core_params, i32, i32, ptr, i32, i8, i8, i8, i16, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], ptr, ptr, %struct.spinlock, ptr, i32, ptr, ptr, ptr, i8, ptr, %struct.work_struct, %struct.timer_list, i32, %struct.dwc2_gregs_backup, %struct.dwc2_dregs_backup, %struct.dwc2_hregs_backup, ptr, ptr, i8, %union.dwc2_hcd_internal_flags, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i16, [25 x i32], i16, i8, i16, ptr, ptr, i32, i32, %struct.list_head, i32, i32, i32, [16 x ptr], ptr, i32, %struct.delayed_work, %struct.delayed_work, %struct.work_struct, i8, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i8, i8, i32, ptr, ptr, ptr, ptr, i32, i8, i8, [2 x i32], [2 x ptr], i32, ptr, i32, ptr, %struct.usb_gadget, i8, [16 x ptr], [16 x ptr] }
%struct.dwc2_hw_params = type <{ i24, i64, i32, i32, i32, i32, i32, [16 x i32] }>
%struct.dwc2_core_params = type { %struct.usb_otg_caps, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, i32, [16 x i32], i8 }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dwc2_gregs_backup = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dwc2_dregs_backup = type { i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], [16 x i32], i8 }
%struct.dwc2_hregs_backup = type { i32, i32, [16 x i32], i32, i32, i32, i8 }
%union.dwc2_hcd_internal_flags = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dwc2_qh = type { ptr, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, [8 x %struct.dwc2_hs_transfer_time], i32, i16, ptr, i32, %struct.list_head, ptr, %struct.list_head, ptr, i32, i32, ptr, %struct.timer_list, %struct.hrtimer, ptr, i32, i8 }
%struct.dwc2_hs_transfer_time = type { i32, i16 }
%struct.dwc2_tt = type { i32, ptr, [0 x i32] }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.dwc2_qtd = type { i32, i8, i8, i8, i8, i16, i16, i16, i16, i32, i8, i8, i16, i16, ptr, ptr, %struct.list_head }

@dwc2_hcd_qh_add.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 -80, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dwc2\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc2_hcd_qh_add\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/usb/dwc2/hcd_queue.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@dwc2_hcd_qh_unlink.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3, i8 1, i8 -68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dwc2_hcd_qh_unlink\00", [45 x i8] zeroinitializer }, align 32
@dwc2_hcd_qh_deactivate.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.3, i8 1, i8 -16, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc2_hcd_qh_deactivate\00", [41 x i8] zeroinitializer }, align 32
@dwc2_hcd_qtd_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 2084, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: Invalid QH\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dwc2_hcd_qtd_add\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dwc2_hcd_qtd_add._entry_ptr = internal global ptr @dwc2_hcd_qtd_add._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dwc2_qh_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&qh->unreserve_timer)\00", [41 x i8] zeroinitializer }, align 32
@dwc2_schedule_periodic.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dwc2_schedule_periodic\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Channel max transfer size too small for periodic transfer\0A\00", [33 x i8] zeroinitializer }, align 32
@dwc2_check_max_xfer_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 1341, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Periodic xfer length %d > max xfer length for channel %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dwc2_check_max_xfer_size\00", [39 x i8] zeroinitializer }, align 32
@dwc2_check_max_xfer_size._entry_ptr = internal global ptr @dwc2_check_max_xfer_size._entry, section ".printk_index", align 4
@dwc2_do_reserve._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 1212, ptr @.str.25, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: No host channel available for periodic transfer\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dwc2_do_reserve\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dwc2_do_reserve._entry_ptr = internal global ptr @dwc2_do_reserve._entry, section ".printk_index", align 4
@dwc2_do_reserve.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 1, i8 49, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Insufficient periodic bandwidth for periodic transfer\0A\00", [37 x i8] zeroinitializer }, align 32
@dwc2_uframe_schedule_split.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dwc2_periodic_channel_available.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 22, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dwc2_periodic_channel_available\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Total channels: %d, Periodic: %d, Non-periodic: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dwc2_check_periodic_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 134, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: already claimed usecs %d, required usecs %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dwc2_check_periodic_bandwidth\00", [34 x i8] zeroinitializer }, align 32
@dwc2_check_periodic_bandwidth._entry_ptr = internal global ptr @dwc2_check_periodic_bandwidth._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1728, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1777, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1985, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 2084, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1527, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1364, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1339, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1210, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 1220, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 87, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [32 x i8] c"../drivers/usb/dwc2/hcd_queue.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 132, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @dwc2_check_max_xfer_size._entry, ptr @dwc2_check_max_xfer_size._entry_ptr, ptr @dwc2_check_periodic_bandwidth._entry, ptr @dwc2_check_periodic_bandwidth._entry_ptr, ptr @dwc2_do_reserve._entry, ptr @dwc2_do_reserve._entry_ptr, ptr @dwc2_hcd_qtd_add._entry, ptr @dwc2_hcd_qtd_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @dwc2_qh_init.__key, ptr @.str.10, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_hcd_qtd_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_qh_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_max_xfer_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_do_reserve._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dwc2_check_periodic_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dwc2_hcd_qh_create(ptr noundef %hsotg, ptr nocapture noundef readonly %urb, i32 noundef %mem_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %urb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %and.i.i.i = and i32 %mem_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.kzalloc.exit_crit_edge, label %if.end.i.i.i, !prof !76

if.end.kzalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end.i.i.i:                                     ; preds = %if.end
  %and2.i.i.i = and i32 %mem_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i.i.i.kzalloc.exit_crit_edge

if.end.i.i.i.kzalloc.exit_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %kzalloc.exit

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %and6.i.i.i = and i32 %mem_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 1, i32 2
  br label %kzalloc.exit

kzalloc.exit:                                     ; preds = %if.end5.i.i.i, %if.end.i.i.i.kzalloc.exit_crit_edge, %if.end.kzalloc.exit_crit_edge
  %retval.0.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit_crit_edge ], [ 3, %if.end.i.i.i.kzalloc.exit_crit_edge ], [ %..i.i.i, %if.end5.i.i.i ]
  %or.i = or i32 %mem_flags, 256
  %arrayidx6.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i.i, i32 9
  %2 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i, align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i, i32 noundef 264) #12
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end3

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %kzalloc.exit
  %4 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %urb, align 4
  %call.i = tail call i32 @dwc2_host_get_speed(ptr noundef %hsotg, ptr noundef %5) #9
  %pipe_type.i.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %pipe_type.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pipe_type.i.i, align 2
  %pipe_dir.i.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 13, i32 3
  %8 = ptrtoint ptr %pipe_dir.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pipe_dir.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %9)
  %cmp.i.i = icmp eq i8 %9, -128
  %conv2.i.i = zext i1 %cmp.i.i to i8
  %regs.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 1088
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %needs_byte_swap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %13 = ptrtoint ptr %needs_byte_swap.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %needs_byte_swap.i.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  %15 = shl i32 %12, 8
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %15, i32 %12
  %16 = and i32 %retval.0.i.i, 393216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp12.i = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp14.i = icmp ne i32 %call.i, 3
  %spec.select.i = select i1 %cmp12.i, i1 %cmp14.i, i1 false
  %frombool16.i = zext i1 %spec.select.i to i8
  %maxp.i.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 13, i32 4
  %17 = ptrtoint ptr %maxp.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %maxp.i.i, align 2
  %maxp_mult.i.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 13, i32 5
  %19 = ptrtoint ptr %maxp_mult.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %maxp_mult.i.i, align 2
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %hsotg, ptr %call7.i.i, align 8
  %unreserve_timer.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 30
  tail call void @init_timer_key(ptr noundef %unreserve_timer.i, ptr noundef nonnull @dwc2_unreserve_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @dwc2_qh_init.__key) #9
  %wait_timer.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 31
  tail call void @hrtimer_init(ptr noundef %wait_timer.i, i32 noundef 1, i32 noundef 1) #9
  %function.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 31, i32 2
  %22 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @dwc2_wait_timer_fn, ptr %function.i, align 8
  %ep_type25.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %ep_type25.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %7, ptr %ep_type25.i, align 4
  %ep_is_in28.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %ep_is_in28.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv2.i.i, ptr %ep_is_in28.i, align 1
  %data_toggle.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %data_toggle.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %data_toggle.i, align 1
  %maxp30.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %maxp30.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %18, ptr %maxp30.i, align 2
  %maxp_mult32.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %maxp_mult32.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %20, ptr %maxp_mult32.i, align 8
  %qtd_list.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 23
  %28 = ptrtoint ptr %qtd_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %qtd_list.i, ptr %qtd_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 23, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %qtd_list.i, ptr %prev.i.i, align 4
  %qh_list_entry.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 25
  %30 = ptrtoint ptr %qh_list_entry.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %qh_list_entry.i, ptr %qh_list_entry.i, align 4
  %prev.i176.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 25, i32 1
  %31 = ptrtoint ptr %prev.i176.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %qh_list_entry.i, ptr %prev.i176.i, align 8
  %do_split35.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %do_split35.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool16.i, ptr %do_split35.i, align 1
  %conv36.i = trunc i32 %call.i to i8
  %dev_speed37.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %dev_speed37.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv36.i, ptr %dev_speed37.i, align 2
  %34 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %if.end3.dwc2_qh_init.exit_crit_edge [
    i8 3, label %if.end3.if.then.i_crit_edge
    i8 1, label %if.end3.if.then.i_crit_edge18
  ]

if.end3.if.then.i_crit_edge18:                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end3.dwc2_qh_init.exit_crit_edge:              ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_qh_init.exit

if.then.i:                                        ; preds = %if.end3.if.then.i_crit_edge, %if.end3.if.then.i_crit_edge18
  %conv22.i = zext i16 %20 to i32
  %conv19.i = zext i16 %18 to i32
  %mul.i = mul nuw i32 %conv22.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.i = icmp eq i8 %7, 1
  %spec.select174.i = select i1 %spec.select.i, i32 3, i32 %call.i
  %35 = ptrtoint ptr %urb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %urb, align 4
  %ttport.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 33
  %call45.i = tail call ptr @dwc2_host_get_tt_info(ptr noundef %hsotg, ptr noundef %36, i32 noundef %mem_flags, ptr noundef %ttport.i) #9
  %dwc_tt46.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 32
  %37 = ptrtoint ptr %dwc_tt46.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call45.i, ptr %dwc_tt46.i, align 8
  %conv48.i = zext i1 %cmp.i.i to i32
  %conv50.i = zext i1 %cmp.i to i32
  %call51.i = tail call i32 @usb_calc_bus_time(i32 noundef %spec.select174.i, i32 noundef %conv48.i, i32 noundef %conv50.i, i32 noundef %mul.i) #9
  %sub.i = add i32 %call51.i, 999
  %div.i = sdiv i32 %sub.i, 1000
  %conv52.i = trunc i32 %div.i to i16
  %host_us.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 11
  %38 = ptrtoint ptr %host_us.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv52.i, ptr %host_us.i, align 8
  %call57.i = tail call i32 @usb_calc_bus_time(i32 noundef %call.i, i32 noundef %conv48.i, i32 noundef %conv50.i, i32 noundef %mul.i) #9
  br i1 %spec.select.i, label %land.lhs.true.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %tobool60.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool60.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then61.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then61.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %usb_tt.i = getelementptr inbounds %struct.dwc2_tt, ptr %call45.i, i32 0, i32 1
  %39 = ptrtoint ptr %usb_tt.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %usb_tt.i, align 4
  %think_time.i = getelementptr inbounds %struct.usb_tt, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %think_time.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %think_time.i, align 4
  %add62.i = add i32 %42, %call57.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then61.i, %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %cond71.i = phi i16 [ 8, %if.then61.i ], [ 8, %land.lhs.true.i.if.end.i_crit_edge ], [ 1, %if.then.i.if.end.i_crit_edge ]
  %device_ns.0.i = phi i32 [ %add62.i, %if.then61.i ], [ %call57.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %call57.i, %if.then.i.if.end.i_crit_edge ]
  %sub64.i = add i32 %device_ns.0.i, 999
  %div65.i = sdiv i32 %sub64.i, 1000
  %conv66.i = trunc i32 %div65.i to i16
  %device_us.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 12
  %43 = ptrtoint ptr %device_us.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv66.i, ptr %device_us.i, align 2
  %interval.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 12
  %44 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %interval.i, align 4
  %device_interval.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 14
  %46 = ptrtoint ptr %device_interval.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %device_interval.i, align 2
  %mul72.i = mul i16 %45, %cond71.i
  %host_interval.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 13
  %47 = ptrtoint ptr %host_interval.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %mul72.i, ptr %host_interval.i, align 4
  %tobool76.not.i = icmp eq ptr %call45.i, null
  %48 = select i1 %cmp12.i, i1 %tobool76.not.i, i1 false
  %49 = select i1 %48, i8 0, i8 32
  %schedule_low_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 34
  %50 = ptrtoint ptr %schedule_low_speed.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %schedule_low_speed.i, align 8
  %bf.clear.i = and i8 %bf.load.i, -33
  %bf.set.i = or i8 %bf.clear.i, %49
  store i8 %bf.set.i, ptr %schedule_low_speed.i, align 8
  br i1 %spec.select.i, label %if.then78.i, label %if.else.i

if.then78.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_hs_transfers.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 17
  %51 = ptrtoint ptr %num_hs_transfers.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %num_hs_transfers.i, align 4
  br label %dwc2_qh_init.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp79.i = icmp eq i32 %call.i, 3
  %num_hs_transfers82.i = getelementptr inbounds %struct.dwc2_qh, ptr %call7.i.i, i32 0, i32 17
  br i1 %cmp79.i, label %if.then81.i, label %if.else83.i

if.then81.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %num_hs_transfers82.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 1, ptr %num_hs_transfers82.i, align 4
  br label %dwc2_qh_init.exit

if.else83.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %num_hs_transfers82.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %num_hs_transfers82.i, align 4
  br label %dwc2_qh_init.exit

dwc2_qh_init.exit:                                ; preds = %if.else83.i, %if.then81.i, %if.then78.i, %if.end3.dwc2_qh_init.exit_crit_edge
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %54 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %dma_desc_enable, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool4.not = icmp eq i8 %55, 0
  br i1 %tobool4.not, label %dwc2_qh_init.exit.cleanup_crit_edge, label %land.lhs.true

dwc2_qh_init.exit.cleanup_crit_edge:              ; preds = %dwc2_qh_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %dwc2_qh_init.exit
  %call5 = tail call i32 @dwc2_hcd_qh_init_ddma(ptr noundef %hsotg, ptr noundef nonnull %call7.i.i, i32 noundef %mem_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dwc2_hcd_qh_free(ptr noundef %hsotg, ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %land.lhs.true.cleanup_crit_edge, %dwc2_qh_init.exit.cleanup_crit_edge, %kzalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then6 ], [ null, %entry.cleanup_crit_edge ], [ null, %kzalloc.exit.cleanup_crit_edge ], [ %call7.i.i, %land.lhs.true.cleanup_crit_edge ], [ %call7.i.i, %dwc2_qh_init.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_qh_init_ddma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_free(ptr noundef %hsotg, ptr noundef %qh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %unreserve_timer = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 30
  %call = tail call i32 @del_timer_sync(ptr noundef %unreserve_timer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call fastcc void @dwc2_do_unreserve(ptr noundef %hsotg, ptr noundef %qh)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wait_timer = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 31
  %call7 = tail call i32 @hrtimer_cancel(ptr noundef %wait_timer) #9
  %dwc_tt = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 32
  %0 = ptrtoint ptr %dwc_tt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dwc_tt, align 8
  tail call void @dwc2_host_put_tt_info(ptr noundef %hsotg, ptr noundef %1) #9
  %desc_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 26
  %2 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_list, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dwc2_hcd_qh_free_ddma(ptr noundef %hsotg, ptr noundef %qh) #9
  br label %if.end16

if.else:                                          ; preds = %if.end
  %unaligned_cache = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 70
  %4 = ptrtoint ptr %unaligned_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unaligned_cache, align 4
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %if.else.if.end16_crit_edge, label %land.lhs.true

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.else
  %dw_align_buf = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 21
  %6 = ptrtoint ptr %dw_align_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dw_align_buf, align 8
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %land.lhs.true.if.end16_crit_edge, label %if.then12

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kmem_cache_free(ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %land.lhs.true.if.end16_crit_edge, %if.else.if.end16_crit_edge, %if.then9
  tail call void @kfree(ptr noundef %qh) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_do_unreserve(ptr noundef %hsotg, ptr noundef %qh) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %lock, align 4
  %1 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body4, label %do.end7, !prof !80

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/dwc2/hcd_queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1249, 0\0A.popsection", ""() #9, !srcloc !81
  unreachable

do.end7:                                          ; preds = %entry
  %unreserve_pending = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 34
  %2 = ptrtoint ptr %unreserve_pending to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %unreserve_pending, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool8.not = icmp eq i8 %3, 0
  br i1 %tobool8.not, label %do.end25, label %do.end7.if.end31_crit_edge, !prof !80

do.end7.if.end31_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end25:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1251, i32 noundef 9, ptr noundef null) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %do.end7.if.end31_crit_edge
  %4 = ptrtoint ptr %unreserve_pending to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load39 = load i8, ptr %unreserve_pending, align 8
  %bf.clear40 = and i8 %bf.load39, -65
  store i8 %bf.clear40, ptr %unreserve_pending, align 8
  %qh_list_entry = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25
  %5 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %qh_list_entry, align 4
  %cmp.i.not = icmp eq ptr %6, %qh_list_entry
  br i1 %cmp.i.not, label %if.end31.if.end78_crit_edge, label %do.end61, !prof !76

if.end31.if.end78_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

do.end61:                                         ; preds = %if.end31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1256, i32 noundef 9, ptr noundef null) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end61.list_del_init.exit_crit_edge

do.end61.list_del_init.exit_crit_edge:            ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end61.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %qh_list_entry, ptr %qh_list_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %qh_list_entry, ptr %prev.i3.i, align 4
  br label %if.end78

if.end78:                                         ; preds = %list_del_init.exit, %if.end31.if.end78_crit_edge
  %host_us = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 11
  %15 = ptrtoint ptr %host_us to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %host_us, align 8
  %periodic_usecs = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 45
  %17 = ptrtoint ptr %periodic_usecs to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %periodic_usecs, align 4
  %sub = sub i16 %18, %16
  store i16 %sub, ptr %periodic_usecs, align 4
  %uframe_sched = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %19 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %uframe_sched, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool81.not = icmp eq i8 %20, 0
  br i1 %tobool81.not, label %if.else, label %if.then82

if.then82:                                        ; preds = %if.end78
  %num_hs_transfers.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 17
  %21 = ptrtoint ptr %num_hs_transfers.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_hs_transfers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp9.i = icmp sgt i16 %22, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %if.then82.for.end.i_crit_edge

if.then82.for.end.i_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then82
  %hs_transfers.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 18
  %hs_periodic_bitmap.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 46
  %host_interval.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %dwc2_hs_pmap_unschedule.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %dwc2_hs_pmap_unschedule.exit.i.for.body.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.dwc2_hs_transfer_time, ptr %hs_transfers.i.i, i32 %i.010.i
  %duration_us.i.i = getelementptr %struct.dwc2_hs_transfer_time, ptr %hs_transfers.i.i, i32 %i.010.i, i32 1
  %23 = ptrtoint ptr %duration_us.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %duration_us.i.i, align 4
  %conv.i.i95 = zext i16 %24 to i32
  %25 = ptrtoint ptr %host_interval.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %host_interval.i.i, align 4
  %conv2.i.i = zext i16 %26 to i32
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %call.i.i.i = tail call i32 @gcd(i32 noundef %conv2.i.i, i32 noundef 8) #13
  %mul.i.i.i = mul i32 %call.i.i.i, 100
  %div.i.i.i = sdiv i32 8, %call.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.i.i)
  %cmp7.i.i.i = icmp sgt i32 %div.i.i.i, 0
  br i1 %cmp7.i.i.i, label %for.body.i.for.body.i.i.i_crit_edge, label %for.body.i.dwc2_hs_pmap_unschedule.exit.i_crit_edge

for.body.i.dwc2_hs_pmap_unschedule.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_hs_pmap_unschedule.exit.i

for.body.i.for.body.i.i.i_crit_edge:              ; preds = %for.body.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.for.body.i.i.i_crit_edge
  %i.08.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i.i_crit_edge ]
  %mul1.i.i.i = mul i32 %mul.i.i.i, %i.08.i.i.i
  %add.i.i.i = add i32 %mul1.i.i.i, %28
  tail call void @__bitmap_clear(ptr noundef %hs_periodic_bitmap.i.i, i32 noundef %add.i.i.i, i32 noundef %conv.i.i95) #9
  %inc.i.i.i = add nuw nsw i32 %i.08.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %div.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.dwc2_hs_pmap_unschedule.exit.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.dwc2_hs_pmap_unschedule.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_hs_pmap_unschedule.exit.i

dwc2_hs_pmap_unschedule.exit.i:                   ; preds = %for.body.i.i.i.dwc2_hs_pmap_unschedule.exit.i_crit_edge, %for.body.i.dwc2_hs_pmap_unschedule.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %29 = ptrtoint ptr %num_hs_transfers.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %num_hs_transfers.i, align 4
  %conv.i96 = sext i16 %30 to i32
  %cmp.i97 = icmp slt i32 %inc.i, %conv.i96
  br i1 %cmp.i97, label %dwc2_hs_pmap_unschedule.exit.i.for.body.i_crit_edge, label %dwc2_hs_pmap_unschedule.exit.i.for.end.i_crit_edge

dwc2_hs_pmap_unschedule.exit.i.for.end.i_crit_edge: ; preds = %dwc2_hs_pmap_unschedule.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

dwc2_hs_pmap_unschedule.exit.i.for.body.i_crit_edge: ; preds = %dwc2_hs_pmap_unschedule.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %dwc2_hs_pmap_unschedule.exit.i.for.end.i_crit_edge, %if.then82.for.end.i_crit_edge
  %31 = ptrtoint ptr %unreserve_pending to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i = load i8, ptr %unreserve_pending, align 8
  %32 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  br i1 %tobool.not.i, label %for.end.i.if.end83_crit_edge, label %if.then.i

for.end.i.if.end83_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %qh) #9
  br label %if.end83

if.else:                                          ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %periodic_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 55
  %33 = ptrtoint ptr %periodic_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %periodic_channels, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %periodic_channels, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.else, %if.then.i, %for.end.i.if.end83_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_host_put_tt_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_qh_free_ddma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_qh_add(ptr noundef %hsotg, ptr noundef %qh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hcd_qh_add.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hcd_qh_add, %if.end6)) #9
          to label %if.then5 [label %if.end6], !srcloc !82

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hcd_qh_add.__UNIQUE_ID_ddebug306, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %qh_list_entry = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25
  %2 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %qh_list_entry, align 4
  %cmp.i.not = icmp eq ptr %3, %qh_list_entry
  br i1 %cmp.i.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %ep_type = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %4 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ep_type, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %5, label %if.end26 [
    i8 2, label %if.end10.if.then16_crit_edge
    i8 0, label %if.end10.if.then16_crit_edge71
  ]

if.end10.if.then16_crit_edge71:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end10.if.then16_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.then16:                                        ; preds = %if.end10.if.then16_crit_edge, %if.end10.if.then16_crit_edge71
  %frame_number = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 11
  %7 = ptrtoint ptr %frame_number to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %frame_number, align 4
  %start_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 16
  %9 = ptrtoint ptr %start_active_frame to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %start_active_frame, align 2
  %next_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 15
  %10 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %8, ptr %next_active_frame, align 8
  %want_wait = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 34
  %11 = ptrtoint ptr %want_wait to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %want_wait, align 8
  %12 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not = icmp eq i8 %12, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then16
  %non_periodic_sched_waiting = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 37
  %prev.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 37, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry, ptr noundef %14, ptr noundef %non_periodic_sched_waiting) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then19.list_add_tail.exit_crit_edge

if.then19.list_add_tail.exit_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %qh_list_entry, ptr %prev.i, align 4
  %16 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %non_periodic_sched_waiting, ptr %qh_list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %qh_list_entry, ptr %14, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then19.list_add_tail.exit_crit_edge
  %19 = ptrtoint ptr %want_wait to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load21 = load i8, ptr %want_wait, align 8
  %bf.clear22 = and i8 %bf.load21, -9
  store i8 %bf.clear22, ptr %want_wait, align 8
  %wait_timer = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 31
  tail call void @hrtimer_start_range_ns(ptr noundef %wait_timer, i64 noundef 1000000, i64 noundef 0, i32 noundef 1) #9
  br label %cleanup

if.else:                                          ; preds = %if.then16
  %non_periodic_sched_inactive = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 36
  %prev.i60 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 36, i32 1
  %20 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i60, align 4
  %call.i.i61 = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry, ptr noundef %21, ptr noundef %non_periodic_sched_inactive) #9
  br i1 %call.i.i61, label %if.end.i.i63, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i63:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %qh_list_entry, ptr %prev.i60, align 4
  %23 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %non_periodic_sched_inactive, ptr %qh_list_entry, align 4
  %prev3.i.i62 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %24 = ptrtoint ptr %prev3.i.i62 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i62, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %qh_list_entry, ptr %21, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end10
  %call27 = tail call fastcc i32 @dwc2_schedule_periodic(ptr noundef %hsotg, ptr noundef %qh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %periodic_qh_count = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 47
  %26 = ptrtoint ptr %periodic_qh_count to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %periodic_qh_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool31.not = icmp eq i16 %27, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then32:                                        ; preds = %if.end30
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 24
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %31 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %needs_byte_swap.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i = icmp eq i8 %32, 0
  %33 = tail call i32 @llvm.bswap.i32(i32 %30) #9
  %retval.0.i65 = select i1 %tobool.not.i, i32 %33, i32 %30
  %or = or i32 %retval.0.i65, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i69 = getelementptr i8, ptr %35, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %or) #9, !srcloc !83
  br label %if.end34

do.body1.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %38, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %36) #9, !srcloc !83
  br label %if.end34

if.end34:                                         ; preds = %do.body1.i, %do.body.i, %if.end30.if.end34_crit_edge
  %39 = ptrtoint ptr %periodic_qh_count to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %periodic_qh_count, align 4
  %inc = add i16 %40, 1
  store i16 %inc, ptr %periodic_qh_count, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end26.cleanup_crit_edge, %if.end.i.i63, %if.else.cleanup_crit_edge, %list_add_tail.exit, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %list_add_tail.exit ], [ %call27, %if.end26.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end.i.i63 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_schedule_periodic(ptr noundef %hsotg, ptr noundef %qh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maxp.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 3
  %0 = ptrtoint ptr %maxp.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %maxp.i, align 2
  %conv.i = zext i16 %1 to i32
  %maxp_mult.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 4
  %2 = ptrtoint ptr %maxp_mult.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %maxp_mult.i, align 8
  %conv1.i = zext i16 %3 to i32
  %mul.i = mul nuw i32 %conv1.i, %conv.i
  %max_transfer_size.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %max_transfer_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_transfer_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %5)
  %cmp.i = icmp ugt i32 %mul.i, %5
  br i1 %cmp.i, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %mul.i, i32 noundef %5) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_schedule_periodic.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_schedule_periodic, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !82

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_schedule_periodic.__UNIQUE_ID_ddebug305, ptr noundef %9, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %unreserve_timer = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 30
  %call8 = tail call i32 @del_timer(ptr noundef %unreserve_timer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end43_crit_edge, label %if.then10

if.end7.if.end43_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then10:                                        ; preds = %if.end7
  %unreserve_pending = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 34
  %10 = ptrtoint ptr %unreserve_pending to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %unreserve_pending, align 8
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %do.end29, label %if.then10.if.end43_crit_edge, !prof !80

if.then10.if.end43_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

do.end29:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1372, i32 noundef 9, ptr noundef null) #9
  br label %if.end43

if.end43:                                         ; preds = %do.end29, %if.then10.if.end43_crit_edge, %if.end7.if.end43_crit_edge
  %unreserve_pending44 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 34
  %12 = ptrtoint ptr %unreserve_pending44 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load45 = load i8, ptr %unreserve_pending44, align 8
  %13 = and i8 %bf.load45, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool49.not = icmp eq i8 %13, 0
  br i1 %tobool49.not, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end43
  %call51 = tail call fastcc i32 @dwc2_do_reserve(ptr noundef %hsotg, ptr noundef %qh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.then50.if.end59_crit_edge, label %if.then50.cleanup_crit_edge

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then50.if.end59_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.else:                                          ; preds = %if.end43
  %next_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 15
  %14 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %next_active_frame, align 8
  %frame_number = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 11
  %16 = ptrtoint ptr %frame_number to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frame_number, align 4
  %conv.i88 = zext i16 %17 to i32
  %conv1.i89 = zext i16 %15 to i32
  %sub.i = sub nsw i32 %conv.i88, %conv1.i89
  %18 = and i32 %sub.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool56.not.not = icmp eq i32 %18, 0
  br i1 %tobool56.not.not, label %if.then57, label %if.else.if.end59_crit_edge

if.else.if.end59_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then57:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dwc2_pick_first_frame(ptr noundef %hsotg, ptr noundef %qh)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.else.if.end59_crit_edge, %if.then50.if.end59_crit_edge
  %19 = ptrtoint ptr %unreserve_pending44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load61 = load i8, ptr %unreserve_pending44, align 8
  %bf.clear62 = and i8 %bf.load61, -65
  store i8 %bf.clear62, ptr %unreserve_pending44, align 8
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %20 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dma_desc_enable, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool63.not = icmp eq i8 %21, 0
  %qh_list_entry66 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25
  br i1 %tobool63.not, label %if.else65, label %if.then64

if.then64:                                        ; preds = %if.end59
  %periodic_sched_ready = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 41
  %prev.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 41, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry66, ptr noundef %23, ptr noundef %periodic_sched_ready) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then64.cleanup_crit_edge

if.then64.cleanup_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %qh_list_entry66, ptr %prev.i, align 4
  %25 = ptrtoint ptr %qh_list_entry66 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %periodic_sched_ready, ptr %qh_list_entry66, align 4
  %prev3.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %qh_list_entry66, ptr %23, align 4
  br label %cleanup

if.else65:                                        ; preds = %if.end59
  %periodic_sched_inactive = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 40
  %prev.i90 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 40, i32 1
  %28 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i90, align 4
  %call.i.i91 = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry66, ptr noundef %29, ptr noundef %periodic_sched_inactive) #9
  br i1 %call.i.i91, label %if.end.i.i93, label %if.else65.cleanup_crit_edge

if.else65.cleanup_crit_edge:                      ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i93:                                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %qh_list_entry66, ptr %prev.i90, align 4
  %31 = ptrtoint ptr %qh_list_entry66 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %periodic_sched_inactive, ptr %qh_list_entry66, align 4
  %prev3.i.i92 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %32 = ptrtoint ptr %prev3.i.i92 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i92, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %qh_list_entry66, ptr %29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i93, %if.else65.cleanup_crit_edge, %if.end.i.i, %if.then64.cleanup_crit_edge, %if.then50.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ -28, %if.then6 ], [ %call51, %if.then50.cleanup_crit_edge ], [ 0, %if.then64.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.else65.cleanup_crit_edge ], [ 0, %if.end.i.i93 ], [ -28, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_writel(ptr nocapture noundef readonly %hsotg, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %needs_byte_swap = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %0 = ptrtoint ptr %needs_byte_swap to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_byte_swap, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not, label %do.body1, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regs = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %value) #9, !srcloc !83
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %value)
  %regs3 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %5 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs3, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %4) #9, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %do.body1, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_unlink(ptr noundef %hsotg, ptr noundef %qh) local_unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hcd_qh_unlink.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hcd_qh_unlink, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !82

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hcd_qh_unlink.__UNIQUE_ID_ddebug307, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %wait_timer_cancel = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 34
  %2 = ptrtoint ptr %wait_timer_cancel to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %wait_timer_cancel, align 8
  %bf.set = or i8 %bf.load, 8
  store i8 %bf.set, ptr %wait_timer_cancel, align 8
  %qh_list_entry = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25
  %3 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %qh_list_entry, align 4
  %cmp.i.not = icmp eq ptr %4, %qh_list_entry
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %ep_type = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %5 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ep_type, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %6, label %if.end22 [
    i8 2, label %if.end7.if.then13_crit_edge
    i8 0, label %if.end7.if.then13_crit_edge47
  ]

if.end7.if.then13_crit_edge47:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %if.end7.if.then13_crit_edge, %if.end7.if.then13_crit_edge47
  %non_periodic_qh_ptr = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 39
  %8 = ptrtoint ptr %non_periodic_qh_ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %non_periodic_qh_ptr, align 8
  %cmp15 = icmp eq ptr %9, %qh_list_entry
  br i1 %cmp15, label %if.then17, label %if.then13.if.end20_crit_edge

if.then13.if.end20_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qh_list_entry, align 4
  %12 = ptrtoint ptr %non_periodic_qh_ptr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %non_periodic_qh_ptr, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.then13.if.end20_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.list_del_init.exit_crit_edge

if.end20.list_del_init.exit_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end20.list_del_init.exit_crit_edge
  %19 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %qh_list_entry, ptr %qh_list_entry, align 4
  %prev.i3.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %20 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %qh_list_entry, ptr %prev.i3.i, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  %lock.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  %21 = ptrtoint ptr %lock.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %agg.tmp.sroa.0.0.copyload.i.i = load volatile i32, ptr %lock.i, align 4
  %22 = ptrtoint ptr %agg.tmp.sroa.0.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i.i, ptr %agg.tmp.sroa.0.i.i, align 4
  %lock.sroa.0.0.extract.shift.i.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i.i, 16
  %conv.i.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i.i, i32 %lock.sroa.0.0.extract.shift.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %conv.i.i.i, %lock.sroa.0.0.extract.shift.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i.i)
  br i1 %cmp.i.i.not.i, label %do.body4.i, label %do.end9.i, !prof !80

do.body4.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/usb/dwc2/hcd_queue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1422, 0\0A.popsection", ""() #9, !srcloc !84
  unreachable

do.end9.i:                                        ; preds = %if.end22
  %unreserve_timer.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %add11.i = add i32 %23, 2
  %call12.i = tail call i32 @mod_timer(ptr noundef %unreserve_timer.i, i32 noundef %add11.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %do.end9.i.if.end36.i_crit_edge, label %do.end30.i, !prof !76

do.end9.i.if.end36.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

do.end30.i:                                       ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1441, i32 noundef 9, ptr noundef null) #9
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end30.i, %do.end9.i.if.end36.i_crit_edge
  %24 = ptrtoint ptr %wait_timer_cancel to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %wait_timer_cancel, align 8
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %wait_timer_cancel, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end36.i.dwc2_deschedule_periodic.exit_crit_edge

if.end36.i.dwc2_deschedule_periodic.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_deschedule_periodic.exit

if.end.i.i.i:                                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %dwc2_deschedule_periodic.exit

dwc2_deschedule_periodic.exit:                    ; preds = %if.end.i.i.i, %if.end36.i.dwc2_deschedule_periodic.exit_crit_edge
  %31 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %qh_list_entry, ptr %qh_list_entry, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %32 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %qh_list_entry, ptr %prev.i3.i.i, align 4
  %periodic_qh_count = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 47
  %33 = ptrtoint ptr %periodic_qh_count to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %periodic_qh_count, align 4
  %dec = add i16 %34, -1
  store i16 %dec, ptr %periodic_qh_count, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %tobool24.not = icmp eq i16 %dec, 0
  br i1 %tobool24.not, label %land.lhs.true, label %dwc2_deschedule_periodic.exit.cleanup_crit_edge

dwc2_deschedule_periodic.exit.cleanup_crit_edge:  ; preds = %dwc2_deschedule_periodic.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %dwc2_deschedule_periodic.exit
  %dma_desc_enable = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 32
  %35 = ptrtoint ptr %dma_desc_enable to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dma_desc_enable, align 1, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool25.not = icmp eq i8 %36, 0
  br i1 %tobool25.not, label %if.then26, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 1
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %38, i32 24
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %needs_byte_swap.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 34
  %40 = ptrtoint ptr %needs_byte_swap.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %needs_byte_swap.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  %42 = tail call i32 @llvm.bswap.i32(i32 %39) #9
  %retval.0.i45 = select i1 %tobool.not.i, i32 %42, i32 %39
  %and = and i32 %retval.0.i45, -9
  tail call fastcc void @dwc2_writel(ptr noundef %hsotg, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %land.lhs.true.cleanup_crit_edge, %dwc2_deschedule_periodic.exit.cleanup_crit_edge, %list_del_init.exit, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dwc2_hcd_qh_deactivate(ptr noundef %hsotg, ptr noundef %qh, i32 noundef %sched_next_periodic_split) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_hcd_qh_deactivate.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_hcd_qh_deactivate, %if.end6)) #9
          to label %if.then5 [label %if.end6], !srcloc !82

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_hcd_qh_deactivate.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %entry
  %ep_type = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %2 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ep_type, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %3, label %if.end18 [
    i8 2, label %if.end6.if.then12_crit_edge
    i8 0, label %if.end6.if.then12_crit_edge96
  ]

if.end6.if.then12_crit_edge96:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %if.end6.if.then12_crit_edge, %if.end6.if.then12_crit_edge96
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %hsotg, ptr noundef %qh)
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 23
  %5 = ptrtoint ptr %qtd_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %qtd_list, align 4
  %cmp.i.not = icmp eq ptr %6, %qtd_list
  br i1 %cmp.i.not, label %if.then12.cleanup_crit_edge, label %if.then15

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @dwc2_hcd_qh_add(ptr noundef %hsotg, ptr noundef %qh)
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call19 = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %hsotg) #9
  %conv20 = trunc i32 %call19 to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sched_next_periodic_split)
  %tobool21.not = icmp eq i32 %sched_next_periodic_split, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end18
  %7 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %next_active_frame, align 8
  %sub.i.i = add i16 %conv20, 16383
  %and.i.i = and i16 %sub.i.i, 16383
  %start_active_frame.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 16
  %9 = ptrtoint ptr %start_active_frame.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %start_active_frame.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %10)
  %cmp.i65 = icmp eq i16 %8, %10
  br i1 %cmp.i65, label %land.lhs.true.i, label %if.then22.if.else.i_crit_edge

if.then22.if.else.i_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then22
  %11 = ptrtoint ptr %ep_type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ep_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp4.i = icmp eq i8 %12, 1
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %ep_is_in.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 2
  %13 = ptrtoint ptr %ep_is_in.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ep_is_in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true6.i.if.else.i_crit_edge, label %land.lhs.true6.i.if.end.i_crit_edge

land.lhs.true6.i.if.end.i_crit_edge:              ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true6.i.if.else.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %land.lhs.true6.i.if.else.i_crit_edge, %if.then22.if.else.i_crit_edge
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %land.lhs.true6.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  %incr.0.i = phi i16 [ 1, %if.else.i ], [ 2, %land.lhs.true6.i.if.end.i_crit_edge ], [ 2, %land.lhs.true.i.if.end.i_crit_edge ]
  %add.i.i = add i16 %incr.0.i, %8
  %and.i1.i = and i16 %add.i.i, 16383
  %15 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %and.i1.i, ptr %next_active_frame, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i, i16 %and.i1.i)
  %cmp.not.i.i = icmp eq i16 %and.i.i, %and.i1.i
  br i1 %cmp.not.i.i, label %if.end.i.if.end25_crit_edge, label %dwc2_frame_num_gt.exit.i

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

dwc2_frame_num_gt.exit.i:                         ; preds = %if.end.i
  %conv1.i.i = zext i16 %add.i.i to i32
  %conv.i.i = zext i16 %sub.i.i to i32
  %sub.i2.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %and.i3.i = and i32 %sub.i2.i, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 8190, i32 %and.i3.i)
  %cmp5.i.i = icmp ugt i32 %and.i3.i, 8190
  br i1 %cmp5.i.i, label %dwc2_frame_num_gt.exit.i.if.end25_crit_edge, label %dwc2_frame_num_gt.exit.i.if.end25.sink.split_crit_edge

dwc2_frame_num_gt.exit.i.if.end25.sink.split_crit_edge: ; preds = %dwc2_frame_num_gt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25.sink.split

dwc2_frame_num_gt.exit.i.if.end25_crit_edge:      ; preds = %dwc2_frame_num_gt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %if.end18
  %host_interval.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %16 = ptrtoint ptr %host_interval.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %host_interval.i, align 4
  %sub.i.i66 = add i16 %conv20, 16383
  %and.i.i67 = and i16 %sub.i.i66, 16383
  %start_active_frame.i68 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 16
  %18 = ptrtoint ptr %start_active_frame.i68 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %start_active_frame.i68, align 2
  %add.i.i69 = add i16 %19, %17
  %and.i1.i70 = and i16 %add.i.i69, 16383
  store i16 %and.i1.i70, ptr %start_active_frame.i68, align 2
  %conv.i71 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %17)
  %cmp.i72 = icmp ugt i16 %17, 4095
  br i1 %cmp.i72, label %if.else.dwc2_next_periodic_start.exit_crit_edge, label %if.end.i74

if.else.dwc2_next_periodic_start.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_next_periodic_start.exit

if.end.i74:                                       ; preds = %if.else
  %20 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %next_active_frame, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i1.i70, i16 %21)
  %cmp7.i = icmp eq i16 %and.i1.i70, %21
  br i1 %cmp7.i, label %if.end.i74.if.then11.i_crit_edge, label %lor.lhs.false.i

if.end.i74.if.then11.i_crit_edge:                 ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

lor.lhs.false.i:                                  ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i67, i16 %and.i1.i70)
  %cmp.not.i.i75 = icmp eq i16 %and.i.i67, %and.i1.i70
  br i1 %cmp.not.i.i75, label %lor.lhs.false.i.dwc2_next_periodic_start.exit_crit_edge, label %dwc2_frame_num_gt.exit.i81

lor.lhs.false.i.dwc2_next_periodic_start.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_next_periodic_start.exit

dwc2_frame_num_gt.exit.i81:                       ; preds = %lor.lhs.false.i
  %conv1.i.i76 = zext i16 %add.i.i69 to i32
  %conv.i.i77 = zext i16 %sub.i.i66 to i32
  %sub.i2.i78 = sub nsw i32 %conv.i.i77, %conv1.i.i76
  %and.i3.i79 = and i32 %sub.i2.i78, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 8190, i32 %and.i3.i79)
  %cmp5.i.i80 = icmp ugt i32 %and.i3.i79, 8190
  br i1 %cmp5.i.i80, label %dwc2_frame_num_gt.exit.i81.dwc2_next_periodic_start.exit_crit_edge, label %dwc2_frame_num_gt.exit.i81.if.then11.i_crit_edge

dwc2_frame_num_gt.exit.i81.if.then11.i_crit_edge: ; preds = %dwc2_frame_num_gt.exit.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i

dwc2_frame_num_gt.exit.i81.dwc2_next_periodic_start.exit_crit_edge: ; preds = %dwc2_frame_num_gt.exit.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_next_periodic_start.exit

if.then11.i:                                      ; preds = %dwc2_frame_num_gt.exit.i81.if.then11.i_crit_edge, %if.end.i74.if.then11.i_crit_edge
  %do_split.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 8
  %22 = ptrtoint ptr %do_split.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %do_split.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool14.not.i = icmp eq i8 %23, 0
  br i1 %tobool14.not.i, label %lor.lhs.false15.i, label %if.then11.i.if.end20.i_crit_edge

if.then11.i.if.end20.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

lor.lhs.false15.i:                                ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %24 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %cmp17.i = icmp eq i8 %25, 3
  %spec.select.i = select i1 %cmp17.i, i32 8, i32 1
  br label %if.end20.i

if.end20.i:                                       ; preds = %lor.lhs.false15.i, %if.then11.i.if.end20.i_crit_edge
  %periods_in_map.0.i = phi i32 [ 8, %if.then11.i.if.end20.i_crit_edge ], [ %spec.select.i, %lor.lhs.false15.i ]
  %call22.i = tail call i32 @gcd(i32 noundef %conv.i71, i32 noundef %periods_in_map.0.i) #13
  %conv23.i = trunc i32 %call22.i to i16
  %conv.i8.i = zext i16 %sub.i.i66 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %dwc2_frame_num_gt.exit14.i.do.body.i_crit_edge, %if.end20.i
  %and.i519.i = phi i16 [ %and.i5.i, %dwc2_frame_num_gt.exit14.i.do.body.i_crit_edge ], [ %and.i1.i70, %if.end20.i ]
  %add.i4.i = add i16 %and.i519.i, %conv23.i
  %and.i5.i = and i16 %add.i4.i, 16383
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i.i67, i16 %and.i5.i)
  %cmp.not.i6.i = icmp eq i16 %and.i.i67, %and.i5.i
  br i1 %cmp.not.i6.i, label %do.body.i.exit.loopexit.i_crit_edge, label %dwc2_frame_num_gt.exit14.i

do.body.i.exit.loopexit.i_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.loopexit.i

dwc2_frame_num_gt.exit14.i:                       ; preds = %do.body.i
  %conv1.i7.i = zext i16 %add.i4.i to i32
  %sub.i9.i = sub nsw i32 %conv.i8.i, %conv1.i7.i
  %and.i10.i = and i32 %sub.i9.i, 16383
  %cmp5.i11.i = icmp ugt i32 %and.i10.i, 8190
  br i1 %cmp5.i11.i, label %dwc2_frame_num_gt.exit14.i.exit.loopexit.i_crit_edge, label %dwc2_frame_num_gt.exit14.i.do.body.i_crit_edge

dwc2_frame_num_gt.exit14.i.do.body.i_crit_edge:   ; preds = %dwc2_frame_num_gt.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

dwc2_frame_num_gt.exit14.i.exit.loopexit.i_crit_edge: ; preds = %dwc2_frame_num_gt.exit14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.loopexit.i

exit.loopexit.i:                                  ; preds = %dwc2_frame_num_gt.exit14.i.exit.loopexit.i_crit_edge, %do.body.i.exit.loopexit.i_crit_edge
  %and.i5.lcssa.i = phi i16 [ %and.i.i67, %do.body.i.exit.loopexit.i_crit_edge ], [ %and.i5.i, %dwc2_frame_num_gt.exit14.i.exit.loopexit.i_crit_edge ]
  %26 = ptrtoint ptr %start_active_frame.i68 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %and.i5.lcssa.i, ptr %start_active_frame.i68, align 2
  br label %dwc2_next_periodic_start.exit

dwc2_next_periodic_start.exit:                    ; preds = %exit.loopexit.i, %dwc2_frame_num_gt.exit.i81.dwc2_next_periodic_start.exit_crit_edge, %lor.lhs.false.i.dwc2_next_periodic_start.exit_crit_edge, %if.else.dwc2_next_periodic_start.exit_crit_edge
  %27 = ptrtoint ptr %start_active_frame.i68 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %start_active_frame.i68, align 2
  br label %if.end25.sink.split

if.end25.sink.split:                              ; preds = %dwc2_next_periodic_start.exit, %dwc2_frame_num_gt.exit.i.if.end25.sink.split_crit_edge
  %conv20.sink = phi i16 [ %28, %dwc2_next_periodic_start.exit ], [ %conv20, %dwc2_frame_num_gt.exit.i.if.end25.sink.split_crit_edge ]
  %29 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv20.sink, ptr %next_active_frame, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.end25.sink.split, %dwc2_frame_num_gt.exit.i.if.end25_crit_edge, %if.end.i.if.end25_crit_edge
  %qtd_list27 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 23
  %30 = ptrtoint ptr %qtd_list27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %qtd_list27, align 4
  %cmp.i82.not = icmp eq ptr %31, %qtd_list27
  br i1 %cmp.i82.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dwc2_hcd_qh_unlink(ptr noundef %hsotg, ptr noundef %qh)
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %32 = ptrtoint ptr %next_active_frame to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %next_active_frame, align 8
  %frame_number33 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 11
  %34 = ptrtoint ptr %frame_number33 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %frame_number33, align 4
  %conv.i84 = zext i16 %35 to i32
  %conv1.i = zext i16 %33 to i32
  %sub.i = sub nsw i32 %conv.i84, %conv1.i
  %36 = and i32 %sub.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool35.not.not = icmp eq i32 %36, 0
  %qh_list_entry = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25
  br i1 %tobool35.not.not, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.end31
  %periodic_sched_ready = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then36.__list_del_entry.exit.i_crit_edge

if.then36.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then36.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 41, i32 1
  %43 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry, ptr noundef %44, ptr noundef %periodic_sched_ready) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %qh_list_entry, ptr %prev.i2.i, align 4
  %46 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %periodic_sched_ready, ptr %qh_list_entry, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %qh_list_entry, ptr %44, align 4
  br label %cleanup

if.else37:                                        ; preds = %if.end31
  %periodic_sched_inactive = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 40
  %call.i.i85 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #9
  br i1 %call.i.i85, label %if.end.i.i88, label %if.else37.__list_del_entry.exit.i91_crit_edge

if.else37.__list_del_entry.exit.i91_crit_edge:    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i91

if.end.i.i88:                                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i86 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %49 = ptrtoint ptr %prev.i.i86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i86, align 4
  %51 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i87 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i87, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %__list_del_entry.exit.i91

__list_del_entry.exit.i91:                        ; preds = %if.end.i.i88, %if.else37.__list_del_entry.exit.i91_crit_edge
  %prev.i2.i89 = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 40, i32 1
  %55 = ptrtoint ptr %prev.i2.i89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i2.i89, align 4
  %call.i.i.i90 = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry, ptr noundef %56, ptr noundef %periodic_sched_inactive) #9
  br i1 %call.i.i.i90, label %if.end.i.i.i93, label %__list_del_entry.exit.i91.cleanup_crit_edge

__list_del_entry.exit.i91.cleanup_crit_edge:      ; preds = %__list_del_entry.exit.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i.i93:                                   ; preds = %__list_del_entry.exit.i91
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %prev.i2.i89 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %qh_list_entry, ptr %prev.i2.i89, align 4
  %58 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %periodic_sched_inactive, ptr %qh_list_entry, align 4
  %prev3.i.i.i92 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 25, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i.i92, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %qh_list_entry, ptr %56, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i93, %__list_del_entry.exit.i91.cleanup_crit_edge, %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge, %if.then30, %if.then15, %if.then12.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_get_frame_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dwc2_hcd_qtd_init(ptr noundef %qtd, ptr noundef %urb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %urb1 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 14
  %0 = ptrtoint ptr %urb1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %urb, ptr %urb1, align 4
  %pipe_type.i = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 13, i32 2
  %1 = ptrtoint ptr %pipe_type.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pipe_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data_toggle = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 2
  %3 = ptrtoint ptr %data_toggle to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %data_toggle, align 1
  %4 = ptrtoint ptr %qtd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qtd, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %complete_split = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 3
  %5 = ptrtoint ptr %complete_split to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %complete_split, align 2
  %isoc_split_pos = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 4
  %6 = ptrtoint ptr %isoc_split_pos to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %isoc_split_pos, align 1
  %isoc_split_offset = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 6
  %7 = ptrtoint ptr %isoc_split_offset to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %isoc_split_offset, align 2
  %in_process = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 1
  %8 = ptrtoint ptr %in_process to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %in_process, align 4
  %qtd3 = getelementptr inbounds %struct.dwc2_hcd_urb, ptr %urb, i32 0, i32 1
  %9 = ptrtoint ptr %qtd3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %qtd, ptr %qtd3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dwc2_hcd_qtd_add(ptr noundef %hsotg, ptr noundef %qtd, ptr noundef %qh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %qh, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !80

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @dwc2_hcd_qh_add(ptr noundef %hsotg, ptr noundef nonnull %qh)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %qh8 = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 15
  %2 = ptrtoint ptr %qh8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %qh, ptr %qh8, align 4
  %qtd_list_entry = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 16
  %qtd_list = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 23
  %prev.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 23, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qtd_list_entry, ptr noundef %4, ptr noundef %qtd_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %qtd_list_entry, ptr %prev.i, align 4
  %6 = ptrtoint ptr %qtd_list_entry to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %qtd_list, ptr %qtd_list_entry, align 4
  %prev3.i.i = getelementptr inbounds %struct.dwc2_qtd, ptr %qtd, i32 0, i32 16, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %qtd_list_entry, ptr %4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_host_get_speed(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dwc2_unreserve_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -148
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock72 = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 18
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %t, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %do.end44.while.cond_crit_edge, %entry
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !85
  %and.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end13, label %do.end13.thread

do.end13:                                         ; preds = %while.cond
  tail call void @trace_hardirqs_off() #9
  %call16 = tail call i32 @_raw_spin_trylock(ptr noundef %lock72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then27, label %do.end13.while.end_crit_edge

do.end13.while.end_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end13.thread:                                  ; preds = %while.cond
  %call1673 = tail call i32 @_raw_spin_trylock(ptr noundef %lock72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1673)
  %tobool17.not74 = icmp eq i32 %call1673, 0
  br i1 %tobool17.not74, label %do.end13.thread.do.body29_crit_edge, label %do.end13.thread.while.end_crit_edge

do.end13.thread.while.end_crit_edge:              ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end13.thread.do.body29_crit_edge:              ; preds = %do.end13.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body29

do.body29:                                        ; preds = %if.then27, %do.end13.thread.do.body29_crit_edge
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !86
  %and.i.i = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool37.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool37.not, label %if.then41, label %do.body29.do.end44_crit_edge, !prof !80

do.body29.do.end44_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29.do.end44_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #9, !srcloc !87
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.not, label %do.end44.while.cond_crit_edge, label %do.end44.cleanup_crit_edge

do.end44.cleanup_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end44.while.cond_crit_edge:                    ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.end:                                        ; preds = %do.end13.thread.while.end_crit_edge, %do.end13.while.end_crit_edge
  %unreserve_pending = getelementptr i8, ptr %t, i32 108
  %6 = ptrtoint ptr %unreserve_pending to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %unreserve_pending, align 8
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool57.not = icmp eq i8 %7, 0
  br i1 %tobool57.not, label %while.end.if.end59_crit_edge, label %if.then58

while.end.if.end59_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then58:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dwc2_do_unreserve(ptr noundef %1, ptr noundef %add.ptr)
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %while.end.if.end59_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock72, i32 noundef %2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %do.end44.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dwc2_wait_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -200
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %lock = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 18
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %wait_timer_cancel = getelementptr i8, ptr %t, i32 56
  %2 = ptrtoint ptr %wait_timer_cancel to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %wait_timer_cancel, align 8
  %3 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %bf.clear8 = and i8 %bf.load, -17
  %4 = ptrtoint ptr %wait_timer_cancel to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear8, ptr %wait_timer_cancel, align 8
  %qh_list_entry = getelementptr i8, ptr %t, i32 -76
  %non_periodic_sched_inactive = getelementptr inbounds %struct.dwc2_hsotg, ptr %1, i32 0, i32 36
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %qh_list_entry) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr i8, ptr %t, i32 -72
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qh_list_entry, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %11 = ptrtoint ptr %non_periodic_sched_inactive to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %non_periodic_sched_inactive, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %qh_list_entry, ptr noundef %non_periodic_sched_inactive, ptr noundef %12) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %qh_list_entry, ptr %prev1.i.i2.i, align 4
  %14 = ptrtoint ptr %qh_list_entry to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %qh_list_entry, align 4
  %prev3.i.i.i = getelementptr i8, ptr %t, i32 -72
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %non_periodic_sched_inactive, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %non_periodic_sched_inactive to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %qh_list_entry, ptr %non_periodic_sched_inactive, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %call9 = tail call i32 @dwc2_hcd_select_transactions(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %list_move.exit.if.end13_crit_edge, label %if.then12

list_move.exit.if.end13_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dwc2_hcd_queue_transactions(ptr noundef %1, i32 noundef %call9) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %list_move.exit.if.end13_crit_edge, %entry.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dwc2_host_get_tt_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_calc_bus_time(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dwc2_hcd_select_transactions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dwc2_hcd_queue_transactions(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_ls_pmap_unschedule(ptr nocapture noundef readonly %qh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device_us = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 12
  %0 = ptrtoint ptr %device_us to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device_us, align 2
  %dwc_tt.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 32
  %2 = ptrtoint ptr %dwc_tt.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dwc_tt.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %dwc2_get_ls_map.exit.thread, label %if.end23.i, !prof !80

dwc2_get_ls_map.exit.thread:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 380, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end23.i:                                       ; preds = %entry
  %periodic_bitmaps.i = getelementptr inbounds %struct.dwc2_tt, ptr %3, i32 0, i32 2
  %usb_tt.i = getelementptr inbounds %struct.dwc2_tt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %usb_tt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb_tt.i, align 4
  %multi.i = getelementptr inbounds %struct.usb_tt, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %multi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %multi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool26.not.i = icmp eq i32 %7, 0
  br i1 %tobool26.not.i, label %if.end23.i.dwc2_get_ls_map.exit_crit_edge, label %if.then27.i

if.end23.i.dwc2_get_ls_map.exit_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_get_ls_map.exit

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %ttport.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 33
  %8 = ptrtoint ptr %ttport.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ttport.i, align 4
  %sub.i = shl i32 %9, 1
  %mul.i = add i32 %sub.i, -2
  %add.ptr.i = getelementptr i32, ptr %periodic_bitmaps.i, i32 %mul.i
  br label %dwc2_get_ls_map.exit

dwc2_get_ls_map.exit:                             ; preds = %if.then27.i, %if.end23.i.dwc2_get_ls_map.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then27.i ], [ %periodic_bitmaps.i, %if.end23.i.dwc2_get_ls_map.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %dwc2_get_ls_map.exit.cleanup_crit_edge, label %if.end

dwc2_get_ls_map.exit.cleanup_crit_edge:           ; preds = %dwc2_get_ls_map.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dwc2_get_ls_map.exit
  %conv = zext i16 %1 to i32
  %sub = add nuw nsw i32 %conv, 24
  %div = udiv i32 %sub, 25
  %device_interval = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 14
  %10 = ptrtoint ptr %device_interval to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device_interval, align 2
  %conv1 = zext i16 %11 to i32
  %ls_start_schedule_slice = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 19
  %12 = ptrtoint ptr %ls_start_schedule_slice to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ls_start_schedule_slice, align 8
  %call.i = tail call i32 @gcd(i32 noundef %conv1, i32 noundef 1) #13
  %mul.i1 = mul i32 %call.i, 36
  %14 = add i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %15 = icmp ult i32 %14, 3
  %div.i = select i1 %15, i32 %call.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i)
  %cmp7.i = icmp sgt i32 %div.i, 0
  br i1 %cmp7.i, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %mul1.i = mul i32 %mul.i1, %i.08.i
  %add.i = add i32 %mul1.i, %13
  tail call void @__bitmap_clear(ptr noundef nonnull %retval.0.i, i32 noundef %add.i, i32 noundef %div) #9
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %dwc2_get_ls_map.exit.cleanup_crit_edge, %dwc2_get_ls_map.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dwc2_do_reserve(ptr noundef %hsotg, ptr noundef %qh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %uframe_sched = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uframe_sched, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %dev_speed.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %2 = ptrtoint ptr %dev_speed.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dev_speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp eq i8 %3, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  %host_us.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 11
  %4 = ptrtoint ptr %host_us.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %host_us.i.i, align 8
  %device_us.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 12
  %6 = ptrtoint ptr %device_us.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device_us.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not.i.i = icmp eq i16 %5, %7
  br i1 %cmp.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %do.end.i.i, !prof !76

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 993, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.if.end.i.i_crit_edge
  %host_interval.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %8 = ptrtoint ptr %host_interval.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %host_interval.i.i, align 4
  %device_interval.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 14
  %10 = ptrtoint ptr %device_interval.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %device_interval.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp24.not.i.i = icmp eq i16 %9, %11
  br i1 %cmp24.not.i.i, label %if.end.i.i.if.end47.i.i_crit_edge, label %do.end41.i.i, !prof !76

if.end.i.i.if.end47.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i.i

do.end41.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 994, i32 noundef 9, ptr noundef null) #9
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.end41.i.i, %if.end.i.i.if.end47.i.i_crit_edge
  %num_hs_transfers.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 17
  %12 = ptrtoint ptr %num_hs_transfers.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num_hs_transfers.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %13)
  %cmp57.not.i.i = icmp eq i16 %13, 1
  br i1 %cmp57.not.i.i, label %if.end47.i.i.if.end80.i.i_crit_edge, label %do.end74.i.i, !prof !76

if.end47.i.i.if.end80.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i.i

do.end74.i.i:                                     ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 995, i32 noundef 9, ptr noundef null) #9
  br label %if.end80.i.i

if.end80.i.i:                                     ; preds = %do.end74.i.i, %if.end47.i.i.if.end80.i.i_crit_edge
  %hs_transfers.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 18
  %14 = ptrtoint ptr %hs_transfers.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hs_transfers.i.i, align 8
  %15 = ptrtoint ptr %host_us.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %host_us.i.i, align 8
  %duration_us.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 18, i32 0, i32 1
  %17 = ptrtoint ptr %duration_us.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %duration_us.i.i, align 4
  %hs_periodic_bitmap.i.i.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 46
  %conv.i.i.i = zext i16 %16 to i32
  %18 = ptrtoint ptr %host_interval.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %host_interval.i.i, align 4
  %conv2.i.i.i = zext i16 %19 to i32
  %call.i.i.i = tail call fastcc i32 @pmap_schedule(ptr noundef %hs_periodic_bitmap.i.i.i, i32 noundef 100, i32 noundef 8, i32 noundef %conv.i.i.i, i32 noundef %conv2.i.i.i, i32 noundef 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end80.i.i.do.body8_crit_edge, label %if.end.i.i.i

if.end80.i.i.do.body8_crit_edge:                  ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.end.i.i.i:                                     ; preds = %if.end80.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %hs_transfers.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i.i.i, ptr %hs_transfers.i.i, align 4
  br label %if.end19

if.else.i:                                        ; preds = %if.then
  %do_split.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 8
  %21 = ptrtoint ptr %do_split.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %do_split.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.else4.i

if.then2.i:                                       ; preds = %if.else.i
  %host_us.i20.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 11
  %23 = ptrtoint ptr %host_us.i20.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %host_us.i20.i, align 8
  %device_us.i21.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 12
  %25 = ptrtoint ptr %device_us.i21.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %device_us.i21.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp.not.i22.i = icmp eq i16 %24, %26
  br i1 %cmp.not.i22.i, label %if.then2.i.if.end.i27.i_crit_edge, label %do.end.i23.i, !prof !76

if.then2.i.if.end.i27.i_crit_edge:                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i27.i

do.end.i23.i:                                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1016, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i27.i

if.end.i27.i:                                     ; preds = %do.end.i23.i, %if.then2.i.if.end.i27.i_crit_edge
  %host_interval.i24.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %27 = ptrtoint ptr %host_interval.i24.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %host_interval.i24.i, align 4
  %device_interval.i25.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 14
  %29 = ptrtoint ptr %device_interval.i25.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %device_interval.i25.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp24.not.i26.i = icmp eq i16 %28, %30
  br i1 %cmp24.not.i26.i, label %if.end.i27.i.if.end47.i29.i_crit_edge, label %do.end41.i28.i, !prof !76

if.end.i27.i.if.end47.i29.i_crit_edge:            ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i29.i

do.end41.i28.i:                                   ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1017, i32 noundef 9, ptr noundef null) #9
  br label %if.end47.i29.i

if.end47.i29.i:                                   ; preds = %do.end41.i28.i, %if.end.i27.i.if.end47.i29.i_crit_edge
  %schedule_low_speed.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 34
  %31 = ptrtoint ptr %schedule_low_speed.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i = load i8, ptr %schedule_low_speed.i.i, align 8
  %32 = and i8 %bf.load.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool56.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool56.not.i.i, label %do.end74.i30.i, label %if.end47.i29.i.if.end80.i31.i_crit_edge, !prof !80

if.end47.i29.i.if.end80.i31.i_crit_edge:          ; preds = %if.end47.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80.i31.i

do.end74.i30.i:                                   ; preds = %if.end47.i29.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1018, i32 noundef 9, ptr noundef null) #9
  br label %if.end80.i31.i

if.end80.i31.i:                                   ; preds = %do.end74.i30.i, %if.end47.i29.i.if.end80.i31.i_crit_edge
  %33 = ptrtoint ptr %device_us.i21.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %device_us.i21.i, align 2
  %dwc_tt.i.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 32
  %35 = ptrtoint ptr %dwc_tt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dwc_tt.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i.i, label %if.end80.i31.i.if.end6.thread.sink.split.i_crit_edge, label %if.end23.i.i.i.i, !prof !80

if.end80.i31.i.if.end6.thread.sink.split.i_crit_edge: ; preds = %if.end80.i31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread.sink.split.i

if.end23.i.i.i.i:                                 ; preds = %if.end80.i31.i
  %periodic_bitmaps.i.i.i.i = getelementptr inbounds %struct.dwc2_tt, ptr %36, i32 0, i32 2
  %usb_tt.i.i.i.i = getelementptr inbounds %struct.dwc2_tt, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %usb_tt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %usb_tt.i.i.i.i, align 4
  %multi.i.i.i.i = getelementptr inbounds %struct.usb_tt, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %multi.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %multi.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool26.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool26.not.i.i.i.i, label %if.end23.i.i.i.i.dwc2_get_ls_map.exit.i.i.i_crit_edge, label %if.then27.i.i.i.i

if.end23.i.i.i.i.dwc2_get_ls_map.exit.i.i.i_crit_edge: ; preds = %if.end23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_get_ls_map.exit.i.i.i

if.then27.i.i.i.i:                                ; preds = %if.end23.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %ttport.i.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 33
  %41 = ptrtoint ptr %ttport.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ttport.i.i.i.i, align 4
  %sub.i.i.i.i = shl i32 %42, 1
  %mul.i.i.i.i = add i32 %sub.i.i.i.i, -2
  %add.ptr.i.i.i.i = getelementptr i32, ptr %periodic_bitmaps.i.i.i.i, i32 %mul.i.i.i.i
  br label %dwc2_get_ls_map.exit.i.i.i

dwc2_get_ls_map.exit.i.i.i:                       ; preds = %if.then27.i.i.i.i, %if.end23.i.i.i.i.dwc2_get_ls_map.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %if.then27.i.i.i.i ], [ %periodic_bitmaps.i.i.i.i, %if.end23.i.i.i.i.dwc2_get_ls_map.exit.i.i.i_crit_edge ]
  %tobool.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %dwc2_get_ls_map.exit.i.i.i.do.body8_crit_edge, label %if.end.i.i34.i

dwc2_get_ls_map.exit.i.i.i.do.body8_crit_edge:    ; preds = %dwc2_get_ls_map.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.end.i.i34.i:                                   ; preds = %dwc2_get_ls_map.exit.i.i.i
  %conv.i.i32.i = zext i16 %34 to i32
  %sub.i.i.i = add nuw nsw i32 %conv.i.i32.i, 24
  %div.i.i.i = udiv i32 %sub.i.i.i, 25
  %43 = ptrtoint ptr %device_interval.i25.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %device_interval.i25.i, align 2
  %conv1.i.i.i = zext i16 %44 to i32
  %call2.i.i.i = tail call fastcc i32 @pmap_schedule(ptr noundef nonnull %retval.0.i.i.i.i, i32 noundef 36, i32 noundef 1, i32 noundef %div.i.i.i, i32 noundef %conv1.i.i.i, i32 noundef 0, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i33.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i33.i, label %if.end.i.i34.i.do.body8_crit_edge, label %if.end5.i.i.i

if.end.i.i34.i.do.body8_crit_edge:                ; preds = %if.end.i.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.end5.i.i.i:                                    ; preds = %if.end.i.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  %ls_start_schedule_slice.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 19
  %45 = ptrtoint ptr %ls_start_schedule_slice.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call2.i.i.i, ptr %ls_start_schedule_slice.i.i.i, align 8
  br label %if.end19

if.else4.i:                                       ; preds = %if.else.i
  %maxp_mult.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 4
  %46 = ptrtoint ptr %maxp_mult.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %maxp_mult.i.i, align 8
  %conv.i.i = zext i16 %47 to i32
  %maxp.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 3
  %48 = ptrtoint ptr %maxp.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %maxp.i.i, align 2
  %conv1.i.i = zext i16 %49 to i32
  %mul.i.i = mul nuw i32 %conv1.i.i, %conv.i.i
  %host_interval.i36.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %50 = ptrtoint ptr %host_interval.i36.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %host_interval.i36.i, align 4
  %conv2.i.i = zext i16 %51 to i32
  %call.i.i = tail call i32 @gcd(i32 noundef %conv2.i.i, i32 noundef 8) #13
  %schedule_low_speed.i37.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 34
  %device_us.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 12
  %dwc_tt.i.i.i38.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 32
  %ttport.i.i.i39.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 33
  %device_interval.i.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 14
  %ls_start_schedule_slice.i.i40.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 19
  %add59.i.i = add i32 %call.i.i, -1
  %ep_type.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 1
  %ep_is_in.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 2
  %num_hs_transfers428.i.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 17
  %52 = tail call i32 @llvm.smin.i32(i32 %mul.i.i, i32 188) #9
  %hs_transfers.i41.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 18
  %duration_us.i42.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 18, i32 0, i32 1
  %hs_periodic_bitmap.i.i43.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 46
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.else4.i
  %ls_search_slice.0470.i.i = phi i32 [ 0, %if.else4.i ], [ %ls_search_slice.1.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %53 = ptrtoint ptr %schedule_low_speed.i37.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load.i44.i = load i8, ptr %schedule_low_speed.i37.i, align 8
  %54 = and i8 %bf.load.i44.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i.i, label %land.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %55 = ptrtoint ptr %device_us.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %device_us.i.i.i, align 2
  %57 = ptrtoint ptr %dwc_tt.i.i.i38.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dwc_tt.i.i.i38.i, align 8
  %tobool.not.i.i.i45.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i45.i, label %if.then.i.i.if.end6.thread.sink.split.i_crit_edge, label %if.end23.i.i.i51.i, !prof !80

if.then.i.i.if.end6.thread.sink.split.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread.sink.split.i

if.end23.i.i.i51.i:                               ; preds = %if.then.i.i
  %periodic_bitmaps.i.i.i47.i = getelementptr inbounds %struct.dwc2_tt, ptr %58, i32 0, i32 2
  %usb_tt.i.i.i48.i = getelementptr inbounds %struct.dwc2_tt, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %usb_tt.i.i.i48.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %usb_tt.i.i.i48.i, align 4
  %multi.i.i.i49.i = getelementptr inbounds %struct.usb_tt, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %multi.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %multi.i.i.i49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool26.not.i.i.i50.i = icmp eq i32 %62, 0
  br i1 %tobool26.not.i.i.i50.i, label %if.end23.i.i.i51.i.dwc2_get_ls_map.exit.i.i58.i_crit_edge, label %if.then27.i.i.i55.i

if.end23.i.i.i51.i.dwc2_get_ls_map.exit.i.i58.i_crit_edge: ; preds = %if.end23.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_get_ls_map.exit.i.i58.i

if.then27.i.i.i55.i:                              ; preds = %if.end23.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %ttport.i.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ttport.i.i.i39.i, align 4
  %sub.i.i.i52.i = shl i32 %64, 1
  %mul.i.i.i53.i = add i32 %sub.i.i.i52.i, -2
  %add.ptr.i.i.i54.i = getelementptr i32, ptr %periodic_bitmaps.i.i.i47.i, i32 %mul.i.i.i53.i
  br label %dwc2_get_ls_map.exit.i.i58.i

dwc2_get_ls_map.exit.i.i58.i:                     ; preds = %if.then27.i.i.i55.i, %if.end23.i.i.i51.i.dwc2_get_ls_map.exit.i.i58.i_crit_edge
  %retval.0.i.i.i56.i = phi ptr [ %add.ptr.i.i.i54.i, %if.then27.i.i.i55.i ], [ %periodic_bitmaps.i.i.i47.i, %if.end23.i.i.i51.i.dwc2_get_ls_map.exit.i.i58.i_crit_edge ]
  %tobool.not.i.i57.i = icmp eq ptr %retval.0.i.i.i56.i, null
  br i1 %tobool.not.i.i57.i, label %dwc2_get_ls_map.exit.i.i58.i.do.body8_crit_edge, label %if.end.i.i65.i

dwc2_get_ls_map.exit.i.i58.i.do.body8_crit_edge:  ; preds = %dwc2_get_ls_map.exit.i.i58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.end.i.i65.i:                                   ; preds = %dwc2_get_ls_map.exit.i.i58.i
  %conv.i.i59.i = zext i16 %56 to i32
  %sub.i.i60.i = add nuw nsw i32 %conv.i.i59.i, 24
  %div.i.i61.i = udiv i32 %sub.i.i60.i, 25
  %65 = ptrtoint ptr %device_interval.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %device_interval.i.i.i, align 2
  %conv1.i.i62.i = zext i16 %66 to i32
  %call2.i.i63.i = tail call fastcc i32 @pmap_schedule(ptr noundef nonnull %retval.0.i.i.i56.i, i32 noundef 36, i32 noundef 1, i32 noundef %div.i.i61.i, i32 noundef %conv1.i.i62.i, i32 noundef %ls_search_slice.0470.i.i, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i63.i)
  %cmp.i.i64.i = icmp slt i32 %call2.i.i63.i, 0
  br i1 %cmp.i.i64.i, label %if.end.i.i65.i.do.body8_crit_edge, label %dwc2_ls_pmap_schedule.exit.i.i

if.end.i.i65.i.do.body8_crit_edge:                ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

dwc2_ls_pmap_schedule.exit.i.i:                   ; preds = %if.end.i.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %ls_start_schedule_slice.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call2.i.i63.i, ptr %ls_start_schedule_slice.i.i40.i, align 8
  br label %if.end43.i.i

land.end.i.i:                                     ; preds = %while.body.i.i
  %.b407.i.i = load i1, ptr @dwc2_uframe_schedule_split.__already_done, align 1
  br i1 %.b407.i.i, label %land.end.i.i.if.end43.i.i_crit_edge, label %if.then13.i.i, !prof !76

land.end.i.i.if.end43.i.i_crit_edge:              ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i.i

if.then13.i.i:                                    ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @dwc2_uframe_schedule_split.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 761, i32 noundef 9, ptr noundef null) #9
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then13.i.i, %land.end.i.i.if.end43.i.i_crit_edge, %dwc2_ls_pmap_schedule.exit.i.i
  %68 = ptrtoint ptr %ls_start_schedule_slice.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ls_start_schedule_slice.i.i40.i, align 8
  %.frozen = freeze i32 %69
  %div.i.i = udiv i32 %.frozen, 5
  %rem.i.i = and i32 %div.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rem.i.i)
  %cmp44.i.i = icmp eq i32 %rem.i.i, 7
  br i1 %cmp44.i.i, label %if.then46.i.i, label %if.end58.i.i

if.then46.i.i:                                    ; preds = %if.end43.i.i
  %70 = ptrtoint ptr %schedule_low_speed.i37.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load48.i.i = load i8, ptr %schedule_low_speed.i37.i, align 8
  %71 = and i8 %bf.load48.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool52.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool52.not.i.i, label %if.then46.i.i.if.end54.i.i_crit_edge, label %if.then53.i.i

if.then46.i.i.if.end54.i.i_crit_edge:             ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.then53.i.i:                                    ; preds = %if.then46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %qh) #9
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.then53.i.i, %if.then46.i.i.if.end54.i.i_crit_edge
  %72 = ptrtoint ptr %ls_start_schedule_slice.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ls_start_schedule_slice.i.i40.i, align 8
  %74 = urem i32 %73, 36
  %75 = add i32 %73, 36
  %mul57.i.i = sub i32 %75, %74
  br label %cleanup.i.i

if.end58.i.i:                                     ; preds = %if.end43.i.i
  %sub.i.i = add i32 %add59.i.i, %div.i.i
  %rem60.i.i = srem i32 %sub.i.i, %call.i.i
  %76 = ptrtoint ptr %ep_type.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %ep_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp62.i.i = icmp eq i8 %77, 1
  br i1 %cmp62.i.i, label %land.lhs.true.i.i, label %if.end58.i.i.if.else66.i.i_crit_edge

if.end58.i.i.if.else66.i.i_crit_edge:             ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66.i.i

land.lhs.true.i.i:                                ; preds = %if.end58.i.i
  %78 = ptrtoint ptr %ep_is_in.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %ep_is_in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool64.not.i.i = icmp eq i8 %79, 0
  br i1 %tobool64.not.i.i, label %land.lhs.true.i.i.if.end68.i.i_crit_edge, label %land.lhs.true.i.i.if.else66.i.i_crit_edge

land.lhs.true.i.i.if.else66.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66.i.i

land.lhs.true.i.i.if.end68.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i.i

if.else66.i.i:                                    ; preds = %land.lhs.true.i.i.if.else66.i.i_crit_edge, %if.end58.i.i.if.else66.i.i_crit_edge
  %add67.i.i = add nuw nsw i32 %div.i.i, 1
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.else66.i.i, %land.lhs.true.i.i.if.end68.i.i_crit_edge
  %second_s_uframe.0.i.i = phi i32 [ %add67.i.i, %if.else66.i.i ], [ %div.i.i, %land.lhs.true.i.i.if.end68.i.i_crit_edge ]
  %80 = mul i32 %div.i.i, 5
  %rem70.i.i.decomposed = sub i32 %.frozen, %80
  %81 = trunc i32 %rem70.i.i.decomposed to i16
  %82 = mul nuw nsw i16 %81, 188
  %div74.lhs.trunc.i.i = add nuw nsw i16 %82, 4
  %div74450.i.i = udiv i16 %div74.lhs.trunc.i.i, 5
  %div74.zext.i.i = zext i16 %div74450.i.i to i32
  %sub75.i.i = sub nuw nsw i32 188, %div74.zext.i.i
  %83 = tail call i32 @llvm.smin.i32(i32 %sub75.i.i, i32 %mul.i.i) #9
  %sub80.i.i = sub i32 %mul.i.i, %83
  %84 = ptrtoint ptr %ep_is_in.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %ep_is_in.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool82.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool82.not.i.i, label %land.lhs.true83.i.i, label %if.end101.thread.i.i

land.lhs.true83.i.i:                              ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %52)
  %cmp87.not.i.i = icmp eq i32 %83, %52
  br i1 %cmp87.not.i.i, label %if.end101.i.i, label %if.then89.i.i

if.then89.i.i:                                    ; preds = %land.lhs.true83.i.i
  %86 = ptrtoint ptr %schedule_low_speed.i37.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load92.i.i = load i8, ptr %schedule_low_speed.i37.i, align 8
  %87 = and i8 %bf.load92.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool96.not.i.i = icmp eq i8 %87, 0
  br i1 %tobool96.not.i.i, label %if.then89.i.i.if.end98.i.i_crit_edge, label %if.then97.i.i

if.then89.i.i.if.end98.i.i_crit_edge:             ; preds = %if.then89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end98.i.i

if.then97.i.i:                                    ; preds = %if.then89.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %qh) #9
  br label %if.end98.i.i

if.end98.i.i:                                     ; preds = %if.then97.i.i, %if.then89.i.i.if.end98.i.i_crit_edge
  %88 = mul nuw i32 %div.i.i, 5
  %mul100.i.i = add i32 %88, 5
  br label %cleanup.i.i

if.end101.i.i:                                    ; preds = %land.lhs.true83.i.i
  %sub103.i.i = add i32 %sub80.i.i, 187
  %div104.i.i = sdiv i32 %sub103.i.i, 188
  %89 = trunc i32 %div104.i.i to i16
  %conv106.i.i = add i16 %89, 1
  %90 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv106.i.i, ptr %num_hs_transfers428.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %77)
  %cmp109.i.i = icmp eq i8 %77, 3
  br i1 %cmp109.i.i, label %if.else128.i.i, label %if.else174.i.i

if.end101.thread.i.i:                             ; preds = %if.end68.i.i
  %sub103425.i.i = add i32 %sub80.i.i, 187
  %div104426.i.i = sdiv i32 %sub103425.i.i, 188
  %91 = trunc i32 %div104426.i.i to i16
  %conv106427.i.i = add i16 %91, 1
  %92 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv106427.i.i, ptr %num_hs_transfers428.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %77)
  %cmp109429.i.i = icmp eq i8 %77, 3
  br i1 %cmp109429.i.i, label %if.then111.thread.i.i, label %if.then140.i.i

if.then111.thread.i.i:                            ; preds = %if.end101.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rem.i.i)
  %cmp112446.i.i = icmp eq i32 %rem.i.i, 6
  %storemerge408449.v.i.i = select i1 %cmp112446.i.i, i16 3, i16 4
  %storemerge408449.i.i = add i16 %storemerge408449.v.i.i, %91
  %93 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %storemerge408449.i.i, ptr %num_hs_transfers428.i.i, align 4
  br label %if.end184.i.i

if.else128.i.i:                                   ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rem.i.i)
  %cmp112.i.i = icmp eq i32 %rem.i.i, 6
  %storemerge408.v.i.i = select i1 %cmp112.i.i, i16 3, i16 4
  %storemerge408.i.i = add i16 %storemerge408.v.i.i, %89
  %94 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %storemerge408.i.i, ptr %num_hs_transfers428.i.i, align 4
  %95 = tail call i32 @llvm.smax.i32(i32 %sub80.i.i, i32 4) #9
  br label %if.end184.i.i

if.then140.i.i:                                   ; preds = %if.end101.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i.i = shl i32 %div104426.i.i, 16
  %sext.i.i = add i32 %inc.i.i, 131072
  %conv143.i.i = ashr exact i32 %sext.i.i, 16
  %add144.i.i = add nsw i32 %conv143.i.i, %rem.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add144.i.i)
  %cmp146.i.i = icmp slt i32 %add144.i.i, 6
  %storemerge.v.i.i = select i1 %cmp146.i.i, i16 4, i16 3
  %storemerge.i.i = add i16 %storemerge.v.i.i, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add144.i.i)
  %cmp159.i.i = icmp sgt i32 %add144.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp162.i.i = icmp eq i32 %rem.i.i, 0
  %or.cond.i.i = and i1 %cmp162.i.i, %cmp159.i.i
  %dec.i.i = sext i1 %or.cond.i.i to i16
  %spec.select.i.i = add i16 %storemerge.i.i, %dec.i.i
  %96 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %spec.select.i.i, ptr %num_hs_transfers428.i.i, align 4
  br label %if.end184.i.i

if.else174.i.i:                                   ; preds = %if.end101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = tail call i32 @llvm.smin.i32(i32 %sub80.i.i, i32 188) #9
  %rem182.i.i = srem i32 %sub80.i.i, 188
  br label %if.end184.i.i

if.end184.i.i:                                    ; preds = %if.else174.i.i, %if.then140.i.i, %if.else128.i.i, %if.then111.thread.i.i
  %first_count.0.i.i = phi i32 [ %52, %if.else128.i.i ], [ 4, %if.then140.i.i ], [ %52, %if.else174.i.i ], [ 4, %if.then111.thread.i.i ]
  %middle_count.0.i.i = phi i32 [ %95, %if.else128.i.i ], [ %52, %if.then140.i.i ], [ %97, %if.else174.i.i ], [ %mul.i.i, %if.then111.thread.i.i ]
  %end_count.0.i.i = phi i32 [ 4, %if.else128.i.i ], [ %52, %if.then140.i.i ], [ %rem182.i.i, %if.else174.i.i ], [ %mul.i.i, %if.then111.thread.i.i ]
  %mul185.i.i = mul i32 %first_count.0.i.i, 56
  %div186.i.i = sdiv i32 %mul185.i.i, 6
  %98 = mul i32 %div186.i.i, 2083
  %add189.i.i = add i32 %98, 639481
  %div190.i.i = udiv i32 %add189.i.i, 1000
  %sub193.i.i = add nuw nsw i32 %div190.i.i, 1004
  %div194.i.i = udiv i32 %sub193.i.i, 1000
  %conv195.i.i = trunc i32 %div194.i.i to i16
  %99 = ptrtoint ptr %duration_us.i42.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv195.i.i, ptr %duration_us.i42.i, align 4
  %100 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %num_hs_transfers428.i.i, align 4
  %conv197455.i.i = sext i16 %101 to i32
  %sub198456.i.i = add nsw i32 %conv197455.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %101)
  %cmp199457.i.i = icmp sgt i16 %101, 2
  br i1 %cmp199457.i.i, label %for.body.lr.ph.i.i, label %if.end184.i.i.for.end.i.i_crit_edge

if.end184.i.i.for.end.i.i_crit_edge:              ; preds = %if.end184.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end184.i.i
  %mul201.i.i = mul i32 %middle_count.0.i.i, 56
  %div202.i.i = sdiv i32 %mul201.i.i, 6
  %102 = mul i32 %div202.i.i, 2083
  %add205.i.i = add i32 %102, 639481
  %div206.i.i = udiv i32 %add205.i.i, 1000
  %sub209.i.i = add nuw nsw i32 %div206.i.i, 1004
  %div210.i.i = udiv i32 %sub209.i.i, 1000
  %conv211.i.i = trunc i32 %div210.i.i to i16
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0458.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %inc215.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %duration_us214.i.i = getelementptr %struct.dwc2_qh, ptr %qh, i32 0, i32 18, i32 %i.0458.i.i, i32 1
  %103 = ptrtoint ptr %duration_us214.i.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv211.i.i, ptr %duration_us214.i.i, align 4
  %inc215.i.i = add nuw nsw i32 %i.0458.i.i, 1
  %104 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %num_hs_transfers428.i.i, align 4
  %conv197.i.i = sext i16 %105 to i32
  %sub198.i.i = add nsw i32 %conv197.i.i, -1
  %cmp199.i.i = icmp slt i32 %inc215.i.i, %sub198.i.i
  br i1 %cmp199.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i.loopexit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.i.loopexit:                             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv197.i.i.le = sext i16 %105 to i32
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.i.loopexit, %if.end184.i.i.for.end.i.i_crit_edge
  %conv197.le.pre-phi.i.i = phi i32 [ %conv197455.i.i, %if.end184.i.i.for.end.i.i_crit_edge ], [ %conv197.i.i.le, %for.end.i.i.loopexit ]
  %.lcssa454.i.i = phi i16 [ %101, %if.end184.i.i.for.end.i.i_crit_edge ], [ %105, %for.end.i.i.loopexit ]
  %sub198.lcssa.i.i = phi i32 [ %sub198456.i.i, %if.end184.i.i.for.end.i.i_crit_edge ], [ %sub198.i.i, %for.end.i.i.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %.lcssa454.i.i)
  %cmp218.i.i = icmp sgt i16 %.lcssa454.i.i, 1
  br i1 %cmp218.i.i, label %for.body247.lr.ph.i.i, label %if.end238.i.i

if.end238.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul239.i.i = mul i32 %rem60.i.i, 100
  %106 = ptrtoint ptr %hs_transfers.i41.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %mul239.i.i, ptr %hs_transfers.i41.i, align 8
  br label %for.cond258.preheader.i.i

for.body247.lr.ph.i.i:                            ; preds = %for.end.i.i
  %mul221.i.i = mul i32 %end_count.0.i.i, 56
  %div222.i.i = sdiv i32 %mul221.i.i, 6
  %107 = mul i32 %div222.i.i, 2083
  %add225.i.i = add i32 %107, 639481
  %div226.i.i = udiv i32 %add225.i.i, 1000
  %sub229.i.i = add nuw nsw i32 %div226.i.i, 1004
  %div230.i.i = udiv i32 %sub229.i.i, 1000
  %conv231.i.i = trunc i32 %div230.i.i to i16
  %duration_us237.i.i = getelementptr %struct.dwc2_qh, ptr %qh, i32 0, i32 18, i32 %sub198.lcssa.i.i, i32 1
  %108 = ptrtoint ptr %duration_us237.i.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv231.i.i, ptr %duration_us237.i.i, align 4
  %mul239472.i.i = mul i32 %rem60.i.i, 100
  %109 = ptrtoint ptr %hs_transfers.i41.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %mul239472.i.i, ptr %hs_transfers.i41.i, align 8
  %add248.i.i = add i32 %second_s_uframe.0.i.i, 7
  br label %for.body247.i.i

for.cond258.preheader.i.i:                        ; preds = %for.body247.i.i.for.cond258.preheader.i.i_crit_edge, %if.end238.i.i
  %110 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %num_hs_transfers428.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp261464.i.i = icmp sgt i16 %111, 0
  br i1 %cmp261464.i.i, label %for.cond258.preheader.i.i.for.body263.i.i_crit_edge, label %for.end270.thread.i.i

for.cond258.preheader.i.i.for.body263.i.i_crit_edge: ; preds = %for.cond258.preheader.i.i
  br label %for.body263.i.i

for.body247.i.i:                                  ; preds = %for.body247.i.i.for.body247.i.i_crit_edge, %for.body247.lr.ph.i.i
  %i.1462.i.i = phi i32 [ 1, %for.body247.lr.ph.i.i ], [ %inc256.i.i, %for.body247.i.i.for.body247.i.i_crit_edge ]
  %sub249.i.i = add i32 %add248.i.i, %i.1462.i.i
  %rem250.urem.i.i = and i32 %sub249.i.i, 7
  %mul251.i.i = mul nuw nsw i32 %rem250.urem.i.i, 100
  %arrayidx253.i.i = getelementptr %struct.dwc2_qh, ptr %qh, i32 0, i32 18, i32 %i.1462.i.i
  %112 = ptrtoint ptr %arrayidx253.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %mul251.i.i, ptr %arrayidx253.i.i, align 8
  %inc256.i.i = add nuw nsw i32 %i.1462.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc256.i.i, %conv197.le.pre-phi.i.i
  br i1 %exitcond.not.i.i, label %for.body247.i.i.for.cond258.preheader.i.i_crit_edge, label %for.body247.i.i.for.body247.i.i_crit_edge

for.body247.i.i.for.body247.i.i_crit_edge:        ; preds = %for.body247.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body247.i.i

for.body247.i.i.for.cond258.preheader.i.i_crit_edge: ; preds = %for.body247.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond258.preheader.i.i

for.body263.i.i:                                  ; preds = %for.inc268.i.i.for.body263.i.i_crit_edge, %for.cond258.preheader.i.i.for.body263.i.i_crit_edge
  %i.2465.i.i = phi i32 [ %inc269.i.i, %for.inc268.i.i.for.body263.i.i_crit_edge ], [ 0, %for.cond258.preheader.i.i.for.body263.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.dwc2_hs_transfer_time, ptr %hs_transfers.i41.i, i32 %i.2465.i.i
  %duration_us.i.i.i = getelementptr %struct.dwc2_hs_transfer_time, ptr %hs_transfers.i41.i, i32 %i.2465.i.i, i32 1
  %113 = ptrtoint ptr %duration_us.i.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %duration_us.i.i.i, align 4
  %conv.i411.i.i = zext i16 %114 to i32
  %115 = ptrtoint ptr %host_interval.i36.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %host_interval.i36.i, align 4
  %conv2.i.i66.i = zext i16 %116 to i32
  %117 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr.i.i.i, align 4
  %call.i.i67.i = tail call fastcc i32 @pmap_schedule(ptr noundef %hs_periodic_bitmap.i.i43.i, i32 noundef 100, i32 noundef 8, i32 noundef %conv.i411.i.i, i32 noundef %conv2.i.i66.i, i32 noundef %118, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67.i)
  %cmp.i412.i.i = icmp slt i32 %call.i.i67.i, 0
  br i1 %cmp.i412.i.i, label %for.body263.i.i.for.end270.i.i_crit_edge, label %for.inc268.i.i

for.body263.i.i.for.end270.i.i_crit_edge:         ; preds = %for.body263.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end270.i.i

for.inc268.i.i:                                   ; preds = %for.body263.i.i
  %119 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %call.i.i67.i, ptr %add.ptr.i.i.i, align 4
  %inc269.i.i = add nuw nsw i32 %i.2465.i.i, 1
  %120 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %num_hs_transfers428.i.i, align 4
  %conv260.i.i = sext i16 %121 to i32
  %cmp261.i.i = icmp slt i32 %inc269.i.i, %conv260.i.i
  br i1 %cmp261.i.i, label %for.inc268.i.i.for.body263.i.i_crit_edge, label %for.inc268.i.i.for.end270.i.i_crit_edge

for.inc268.i.i.for.end270.i.i_crit_edge:          ; preds = %for.inc268.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end270.i.i

for.inc268.i.i.for.body263.i.i_crit_edge:         ; preds = %for.inc268.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body263.i.i

for.end270.i.i:                                   ; preds = %for.inc268.i.i.for.end270.i.i_crit_edge, %for.body263.i.i.for.end270.i.i_crit_edge
  %i.2.lcssa.i.i = phi i32 [ %inc269.i.i, %for.inc268.i.i.for.end270.i.i_crit_edge ], [ %i.2465.i.i, %for.body263.i.i.for.end270.i.i_crit_edge ]
  %122 = ptrtoint ptr %num_hs_transfers428.i.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %num_hs_transfers428.i.i, align 4
  %conv272.i.i = sext i16 %123 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.lcssa.i.i, i32 %conv272.i.i)
  %cmp273.i.i = icmp eq i32 %i.2.lcssa.i.i, %conv272.i.i
  br i1 %cmp273.i.i, label %for.end270.i.i.while.end.i.i_crit_edge, label %for.cond277.preheader.i.i

for.end270.i.i.while.end.i.i_crit_edge:           ; preds = %for.end270.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

for.end270.thread.i.i:                            ; preds = %for.cond258.preheader.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %111)
  %cmp273475.i.i = icmp eq i16 %111, 0
  br i1 %cmp273475.i.i, label %for.end270.thread.i.i.while.end.i.i_crit_edge, label %for.end270.thread.i.i.for.body280.i.i.preheader_crit_edge

for.end270.thread.i.i.for.body280.i.i.preheader_crit_edge: ; preds = %for.end270.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body280.i.i.preheader

for.end270.thread.i.i.while.end.i.i_crit_edge:    ; preds = %for.end270.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

for.cond277.preheader.i.i:                        ; preds = %for.end270.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2.lcssa.i.i)
  %cmp278468.i.i = icmp sgt i32 %i.2.lcssa.i.i, -1
  br i1 %cmp278468.i.i, label %for.cond277.preheader.i.i.for.body280.i.i.preheader_crit_edge, label %for.cond277.preheader.i.i.for.end283.i.i_crit_edge

for.cond277.preheader.i.i.for.end283.i.i_crit_edge: ; preds = %for.cond277.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end283.i.i

for.cond277.preheader.i.i.for.body280.i.i.preheader_crit_edge: ; preds = %for.cond277.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body280.i.i.preheader

for.body280.i.i.preheader:                        ; preds = %for.cond277.preheader.i.i.for.body280.i.i.preheader_crit_edge, %for.end270.thread.i.i.for.body280.i.i.preheader_crit_edge
  %i.3469.i.i.ph = phi i32 [ 0, %for.end270.thread.i.i.for.body280.i.i.preheader_crit_edge ], [ %i.2.lcssa.i.i, %for.cond277.preheader.i.i.for.body280.i.i.preheader_crit_edge ]
  br label %for.body280.i.i

for.body280.i.i:                                  ; preds = %dwc2_hs_pmap_unschedule.exit.i.i.for.body280.i.i_crit_edge, %for.body280.i.i.preheader
  %i.3469.i.i = phi i32 [ %dec282.i.i, %dwc2_hs_pmap_unschedule.exit.i.i.for.body280.i.i_crit_edge ], [ %i.3469.i.i.ph, %for.body280.i.i.preheader ]
  %add.ptr.i416.i.i = getelementptr %struct.dwc2_hs_transfer_time, ptr %hs_transfers.i41.i, i32 %i.3469.i.i
  %duration_us.i418.i.i = getelementptr %struct.dwc2_hs_transfer_time, ptr %hs_transfers.i41.i, i32 %i.3469.i.i, i32 1
  %124 = ptrtoint ptr %duration_us.i418.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %duration_us.i418.i.i, align 4
  %conv.i419.i.i = zext i16 %125 to i32
  %126 = ptrtoint ptr %host_interval.i36.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %host_interval.i36.i, align 4
  %conv2.i421.i.i = zext i16 %127 to i32
  %128 = ptrtoint ptr %add.ptr.i416.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %add.ptr.i416.i.i, align 4
  %call.i.i.i.i = tail call i32 @gcd(i32 noundef %conv2.i421.i.i, i32 noundef 8) #13
  %mul.i.i422.i.i = mul i32 %call.i.i.i.i, 100
  %div.i.i.i.i = sdiv i32 8, %call.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div.i.i.i.i)
  %cmp7.i.i.i.i = icmp sgt i32 %div.i.i.i.i, 0
  br i1 %cmp7.i.i.i.i, label %for.body280.i.i.for.body.i.i.i.i_crit_edge, label %for.body280.i.i.dwc2_hs_pmap_unschedule.exit.i.i_crit_edge

for.body280.i.i.dwc2_hs_pmap_unschedule.exit.i.i_crit_edge: ; preds = %for.body280.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_hs_pmap_unschedule.exit.i.i

for.body280.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.body280.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body280.i.i.for.body.i.i.i.i_crit_edge
  %i.08.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body280.i.i.for.body.i.i.i.i_crit_edge ]
  %mul1.i.i.i.i = mul i32 %mul.i.i422.i.i, %i.08.i.i.i.i
  %add.i.i.i.i = add i32 %mul1.i.i.i.i, %129
  tail call void @__bitmap_clear(ptr noundef %hs_periodic_bitmap.i.i43.i, i32 noundef %add.i.i.i.i, i32 noundef %conv.i419.i.i) #9
  %inc.i.i.i.i = add nuw nsw i32 %i.08.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %div.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.dwc2_hs_pmap_unschedule.exit.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.body.i.i.i.i.dwc2_hs_pmap_unschedule.exit.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_hs_pmap_unschedule.exit.i.i

dwc2_hs_pmap_unschedule.exit.i.i:                 ; preds = %for.body.i.i.i.i.dwc2_hs_pmap_unschedule.exit.i.i_crit_edge, %for.body280.i.i.dwc2_hs_pmap_unschedule.exit.i.i_crit_edge
  %dec282.i.i = add nsw i32 %i.3469.i.i, -1
  %cmp278.i.i = icmp sgt i32 %i.3469.i.i, 0
  br i1 %cmp278.i.i, label %dwc2_hs_pmap_unschedule.exit.i.i.for.body280.i.i_crit_edge, label %dwc2_hs_pmap_unschedule.exit.i.i.for.end283.i.i_crit_edge

dwc2_hs_pmap_unschedule.exit.i.i.for.end283.i.i_crit_edge: ; preds = %dwc2_hs_pmap_unschedule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end283.i.i

dwc2_hs_pmap_unschedule.exit.i.i.for.body280.i.i_crit_edge: ; preds = %dwc2_hs_pmap_unschedule.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body280.i.i

for.end283.i.i:                                   ; preds = %dwc2_hs_pmap_unschedule.exit.i.i.for.end283.i.i_crit_edge, %for.cond277.preheader.i.i.for.end283.i.i_crit_edge
  %130 = ptrtoint ptr %schedule_low_speed.i37.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %bf.load285.i.i = load i8, ptr %schedule_low_speed.i37.i, align 8
  %131 = and i8 %bf.load285.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool289.not.i.i = icmp eq i8 %131, 0
  br i1 %tobool289.not.i.i, label %for.end283.i.i.if.end291.i.i_crit_edge, label %if.then290.i.i

for.end283.i.i.if.end291.i.i_crit_edge:           ; preds = %for.end283.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end291.i.i

if.then290.i.i:                                   ; preds = %for.end283.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dwc2_ls_pmap_unschedule(ptr noundef %qh) #9
  br label %if.end291.i.i

if.end291.i.i:                                    ; preds = %if.then290.i.i, %for.end283.i.i.if.end291.i.i_crit_edge
  %132 = mul i32 %div.i.i, 5
  %mul293.i.i = add i32 %132, 5
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end291.i.i, %if.end98.i.i, %if.end54.i.i
  %ls_search_slice.1.i.i = phi i32 [ %mul57.i.i, %if.end54.i.i ], [ %mul293.i.i, %if.end291.i.i ], [ %mul100.i.i, %if.end98.i.i ]
  %cmp.i.i = icmp slt i32 %ls_search_slice.1.i.i, 36
  br i1 %cmp.i.i, label %cleanup.i.i.while.body.i.i_crit_edge, label %cleanup.i.i.do.body8_crit_edge

cleanup.i.i.do.body8_crit_edge:                   ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %for.end270.thread.i.i.while.end.i.i_crit_edge, %for.end270.i.i.while.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %ls_search_slice.0470.i.i)
  %cmp303.i.i = icmp sgt i32 %ls_search_slice.0470.i.i, 35
  br i1 %cmp303.i.i, label %while.end.i.i.do.body8_crit_edge, label %while.end.i.i.if.end19_crit_edge

while.end.i.i.if.end19_crit_edge:                 ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

while.end.i.i.do.body8_crit_edge:                 ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body8

if.end6.thread.sink.split.i:                      ; preds = %if.then.i.i.if.end6.thread.sink.split.i_crit_edge, %if.end80.i31.i.if.end6.thread.sink.split.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 380, i32 noundef 9, ptr noundef null) #9
  br label %do.body8

if.else:                                          ; preds = %entry
  %host_channels.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 37
  %133 = ptrtoint ptr %host_channels.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %host_channels.i, align 8
  %conv.i = zext i8 %134 to i32
  %periodic_channels.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 55
  %135 = ptrtoint ptr %periodic_channels.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %periodic_channels.i, align 4
  %non_periodic_channels.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 56
  %137 = ptrtoint ptr %non_periodic_channels.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %non_periodic_channels.i, align 8
  %add.i = add i32 %138, %136
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv.i)
  %cmp.i42 = icmp slt i32 %add.i, %conv.i
  %sub.i = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %sub.i)
  %cmp3.i = icmp slt i32 %136, %sub.i
  %or.cond.i = select i1 %cmp.i42, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.end, label %do.body.i

do.body.i:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_periodic_channel_available.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_do_reserve, %do.end)) #9
          to label %if.then8.i [label %do.end], !srcloc !82

if.then8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hsotg, align 8
  %141 = ptrtoint ptr %periodic_channels.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %periodic_channels.i, align 4
  %143 = ptrtoint ptr %non_periodic_channels.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %non_periodic_channels.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_periodic_channel_available.__UNIQUE_ID_ddebug295, ptr noundef %140, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %conv.i, i32 noundef %142, i32 noundef %144) #9
  br label %do.end

do.end:                                           ; preds = %if.then8.i, %do.body.i
  %145 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %146, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end:                                           ; preds = %if.else
  %dev_speed.i43 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %147 = ptrtoint ptr %dev_speed.i43 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %dev_speed.i43, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %148)
  %cmp.i44 = icmp eq i8 %148, 3
  br i1 %cmp.i44, label %if.end.if.end.i_crit_edge, label %lor.lhs.false.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %do_split.i45 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 8
  %149 = ptrtoint ptr %do_split.i45 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %do_split.i45, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool.not.i46 = icmp eq i8 %150, 0
  %spec.select.i = select i1 %tobool.not.i46, i16 900, i16 100
  br label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i, %if.end.if.end.i_crit_edge
  %.sink.i = phi i16 [ 100, %if.end.if.end.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %host_us5.i = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 11
  %151 = ptrtoint ptr %host_us5.i to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %host_us5.i, align 8
  %sub7.i = sub i16 %.sink.i, %152
  %periodic_usecs.i = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 45
  %153 = ptrtoint ptr %periodic_usecs.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %periodic_usecs.i, align 4
  %conv9.i = zext i16 %154 to i32
  %conv10.i = sext i16 %sub7.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9.i, i32 %conv10.i)
  %cmp11.i = icmp sgt i32 %conv9.i, %conv10.i
  br i1 %cmp11.i, label %do.end.i, label %if.end.i.if.end19_crit_edge

if.end.i.if.end19_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %hsotg, align 8
  %conv17.i = zext i16 %152 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %conv9.i, i32 noundef %conv17.i) #14
  br label %do.body8

do.body8:                                         ; preds = %do.end.i, %if.end6.thread.sink.split.i, %while.end.i.i.do.body8_crit_edge, %cleanup.i.i.do.body8_crit_edge, %if.end.i.i65.i.do.body8_crit_edge, %dwc2_get_ls_map.exit.i.i58.i.do.body8_crit_edge, %if.end.i.i34.i.do.body8_crit_edge, %dwc2_get_ls_map.exit.i.i.i.do.body8_crit_edge, %if.end80.i.i.do.body8_crit_edge
  %status.0 = phi i32 [ -28, %do.end.i ], [ %call2.i.i.i, %if.end.i.i34.i.do.body8_crit_edge ], [ -22, %dwc2_get_ls_map.exit.i.i.i.do.body8_crit_edge ], [ %call.i.i.i, %if.end80.i.i.do.body8_crit_edge ], [ -28, %while.end.i.i.do.body8_crit_edge ], [ -22, %if.end6.thread.sink.split.i ], [ %call2.i.i63.i, %if.end.i.i65.i.do.body8_crit_edge ], [ -22, %dwc2_get_ls_map.exit.i.i58.i.do.body8_crit_edge ], [ -28, %cleanup.i.i.do.body8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dwc2_do_reserve.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dwc2_do_reserve, %cleanup)) #9
          to label %if.then14 [label %cleanup], !srcloc !82

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %157 = ptrtoint ptr %hsotg to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hsotg, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dwc2_do_reserve.__UNIQUE_ID_ddebug304, ptr noundef %158, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.24) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end.i.if.end19_crit_edge, %while.end.i.i.if.end19_crit_edge, %if.end5.i.i.i, %if.end.i.i.i
  %159 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %uframe_sched, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool22.not = icmp eq i8 %160, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end24_crit_edge

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %periodic_channels = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 55
  %161 = ptrtoint ptr %periodic_channels to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %periodic_channels, align 4
  %inc = add i32 %162, 1
  store i32 %inc, ptr %periodic_channels, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19.if.end24_crit_edge
  %host_us = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 11
  %163 = ptrtoint ptr %host_us to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %host_us, align 8
  %periodic_usecs = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 45
  %165 = ptrtoint ptr %periodic_usecs to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %periodic_usecs, align 4
  %add = add i16 %166, %164
  store i16 %add, ptr %periodic_usecs, align 4
  tail call fastcc void @dwc2_pick_first_frame(ptr noundef %hsotg, ptr noundef %qh)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then14, %do.body8, %do.end
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -28, %do.end ], [ %status.0, %if.then14 ], [ %status.0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dwc2_pick_first_frame(ptr noundef %hsotg, ptr nocapture noundef %qh) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dwc2_hcd_get_frame_number(ptr noundef %hsotg) #9
  %conv = trunc i32 %call to i16
  %add.i = add i16 %conv, 1
  %and.i = and i16 %add.i, 16383
  %uframe_sched = getelementptr inbounds %struct.dwc2_hsotg, ptr %hsotg, i32 0, i32 3, i32 13
  %0 = ptrtoint ptr %uframe_sched to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %uframe_sched, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %do_split = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 8
  %2 = ptrtoint ptr %do_split to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %do_split, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  %4 = or i16 %and.i, 7
  %spec.select = select i1 %tobool2.not, i16 %and.i, i16 %4
  br label %exit

if.end6:                                          ; preds = %entry
  %dev_speed = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 5
  %5 = ptrtoint ptr %dev_speed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dev_speed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp eq i8 %6, 3
  br i1 %cmp, label %if.end6.if.then12_crit_edge, label %lor.lhs.false

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end6
  %do_split9 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 8
  %7 = ptrtoint ptr %do_split9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %do_split9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.else, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end6.if.then12_crit_edge
  %num_hs_transfers = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 17
  %9 = ptrtoint ptr %num_hs_transfers to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %num_hs_transfers, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %10)
  %cmp14 = icmp slt i16 %10, 1
  br i1 %cmp14, label %do.end, label %if.then12.if.end30_crit_edge, !prof !80

if.then12.if.end30_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1126, i32 noundef 9, ptr noundef null) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.then12.if.end30_crit_edge
  %hs_transfers = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 18
  br label %if.end47

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %ls_start_schedule_slice = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 19
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.end30
  %ls_start_schedule_slice.sink = phi ptr [ %ls_start_schedule_slice, %if.else ], [ %hs_transfers, %if.end30 ]
  %.sink133 = phi i32 [ 36, %if.else ], [ 100, %if.end30 ]
  %.sink = phi i32 [ 1, %if.else ], [ 8, %if.end30 ]
  %11 = ptrtoint ptr %ls_start_schedule_slice.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ls_start_schedule_slice.sink, align 8
  %div41 = udiv i32 %12, %.sink133
  %host_interval43 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 13
  %13 = ptrtoint ptr %host_interval43 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %host_interval43, align 4
  %conv44 = zext i16 %14 to i32
  %call45 = tail call i32 @gcd(i32 noundef %conv44, i32 noundef %.sink) #13
  %relative_frame.0 = trunc i32 %div41 to i16
  %interval.0 = trunc i32 %call45 to i16
  %conv49 = and i32 %div41, 65535
  %conv50 = and i32 %call45, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv49, i32 %conv50)
  %cmp51.not = icmp ult i32 %conv49, %conv50
  br i1 %cmp51.not, label %if.end47.if.end74_crit_edge, label %do.end68, !prof !76

if.end47.if.end74_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

do.end68:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1148, i32 noundef 9, ptr noundef null) #9
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end47.if.end74_crit_edge
  %conv82 = zext i16 %add.i to i32
  %15 = urem i16 %and.i, %interval.0
  %conv86 = add i16 %conv, 16384
  %add.i118 = add i16 %conv86, %relative_frame.0
  %sub.i = sub i16 %add.i118, %15
  %next_active_frame.0126 = and i16 %sub.i, 16383
  call void @__sanitizer_cov_trace_cmp2(i16 %and.i, i16 %next_active_frame.0126)
  %cmp.not.i127 = icmp eq i16 %and.i, %next_active_frame.0126
  br i1 %cmp.not.i127, label %if.end74.exit_crit_edge, label %if.end74.dwc2_frame_num_gt.exit_crit_edge

if.end74.dwc2_frame_num_gt.exit_crit_edge:        ; preds = %if.end74
  br label %dwc2_frame_num_gt.exit

if.end74.exit_crit_edge:                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

dwc2_frame_num_gt.exit:                           ; preds = %while.body.dwc2_frame_num_gt.exit_crit_edge, %if.end74.dwc2_frame_num_gt.exit_crit_edge
  %next_active_frame.0129 = phi i16 [ %next_active_frame.0, %while.body.dwc2_frame_num_gt.exit_crit_edge ], [ %next_active_frame.0126, %if.end74.dwc2_frame_num_gt.exit_crit_edge ]
  %next_active_frame.0.in128 = phi i16 [ %add.i123, %while.body.dwc2_frame_num_gt.exit_crit_edge ], [ %sub.i, %if.end74.dwc2_frame_num_gt.exit_crit_edge ]
  %conv1.i = zext i16 %next_active_frame.0.in128 to i32
  %sub.i121 = sub nsw i32 %conv82, %conv1.i
  %and.i122 = and i32 %sub.i121, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 8190, i32 %and.i122)
  %cmp5.i = icmp ugt i32 %and.i122, 8190
  br i1 %cmp5.i, label %dwc2_frame_num_gt.exit.exit_crit_edge, label %while.body

dwc2_frame_num_gt.exit.exit_crit_edge:            ; preds = %dwc2_frame_num_gt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

while.body:                                       ; preds = %dwc2_frame_num_gt.exit
  %add.i123 = add i16 %next_active_frame.0129, %interval.0
  %next_active_frame.0 = and i16 %add.i123, 16383
  %cmp.not.i = icmp eq i16 %and.i, %next_active_frame.0
  br i1 %cmp.not.i, label %while.body.exit_crit_edge, label %while.body.dwc2_frame_num_gt.exit_crit_edge

while.body.dwc2_frame_num_gt.exit_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %dwc2_frame_num_gt.exit

while.body.exit_crit_edge:                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

exit:                                             ; preds = %while.body.exit_crit_edge, %dwc2_frame_num_gt.exit.exit_crit_edge, %if.end74.exit_crit_edge, %if.then
  %next_active_frame.1 = phi i16 [ %spec.select, %if.then ], [ %and.i, %if.end74.exit_crit_edge ], [ %next_active_frame.0129, %dwc2_frame_num_gt.exit.exit_crit_edge ], [ %and.i, %while.body.exit_crit_edge ]
  %next_active_frame92 = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 15
  %16 = ptrtoint ptr %next_active_frame92 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %next_active_frame.1, ptr %next_active_frame92, align 8
  %start_active_frame = getelementptr inbounds %struct.dwc2_qh, ptr %qh, i32 0, i32 16
  %17 = ptrtoint ptr %start_active_frame to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %next_active_frame.1, ptr %start_active_frame, align 2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pmap_schedule(ptr noundef %map, i32 noundef %bits_per_period, i32 noundef %periods_in_map, i32 noundef %num_bits, i32 noundef %interval, i32 noundef %start, i1 noundef zeroext %only_one_period) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %num_bits, i32 %bits_per_period)
  %cmp = icmp sgt i32 %num_bits, %bits_per_period
  br i1 %cmp, label %entry.cleanup53_crit_edge, label %if.end

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.end:                                           ; preds = %entry
  %call = tail call i32 @gcd(i32 noundef %interval, i32 noundef %periods_in_map) #13
  %mul = mul i32 %call, %bits_per_period
  %div = sdiv i32 %periods_in_map, %call
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %start)
  %cmp1.not = icmp sgt i32 %mul, %start
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup53_crit_edge

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

if.end3:                                          ; preds = %if.end
  br i1 %only_one_period, label %if.then4, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %div5 = sdiv i32 %start, %bits_per_period
  %add = add i32 %div5, 1
  %mul6 = mul i32 %add, %bits_per_period
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end3.if.end7_crit_edge
  %first_end.0 = phi i32 [ %mul6, %if.then4 ], [ %mul, %if.end3.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div)
  %cmp17121 = icmp sgt i32 %div, 1
  %add8155 = add i32 %start, %num_bits
  call void @__sanitizer_cov_trace_cmp4(i32 %add8155, i32 %first_end.0)
  %cmp9.not156 = icmp sgt i32 %add8155, %first_end.0
  br i1 %cmp9.not156, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %cleanup38.while.body_crit_edge, %if.end7.while.body_crit_edge
  %start.addr.0157 = phi i32 [ %start.addr.5, %cleanup38.while.body_crit_edge ], [ %start, %if.end7.while.body_crit_edge ]
  %div10 = sdiv i32 %start.addr.0157, %bits_per_period
  %add11 = add i32 %div10, 1
  %mul12 = mul i32 %add11, %bits_per_period
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %mul12, i32 noundef %start.addr.0157, i32 noundef %num_bits, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %mul12)
  %cmp14.not = icmp slt i32 %call.i, %mul12
  br i1 %cmp14.not, label %for.cond.preheader, label %while.body.cleanup38_crit_edge

while.body.cleanup38_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

for.cond.preheader:                               ; preds = %while.body
  br i1 %cmp17121, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0122 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %mul18 = mul i32 %i.0122, %mul
  %add19 = add i32 %mul18, %call.i
  %add22 = add i32 %add19, %num_bits
  %call.i112 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %add22, i32 noundef %add19, i32 noundef %num_bits, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i112, i32 %add19)
  %cmp24 = icmp eq i32 %call.i112, %add19
  br i1 %cmp24, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %add21 = add i32 %mul18, %mul12
  %call.i113 = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %map, i32 noundef %add21, i32 noundef %add19, i32 noundef %num_bits, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i113, i32 %add21)
  %cmp28.not = icmp slt i32 %call.i113, %add21
  %sub = sub i32 %call.i113, %mul18
  %start.addr.2 = select i1 %cmp28.not, i32 %sub, i32 %mul12
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.cleanup38.while.end_crit_edge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup38.while.end_crit_edge_crit_edge:  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38.while.end_crit_edge

for.end:                                          ; preds = %cleanup, %for.cond.preheader.for.end_crit_edge
  %i.0120 = phi i32 [ %i.0122, %cleanup ], [ 1, %for.cond.preheader.for.end_crit_edge ]
  %start.addr.4 = phi i32 [ %start.addr.2, %cleanup ], [ %call.i, %for.cond.preheader.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0120, i32 %div)
  %cmp35 = icmp eq i32 %i.0120, %div
  br i1 %cmp35, label %for.end.cleanup38.while.end_crit_edge_crit_edge, label %for.end.cleanup38_crit_edge

for.end.cleanup38_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38

for.end.cleanup38.while.end_crit_edge_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup38.while.end_crit_edge

cleanup38:                                        ; preds = %for.end.cleanup38_crit_edge, %while.body.cleanup38_crit_edge
  %start.addr.5 = phi i32 [ %mul12, %while.body.cleanup38_crit_edge ], [ %start.addr.4, %for.end.cleanup38_crit_edge ]
  %add8 = add i32 %start.addr.5, %num_bits
  %cmp9.not = icmp sgt i32 %add8, %first_end.0
  br i1 %cmp9.not, label %cleanup38.while.end_crit_edge170, label %cleanup38.while.body_crit_edge

cleanup38.while.body_crit_edge:                   ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup38.while.end_crit_edge170:                 ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup38.while.end_crit_edge:                    ; preds = %for.end.cleanup38.while.end_crit_edge_crit_edge, %for.inc.cleanup38.while.end_crit_edge_crit_edge
  %start.addr.4136 = phi i32 [ %call.i, %for.inc.cleanup38.while.end_crit_edge_crit_edge ], [ %start.addr.4, %for.end.cleanup38.while.end_crit_edge_crit_edge ]
  %.pre = add i32 %start.addr.4136, %num_bits
  br label %while.end

while.end:                                        ; preds = %cleanup38.while.end_crit_edge, %cleanup38.while.end_crit_edge170, %if.end7.while.end_crit_edge
  %add40.pre-phi = phi i32 [ %.pre, %cleanup38.while.end_crit_edge ], [ %add8155, %if.end7.while.end_crit_edge ], [ %add8, %cleanup38.while.end_crit_edge170 ]
  %start.addr.6 = phi i32 [ %start.addr.4136, %cleanup38.while.end_crit_edge ], [ %start, %if.end7.while.end_crit_edge ], [ %start.addr.5, %cleanup38.while.end_crit_edge170 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add40.pre-phi, i32 %first_end.0)
  %cmp41 = icmp sgt i32 %add40.pre-phi, %first_end.0
  br i1 %cmp41, label %while.end.cleanup53_crit_edge, label %for.cond44.preheader

while.end.cleanup53_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

for.cond44.preheader:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp45123 = icmp sgt i32 %div, 0
  br i1 %cmp45123, label %for.cond44.preheader.for.body46_crit_edge, label %for.cond44.preheader.cleanup53_crit_edge

for.cond44.preheader.cleanup53_crit_edge:         ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

for.cond44.preheader.for.body46_crit_edge:        ; preds = %for.cond44.preheader
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.cond44.preheader.for.body46_crit_edge
  %i.1124 = phi i32 [ %inc51, %for.body46.for.body46_crit_edge ], [ 0, %for.cond44.preheader.for.body46_crit_edge ]
  %mul48 = mul i32 %i.1124, %mul
  %add49 = add i32 %mul48, %start.addr.6
  tail call void @__bitmap_set(ptr noundef %map, i32 noundef %add49, i32 noundef %num_bits) #9
  %inc51 = add nuw nsw i32 %i.1124, 1
  %exitcond128.not = icmp eq i32 %inc51, %div
  br i1 %exitcond128.not, label %for.body46.cleanup53_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body46

for.body46.cleanup53_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup53

cleanup53:                                        ; preds = %for.body46.cleanup53_crit_edge, %for.cond44.preheader.cleanup53_crit_edge, %while.end.cleanup53_crit_edge, %if.end.cleanup53_crit_edge, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ -28, %entry.cleanup53_crit_edge ], [ -28, %if.end.cleanup53_crit_edge ], [ -28, %while.end.cleanup53_crit_edge ], [ %start.addr.6, %for.cond44.preheader.cleanup53_crit_edge ], [ %start.addr.6, %for.body46.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !53, !55, !56, !58, !60, !61, !62, !64, !65, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1728, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dwc2_hcd_qh_add.__UNIQUE_ID_ddebug306, !1, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1777, i32 2}
!8 = !{ptr @dwc2_hcd_qh_unlink.__UNIQUE_ID_ddebug307, !7, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1985, i32 3}
!11 = !{ptr @dwc2_hcd_qh_deactivate.__UNIQUE_ID_ddebug308, !10, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 2084, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dwc2_hcd_qtd_add._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @dwc2_hcd_qtd_add._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @dwc2_qh_init.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1527, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1586, i32 11}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1589, i32 11}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1592, i32 11}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1595, i32 11}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1601, i32 10}
!32 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1604, i32 10}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1607, i32 10}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1610, i32 10}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1364, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @dwc2_schedule_periodic.__UNIQUE_ID_ddebug305, !39, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1339, i32 3}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dwc2_check_max_xfer_size._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dwc2_check_max_xfer_size._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1210, i32 4}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dwc2_do_reserve._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @dwc2_do_reserve._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 1220, i32 3}
!55 = !{ptr @dwc2_do_reserve.__UNIQUE_ID_ddebug304, !54, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 761, i32 4}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 87, i32 3}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @dwc2_periodic_channel_available.__UNIQUE_ID_ddebug295, !59, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/dwc2/hcd_queue.c", i32 132, i32 3}
!64 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dwc2_check_periodic_bandwidth._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @dwc2_check_periodic_bandwidth._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 4681028}
!78 = !{i64 2155986624}
!79 = !{i8 0, i8 2}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{i64 2156065044, i64 2156065538, i64 2156065081, i64 2156065137, i64 2156065171, i64 2156065195, i64 2156065236, i64 2156065257, i64 2156065285, i64 2156065319}
!82 = !{i64 2148756233, i64 2148756238, i64 2148756251, i64 2148756295, i64 2148756329, i64 2148756350}
!83 = !{i64 4680610}
!84 = !{i64 2156076234, i64 2156076728, i64 2156076271, i64 2156076327, i64 2156076361, i64 2156076385, i64 2156076426, i64 2156076447, i64 2156076475, i64 2156076509}
!85 = !{i64 666899, i64 666960}
!86 = !{i64 669631}
!87 = !{i64 669916}
