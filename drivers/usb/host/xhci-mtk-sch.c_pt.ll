; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-mtk-sch.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-mtk-sch.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xhci_hcd_mtk = type { ptr, ptr, ptr, %struct.list_head, [32 x %struct.hlist_head], ptr, i32, i32, i32, i32, ptr, ptr, [5 x %struct.clk_bulk_data], i8, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.mu3h_sch_ep_info = type { i32, i32, i32, i32, %struct.list_head, %struct.hlist_node, %struct.list_head, ptr, ptr, i32, i32, ptr, i32, i8, i32, i32, i32, i32, i32, [0 x i32] }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.usb_tt = type { ptr, i32, i32, ptr, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.mu3h_sch_tt = type { [64 x i32], %struct.list_head }
%struct.mu3h_sch_bw_info = type { [64 x i32] }

@xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xhci_mtk_hcd\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xhci_mtk_check_bandwidth\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/host/xhci-mtk-sch.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s() udev %s\0A\00", [18 x i8] zeroinitializer }, align 32
@xhci_mtk_check_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not enough bandwidth! (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xhci_mtk_check_bandwidth._entry_ptr = internal global ptr @xhci_mtk_check_bandwidth._entry, section ".printk_index", align 4
@xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c" PKTS:%x, CSCOUNT:%x, BM:%x, OFFSET:%x, REPEAT:%x\0A\00", [45 x i8] zeroinitializer }, align 32
@xhci_mtk_reset_bandwidth.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.3, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xhci_mtk_reset_bandwidth\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't schedule Start-Split in Y6\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't find a suitable Start-Split location\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"The last Complete-Split is greater than 7\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Bandwidth exceeds the maximum limit\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@add_ep_quirk.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"add_ep_quirk\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %s\0A\00", [25 x i8] zeroinitializer }, align 32
@decode_ep.buf = internal global { [64 x i8], [32 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"us\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ms\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s ep%d%s %s, mpkt:%d, interval:%d/%d%s\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@get_bw_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s invalid real_port\0A\00", [42 x i8] zeroinitializer }, align 32
@drop_ep_quirk.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.16, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drop_ep_quirk\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1001, i64 1002, i64 1003, i64 1004]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 2, i64 0, i64 2]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 756, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 765, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 777, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 795, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 48, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 50, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 52, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 54, i32 10 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 58, i32 10 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 712, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 70, i32 14 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 77, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 79, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 83, i32 28 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 85, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 85, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 133, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private constant [35 x i8] c"../drivers/usb/host/xhci-mtk-sch.c\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 737, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @xhci_mtk_check_bandwidth._entry, ptr @xhci_mtk_check_bandwidth._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @decode_ep.buf, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_mtk_check_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decode_ep.buf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_mtk_sch_init(ptr noundef %mtk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 1
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %1, %entry.hcd_to_xhci.exit_crit_edge ]
  %num_ports = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  %mul = shl i32 %5, 1
  %num_ports1 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 17
  %6 = ptrtoint ptr %num_ports1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports1, align 4
  %add = add i32 %mul, %7
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 256) #7
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %hcd_to_xhci.exit.cleanup_crit_edge, label %if.end7.i.i, !prof !61

hcd_to_xhci.exit.cleanup_crit_edge:               ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %hcd_to_xhci.exit
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #10
  %cmp = icmp eq ptr %call8.i.i, null
  br i1 %cmp, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sch_array3 = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 2
  %11 = ptrtoint ptr %sch_array3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i, ptr %sch_array3, align 4
  %bw_ep_chk_list = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 3
  %12 = ptrtoint ptr %bw_ep_chk_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %bw_ep_chk_list, ptr %bw_ep_chk_list, align 4
  %prev.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %bw_ep_chk_list, ptr %prev.i, align 4
  %sch_ep_hash = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 4
  %14 = call ptr @memset(ptr %sch_ep_hash, i32 0, i32 128)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7.i.i.cleanup_crit_edge, %hcd_to_xhci.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %hcd_to_xhci.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_mtk_sch_exit(ptr nocapture noundef readonly %mtk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sch_array = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %mtk, i32 0, i32 2
  %0 = ptrtoint ptr %sch_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sch_array, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_mtk_check_bandwidth(ptr noundef %hcd, ptr noundef %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 43
  %6 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_id, align 8
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %hcd_priv.i, i32 0, i32 42, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_mtk_check_bandwidth, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %hcd_to_xhci.exit
  %10 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hcd_priv.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i107 = icmp eq ptr %15, null
  br i1 %tobool.not.i107, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i108 = phi ptr [ %17, %if.end.i ], [ %15, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug234, ptr noundef %13, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i108) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %hcd_to_xhci.exit
  %bw_ep_chk_list = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %bw_ep_chk_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn125 = load ptr, ptr %bw_ep_chk_list, align 4
  %cmp.not126 = icmp eq ptr %.pn125, %bw_ep_chk_list
  br i1 %cmp.not126, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %9, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn127 = phi ptr [ %.pn125, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %sch_ep.0 = getelementptr i8, ptr %.pn127, i32 -16
  %ep11 = getelementptr i8, ptr %.pn127, i32 40
  %19 = ptrtoint ptr %ep11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ep11, align 4
  %call12 = tail call i32 @xhci_get_endpoint_index(ptr noundef %20) #7
  %bw_info.i = getelementptr i8, ptr %.pn127, i32 24
  %21 = ptrtoint ptr %bw_info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bw_info.i, align 4
  %speed.i = getelementptr i8, ptr %.pn127, i32 44
  %23 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %switch.selectcmp.i.i = icmp eq i32 %24, 5
  %switch.select.i.i = select i1 %switch.selectcmp.i.i, i32 51000, i32 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %24)
  %switch.selectcmp2.i.i = icmp eq i32 %24, 6
  %switch.select3.i.i = select i1 %switch.selectcmp2.i.i, i32 130000, i32 %switch.select.i.i
  %25 = ptrtoint ptr %sch_ep.0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sch_ep.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp58.not.i = icmp eq i32 %26, 0
  br i1 %cmp58.not.i, label %for.body.do.end18.thread_crit_edge, label %for.body.lr.ph.i

for.body.do.end18.thread_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18.thread

for.body.lr.ph.i:                                 ; preds = %for.body
  %sch_tt.i.i = getelementptr i8, ptr %.pn127, i32 28
  %27 = ptrtoint ptr %sch_tt.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sch_tt.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  %ep_type.i.i = getelementptr i8, ptr %.pn127, i32 32
  %maxpkt.i.i = getelementptr i8, ptr %.pn127, i32 36
  %cs_count29.i.i = getelementptr i8, ptr %.pn127, i32 64
  %num_budget_microframes.i.i = getelementptr i8, ptr %.pn127, i32 -8
  %num_esit.i.i.i = getelementptr i8, ptr %.pn127, i32 -12
  %tobool9.not.i = icmp ne ptr %28, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %min_index.064.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %min_index.2.i, %for.inc.i.for.body.i_crit_edge ]
  %min_bw.062.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %min_bw.2.i, %for.inc.i.for.body.i_crit_edge ]
  %offset.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %tobool.not.i.i, label %for.body.i.if.end.i109_crit_edge, label %if.end.i.i

for.body.i.if.end.i109_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i109

if.end.i.i:                                       ; preds = %for.body.i
  %rem.i.i = and i32 %offset.059.i, 7
  %29 = ptrtoint ptr %ep_type.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ep_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 1
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.else.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %rem.i.i)
  %cmp2.i.i = icmp eq i32 %rem.i.i, 7
  br i1 %cmp2.i.i, label %if.then1.i.i.if.end37.i.i_crit_edge, label %lor.lhs.false.i.i

if.then1.i.i.if.end37.i.i_crit_edge:              ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i.i

lor.lhs.false.i.i:                                ; preds = %if.then1.i.i
  %31 = ptrtoint ptr %cs_count29.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cs_count29.i.i, align 4
  %add.i.i = add nsw i32 %rem.i.i, -1
  %sub.i.i = add i32 %add.i.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %sub.i.i)
  %cmp3.i.i = icmp ult i32 %sub.i.i, 6
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.end37.i.i_crit_edge, label %lor.lhs.false.i.i.for.inc.i_crit_edge

lor.lhs.false.i.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

lor.lhs.false.i.i.if.end37.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %33 = ptrtoint ptr %maxpkt.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %maxpkt.i.i, align 4
  %sub8.i.i = add i32 %34, 187
  %div.i.i = udiv i32 %sub8.i.i, 188
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %rem.i.i)
  %cmp9.i.i = icmp eq i32 %rem.i.i, 6
  br i1 %cmp9.i.i, label %if.else.i.i.for.inc.i_crit_edge, label %if.end11.i.i

if.else.i.i.for.inc.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end11.i.i:                                     ; preds = %if.else.i.i
  %add12.i.i = add i32 %offset.059.i, 2
  %rem13.i.i = and i32 %add12.i.i, 7
  %add14.i.i = add nsw i32 %rem13.i.i, -1
  %sub15.i.i = add nsw i32 %add14.i.i, %div.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub15.i.i)
  %cmp16.i.i = icmp ugt i32 %sub15.i.i, 7
  br i1 %cmp16.i.i, label %if.end11.i.i.for.inc.i_crit_edge, label %cleanup.i.i

if.end11.i.i.for.inc.i_crit_edge:                 ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

cleanup.i.i:                                      ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %30)
  %cmp20.i.i = icmp eq i32 %30, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub15.i.i)
  %cmp22.i.i = icmp eq i32 %sub15.i.i, 7
  %cond.i.i = select i1 %cmp22.i.i, i32 1, i32 2
  %extra_cs_count.0.i.i = select i1 %cmp20.i.i, i32 %cond.i.i, i32 1
  %add25.i.i = add nuw nsw i32 %extra_cs_count.0.i.i, %div.i.i
  %35 = tail call i32 @llvm.umin.i32(i32 %add25.i.i, i32 7) #7
  %36 = ptrtoint ptr %cs_count29.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cs_count29.i.i, align 4
  %add30.i.i = add nuw nsw i32 %35, 2
  %37 = tail call i32 @llvm.umin.i32(i32 %add30.i.i, i32 %26) #7
  %38 = ptrtoint ptr %num_budget_microframes.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %num_budget_microframes.i.i, align 4
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %cleanup.i.i, %lor.lhs.false.i.i.if.end37.i.i_crit_edge, %if.then1.i.i.if.end37.i.i_crit_edge
  %39 = ptrtoint ptr %num_esit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_esit.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp28.not.i.i.i = icmp eq i32 %40, 0
  br i1 %cmp28.not.i.i.i, label %if.end37.i.i.if.end5.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end37.i.i.if.end5.i_crit_edge:                 ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end37.i.i
  %41 = ptrtoint ptr %num_budget_microframes.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_budget_microframes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp226.not.i.i.i = icmp eq i32 %42, 0
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc8.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.029.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc9.i.i.i, %for.inc8.i.i.i.for.body.i.i.i_crit_edge ]
  %mul.i.i.i = mul i32 %i.029.i.i.i, %26
  %add.i.i.i = add i32 %mul.i.i.i, %offset.059.i
  br i1 %cmp226.not.i.i.i, label %for.body.i.i.i.for.inc8.i.i.i_crit_edge, label %for.body.i.i.i.for.body3.i.i.i_crit_edge

for.body.i.i.i.for.body3.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  br label %for.body3.i.i.i

for.body.i.i.i.for.inc8.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc8.i.i.i

for.cond1.i.i.i:                                  ; preds = %for.body3.i.i.i
  %inc.i.i.i = add nuw i32 %j.027.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %42
  br i1 %exitcond.not.i.i.i, label %for.cond1.i.i.i.for.inc8.i.i.i_crit_edge, label %for.cond1.i.i.i.for.body3.i.i.i_crit_edge

for.cond1.i.i.i.for.body3.i.i.i_crit_edge:        ; preds = %for.cond1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i.i.i

for.cond1.i.i.i.for.inc8.i.i.i_crit_edge:         ; preds = %for.cond1.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc8.i.i.i

for.body3.i.i.i:                                  ; preds = %for.cond1.i.i.i.for.body3.i.i.i_crit_edge, %for.body.i.i.i.for.body3.i.i.i_crit_edge
  %j.027.i.i.i = phi i32 [ %inc.i.i.i, %for.cond1.i.i.i.for.body3.i.i.i_crit_edge ], [ 0, %for.body.i.i.i.for.body3.i.i.i_crit_edge ]
  %add4.i.i.i = add i32 %add.i.i.i, %j.027.i.i.i
  %and.i.i.i = and i32 %add4.i.i.i, 63
  %arrayidx.i.i.i = getelementptr [64 x i32], ptr %28, i32 0, i32 %and.i.i.i
  %43 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr %struct.mu3h_sch_ep_info, ptr %sch_ep.0, i32 0, i32 19, i32 %j.027.i.i.i
  %45 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx5.i.i.i, align 4
  %add6.i.i.i = add i32 %46, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %add6.i.i.i)
  %cmp7.i.i.i = icmp ugt i32 %add6.i.i.i, 188
  br i1 %cmp7.i.i.i, label %for.body3.i.i.i.for.inc.i_crit_edge, label %for.cond1.i.i.i

for.body3.i.i.i.for.inc.i_crit_edge:              ; preds = %for.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc8.i.i.i:                                   ; preds = %for.cond1.i.i.i.for.inc8.i.i.i_crit_edge, %for.body.i.i.i.for.inc8.i.i.i_crit_edge
  %inc9.i.i.i = add nuw i32 %i.029.i.i.i, 1
  %exitcond31.not.i.i.i = icmp eq i32 %inc9.i.i.i, %40
  br i1 %exitcond31.not.i.i.i, label %for.inc8.i.i.i.if.end.i109_crit_edge, label %for.inc8.i.i.i.for.body.i.i.i_crit_edge

for.inc8.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.inc8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc8.i.i.i.if.end.i109_crit_edge:             ; preds = %for.inc8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i109

if.end.i109:                                      ; preds = %for.inc8.i.i.i.if.end.i109_crit_edge, %for.body.i.if.end.i109_crit_edge
  %47 = ptrtoint ptr %num_esit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pr.i = load i32, ptr %num_esit.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp24.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %cmp24.not.i.i, label %if.end.i109.if.end5.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i109.if.end5.i_crit_edge:                  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i109
  %48 = ptrtoint ptr %num_budget_microframes.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_budget_microframes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp221.not.i.i = icmp eq i32 %49, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc9.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %max_bw.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %max_bw.1.lcssa.i.i, %for.end.i.i.for.body.i.i_crit_edge ]
  %mul.i.i = mul i32 %i.026.i.i, %26
  %add.i51.i = add i32 %mul.i.i, %offset.059.i
  br i1 %cmp221.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body3.i.i_crit_edge

for.body.i.i.for.body3.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body3.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.body.i.i.for.body3.i.i_crit_edge
  %j.023.i.i = phi i32 [ %inc.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ], [ 0, %for.body.i.i.for.body3.i.i_crit_edge ]
  %max_bw.122.i.i = phi i32 [ %54, %for.body3.i.i.for.body3.i.i_crit_edge ], [ %max_bw.025.i.i, %for.body.i.i.for.body3.i.i_crit_edge ]
  %add4.i.i = add i32 %add.i51.i, %j.023.i.i
  %and.i.i = and i32 %add4.i.i, 63
  %arrayidx.i.i = getelementptr [64 x i32], ptr %22, i32 0, i32 %and.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.mu3h_sch_ep_info, ptr %sch_ep.0, i32 0, i32 19, i32 %j.023.i.i
  %52 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx5.i.i, align 4
  %add6.i.i = add i32 %53, %51
  %54 = tail call i32 @llvm.umax.i32(i32 %add6.i.i, i32 %max_bw.122.i.i) #7
  %inc.i.i = add nuw i32 %j.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %49
  br i1 %exitcond.not.i.i, label %for.body3.i.i.for.end.i.i_crit_edge, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i.i

for.body3.i.i.for.end.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body3.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %max_bw.1.lcssa.i.i = phi i32 [ %max_bw.025.i.i, %for.body.i.i.for.end.i.i_crit_edge ], [ %54, %for.body3.i.i.for.end.i.i_crit_edge ]
  %inc9.i.i = add nuw i32 %i.026.i.i, 1
  %exitcond28.not.i.i = icmp eq i32 %inc9.i.i, %.pr.i
  br i1 %exitcond28.not.i.i, label %get_max_bw.exit.i, label %for.end.i.i.for.body.i.i_crit_edge

for.end.i.i.for.body.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

get_max_bw.exit.i:                                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %max_bw.1.lcssa.i.i, i32 %switch.select3.i.i)
  %cmp3.i = icmp ugt i32 %max_bw.1.lcssa.i.i, %switch.select3.i.i
  br i1 %cmp3.i, label %get_max_bw.exit.i.for.inc.i_crit_edge, label %get_max_bw.exit.i.if.end5.i_crit_edge

get_max_bw.exit.i.if.end5.i_crit_edge:            ; preds = %get_max_bw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

get_max_bw.exit.i.for.inc.i_crit_edge:            ; preds = %get_max_bw.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end5.i:                                        ; preds = %get_max_bw.exit.i.if.end5.i_crit_edge, %if.end.i109.if.end5.i_crit_edge, %if.end37.i.i.if.end5.i_crit_edge
  %max_bw.0.lcssa.i57.i = phi i32 [ %max_bw.1.lcssa.i.i, %get_max_bw.exit.i.if.end5.i_crit_edge ], [ 0, %if.end.i109.if.end5.i_crit_edge ], [ 0, %if.end37.i.i.if.end5.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %min_bw.062.i, i32 %max_bw.0.lcssa.i57.i)
  %cmp6.i = icmp ugt i32 %min_bw.062.i, %max_bw.0.lcssa.i57.i
  %55 = tail call i32 @llvm.umin.i32(i32 %min_bw.062.i, i32 %max_bw.0.lcssa.i57.i) #7
  %spec.select47.i = select i1 %cmp6.i, i32 %offset.059.i, i32 %min_index.064.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select47.i)
  %cmp10.i = icmp sgt i32 %spec.select47.i, -1
  %or.cond.i = select i1 %tobool9.not.i, i1 %cmp10.i, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp13.i = icmp eq i32 %55, 0
  %or.cond48.i = select i1 %or.cond.i, i1 true, i1 %cmp13.i
  br i1 %or.cond48.i, label %for.end.i.thread, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end5.i.for.inc.i_crit_edge, %get_max_bw.exit.i.for.inc.i_crit_edge, %for.body3.i.i.i.for.inc.i_crit_edge, %if.end11.i.i.for.inc.i_crit_edge, %if.else.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.i.for.inc.i_crit_edge
  %tobool18.not.i = phi i1 [ true, %if.end5.i.for.inc.i_crit_edge ], [ true, %get_max_bw.exit.i.for.inc.i_crit_edge ], [ false, %if.end11.i.i.for.inc.i_crit_edge ], [ false, %if.else.i.i.for.inc.i_crit_edge ], [ false, %lor.lhs.false.i.i.for.inc.i_crit_edge ], [ false, %for.body3.i.i.i.for.inc.i_crit_edge ]
  %retval.1.i54.i.neg = phi i32 [ 0, %if.end5.i.for.inc.i_crit_edge ], [ 0, %get_max_bw.exit.i.for.inc.i_crit_edge ], [ 1003, %if.end11.i.i.for.inc.i_crit_edge ], [ 1001, %if.else.i.i.for.inc.i_crit_edge ], [ 1001, %lor.lhs.false.i.i.for.inc.i_crit_edge ], [ 1004, %for.body3.i.i.i.for.inc.i_crit_edge ]
  %min_bw.2.i = phi i32 [ %55, %if.end5.i.for.inc.i_crit_edge ], [ %min_bw.062.i, %get_max_bw.exit.i.for.inc.i_crit_edge ], [ %min_bw.062.i, %if.end11.i.i.for.inc.i_crit_edge ], [ %min_bw.062.i, %if.else.i.i.for.inc.i_crit_edge ], [ %min_bw.062.i, %lor.lhs.false.i.i.for.inc.i_crit_edge ], [ %min_bw.062.i, %for.body3.i.i.i.for.inc.i_crit_edge ]
  %min_index.2.i = phi i32 [ %spec.select47.i, %if.end5.i.for.inc.i_crit_edge ], [ %min_index.064.i, %get_max_bw.exit.i.for.inc.i_crit_edge ], [ %min_index.064.i, %if.end11.i.i.for.inc.i_crit_edge ], [ %min_index.064.i, %if.else.i.i.for.inc.i_crit_edge ], [ %min_index.064.i, %lor.lhs.false.i.i.for.inc.i_crit_edge ], [ %min_index.064.i, %for.body3.i.i.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %offset.059.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %26
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_index.2.i)
  %cmp16.i = icmp slt i32 %min_index.2.i, 0
  br i1 %cmp16.i, label %if.then17.i, label %for.end.i.if.end23_crit_edge

for.end.i.if.end23_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.end.i.thread:                                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select47.i)
  %cmp16.i116 = icmp slt i32 %spec.select47.i, 0
  br i1 %cmp16.i116, label %for.end.i.thread.do.end18.thread_crit_edge, label %for.end.i.thread.if.end23_crit_edge

for.end.i.thread.if.end23_crit_edge:              ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.end.i.thread.do.end18.thread_crit_edge:       ; preds = %for.end.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18.thread

if.then17.i:                                      ; preds = %for.end.i
  br i1 %tobool18.not.i, label %if.then17.i.do.end18.thread_crit_edge, label %do.end18

if.then17.i.do.end18.thread_crit_edge:            ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18.thread

do.end18.thread:                                  ; preds = %if.then17.i.do.end18.thread_crit_edge, %for.end.i.thread.do.end18.thread_crit_edge, %for.body.do.end18.thread_crit_edge
  %56 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hcd_priv.i, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 8
  br label %sw.bb3.i

do.end18:                                         ; preds = %if.then17.i
  %60 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hcd_priv.i, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %64 = zext i32 %retval.1.i54.i.neg to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.1.i54.i.neg, label %sw.default.i [
    i32 1001, label %do.end18.sch_error_string.exit_crit_edge
    i32 1002, label %sw.bb1.i
    i32 1003, label %sw.bb2.i
    i32 1004, label %do.end18.sw.bb3.i_crit_edge
  ]

do.end18.sw.bb3.i_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

do.end18.sch_error_string.exit_crit_edge:         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_error_string.exit

sw.bb1.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_error_string.exit

sw.bb2.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_error_string.exit

sw.bb3.i:                                         ; preds = %do.end18.sw.bb3.i_crit_edge, %do.end18.thread
  %65 = phi ptr [ %59, %do.end18.thread ], [ %63, %do.end18.sw.bb3.i_crit_edge ]
  br label %sch_error_string.exit

sw.default.i:                                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sch_error_string.exit

sch_error_string.exit:                            ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %do.end18.sch_error_string.exit_crit_edge
  %66 = phi ptr [ %63, %sw.default.i ], [ %65, %sw.bb3.i ], [ %63, %sw.bb2.i ], [ %63, %sw.bb1.i ], [ %63, %do.end18.sch_error_string.exit_crit_edge ]
  %retval.0.i111 = phi ptr [ @.str.14, %sw.default.i ], [ @.str.12, %sw.bb3.i ], [ @.str.11, %sw.bb2.i ], [ @.str.10, %sw.bb1.i ], [ @.str.9, %do.end18.sch_error_string.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.4, ptr noundef nonnull %retval.0.i111) #11
  br label %cleanup71

if.end23:                                         ; preds = %for.end.i.thread.if.end23_crit_edge, %for.end.i.if.end23_crit_edge
  %min_index.3.i117 = phi i32 [ %spec.select47.i, %for.end.i.thread.if.end23_crit_edge ], [ %min_index.2.i, %for.end.i.if.end23_crit_edge ]
  %offset20.i = getelementptr i8, ptr %.pn127, i32 52
  %67 = ptrtoint ptr %offset20.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %min_index.3.i117, ptr %offset20.i, align 4
  tail call fastcc void @load_ep_bw(ptr noundef %22, ptr noundef %sch_ep.0, i1 noundef zeroext true) #7
  %68 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %in_ctx, align 4
  %call24 = tail call ptr @xhci_get_ep_ctx(ptr noundef %hcd_priv.i, ptr noundef %69, i32 noundef %call12) #7
  %pkts = getelementptr i8, ptr %.pn127, i32 60
  %70 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pkts, align 4
  %and = and i32 %71, 127
  %72 = ptrtoint ptr %cs_count29.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cs_count29.i.i, align 4
  %and25 = shl i32 %73, 8
  %shl = and i32 %and25, 1792
  %or = or i32 %and, %shl
  %burst_mode = getelementptr i8, ptr %.pn127, i32 68
  %74 = ptrtoint ptr %burst_mode to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %burst_mode, align 4
  %shl26 = shl i32 %75, 11
  %or27 = or i32 %or, %shl26
  %76 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %reserved = getelementptr inbounds %struct.xhci_ep_ctx, ptr %call24, i32 0, i32 4
  %77 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %reserved, align 4
  %78 = ptrtoint ptr %offset20.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %offset20.i, align 4
  %and29 = and i32 %79, 16383
  %repeat = getelementptr i8, ptr %.pn127, i32 56
  %80 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %repeat, align 4
  %and30 = shl i32 %81, 16
  %shl31 = and i32 %and30, 2147418112
  %or32 = or i32 %shl31, %and29
  %82 = tail call i32 @llvm.bswap.i32(i32 %or32)
  %arrayidx34 = getelementptr %struct.xhci_ep_ctx, ptr %call24, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx34, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_mtk_check_bandwidth, %if.then47)) #7
          to label %for.inc [label %if.then47], !srcloc !62

if.then47:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hcd_priv.i, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 8
  %88 = ptrtoint ptr %pkts to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pkts, align 4
  %90 = ptrtoint ptr %cs_count29.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cs_count29.i.i, align 4
  %92 = ptrtoint ptr %burst_mode to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %burst_mode, align 4
  %94 = ptrtoint ptr %offset20.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset20.i, align 4
  %96 = ptrtoint ptr %repeat to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %repeat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug235, ptr noundef %87, ptr noundef nonnull @.str.7, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %if.end23
  %98 = ptrtoint ptr %.pn127 to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pn = load ptr, ptr %.pn127, align 4
  %cmp.not = icmp eq ptr %.pn, %bw_ep_chk_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call66 = tail call i32 @xhci_check_bandwidth(ptr noundef %hcd, ptr noundef %udev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %for.end.cleanup71_crit_edge

for.end.cleanup71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup71

if.then68:                                        ; preds = %for.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %bw_ep_chk_list) #7
  br i1 %call.i.i, label %if.end.i.i112, label %if.then68.list_del_init.exit_crit_edge

if.then68.list_del_init.exit_crit_edge:           ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i112:                                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 3, i32 1
  %99 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i, align 4
  %101 = ptrtoint ptr %bw_ep_chk_list to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %bw_ep_chk_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i112, %if.then68.list_del_init.exit_crit_edge
  %105 = ptrtoint ptr %bw_ep_chk_list to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %bw_ep_chk_list, ptr %bw_ep_chk_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %bw_ep_chk_list, ptr %prev.i3.i, align 4
  br label %cleanup71

cleanup71:                                        ; preds = %list_del_init.exit, %for.end.cleanup71_crit_edge, %sch_error_string.exit
  %retval.2 = phi i32 [ -28, %sch_error_string.exit ], [ 0, %list_del_init.exit ], [ %call66, %for.end.cleanup71_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_get_endpoint_index(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_check_bandwidth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_mtk_reset_bandwidth(ptr noundef %hcd, ptr noundef %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_mtk_reset_bandwidth.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_mtk_reset_bandwidth, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !62

if.then:                                          ; preds = %hcd_to_xhci.exit
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %6 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd_priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %11, null
  br i1 %tobool.not.i32, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i33 = phi ptr [ %13, %if.end.i ], [ %11, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_mtk_reset_bandwidth.__UNIQUE_ID_ddebug236, ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i33) #7
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %hcd_to_xhci.exit
  %bw_ep_chk_list = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %bw_ep_chk_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bw_ep_chk_list, align 4
  %cmp.not35 = icmp eq ptr %15, %bw_ep_chk_list
  br i1 %cmp.not35, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %15, %do.end.for.body_crit_edge ]
  %sch_ep.0 = getelementptr i8, ptr %.pn.in36, i32 -16
  %16 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in36, align 4
  tail call fastcc void @destroy_sch_ep(ptr noundef %udev, ptr noundef %sch_ep.0)
  %cmp.not = icmp eq ptr %.pn, %bw_ep_chk_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @xhci_reset_bandwidth(ptr noundef %hcd, ptr noundef %udev) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_sch_ep(ptr nocapture noundef readonly %udev, ptr noundef %sch_ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %allocated = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 13
  %0 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %allocated, align 4, !range !63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bw_info = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 7
  %2 = ptrtoint ptr %bw_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bw_info, align 4
  tail call fastcc void @load_ep_bw(ptr noundef %3, ptr noundef %sch_ep, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sch_tt = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 8
  %4 = ptrtoint ptr %sch_tt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sch_tt, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 8
  %6 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tt.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then2.if.end3_crit_edge, label %lor.lhs.false.i

if.then2.if.end3_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

lor.lhs.false.i:                                  ; preds = %if.then2
  %hcpriv.i = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hcpriv.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end3_crit_edge, label %if.end.i

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end.i:                                         ; preds = %lor.lhs.false.i
  %multi.i = getelementptr inbounds %struct.usb_tt, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %multi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %multi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not.i = icmp eq i32 %11, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then4.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then4.i:                                       ; preds = %if.end.i
  %ttport.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 9
  %12 = ptrtoint ptr %ttport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ttport.i, align 8
  %sub.i = add i32 %13, -1
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %sub.i
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %maxchild.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 35
  %16 = ptrtoint ptr %maxchild.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %maxchild.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp42.i = icmp sgt i32 %17, 0
  br i1 %cmp42.i, label %if.then4.i.for.body.i_crit_edge, label %if.then4.i.if.end10.i_crit_edge

if.then4.i.if.end10.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then4.i.for.body.i_crit_edge:                  ; preds = %if.then4.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then4.i.for.body.i_crit_edge
  %cnt.044.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4.i.for.body.i_crit_edge ]
  %i.043.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then4.i.for.body.i_crit_edge ]
  %arrayidx6.i = getelementptr ptr, ptr %9, i32 %i.043.i
  %18 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6.i, align 4
  %tobool7.i = icmp ne ptr %19, null
  %lnot.ext.i = zext i1 %tobool7.i to i32
  %add.i = add i32 %cnt.044.i, %lnot.ext.i
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %for.body.i.if.end10.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %for.body.i.if.end10.i_crit_edge, %if.then4.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %tt_index.0.i = phi ptr [ null, %if.end.i.if.end10.i_crit_edge ], [ %9, %if.then4.i.if.end10.i_crit_edge ], [ %9, %for.body.i.if.end10.i_crit_edge ]
  %ptt.0.i = phi ptr [ %hcpriv.i, %if.end.i.if.end10.i_crit_edge ], [ %arrayidx.i, %if.then4.i.if.end10.i_crit_edge ], [ %arrayidx.i, %for.body.i.if.end10.i_crit_edge ]
  %cnt.1.i = phi i32 [ 0, %if.end.i.if.end10.i_crit_edge ], [ 0, %if.then4.i.if.end10.i_crit_edge ], [ %add.i, %for.body.i.if.end10.i_crit_edge ]
  %20 = ptrtoint ptr %ptt.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptt.0.i, align 4
  %tobool11.not.i = icmp eq ptr %21, null
  br i1 %tobool11.not.i, label %if.end10.i.if.end3_crit_edge, label %lor.lhs.false12.i

if.end10.i.if.end3_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

lor.lhs.false12.i:                                ; preds = %if.end10.i
  %ep_list.i = getelementptr inbounds %struct.mu3h_sch_tt, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ep_list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %ep_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %23, %ep_list.i
  br i1 %cmp.i.not.i, label %if.end15.i, label %lor.lhs.false12.i.if.end3_crit_edge

lor.lhs.false12.i.if.end3_crit_edge:              ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end15.i:                                       ; preds = %lor.lhs.false12.i
  %24 = ptrtoint ptr %ptt.0.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ptt.0.i, align 4
  tail call void @kfree(ptr noundef nonnull %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cnt.1.i)
  %cmp16.i = icmp eq i32 %cnt.1.i, 1
  br i1 %cmp16.i, label %if.then17.i, label %if.end15.i.if.end3_crit_edge

if.end15.i.if.end3_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %hcpriv.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %hcpriv.i, align 4
  tail call void @kfree(ptr noundef %tt_index.0.i) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then17.i, %if.end15.i.if.end3_crit_edge, %lor.lhs.false12.i.if.end3_crit_edge, %if.end10.i.if.end3_crit_edge, %lor.lhs.false.i.if.end3_crit_edge, %if.then2.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %endpoint = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %endpoint) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_del.exit_crit_edge

if.end3.list_del.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %endpoint, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end3.list_del.exit_crit_edge
  %32 = ptrtoint ptr %endpoint to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %endpoint, align 4
  %prev.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %hentry = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 5
  %34 = ptrtoint ptr %hentry to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hentry, align 4
  %pprev2.i.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pprev2.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %35, ptr %37, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %list_del.exit.hlist_del.exit_crit_edge, label %do.body13.i.i

list_del.exit.hlist_del.exit_crit_edge:           ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %35, i32 0, i32 1
  %39 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %list_del.exit.hlist_del.exit_crit_edge
  %40 = ptrtoint ptr %hentry to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %hentry, align 4
  %41 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @kfree(ptr noundef %sch_ep) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_reset_bandwidth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_mtk_add_ep(ptr noundef %hcd, ptr noundef %udev, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xhci_add_endpoint(ptr noundef %hcd, ptr noundef %udev, ptr noundef %ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @add_ep_quirk(ptr noundef %hcd, ptr noundef %udev, ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.then2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_add_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_ep_quirk(ptr noundef %hcd, ptr nocapture noundef readonly %udev, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %slot_id = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 43
  %6 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slot_id, align 8
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %hcd_priv.i, i32 0, i32 42, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @xhci_get_endpoint_index(ptr noundef %ep) #7
  %in_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %in_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in_ctx, align 4
  %call3 = tail call ptr @xhci_get_ep_ctx(ptr noundef %hcd_priv.i, ptr noundef %11, i32 noundef %call2) #7
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 8
  %12 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tt.i, align 4
  %tobool.not.i51 = icmp eq ptr %13, null
  br i1 %tobool.not.i51, label %hcd_to_xhci.exit.land.end.i_crit_edge, label %land.rhs.i

hcd_to_xhci.exit.land.end.i_crit_edge:            ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent.i, align 4
  %tobool2.i = icmp ne ptr %17, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %hcd_to_xhci.exit.land.end.i_crit_edge
  %18 = phi i1 [ false, %hcd_to_xhci.exit.land.end.i_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %19 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc.i = trunc i8 %20 to i2
  %21 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.24)
  switch i2 %trunc.i, label %if.end.i [
    i2 0, label %land.end.i.cleanup_crit_edge
    i2 -2, label %land.end.i.cleanup_crit_edge87
  ]

land.end.i.cleanup_crit_edge87:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %land.end.i
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %22 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed.i, align 4
  %24 = add i32 %23, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %24)
  %25 = icmp ult i32 %24, -2
  %brmerge.i = select i1 %25, i1 true, i1 %18
  br i1 %brmerge.i, label %need_bw_sch.exit, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

need_bw_sch.exit:                                 ; preds = %if.end.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 4
  %26 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %28 = and i16 %27, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp.i.not = icmp eq i16 %28, 0
  br i1 %cmp.i.not, label %need_bw_sch.exit.if.then_crit_edge, label %do.body

need_bw_sch.exit.if.then_crit_edge:               ; preds = %need_bw_sch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %need_bw_sch.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %29 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.25)
  switch i2 %trunc.i, label %if.then.cleanup_crit_edge [
    i2 -1, label %if.then.if.then10_crit_edge
    i2 1, label %if.then.if.then10_crit_edge88
  ]

if.then.if.then10_crit_edge88:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then.if.then10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.then.if.then10_crit_edge, %if.then.if.then10_crit_edge88
  %reserved = getelementptr inbounds %struct.xhci_ep_ctx, ptr %call3, i32 0, i32 4
  %30 = ptrtoint ptr %reserved to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 16777216, ptr %reserved, align 4
  br label %cleanup

do.body:                                          ; preds = %need_bw_sch.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @add_ep_quirk.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@add_ep_quirk, %if.then17)) #7
          to label %do.end [label %if.then17], !srcloc !62

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd_priv.i, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed.i, align 4
  %call.i57 = tail call i32 @usb_decode_interval(ptr noundef %ep, i32 noundef %36) #7
  %call.i57.frozen = freeze i32 %call.i57
  %div.i = udiv i32 %call.i57.frozen, 1000
  %37 = mul i32 %div.i, 1000
  %rem.i.decomposed = sub i32 %call.i57.frozen, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i58 = icmp eq i32 %rem.i.decomposed, 0
  %interval.0.i = select i1 %tobool.not.i58, i32 %div.i, i32 %call.i57
  %unit.0.i = select i1 %tobool.not.i58, ptr @.str.18, ptr @.str.17
  %call1.i = tail call ptr @usb_speed_string(i32 noundef %36) #7
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %38 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bEndpointAddress.i.i, align 1
  %40 = and i8 %39, 15
  %and.i.i = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %tobool4.not.i = icmp sgt i8 %39, -1
  %cond.i = select i1 %tobool4.not.i, ptr @.str.21, ptr @.str.20
  %41 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bmAttributes.i.i, align 1
  %43 = and i8 %42, 3
  %and.i2.i = zext i8 %43 to i32
  %call6.i = tail call ptr @usb_ep_type_string(i32 noundef %and.i2.i) #7
  %44 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %46 = and i16 %45, -249
  %47 = tail call i16 @llvm.bswap.i16(i16 %46) #7
  %and.i3.i = zext i16 %47 to i32
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 5
  %48 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bInterval.i, align 1
  %conv.i = zext i8 %49 to i32
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @decode_ep.buf, i32 noundef 64, ptr noundef nonnull @.str.19, ptr noundef %call1.i, i32 noundef %and.i.i, ptr noundef nonnull %cond.i, ptr noundef %call6.i, i32 noundef %and.i3.i, i32 noundef %conv.i, i32 noundef %interval.0.i, ptr noundef nonnull %unit.0.i) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @add_ep_quirk.__UNIQUE_ID_ddebug232, ptr noundef %34, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, ptr noundef nonnull @decode_ep.buf) #7
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %hcd.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %hcd.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hcd.i.i, align 4
  %call.i.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %do.end.hcd_to_xhci.exit.i.i_crit_edge

do.end.hcd_to_xhci.exit.i.i_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit.i.i

if.else.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %51, i32 0, i32 25
  %52 = ptrtoint ptr %primary_hcd1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %primary_hcd1.i.i.i, align 8
  br label %hcd_to_xhci.exit.i.i

hcd_to_xhci.exit.i.i:                             ; preds = %if.else.i.i.i, %do.end.hcd_to_xhci.exit.i.i_crit_edge
  %primary_hcd.0.i.i.i = phi ptr [ %53, %if.else.i.i.i ], [ %51, %do.end.hcd_to_xhci.exit.i.i_crit_edge ]
  %hcd_priv.i.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i.i, i32 0, i32 30
  %54 = ptrtoint ptr %slot_id to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %slot_id, align 8
  %arrayidx.i.i = getelementptr %struct.xhci_hcd, ptr %hcd_priv.i.i.i, i32 0, i32 42, i32 %55
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i.i, align 4
  %real_port.i.i = getelementptr inbounds %struct.xhci_virt_device, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %real_port.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %real_port.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i, label %land.end.i.i, label %if.end36.i.i

land.end.i.i:                                     ; preds = %hcd_to_xhci.exit.i.i
  %.b65.i.i = load i1, ptr @get_bw_info.__already_done, align 1
  br i1 %.b65.i.i, label %land.end.i.i.cleanup_crit_edge, label %if.then6.i.i, !prof !64

land.end.i.i.cleanup_crit_edge:                   ; preds = %land.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i.i:                                     ; preds = %land.end.i.i
  store i1 true, ptr @get_bw_info.__already_done, align 1
  %init_name.i.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 3
  %60 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i66.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i66.i.i, label %if.end.i.i.i, label %if.then6.i.i.dev_name.exit.i.i_crit_edge

if.then6.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %62 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then6.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %63, %if.end.i.i.i ], [ %61, %if.then6.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 133, i32 noundef 9, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i.i.i) #7
  br label %cleanup

if.end36.i.i:                                     ; preds = %hcd_to_xhci.exit.i.i
  %64 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp.i.i = icmp ugt i32 %65, 4
  br i1 %cmp.i.i, label %if.then37.i.i, label %if.else47.i.i

if.then37.i.i:                                    ; preds = %if.end36.i.i
  %bEndpointAddress.i.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %66 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool39.not.i.i = icmp slt i8 %67, 0
  %conv43.i.i = zext i8 %59 to i32
  %sub44.i.i = shl nuw nsw i32 %conv43.i.i, 1
  br i1 %tobool39.not.i.i, label %if.else.i.i, label %if.then40.i.i

if.then40.i.i:                                    ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i.i = add nsw i32 %sub44.i.i, -2
  br label %get_bw_info.exit.i

if.else.i.i:                                      ; preds = %if.then37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i = add nsw i32 %sub44.i.i, -1
  br label %get_bw_info.exit.i

if.else47.i.i:                                    ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv49.i.i = zext i8 %59 to i32
  %num_ports.i.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i.i, i32 9, i32 20, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %68 = ptrtoint ptr %num_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_ports.i.i, align 4
  %add50.i.i = add nsw i32 %conv49.i.i, -1
  %sub51.i.i = add i32 %add50.i.i, %69
  br label %get_bw_info.exit.i

get_bw_info.exit.i:                               ; preds = %if.else47.i.i, %if.else.i.i, %if.then40.i.i
  %bw_index.0.i.i = phi i32 [ %mul.i.i, %if.then40.i.i ], [ %add.i.i, %if.else.i.i ], [ %sub51.i.i, %if.else47.i.i ]
  %sch_array.i.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %sch_array.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sch_array.i.i, align 4
  %arrayidx53.i.i = getelementptr %struct.mu3h_sch_bw_info, ptr %71, i32 %bw_index.0.i.i
  %tobool.not.i61 = icmp eq ptr %arrayidx53.i.i, null
  br i1 %tobool.not.i61, label %get_bw_info.exit.i.cleanup_crit_edge, label %if.end.i62

get_bw_info.exit.i.cleanup_crit_edge:             ; preds = %get_bw_info.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i62:                                       ; preds = %get_bw_info.exit.i
  %72 = add i32 %65, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %73 = icmp ult i32 %72, 2
  %cmp.i.i.not = xor i1 %cmp.i.i, true
  %brmerge = or i1 %73, %cmp.i.i.not
  %.mux = select i1 %73, i32 124, i32 92
  br i1 %brmerge, label %if.end.i62.if.end8.i.i.i_crit_edge, label %land.lhs.true.i

if.end.i62.if.end8.i.i.i_crit_edge:               ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

land.lhs.true.i:                                  ; preds = %if.end.i62
  %74 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bmAttributes.i.i, align 1
  %76 = and i8 %75, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %76)
  %cmp.i55.not.i = icmp eq i8 %76, 1
  br i1 %cmp.i55.not.i, label %if.then8.i, label %land.lhs.true.i.if.end8.i.i.i_crit_edge

land.lhs.true.i.if.end8.i.i.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %call3, align 8
  %79 = lshr i32 %78, 8
  %and.i.i66 = and i32 %79, 255
  %shl.i.i = shl nuw i32 1, %and.i.i66
  %80 = tail call i32 @llvm.umin.i32(i32 %shl.i.i, i32 64) #7
  %phi.bo.i = shl nuw nsw i32 %80, 2
  %phi.bo54.i = add nuw nsw i32 %phi.bo.i, 88
  br label %if.end8.i.i.i

if.end8.i.i.i:                                    ; preds = %if.then8.i, %land.lhs.true.i.if.end8.i.i.i_crit_edge, %if.end.i62.if.end8.i.i.i_crit_edge
  %len_bw_budget_table.0.i = phi i32 [ %phi.bo54.i, %if.then8.i ], [ %.mux, %if.end.i62.if.end8.i.i.i_crit_edge ], [ 92, %land.lhs.true.i.if.end8.i.i.i_crit_edge ]
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %len_bw_budget_table.0.i, i32 noundef 3520) #10
  %tobool14.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool14.not.i, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end17.i

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17.i:                                       ; preds = %if.end8.i.i.i
  %81 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %speed.i, align 4
  %83 = add i32 %82, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %83)
  %84 = icmp ult i32 %83, -2
  br i1 %84, label %if.end17.i.create_sch_ep.exit_crit_edge, label %if.then21.i

if.end17.i.create_sch_ep.exit_crit_edge:          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_sch_ep.exit

if.then21.i:                                      ; preds = %if.end17.i
  %85 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tt.i, align 4
  %tobool.not.i57.i = icmp eq ptr %86, null
  br i1 %tobool.not.i57.i, label %if.then21.i.create_sch_ep.exit_crit_edge, label %if.end.i.i

if.then21.i.create_sch_ep.exit_crit_edge:         ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_sch_ep.exit

if.end.i.i:                                       ; preds = %if.then21.i
  %multi.i.i = getelementptr inbounds %struct.usb_tt, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %multi.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %multi.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool2.not.i.i = icmp eq i32 %88, 0
  %hcpriv12.i.i = getelementptr inbounds %struct.usb_tt, ptr %86, i32 0, i32 3
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end13.i.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end13.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %89 = ptrtoint ptr %hcpriv12.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hcpriv12.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %90, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.then3.i.i.if.end11.i.i_crit_edge

if.then3.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then5.i.i:                                     ; preds = %if.then3.i.i
  %91 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %86, align 4
  %maxchild.i.i = getelementptr inbounds %struct.usb_device, ptr %92, i32 0, i32 35
  %93 = ptrtoint ptr %maxchild.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %maxchild.i.i, align 4
  %95 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %94, i32 4) #7
  %96 = extractvalue { i32, i1 } %95, 1
  br i1 %96, label %if.then5.i.i.if.then24.i_crit_edge, label %if.end7.i.i.i.i, !prof !61

if.then5.i.i.if.then24.i_crit_edge:               ; preds = %if.then5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.end7.i.i.i.i:                                  ; preds = %if.then5.i.i
  %97 = extractvalue { i32, i1 } %95, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %97, i32 noundef 3520) #10
  %tobool6.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool6.not.i.i, label %if.end7.i.i.i.i.if.then24.i_crit_edge, label %if.end9.i.i

if.end7.i.i.i.i.if.then24.i_crit_edge:            ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.end9.i.i:                                      ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %hcpriv12.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call8.i.i.i.i, ptr %hcpriv12.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.end9.i.i, %if.then3.i.i.if.end11.i.i_crit_edge
  %tt_index.0.i.i = phi ptr [ %90, %if.then3.i.i.if.end11.i.i_crit_edge ], [ %call8.i.i.i.i, %if.end9.i.i ]
  %ttport.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 9
  %99 = ptrtoint ptr %ttport.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ttport.i.i, align 8
  %sub.i.i = add i32 %100, -1
  %arrayidx.i58.i = getelementptr ptr, ptr %tt_index.0.i.i, i32 %sub.i.i
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.end11.i.i, %if.end.i.i.if.end13.i.i_crit_edge
  %tt_index.1.i.i = phi ptr [ %tt_index.0.i.i, %if.end11.i.i ], [ null, %if.end.i.i.if.end13.i.i_crit_edge ]
  %ptt.0.i.i = phi ptr [ %arrayidx.i58.i, %if.end11.i.i ], [ %hcpriv12.i.i, %if.end.i.i.if.end13.i.i_crit_edge ]
  %allocated_index.1.off0.i.i = phi i1 [ %tobool4.not.i.i, %if.end11.i.i ], [ false, %if.end.i.i.if.end13.i.i_crit_edge ]
  %101 = ptrtoint ptr %ptt.0.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ptt.0.i.i, align 4
  %tobool14.not.i.i = icmp eq ptr %102, null
  br i1 %tobool14.not.i.i, label %if.then15.i.i, label %if.end13.i.i.find_tt.exit.i_crit_edge

if.end13.i.i.find_tt.exit.i_crit_edge:            ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_tt.exit.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 264) #12
  %tobool17.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool17.not.i.i, label %if.then18.i.i, label %if.end24.i.i

if.then18.i.i:                                    ; preds = %if.then15.i.i
  br i1 %allocated_index.1.off0.i.i, label %if.then20.i.i, label %if.then18.i.i.if.then24.i_crit_edge

if.then18.i.i.if.then24.i_crit_edge:              ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.then20.i.i:                                    ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %hcpriv12.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %hcpriv12.i.i, align 4
  tail call void @kfree(ptr noundef %tt_index.1.i.i) #7
  br label %if.then24.i

if.end24.i.i:                                     ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %ep_list.i.i = getelementptr inbounds %struct.mu3h_sch_tt, ptr %call7.i.i.i.i, i32 0, i32 1
  %105 = ptrtoint ptr %ep_list.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %ep_list.i.i, ptr %ep_list.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.mu3h_sch_tt, ptr %call7.i.i.i.i, i32 0, i32 1, i32 1
  %106 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %ep_list.i.i, ptr %prev.i.i.i, align 4
  %107 = ptrtoint ptr %ptt.0.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i.i.i, ptr %ptt.0.i.i, align 4
  br label %find_tt.exit.i

find_tt.exit.i:                                   ; preds = %if.end24.i.i, %if.end13.i.i.find_tt.exit.i_crit_edge
  %retval.0.i59.i = phi ptr [ %102, %if.end13.i.i.find_tt.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end24.i.i ]
  %cmp.i60.i = icmp ugt ptr %retval.0.i59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i, label %find_tt.exit.i.if.then24.i_crit_edge, label %find_tt.exit.i.create_sch_ep.exit_crit_edge

find_tt.exit.i.create_sch_ep.exit_crit_edge:      ; preds = %find_tt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %create_sch_ep.exit

find_tt.exit.i.if.then24.i_crit_edge:             ; preds = %find_tt.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24.i

if.then24.i:                                      ; preds = %find_tt.exit.i.if.then24.i_crit_edge, %if.then20.i.i, %if.then18.i.i.if.then24.i_crit_edge, %if.end7.i.i.i.i.if.then24.i_crit_edge, %if.then5.i.i.if.then24.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #7
  br label %cleanup

create_sch_ep.exit:                               ; preds = %find_tt.exit.i.create_sch_ep.exit_crit_edge, %if.then21.i.create_sch_ep.exit_crit_edge, %if.end17.i.create_sch_ep.exit_crit_edge
  %tt.0.i = phi ptr [ %retval.0.i59.i, %find_tt.exit.i.create_sch_ep.exit_crit_edge ], [ null, %if.end17.i.create_sch_ep.exit_crit_edge ], [ null, %if.then21.i.create_sch_ep.exit_crit_edge ]
  %bw_info28.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 7
  %108 = ptrtoint ptr %bw_info28.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %arrayidx53.i.i, ptr %bw_info28.i, align 8
  %sch_tt.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 8
  %109 = ptrtoint ptr %sch_tt.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %tt.0.i, ptr %sch_tt.i, align 4
  %ep29.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 11
  %110 = ptrtoint ptr %ep29.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %ep, ptr %ep29.i, align 8
  %111 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %speed.i, align 4
  %speed31.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 12
  %113 = ptrtoint ptr %speed31.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %speed31.i, align 4
  %endpoint.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 4
  %114 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %endpoint.i, ptr %endpoint.i, align 16
  %prev.i.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 4, i32 1
  %115 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %endpoint.i, ptr %prev.i.i, align 4
  %tt_endpoint.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 6
  %116 = ptrtoint ptr %tt_endpoint.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %tt_endpoint.i, ptr %tt_endpoint.i, align 32
  %prev.i61.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 6, i32 1
  %117 = ptrtoint ptr %prev.i61.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %tt_endpoint.i, ptr %prev.i61.i, align 4
  %hentry.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 5
  %118 = ptrtoint ptr %hentry.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %hentry.i, align 8
  %pprev.i.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 5, i32 1
  %119 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr null, ptr %pprev.i.i, align 4
  %cmp.i69 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %create_sch_ep.exit.cleanup_crit_edge, label %if.end24

create_sch_ep.exit.cleanup_crit_edge:             ; preds = %create_sch_ep.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %create_sch_ep.exit
  %bw_budget_table.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 19
  %ep_info2.i = getelementptr inbounds %struct.xhci_ep_ctx, ptr %call3, i32 0, i32 1
  %120 = ptrtoint ptr %ep_info2.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %ep_info2.i, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #7
  %shr.i = lshr i32 %122, 3
  %and.i = and i32 %shr.i, 7
  %shr2.i = lshr i32 %122, 16
  %shr5.i = lshr i32 %122, 8
  %and6.i = and i32 %shr5.i, 255
  %123 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %call3, align 8
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #7
  %shr7.i = lshr i32 %125, 8
  %and8.i = and i32 %shr7.i, 3
  %shl.i = and i32 %shr7.i, 16711680
  %tx_info.i = getelementptr inbounds %struct.xhci_ep_ctx, ptr %call3, i32 0, i32 3
  %126 = ptrtoint ptr %tx_info.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_info.i, align 8
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #7
  %shr12.i = lshr i32 %128, 16
  %129 = lshr i32 %124, 8
  %and.i.i71 = and i32 %129, 255
  %shl.i.i72 = shl nuw i32 1, %and.i.i71
  %130 = tail call i32 @llvm.umin.i32(i32 %shl.i.i72, i32 64) #7
  %131 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %call9.i.i.i, align 128
  %div.rhs.trunc.i = trunc i32 %130 to i8
  %div264.i = udiv i8 64, %div.rhs.trunc.i
  %div.zext.i = zext i8 %div264.i to i32
  %num_esit.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 1
  %132 = ptrtoint ptr %num_esit.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %div.zext.i, ptr %num_esit.i, align 4
  %ep_type15.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 9
  %133 = ptrtoint ptr %ep_type15.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %and.i, ptr %ep_type15.i, align 16
  %maxpkt16.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 10
  %134 = ptrtoint ptr %maxpkt16.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %shr2.i, ptr %maxpkt16.i, align 4
  %offset.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 14
  %135 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %offset.i, align 4
  %burst_mode.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 18
  %136 = ptrtoint ptr %burst_mode.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %burst_mode.i, align 4
  %repeat.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 15
  %137 = ptrtoint ptr %repeat.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %repeat.i, align 8
  %138 = ptrtoint ptr %speed31.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %speed31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %139)
  %cmp.i74 = icmp eq i32 %139, 3
  br i1 %cmp.i74, label %if.then.i, label %if.else.i75

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %cs_count.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 17
  %140 = ptrtoint ptr %cs_count.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %cs_count.i, align 16
  %num_budget_microframes.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 2
  %141 = ptrtoint ptr %num_budget_microframes.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %num_budget_microframes.i, align 8
  %add.i = add nuw nsw i32 %and6.i, 1
  %pkts.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 16
  %142 = ptrtoint ptr %pkts.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %add.i, ptr %pkts.i, align 4
  %mul.i = mul nuw nsw i32 %add.i, %shr2.i
  %bw_cost_per_microframe.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 3
  %143 = ptrtoint ptr %bw_cost_per_microframe.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %mul.i, ptr %bw_cost_per_microframe.i, align 4
  %144 = ptrtoint ptr %bw_budget_table.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %mul.i, ptr %bw_budget_table.i, align 8
  br label %setup_sch_info.exit

if.else.i75:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %139)
  %cmp20.i = icmp ugt i32 %139, 4
  br i1 %cmp20.i, label %if.then21.i76, label %if.else108.i

if.then21.i76:                                    ; preds = %if.else.i75
  %cs_count22.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 17
  %145 = ptrtoint ptr %cs_count22.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %cs_count22.i, align 16
  %146 = ptrtoint ptr %burst_mode.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 1, ptr %burst_mode.i, align 4
  %or.i = add nsw i32 %shr2.i, -1
  %add24.i = add nsw i32 %or.i, %shr12.i
  %sub.i = add nsw i32 %add24.i, %shl.i
  %div25.i = udiv i32 %sub.i, %shr2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr2.i, i32 %sub.i)
  %cmp26.i = icmp ugt i32 %shr2.i, %sub.i
  %add28.i = add nuw nsw i32 %and8.i, 1
  %add29.i = add nuw nsw i32 %and6.i, 1
  %mul30.i = mul nuw nsw i32 %add28.i, %add29.i
  %esit_pkts.0.i = select i1 %cmp26.i, i32 %mul30.i, i32 %div25.i
  %147 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %147, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %and.i, label %if.then21.i76.setup_sch_info.exit_crit_edge [
    i32 7, label %if.then21.i76.if.then33.i_crit_edge
    i32 3, label %if.then21.i76.if.then33.i_crit_edge89
    i32 5, label %if.then21.i76.if.then43.i_crit_edge
    i32 1, label %if.then21.i76.if.then43.i_crit_edge90
  ]

if.then21.i76.if.then43.i_crit_edge90:            ; preds = %if.then21.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then21.i76.if.then43.i_crit_edge:              ; preds = %if.then21.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then21.i76.if.then33.i_crit_edge89:            ; preds = %if.then21.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33.i

if.then21.i76.if.then33.i_crit_edge:              ; preds = %if.then21.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33.i

if.then21.i76.setup_sch_info.exit_crit_edge:      ; preds = %if.then21.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_sch_info.exit

if.then33.i:                                      ; preds = %if.then21.i76.if.then33.i_crit_edge, %if.then21.i76.if.then33.i_crit_edge89
  %pkts34.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 16
  %148 = ptrtoint ptr %pkts34.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %esit_pkts.0.i, ptr %pkts34.i, align 4
  %num_budget_microframes35.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 2
  %149 = ptrtoint ptr %num_budget_microframes35.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1, ptr %num_budget_microframes35.i, align 8
  %mul37.i = mul i32 %esit_pkts.0.i, %shr2.i
  %150 = ptrtoint ptr %bw_budget_table.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %mul37.i, ptr %bw_budget_table.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %cond.i77 = icmp eq i32 %and.i, 5
  br i1 %cond.i77, label %if.then33.i.if.then43.i_crit_edge, label %if.then33.i.setup_sch_info.exit_crit_edge

if.then33.i.setup_sch_info.exit_crit_edge:        ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_sch_info.exit

if.then33.i.if.then43.i_crit_edge:                ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.then33.i.if.then43.i_crit_edge, %if.then21.i76.if.then43.i_crit_edge, %if.then21.i76.if.then43.i_crit_edge90
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %130)
  %cmp45.i = icmp eq i32 %130, 1
  br i1 %cmp45.i, label %if.then43.i.if.end81.i_crit_edge, label %if.else48.i

if.then43.i.if.end81.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

if.else48.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %esit_pkts.0.i, i32 %130)
  %cmp50.not.i = icmp ugt i32 %esit_pkts.0.i, %130
  br i1 %cmp50.not.i, label %cond.end75.i, label %if.else48.i.if.end81.i_crit_edge

if.else48.i.if.end81.i_crit_edge:                 ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81.i

cond.end75.i:                                     ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i262.i = add i32 %esit_pkts.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i262.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i262.i, 0
  %151 = tail call i32 @llvm.ctlz.i32(i32 %sub.i262.i, i1 true) #7, !range !65
  %sub.i.i.i.i = sub nuw nsw i32 32, %151
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %shl.i263.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 %sub.i.i.op.i.i
  %div78.i = udiv i32 %shl.i263.i, %130
  br label %if.end81.i

if.end81.i:                                       ; preds = %cond.end75.i, %if.else48.i.if.end81.i_crit_edge, %if.then43.i.if.end81.i_crit_edge
  %.sink.i = phi i32 [ %div78.i, %cond.end75.i ], [ %esit_pkts.0.i, %if.then43.i.if.end81.i_crit_edge ], [ 1, %if.else48.i.if.end81.i_crit_edge ]
  %pkts52.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 16
  %152 = ptrtoint ptr %pkts52.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %.sink.i, ptr %pkts52.i, align 4
  %add83.i = add i32 %esit_pkts.0.i, -1
  %sub84.i = add i32 %add83.i, %.sink.i
  %div86.i = udiv i32 %sub84.i, %.sink.i
  %num_budget_microframes87.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 2
  %153 = ptrtoint ptr %num_budget_microframes87.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %div86.i, ptr %num_budget_microframes87.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div86.i)
  %cmp89.i = icmp ugt i32 %div86.i, 1
  %lnot.ext.i = zext i1 %cmp89.i to i32
  %154 = ptrtoint ptr %repeat.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %lnot.ext.i, ptr %repeat.i, align 8
  %mul94.i = mul i32 %.sink.i, %shr2.i
  %bw_cost_per_microframe95.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %bw_cost_per_microframe95.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %mul94.i, ptr %bw_cost_per_microframe95.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div86.i)
  %cmp98270.not.i = icmp eq i32 %div86.i, 1
  br i1 %cmp98270.not.i, label %if.end81.i.for.end.i_crit_edge, label %if.end81.i.for.body.i_crit_edge

if.end81.i.for.body.i_crit_edge:                  ; preds = %if.end81.i
  br label %for.body.i

if.end81.i.for.end.i_crit_edge:                   ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end81.i.for.body.i_crit_edge
  %i.0271.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end81.i.for.body.i_crit_edge ]
  %156 = ptrtoint ptr %bw_cost_per_microframe95.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %bw_cost_per_microframe95.i, align 4
  %arrayidx101.i = getelementptr i32, ptr %bw_budget_table.i, i32 %i.0271.i
  %158 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx101.i, align 4
  %inc.i = add nuw i32 %i.0271.i, 1
  %159 = ptrtoint ptr %num_budget_microframes87.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_budget_microframes87.i, align 8
  %sub97.i = add i32 %160, -1
  %cmp98.i = icmp ult i32 %inc.i, %sub97.i
  br i1 %cmp98.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end81.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end81.i.for.end.i_crit_edge ], [ %inc.i, %for.body.i.for.end.i_crit_edge ]
  %mul102.i = mul i32 %esit_pkts.0.i, %shr2.i
  %161 = ptrtoint ptr %bw_cost_per_microframe95.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %bw_cost_per_microframe95.i, align 4
  %mul104.i = mul i32 %162, %i.0.lcssa.i
  %sub105.i = sub i32 %mul102.i, %mul104.i
  %arrayidx106.i = getelementptr i32, ptr %bw_budget_table.i, i32 %i.0.lcssa.i
  %163 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %sub105.i, ptr %arrayidx106.i, align 4
  br label %setup_sch_info.exit

if.else108.i:                                     ; preds = %if.else.i75
  %164 = add nsw i32 %139, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %164)
  %165 = icmp ult i32 %164, -2
  br i1 %165, label %if.else108.i.setup_sch_info.exit_crit_edge, label %if.then111.i

if.else108.i.setup_sch_info.exit_crit_edge:       ; preds = %if.else108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_sch_info.exit

if.then111.i:                                     ; preds = %if.else108.i
  %pkts112.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 16
  %166 = ptrtoint ptr %pkts112.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %pkts112.i, align 4
  %sub114.i = add nuw nsw i32 %shr2.i, 187
  %div115.i = udiv i32 %sub114.i, 188
  %cs_count116.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 17
  %167 = ptrtoint ptr %cs_count116.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %div115.i, ptr %cs_count116.i, align 16
  %num_budget_microframes118.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 2
  %168 = ptrtoint ptr %num_budget_microframes118.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %div115.i, ptr %num_budget_microframes118.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12320768, i32 %122)
  %cmp119.i = icmp ult i32 %122, 12320768
  %spec.select.i78 = select i1 %cmp119.i, i32 %shr2.i, i32 188
  %bw_cost_per_microframe125.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 0, i32 3
  %169 = ptrtoint ptr %bw_cost_per_microframe125.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %spec.select.i78, ptr %bw_cost_per_microframe125.i, align 4
  %170 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %and.i, label %if.else145.i [
    i32 1, label %for.cond129.preheader.i
    i32 3, label %if.then142.i
  ]

for.cond129.preheader.i:                          ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %122)
  %171 = icmp ult i32 %122, 65536
  br i1 %171, label %for.cond129.preheader.i.setup_sch_info.exit_crit_edge, label %for.cond129.preheader.i.for.body133.i_crit_edge

for.cond129.preheader.i.for.body133.i_crit_edge:  ; preds = %for.cond129.preheader.i
  br label %for.body133.i

for.cond129.preheader.i.setup_sch_info.exit_crit_edge: ; preds = %for.cond129.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_sch_info.exit

for.body133.i:                                    ; preds = %for.body133.i.for.body133.i_crit_edge, %for.cond129.preheader.i.for.body133.i_crit_edge
  %i.1267.i = phi i32 [ %inc137.i, %for.body133.i.for.body133.i_crit_edge ], [ 0, %for.cond129.preheader.i.for.body133.i_crit_edge ]
  %172 = ptrtoint ptr %bw_cost_per_microframe125.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %bw_cost_per_microframe125.i, align 4
  %arrayidx135.i = getelementptr i32, ptr %bw_budget_table.i, i32 %i.1267.i
  %174 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %arrayidx135.i, align 4
  %inc137.i = add nuw i32 %i.1267.i, 1
  %175 = ptrtoint ptr %num_budget_microframes118.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %num_budget_microframes118.i, align 8
  %cmp131.i = icmp ult i32 %inc137.i, %176
  br i1 %cmp131.i, label %for.body133.i.for.body133.i_crit_edge, label %for.body133.i.setup_sch_info.exit_crit_edge

for.body133.i.setup_sch_info.exit_crit_edge:      ; preds = %for.body133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %setup_sch_info.exit

for.body133.i.for.body133.i_crit_edge:            ; preds = %for.body133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body133.i

if.then142.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %bw_budget_table.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %spec.select.i78, ptr %bw_budget_table.i, align 8
  br label %setup_sch_info.exit

if.else145.i:                                     ; preds = %if.then111.i
  call void @__sanitizer_cov_trace_pc() #9
  %178 = ptrtoint ptr %bw_budget_table.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %bw_budget_table.i, align 8
  %arrayidx147.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 1
  %179 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %arrayidx147.i, align 4
  %arrayidx153.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 2
  %180 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %spec.select.i78, ptr %arrayidx153.i, align 32
  %arrayidx153.1.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 3
  %181 = ptrtoint ptr %arrayidx153.1.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %spec.select.i78, ptr %arrayidx153.1.i, align 4
  %arrayidx153.2.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 4
  %182 = ptrtoint ptr %arrayidx153.2.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %spec.select.i78, ptr %arrayidx153.2.i, align 8
  %arrayidx153.3.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 4, i32 1
  %183 = ptrtoint ptr %arrayidx153.3.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %spec.select.i78, ptr %arrayidx153.3.i, align 4
  %arrayidx153.4.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 5
  %184 = ptrtoint ptr %arrayidx153.4.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %spec.select.i78, ptr %arrayidx153.4.i, align 16
  %arrayidx153.5.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 5, i32 1
  %185 = ptrtoint ptr %arrayidx153.5.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %spec.select.i78, ptr %arrayidx153.5.i, align 4
  %arrayidx153.6.i = getelementptr %struct.mu3h_sch_ep_info, ptr %call9.i.i.i, i32 1, i32 6
  %186 = ptrtoint ptr %arrayidx153.6.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %spec.select.i78, ptr %arrayidx153.6.i, align 8
  br label %setup_sch_info.exit

setup_sch_info.exit:                              ; preds = %if.else145.i, %if.then142.i, %for.body133.i.setup_sch_info.exit_crit_edge, %for.cond129.preheader.i.setup_sch_info.exit_crit_edge, %if.else108.i.setup_sch_info.exit_crit_edge, %for.end.i, %if.then33.i.setup_sch_info.exit_crit_edge, %if.then21.i76.setup_sch_info.exit_crit_edge, %if.then.i
  %bw_ep_chk_list = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 3, i32 1
  %187 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %endpoint.i, ptr noundef %188, ptr noundef %bw_ep_chk_list) #7
  br i1 %call.i.i, label %if.end.i.i79, label %setup_sch_info.exit.list_add_tail.exit_crit_edge

setup_sch_info.exit.list_add_tail.exit_crit_edge: ; preds = %setup_sch_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i79:                                     ; preds = %setup_sch_info.exit
  call void @__sanitizer_cov_trace_pc() #9
  %189 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %endpoint.i, ptr %prev.i, align 4
  %190 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %bw_ep_chk_list, ptr %endpoint.i, align 16
  %191 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %endpoint.i, ptr %188, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i79, %setup_sch_info.exit.list_add_tail.exit_crit_edge
  %193 = ptrtoint ptr %ep to i32
  %mul.i.i80 = mul i32 %193, 1640531527
  %shr.i81 = lshr i32 %mul.i.i80, 27
  %arrayidx26 = getelementptr %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 4, i32 %shr.i81
  %194 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx26, align 4
  %196 = ptrtoint ptr %hentry.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %195, ptr %hentry.i, align 8
  %tobool.not.i82 = icmp eq ptr %195, null
  br i1 %tobool.not.i82, label %list_add_tail.exit.hlist_add_head.exit_crit_edge, label %do.body12.i

list_add_tail.exit.hlist_add_head.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %195, i32 0, i32 1
  %197 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store volatile ptr %hentry.i, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %list_add_tail.exit.hlist_add_head.exit_crit_edge
  %198 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %198)
  store volatile ptr %hentry.i, ptr %arrayidx26, align 4
  %199 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %arrayidx26, ptr %pprev.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head.exit, %create_sch_ep.exit.cleanup_crit_edge, %if.then24.i, %if.end8.i.i.i.cleanup_crit_edge, %get_bw_info.exit.i.cleanup_crit_edge, %dev_name.exit.i.i, %land.end.i.i.cleanup_crit_edge, %if.then10, %if.then.cleanup_crit_edge, %land.end.i.cleanup_crit_edge, %land.end.i.cleanup_crit_edge87
  %retval.0 = phi i32 [ 0, %hlist_add_head.exit ], [ 0, %if.then10 ], [ -12, %create_sch_ep.exit.cleanup_crit_edge ], [ -12, %if.then24.i ], [ -12, %get_bw_info.exit.i.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ -12, %dev_name.exit.i.i ], [ -12, %land.end.i.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.end.i.cleanup_crit_edge ], [ 0, %land.end.i.cleanup_crit_edge87 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @xhci_mtk_drop_ep(ptr noundef %hcd, ptr noundef %udev, ptr noundef %ep) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xhci_drop_endpoint(ptr noundef %hcd, ptr noundef %udev, ptr noundef %ep) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %hcpriv = getelementptr inbounds %struct.usb_host_endpoint, ptr %ep, i32 0, i32 5
  %0 = ptrtoint ptr %hcpriv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcpriv, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @drop_ep_quirk(ptr noundef %hcd, ptr noundef %udev, ptr noundef %ep)
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_drop_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drop_ep_quirk(ptr noundef %hcd, ptr nocapture noundef readonly %udev, ptr noundef %ep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %4 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %5, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %tt.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 8
  %6 = ptrtoint ptr %tt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tt.i, align 4
  %tobool.not.i47 = icmp eq ptr %7, null
  br i1 %tobool.not.i47, label %hcd_to_xhci.exit.land.end.i_crit_edge, label %land.rhs.i

hcd_to_xhci.exit.land.end.i_crit_edge:            ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end.i

land.rhs.i:                                       ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 4
  %tobool2.i = icmp ne ptr %11, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %hcd_to_xhci.exit.land.end.i_crit_edge
  %12 = phi i1 [ false, %hcd_to_xhci.exit.land.end.i_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 3
  %13 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc.i = trunc i8 %14 to i2
  %15 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.28)
  switch i2 %trunc.i, label %if.end.i [
    i2 0, label %land.end.i.cleanup_crit_edge
    i2 -2, label %land.end.i.cleanup_crit_edge67
  ]

land.end.i.cleanup_crit_edge67:                   ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %land.end.i
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 4
  %16 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %speed.i, align 4
  %18 = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %18)
  %19 = icmp ult i32 %18, -2
  %brmerge.i = select i1 %19, i1 true, i1 %12
  br i1 %brmerge.i, label %need_bw_sch.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

need_bw_sch.exit:                                 ; preds = %if.end.i
  %wMaxPacketSize.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 4
  %20 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %22 = and i16 %21, -249
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i.not = icmp eq i16 %22, 0
  br i1 %cmp.i.not, label %need_bw_sch.exit.cleanup_crit_edge, label %do.body

need_bw_sch.exit.cleanup_crit_edge:               ; preds = %need_bw_sch.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %need_bw_sch.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @drop_ep_quirk.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@drop_ep_quirk, %if.then6)) #7
          to label %do.end [label %if.then6], !srcloc !62

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hcd_priv.i, align 8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %27 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %speed.i, align 4
  %call.i49 = tail call i32 @usb_decode_interval(ptr noundef %ep, i32 noundef %28) #7
  %call.i49.frozen = freeze i32 %call.i49
  %div.i = udiv i32 %call.i49.frozen, 1000
  %29 = mul i32 %div.i, 1000
  %rem.i.decomposed = sub i32 %call.i49.frozen, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i50 = icmp eq i32 %rem.i.decomposed, 0
  %interval.0.i = select i1 %tobool.not.i50, i32 %div.i, i32 %call.i49
  %unit.0.i = select i1 %tobool.not.i50, ptr @.str.18, ptr @.str.17
  %call1.i = tail call ptr @usb_speed_string(i32 noundef %28) #7
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 2
  %30 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bEndpointAddress.i.i, align 1
  %32 = and i8 %31, 15
  %and.i.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %31)
  %tobool4.not.i = icmp sgt i8 %31, -1
  %cond.i = select i1 %tobool4.not.i, ptr @.str.21, ptr @.str.20
  %33 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bmAttributes.i.i, align 1
  %35 = and i8 %34, 3
  %and.i2.i = zext i8 %35 to i32
  %call6.i = tail call ptr @usb_ep_type_string(i32 noundef %and.i2.i) #7
  %36 = ptrtoint ptr %wMaxPacketSize.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %wMaxPacketSize.i.i, align 1
  %38 = and i16 %37, -249
  %39 = tail call i16 @llvm.bswap.i16(i16 %38) #7
  %and.i3.i = zext i16 %39 to i32
  %bInterval.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %ep, i32 0, i32 5
  %40 = ptrtoint ptr %bInterval.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %bInterval.i, align 1
  %conv.i = zext i8 %41 to i32
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @decode_ep.buf, i32 noundef 64, ptr noundef nonnull @.str.19, ptr noundef %call1.i, i32 noundef %and.i.i, ptr noundef nonnull %cond.i, ptr noundef %call6.i, i32 noundef %and.i3.i, i32 noundef %conv.i, i32 noundef %interval.0.i, ptr noundef nonnull %unit.0.i) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @drop_ep_quirk.__UNIQUE_ID_ddebug233, ptr noundef %26, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23, ptr noundef nonnull @decode_ep.buf) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %42 = ptrtoint ptr %ep to i32
  %mul.i.i = mul i32 %42, 1640531527
  %shr.i = lshr i32 %mul.i.i, 27
  %arrayidx = getelementptr %struct.xhci_hcd_mtk, ptr %3, i32 0, i32 4, i32 %shr.i
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %44, null
  %add.ptr = getelementptr i8, ptr %44, i32 -24
  %tobool14.not5861 = icmp eq ptr %add.ptr, null
  %tobool14.not58 = or i1 %tobool12.not, %tobool14.not5861
  br i1 %tobool14.not58, label %do.end.cleanup_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  br label %land.rhs

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %do.end.land.rhs_crit_edge
  %sch_ep.059 = phi ptr [ %add.ptr26, %for.inc.land.rhs_crit_edge ], [ %add.ptr, %do.end.land.rhs_crit_edge ]
  %ep17 = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep.059, i32 0, i32 11
  %45 = ptrtoint ptr %ep17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ep17, align 4
  %cmp = icmp eq ptr %46, %ep
  br i1 %cmp, label %if.then18, label %for.inc

if.then18:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @destroy_sch_ep(ptr noundef %udev, ptr noundef nonnull %sch_ep.059)
  br label %cleanup

for.inc:                                          ; preds = %land.rhs
  %hentry = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep.059, i32 0, i32 5
  %47 = ptrtoint ptr %hentry to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hentry, align 4
  %tobool22.not = icmp eq ptr %48, null
  %add.ptr26 = getelementptr i8, ptr %48, i32 -24
  %tobool14.not63 = icmp eq ptr %add.ptr26, null
  %tobool14.not = or i1 %tobool22.not, %tobool14.not63
  br i1 %tobool14.not, label %for.inc.cleanup_crit_edge, label %for.inc.land.rhs_crit_edge

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then18, %do.end.cleanup_crit_edge, %need_bw_sch.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %land.end.i.cleanup_crit_edge, %land.end.i.cleanup_crit_edge67
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @load_ep_bw(ptr nocapture noundef %sch_bw, ptr noundef %sch_ep, i1 noundef zeroext %loaded) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sch_tt = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 8
  %0 = ptrtoint ptr %sch_tt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sch_tt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %num_esit.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 1
  %2 = ptrtoint ptr %num_esit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_esit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43.not.i = icmp eq i32 %3, 0
  br i1 %cmp43.not.i, label %if.then.for.end13.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end13.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %offset.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 14
  %num_budget_microframes.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.044.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset.i, align 4
  %6 = ptrtoint ptr %sch_ep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sch_ep, align 4
  %mul.i = mul i32 %7, %i.044.i
  %add.i = add i32 %mul.i, %5
  %8 = ptrtoint ptr %num_budget_microframes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_budget_microframes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp240.not.i = icmp eq i32 %9, 0
  br i1 %cmp240.not.i, label %for.body.i.for.inc11.i_crit_edge, label %for.body.i.for.body3.i_crit_edge

for.body.i.for.body3.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body3.i

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body.i.for.body3.i_crit_edge
  %j.041.i = phi i32 [ %inc.i, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body.i.for.body3.i_crit_edge ]
  %add4.i = add i32 %add.i, %j.041.i
  %and.i = and i32 %add4.i, 63
  %arrayidx.i = getelementptr %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 19, i32 %j.041.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %arrayidx5.i = getelementptr [64 x i32], ptr %1, i32 0, i32 %and.i
  %12 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5.i, align 4
  %14 = sub i32 0, %11
  %add6.sink.p.i = select i1 %loaded, i32 %11, i32 %14
  %add6.sink.i = add i32 %13, %add6.sink.p.i
  store i32 %add6.sink.i, ptr %arrayidx5.i, align 4
  %inc.i = add nuw i32 %j.041.i, 1
  %15 = ptrtoint ptr %num_budget_microframes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_budget_microframes.i, align 4
  %cmp2.i = icmp ult i32 %inc.i, %16
  br i1 %cmp2.i, label %for.body3.i.for.body3.i_crit_edge, label %for.body3.i.for.inc11.i_crit_edge

for.body3.i.for.inc11.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i

for.inc11.i:                                      ; preds = %for.body3.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %i.044.i, 1
  %17 = ptrtoint ptr %num_esit.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_esit.i, align 4
  %cmp.i = icmp ult i32 %inc12.i, %18
  br i1 %cmp.i, label %for.inc11.i.for.body.i_crit_edge, label %for.inc11.i.for.end13.i_crit_edge

for.inc11.i.for.end13.i_crit_edge:                ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end13.i

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end13.i:                                      ; preds = %for.inc11.i.for.end13.i_crit_edge, %if.then.for.end13.i_crit_edge
  %tt_endpoint.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 6
  br i1 %loaded, label %if.then15.i, label %if.else16.i

if.then15.i:                                      ; preds = %for.end13.i
  %ep_list.i = getelementptr inbounds %struct.mu3h_sch_tt, ptr %1, i32 0, i32 1
  %prev.i.i = getelementptr inbounds %struct.mu3h_sch_tt, ptr %1, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %tt_endpoint.i, ptr noundef %20, ptr noundef %ep_list.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then15.i.if.end_crit_edge

if.then15.i.if.end_crit_edge:                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tt_endpoint.i, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %tt_endpoint.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ep_list.i, ptr %tt_endpoint.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %tt_endpoint.i, ptr %20, align 4
  br label %if.end

if.else16.i:                                      ; preds = %for.end13.i
  %call.i.i37.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tt_endpoint.i) #7
  br i1 %call.i.i37.i, label %if.end.i.i38.i, label %if.else16.i.list_del.exit.i_crit_edge

if.else16.i.list_del.exit.i_crit_edge:            ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i38.i:                                   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %tt_endpoint.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tt_endpoint.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i38.i, %if.else16.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %tt_endpoint.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %tt_endpoint.i, align 4
  %prev.i39.i = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %prev.i39.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i39.i, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i, %if.end.i.i.i, %if.then15.i.if.end_crit_edge, %entry.if.end_crit_edge
  %num_esit.i1 = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 1
  %33 = ptrtoint ptr %num_esit.i1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_esit.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp30.not.i = icmp eq i32 %34, 0
  br i1 %cmp30.not.i, label %if.end.update_bus_bw.exit_crit_edge, label %for.body.lr.ph.i4

if.end.update_bus_bw.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_bus_bw.exit

for.body.lr.ph.i4:                                ; preds = %if.end
  %offset.i2 = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 14
  %num_budget_microframes.i3 = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 2
  br label %for.body.i7

for.body.i7:                                      ; preds = %for.inc11.i19.for.body.i7_crit_edge, %for.body.lr.ph.i4
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i4 ], [ %inc12.i17, %for.inc11.i19.for.body.i7_crit_edge ]
  %35 = ptrtoint ptr %offset.i2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset.i2, align 4
  %37 = ptrtoint ptr %sch_ep to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sch_ep, align 4
  %mul.i5 = mul i32 %38, %i.031.i
  %add.i6 = add i32 %mul.i5, %36
  %39 = ptrtoint ptr %num_budget_microframes.i3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_budget_microframes.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp227.not.i = icmp eq i32 %40, 0
  br i1 %cmp227.not.i, label %for.body.i7.for.inc11.i19_crit_edge, label %for.body.i7.for.body3.i16_crit_edge

for.body.i7.for.body3.i16_crit_edge:              ; preds = %for.body.i7
  br label %for.body3.i16

for.body.i7.for.inc11.i19_crit_edge:              ; preds = %for.body.i7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i19

for.body3.i16:                                    ; preds = %for.body3.i16.for.body3.i16_crit_edge, %for.body.i7.for.body3.i16_crit_edge
  %j.028.i = phi i32 [ %inc.i14, %for.body3.i16.for.body3.i16_crit_edge ], [ 0, %for.body.i7.for.body3.i16_crit_edge ]
  %add4.i8 = add i32 %add.i6, %j.028.i
  %and.i9 = and i32 %add4.i8, 63
  %arrayidx.i10 = getelementptr %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 19, i32 %j.028.i
  %41 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i10, align 4
  %arrayidx5.i11 = getelementptr [64 x i32], ptr %sch_bw, i32 0, i32 %and.i9
  %43 = ptrtoint ptr %arrayidx5.i11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx5.i11, align 4
  %45 = sub i32 0, %42
  %add6.sink.p.i12 = select i1 %loaded, i32 %42, i32 %45
  %add6.sink.i13 = add i32 %44, %add6.sink.p.i12
  store i32 %add6.sink.i13, ptr %arrayidx5.i11, align 4
  %inc.i14 = add nuw i32 %j.028.i, 1
  %46 = ptrtoint ptr %num_budget_microframes.i3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_budget_microframes.i3, align 4
  %cmp2.i15 = icmp ult i32 %inc.i14, %47
  br i1 %cmp2.i15, label %for.body3.i16.for.body3.i16_crit_edge, label %for.body3.i16.for.inc11.i19_crit_edge

for.body3.i16.for.inc11.i19_crit_edge:            ; preds = %for.body3.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i19

for.body3.i16.for.body3.i16_crit_edge:            ; preds = %for.body3.i16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body3.i16

for.inc11.i19:                                    ; preds = %for.body3.i16.for.inc11.i19_crit_edge, %for.body.i7.for.inc11.i19_crit_edge
  %inc12.i17 = add nuw i32 %i.031.i, 1
  %48 = ptrtoint ptr %num_esit.i1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %num_esit.i1, align 4
  %cmp.i18 = icmp ult i32 %inc12.i17, %49
  br i1 %cmp.i18, label %for.inc11.i19.for.body.i7_crit_edge, label %for.inc11.i19.update_bus_bw.exit_crit_edge

for.inc11.i19.update_bus_bw.exit_crit_edge:       ; preds = %for.inc11.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %update_bus_bw.exit

for.inc11.i19.for.body.i7_crit_edge:              ; preds = %for.inc11.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i7

update_bus_bw.exit:                               ; preds = %for.inc11.i19.update_bus_bw.exit_crit_edge, %if.end.update_bus_bw.exit_crit_edge
  %frombool = zext i1 %loaded to i8
  %allocated = getelementptr inbounds %struct.mu3h_sch_ep_info, ptr %sch_ep, i32 0, i32 13
  %50 = ptrtoint ptr %allocated to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %frombool, ptr %allocated, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_decode_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_ep_type_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !49, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 756, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug234, !1, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 765, i32 4}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @xhci_mtk_check_bandwidth._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @xhci_mtk_check_bandwidth._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 777, i32 3}
!14 = !{ptr @xhci_mtk_check_bandwidth.__UNIQUE_ID_ddebug235, !13, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 795, i32 2}
!17 = !{ptr @xhci_mtk_reset_bandwidth.__UNIQUE_ID_ddebug236, !16, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 48, i32 10}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 50, i32 10}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 52, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 54, i32 10}
!26 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 56, i32 10}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 58, i32 10}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 712, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @add_ep_quirk.__UNIQUE_ID_ddebug232, !31, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!34 = !{ptr @decode_ep.buf, !35, !"buf", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 70, i32 14}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 77, i32 10}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 79, i32 10}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 83, i32 28}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 85, i32 31}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 85, i32 38}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 133, i32 3}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/xhci-mtk-sch.c", i32 737, i32 2}
!51 = !{ptr @drop_ep_quirk.__UNIQUE_ID_ddebug233, !50, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2148710552, i64 2148710557, i64 2148710570, i64 2148710614, i64 2148710648, i64 2148710669}
!63 = !{i8 0, i8 2}
!64 = !{!"branch_weights", i32 2000, i32 1}
!65 = !{i32 0, i32 33}
