; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-pci.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_overrides = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.69 }
%union.anon.69 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xhci_driver_data = type { i64, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.75, i32 }
%union.anon.75 = type { ptr }
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
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }

@__UNIQUE_ID_firmware351 = internal constant [37 x i8] c"xhci_pci.firmware=renesas_usb_fw.mem\00", section ".modinfo", align 1
@__initcall__kmod_xhci_pci__352_700_xhci_pci_init6 = internal global ptr @xhci_pci_init, section ".initcall6.init", align 4
@xhci_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @hcd_name, ptr @pci_ids, ptr @xhci_pci_probe, ptr @xhci_pci_remove, ptr null, ptr null, ptr @usb_hcd_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_hcd_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_xhci_pci_exit = internal global ptr @xhci_pci_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description353 = internal constant [53 x i8] c"xhci_pci.description=xHCI PCI Host Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [40 x i8] c"xhci_pci.file=drivers/usb/host/xhci-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [21 x i8] c"xhci_pci.license=GPL\00", section ".modinfo", align 1
@xhci_pci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@xhci_pci_overrides = internal constant %struct.xhci_driver_overrides { i32 0, ptr @xhci_pci_setup, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".init.rodata", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci_pci\00", [23 x i8] zeroinitializer }, align 32
@xhci_pci_setup.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xhci_pci_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/xhci-pci.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Got SBRN %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"QUIRK: Fresco Logic xHC revision %umust be suspended extra slowly\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"QUIRK: Fresco Logic revision %u has broken MSI implementation\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"QUIRK: Resetting on resume\00", [37 x i8] zeroinitializer }, align 32
@__tracepoint_xhci_dbg_quirks = external dso_local global %struct.tracepoint, align 4
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/host/xhci-trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_xhci_dbg_quirks.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@xhci_pci_reinit.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xhci_pci_reinit\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MWI active\0A\00", [20 x i8] zeroinitializer }, align 32
@xhci_pci_reinit.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Finished xhci_pci_reinit\0A\00", [38 x i8] zeroinitializer }, align 32
@hcd_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xhci_hcd\00", [23 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6418, i32 20, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @reneses_data to i32), i32 0 }, %struct.pci_device_id { i32 6418, i32 21, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @reneses_data to i32), i32 0 }, %struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787248, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@usb_hcd_pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@reneses_data = internal constant { %struct.xhci_driver_data, [16 x i8] } { %struct.xhci_driver_data { i64 68719476736, ptr @.str.14 }, [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"renesas_usb_fw.mem\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 5120]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 16, i64 5212, i64 5600, i64 5601, i64 17339]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 39985, i64 40113]
@__sancov_gen_cov_switch_values.17 = internal global [10 x i64] [i64 8, i64 16, i64 2728, i64 6608, i64 6824, i64 8885, i64 23208, i64 40239, i64 41263, i64 41903]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 16, i64 8885, i64 23208, i64 40239]
@__sancov_gen_cov_switch_values.19 = internal global [7 x i64] [i64 5, i64 16, i64 6608, i64 8885, i64 23208, i64 40239, i64 41263]
@__sancov_gen_cov_switch_values.20 = internal global [14 x i64] [i64 12, i64 16, i64 4408, i64 5557, i64 5558, i64 5569, i64 5588, i64 5595, i64 5609, i64 5612, i64 5616, i64 17950, i64 35347, i64 39443]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 16, i64 4674, i64 8514, i64 12866]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 16, i64 5348, i64 6013]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 17337, i64 17339]
@__sancov_gen_cov_switch_values.24 = internal global [10 x i64] [i64 8, i64 16, i64 5590, i64 5591, i64 5658, i64 5659, i64 5660, i64 5661, i64 5662, i64 5663]
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"xhci_pci_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 674, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 698, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 388, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 131, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 138, i32 5 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 150, i32 5 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 345, i32 5 }
@___asan_gen_.56 = private unnamed_addr constant [33 x i8] c"../drivers/usb/host/xhci-trace.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 48, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 108, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 104, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 106, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 83, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 651, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [13 x i8] c"reneses_data\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 645, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [31 x i8] c"../drivers/usb/host/xhci-pci.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 647, i32 14 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_firmware351, ptr @__UNIQUE_ID_license355, ptr @__exitcall_xhci_pci_exit, ptr @__initcall__kmod_xhci_pci__352_700_xhci_pci_init6, ptr @xhci_pci_exit, ptr @xhci_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @hcd_name, ptr @pci_ids, ptr @reneses_data, ptr @.str.14], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reneses_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_pci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @xhci_init_driver(ptr noundef nonnull @xhci_pci_hc_driver, ptr noundef nonnull @xhci_pci_overrides) #7
  store ptr @xhci_pci_suspend, ptr getelementptr inbounds (%struct.hc_driver, ptr @xhci_pci_hc_driver, i32 0, i32 7), align 4
  store ptr @xhci_pci_resume, ptr getelementptr inbounds (%struct.hc_driver, ptr @xhci_pci_hc_driver, i32 0, i32 8), align 4
  store ptr @xhci_pci_shutdown, ptr getelementptr inbounds (%struct.hc_driver, ptr @xhci_pci_hc_driver, i32 0, i32 10), align 4
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @xhci_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xhci_pci_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pci_unregister_driver(ptr noundef nonnull @xhci_pci_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_pci_suspend(ptr noundef %hcd, i1 noundef zeroext %do_wakeup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
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
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %2 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %quirks, align 8
  %and = and i64 %3, 2199023271936
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %hcd_to_xhci.exit.if.end_crit_edge, label %if.then

hcd_to_xhci.exit.if.end_crit_edge:                ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hcd, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 -136
  tail call void @pci_d3cold_disable(ptr noundef %add.ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %hcd_to_xhci.exit.if.end_crit_edge
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %quirks, align 8
  %and2 = and i64 %7, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then4.xhci_pme_quirk.exit_crit_edge

if.then4.xhci_pme_quirk.exit_crit_edge:           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_pme_quirk.exit

if.else.i.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %8 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_pme_quirk.exit

xhci_pme_quirk.exit:                              ; preds = %if.else.i.i, %if.then4.xhci_pme_quirk.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %9, %if.else.i.i ], [ %hcd, %if.then4.xhci_pme_quirk.exit_crit_edge ]
  %cap_regs.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %cap_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cap_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %11, i32 32932
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %13 = or i32 %12, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #7, !srcloc !68
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  br label %if.end5

if.end5:                                          ; preds = %xhci_pme_quirk.exit, %if.end.if.end5_crit_edge
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %quirks, align 8
  %and7 = and i64 %16, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %hcd, i1 noundef zeroext true)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  %17 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %quirks, align 8
  %and12 = and i64 %18, 274877906944
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool13.not = icmp eq i64 %and12, 0
  br i1 %tobool13.not, label %if.end10.if.end15_crit_edge, label %if.then14

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %20, i32 49452
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  %22 = and i32 %21, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %24, i32 49452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %22) #7, !srcloc !68
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end10.if.end15_crit_edge
  %call17 = tail call i32 @xhci_suspend(ptr noundef %hcd_priv.i, i1 noundef zeroext %do_wakeup) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.if.end23_crit_edge, label %land.lhs.true

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end15
  %25 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %quirks, align 8
  %and20 = and i64 %26, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end23_crit_edge, label %if.then22

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %hcd, i1 noundef zeroext false)
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_pci_resume(ptr noundef %hcd, i1 noundef zeroext %hibernated) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
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
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  %reset = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 10, i32 0, i32 3
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  %call2 = tail call i32 @reset_control_reset(ptr noundef %5) #7
  %vendor = getelementptr i8, ptr %3, i32 -104
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %7)
  %cmp = icmp eq i16 %7, -32634
  br i1 %cmp, label %if.then, label %hcd_to_xhci.exit.if.end_crit_edge

hcd_to_xhci.exit.if.end_crit_edge:                ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  tail call void @usb_enable_intel_xhci_ports(ptr noundef %add.ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %hcd_to_xhci.exit.if.end_crit_edge
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %quirks, align 8
  %and = and i64 %9, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %hcd, i1 noundef zeroext false)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %quirks, align 8
  %and7 = and i64 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool8.not = icmp eq i64 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  %call.i.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then9.xhci_pme_quirk.exit_crit_edge

if.then9.xhci_pme_quirk.exit_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %xhci_pme_quirk.exit

if.else.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 25
  %12 = ptrtoint ptr %primary_hcd1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %primary_hcd1.i.i, align 8
  br label %xhci_pme_quirk.exit

xhci_pme_quirk.exit:                              ; preds = %if.else.i.i, %if.then9.xhci_pme_quirk.exit_crit_edge
  %primary_hcd.0.i.i = phi ptr [ %13, %if.else.i.i ], [ %hcd, %if.then9.xhci_pme_quirk.exit_crit_edge ]
  %cap_regs.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i.i, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %cap_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cap_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 32932
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %17 = or i32 %16, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #7, !srcloc !68
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  br label %if.end10

if.end10:                                         ; preds = %xhci_pme_quirk.exit, %if.end5.if.end10_crit_edge
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %call12 = tail call i32 @xhci_resume(ptr noundef %hcd_priv.i, i1 noundef zeroext %hibernated) #7
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xhci_pci_shutdown(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
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
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  tail call void @xhci_shutdown(ptr noundef %hcd) #7
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %quirks, align 8
  %and = and i64 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %hcd_to_xhci.exit.if.end_crit_edge, label %if.then

hcd_to_xhci.exit.if.end_crit_edge:                ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %3, i32 -136
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %hcd_to_xhci.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_pci_setup(ptr noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -136
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
  %2 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %3, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %sbrn = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 5
  %4 = ptrtoint ptr %sbrn to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sbrn, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %hcd_to_xhci.exit.if.end_crit_edge

hcd_to_xhci.exit.if.end_crit_edge:                ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 96, ptr noundef %sbrn) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %hcd_to_xhci.exit.if.end_crit_edge
  %imod_interval = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %6 = ptrtoint ptr %imod_interval to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 40000, ptr %imod_interval, align 4
  %call4 = tail call i32 @xhci_gen_setup(ptr noundef %hcd, ptr noundef nonnull @xhci_pci_quirks) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %hcd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_pci_setup.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_pci_setup, %if.then20)) #7
          to label %do.end [label %if.then20], !srcloc !72

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hcd_priv.i, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %11 = ptrtoint ptr %sbrn to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sbrn, align 4
  %conv = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_pci_setup.__UNIQUE_ID_ddebug350, ptr noundef %10, ptr noundef nonnull @.str.3, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %call.i41 = tail call i32 @pci_set_mwi(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %do.body.i, label %do.end.do.body8.i_crit_edge

do.end.do.body8.i_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8.i

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_pci_reinit.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_pci_setup, %if.then5.i)) #7
          to label %do.body8.i [label %if.then5.i], !srcloc !72

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hcd_priv.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_pci_reinit.__UNIQUE_ID_ddebug348, ptr noundef %16, ptr noundef nonnull @.str.12) #7
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.then5.i, %do.body.i, %do.end.do.body8.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xhci_pci_reinit.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xhci_pci_setup, %if.then20.i)) #7
          to label %cleanup [label %if.then20.i], !srcloc !72

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %hcd_priv.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hcd_priv.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xhci_pci_reinit.__UNIQUE_ID_ddebug349, ptr noundef %20, ptr noundef nonnull @.str.13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20.i, %do.body8.i, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_gen_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xhci_pci_quirks(ptr noundef %dev, ptr noundef %xhci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -60
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %id_table = getelementptr inbounds %struct.pci_driver, ptr %spec.select.i, i32 0, i32 2
  %2 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table, align 4
  %call2 = tail call ptr @pci_match_id(ptr noundef %3, ptr noundef %add.ptr) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %driver_data3 = getelementptr inbounds %struct.pci_device_id, ptr %call2, i32 0, i32 6
  %4 = ptrtoint ptr %driver_data3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = inttoptr i32 %5 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %6, align 8
  %quirks6 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %9 = ptrtoint ptr %quirks6 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %quirks6, align 8
  %or = or i64 %10, %8
  store i64 %or, ptr %quirks6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %vendor = getelementptr i8, ptr %dev, i32 -104
  %11 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7027, i16 %12)
  %cmp = icmp eq i16 %12, 7027
  br i1 %cmp, label %land.lhs.true8, label %if.end.if.end84thread-pre-split_crit_edge

if.end.if.end84thread-pre-split_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84thread-pre-split

land.lhs.true8:                                   ; preds = %if.end
  %device = getelementptr i8, ptr %dev, i32 -102
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i16 %14, label %land.lhs.true8.land.lhs.true63_crit_edge [
    i16 4096, label %land.lhs.true21
    i16 5120, label %land.lhs.true8.if.end58_crit_edge
  ]

land.lhs.true8.if.end58_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true8.land.lhs.true63_crit_edge:         ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true63

land.lhs.true21:                                  ; preds = %land.lhs.true8
  %revision = getelementptr i8, ptr %dev, i32 -92
  %16 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp23 = icmp eq i8 %17, 0
  br i1 %cmp23, label %if.end28, label %land.lhs.true21.land.lhs.true33_crit_edge

land.lhs.true21.land.lhs.true33_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true33

if.end28:                                         ; preds = %land.lhs.true21
  %quirks26 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %18 = ptrtoint ptr %quirks26 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %quirks26, align 8
  %or27 = or i64 %19, 2
  store i64 %or27, ptr %quirks26, align 8
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.4) #7
  %20 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %20)
  %.pr981 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %.pr981)
  %cmp31 = icmp eq i16 %.pr981, 4096
  br i1 %cmp31, label %if.end28.land.lhs.true33_crit_edge, label %if.end28.if.end58_crit_edge

if.end28.if.end58_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.end28.land.lhs.true33_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end28.land.lhs.true33_crit_edge, %land.lhs.true21.land.lhs.true33_crit_edge
  %revision34 = getelementptr i8, ptr %dev, i32 -92
  %21 = ptrtoint ptr %revision34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %revision34, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %22)
  %cmp36 = icmp eq i8 %22, 4
  br i1 %cmp36, label %if.then38, label %land.lhs.true33.if.end43_crit_edge

land.lhs.true33.if.end43_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then38:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  %quirks39 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %23 = ptrtoint ptr %quirks39 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %quirks39, align 8
  %or40 = or i64 %24, 131072
  store i64 %or40, ptr %quirks39, align 8
  %25 = ptrtoint ptr %revision34 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision34, align 4
  %conv42 = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.5, i32 noundef %conv42) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %land.lhs.true33.if.end43_crit_edge
  %27 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %27)
  %.pr = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %.pr)
  %cmp46 = icmp eq i16 %.pr, 4096
  br i1 %cmp46, label %if.then48, label %if.end43.if.end58_crit_edge

if.end43.if.end58_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then48:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %quirks49 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %28 = ptrtoint ptr %quirks49 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %quirks49, align 8
  %or50 = or i64 %29, 524288
  store i64 %or50, ptr %quirks49, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %if.end43.if.end58_crit_edge, %if.end28.if.end58_crit_edge, %land.lhs.true8.if.end58_crit_edge
  %quirks52 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %30 = ptrtoint ptr %quirks52 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %quirks52, align 8
  %or53 = or i64 %31, 64
  store i64 %or53, ptr %quirks52, align 8
  %revision54 = getelementptr i8, ptr %dev, i32 -92
  %32 = ptrtoint ptr %revision54 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %revision54, align 4
  %conv55 = zext i8 %33 to i32
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.6, i32 noundef %conv55) #7
  %34 = ptrtoint ptr %quirks52 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %quirks52, align 8
  %or57 = or i64 %35, 1024
  store i64 %or57, ptr %quirks52, align 8
  %36 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %36)
  %.pr884 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7027, i16 %.pr884)
  %cmp61 = icmp eq i16 %.pr884, 7027
  br i1 %cmp61, label %land.lhs.true63thread-pre-split, label %if.end58.if.end84thread-pre-split_crit_edge

if.end58.if.end84thread-pre-split_crit_edge:      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84thread-pre-split

land.lhs.true63thread-pre-split:                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %37)
  %.pr985 = load i16, ptr %device, align 2
  br label %land.lhs.true63

land.lhs.true63:                                  ; preds = %land.lhs.true63thread-pre-split, %land.lhs.true8.land.lhs.true63_crit_edge
  %38 = phi i16 [ %.pr985, %land.lhs.true63thread-pre-split ], [ %14, %land.lhs.true8.land.lhs.true63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4105, i16 %38)
  %cmp66 = icmp eq i16 %38, 4105
  br i1 %cmp66, label %if.then68, label %land.lhs.true63.if.end71_crit_edge

land.lhs.true63.if.end71_crit_edge:               ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then68:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #9
  %quirks69 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %39 = ptrtoint ptr %quirks69 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %quirks69, align 8
  %or70 = or i64 %40, 524288
  store i64 %or70, ptr %quirks69, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %land.lhs.true63.if.end71_crit_edge
  %41 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %41)
  %.pr888 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 7027, i16 %.pr888)
  %cmp74 = icmp eq i16 %.pr888, 7027
  br i1 %cmp74, label %land.lhs.true76, label %if.end71.if.end84_crit_edge

if.end71.if.end84_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

land.lhs.true76:                                  ; preds = %if.end71
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %43)
  %cmp79 = icmp eq i16 %43, 4352
  br i1 %cmp79, label %if.then81, label %land.lhs.true76.if.end84thread-pre-split_crit_edge

land.lhs.true76.if.end84thread-pre-split_crit_edge: ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84thread-pre-split

if.then81:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #9
  %quirks82 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %44 = ptrtoint ptr %quirks82 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %quirks82, align 8
  %or83 = or i64 %45, 1024
  store i64 %or83, ptr %quirks82, align 8
  br label %if.end84thread-pre-split

if.end84thread-pre-split:                         ; preds = %if.then81, %land.lhs.true76.if.end84thread-pre-split_crit_edge, %if.end58.if.end84thread-pre-split_crit_edge, %if.end.if.end84thread-pre-split_crit_edge
  %46 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %46)
  %.pr890 = load i16, ptr %vendor, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.end84thread-pre-split, %if.end71.if.end84_crit_edge
  %47 = phi i16 [ %.pr890, %if.end84thread-pre-split ], [ %.pr888, %if.end71.if.end84_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4147, i16 %47)
  %cmp87 = icmp eq i16 %47, 4147
  br i1 %cmp87, label %if.then89, label %if.end84.if.end92_crit_edge

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %quirks90 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %48 = ptrtoint ptr %quirks90 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %quirks90, align 8
  %or91 = or i64 %49, 4
  store i64 %or91, ptr %quirks90, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end84.if.end92_crit_edge
  %50 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %51)
  %cmp95 = icmp eq i16 %51, 4130
  br i1 %cmp95, label %land.lhs.true97, label %if.end92.if.end225_crit_edge

if.end92.if.end225_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

land.lhs.true97:                                  ; preds = %if.end92
  %hci_version = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 14
  %52 = ptrtoint ptr %hci_version to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hci_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 150, i16 %53)
  %cmp99 = icmp eq i16 %53, 150
  br i1 %cmp99, label %if.then101, label %land.lhs.true97.if.end104_crit_edge

land.lhs.true97.if.end104_crit_edge:              ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then101:                                       ; preds = %land.lhs.true97
  call void @__sanitizer_cov_trace_pc() #9
  %quirks102 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %54 = ptrtoint ptr %quirks102 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %quirks102, align 8
  %or103 = or i64 %55, 512
  store i64 %or103, ptr %quirks102, align 8
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %land.lhs.true97.if.end104_crit_edge
  %56 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %56)
  %.pr891 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %.pr891)
  %cmp107 = icmp eq i16 %.pr891, 4130
  br i1 %cmp107, label %land.lhs.true109, label %if.end104.if.end225_crit_edge

if.end104.if.end225_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

land.lhs.true109:                                 ; preds = %if.end104
  %call110 = tail call zeroext i1 @usb_amd_quirk_pll_check() #7
  br i1 %call110, label %if.then112, label %land.lhs.true109.if.end115_crit_edge

land.lhs.true109.if.end115_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115

if.then112:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  %quirks113 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %57 = ptrtoint ptr %quirks113 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %quirks113, align 8
  %or114 = or i64 %58, 8
  store i64 %or114, ptr %quirks113, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.then112, %land.lhs.true109.if.end115_crit_edge
  %59 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %59)
  %.pr893 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %.pr893)
  %cmp118 = icmp eq i16 %.pr893, 4130
  br i1 %cmp118, label %land.lhs.true120, label %if.end115.if.end225_crit_edge

if.end115.if.end225_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

land.lhs.true120:                                 ; preds = %if.end115
  %device121 = getelementptr i8, ptr %dev, i32 -102
  %60 = ptrtoint ptr %device121 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %device121, align 2
  %62 = zext i16 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %61, label %land.lhs.true120.land.lhs.true148_crit_edge [
    i16 5212, label %land.lhs.true120.if.end143_crit_edge
    i16 5600, label %land.lhs.true120.if.end143_crit_edge993
    i16 5601, label %land.lhs.true120.if.end143_crit_edge994
    i16 17339, label %land.lhs.true120.if.end143_crit_edge995
  ]

land.lhs.true120.if.end143_crit_edge995:          ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

land.lhs.true120.if.end143_crit_edge994:          ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

land.lhs.true120.if.end143_crit_edge993:          ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

land.lhs.true120.if.end143_crit_edge:             ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

land.lhs.true120.land.lhs.true148_crit_edge:      ; preds = %land.lhs.true120
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true148

if.end143:                                        ; preds = %land.lhs.true120.if.end143_crit_edge, %land.lhs.true120.if.end143_crit_edge993, %land.lhs.true120.if.end143_crit_edge994, %land.lhs.true120.if.end143_crit_edge995
  %quirks141 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %63 = ptrtoint ptr %quirks141 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %quirks141, align 8
  %or142 = or i64 %64, 1073741824
  store i64 %or142, ptr %quirks141, align 8
  %65 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %65)
  %.pr895.pr = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %.pr895.pr)
  %cmp146 = icmp eq i16 %.pr895.pr, 4130
  br i1 %cmp146, label %if.end143.land.lhs.true148_crit_edge, label %if.end143.if.end225_crit_edge

if.end143.if.end225_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.end143.land.lhs.true148_crit_edge:             ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true148

land.lhs.true148:                                 ; preds = %if.end143.land.lhs.true148_crit_edge, %land.lhs.true120.land.lhs.true148_crit_edge
  %66 = ptrtoint ptr %device121 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %device121, align 2
  %68 = and i16 %67, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5600, i16 %68)
  %switch = icmp eq i16 %68, 5600
  br i1 %switch, label %if.then158, label %land.lhs.true148.if.end161_crit_edge

land.lhs.true148.if.end161_crit_edge:             ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161

if.then158:                                       ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #9
  %quirks159 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %69 = ptrtoint ptr %quirks159 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %quirks159, align 8
  %or160 = or i64 %70, 34359738368
  store i64 %or160, ptr %quirks159, align 8
  br label %if.end161

if.end161:                                        ; preds = %if.then158, %land.lhs.true148.if.end161_crit_edge
  %71 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %71)
  %.pr899 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %.pr899)
  %cmp164 = icmp eq i16 %.pr899, 4130
  br i1 %cmp164, label %land.lhs.true166, label %if.end161.if.end225_crit_edge

if.end161.if.end225_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

land.lhs.true166:                                 ; preds = %if.end161
  %72 = ptrtoint ptr %device121 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %device121, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5605, i16 %73)
  %cmp169 = icmp eq i16 %73, 5605
  br i1 %cmp169, label %if.end176, label %land.lhs.true166.if.end184_crit_edge

land.lhs.true166.if.end184_crit_edge:             ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.end176:                                        ; preds = %land.lhs.true166
  %quirks172 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %74 = ptrtoint ptr %quirks172 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %quirks172, align 8
  %or175 = or i64 %75, 274877907072
  store i64 %or175, ptr %quirks172, align 8
  %76 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %76)
  %.pr901.pr.pr.pr = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %.pr901.pr.pr.pr)
  %cmp179 = icmp eq i16 %.pr901.pr.pr.pr, 4130
  br i1 %cmp179, label %if.end176.if.end184_crit_edge, label %if.end176.if.end225_crit_edge

if.end176.if.end225_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

if.end176.if.end184_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

if.end184:                                        ; preds = %if.end176.if.end184_crit_edge, %land.lhs.true166.if.end184_crit_edge
  %quirks182 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %77 = ptrtoint ptr %quirks182 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %quirks182, align 8
  %or183 = or i64 %78, 1024
  store i64 %or183, ptr %quirks182, align 8
  %79 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %79)
  %.pr903 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %.pr903)
  %cmp187 = icmp eq i16 %.pr903, 4130
  br i1 %cmp187, label %land.lhs.true189, label %if.end184.if.end225_crit_edge

if.end184.if.end225_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

land.lhs.true189:                                 ; preds = %if.end184
  %80 = ptrtoint ptr %device121 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %device121, align 2
  %.off881 = add i16 %81, -17337
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %.off881)
  %switch882 = icmp ult i16 %.off881, 4
  br i1 %switch882, label %if.then209, label %land.lhs.true189.if.end212_crit_edge

land.lhs.true189.if.end212_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

if.then209:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %quirks182 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %quirks182, align 8
  %or211 = or i64 %83, 134217728
  store i64 %or211, ptr %quirks182, align 8
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %land.lhs.true189.if.end212_crit_edge
  %84 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %84)
  %.pr905.pr.pr = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %.pr905.pr.pr)
  %cmp215 = icmp eq i16 %.pr905.pr.pr, 4130
  br i1 %cmp215, label %land.lhs.true217, label %if.end212.if.end225_crit_edge

if.end212.if.end225_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225

land.lhs.true217:                                 ; preds = %if.end212
  %85 = ptrtoint ptr %device121 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %device121, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 5689, i16 %86)
  %cmp220 = icmp eq i16 %86, 5689
  br i1 %cmp220, label %if.then222, label %land.lhs.true217.if.end225thread-pre-split_crit_edge

land.lhs.true217.if.end225thread-pre-split_crit_edge: ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end225thread-pre-split

if.then222:                                       ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %quirks182 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %quirks182, align 8
  %or224 = or i64 %88, 2199023255552
  store i64 %or224, ptr %quirks182, align 8
  br label %if.end225thread-pre-split

if.end225thread-pre-split:                        ; preds = %if.then222, %land.lhs.true217.if.end225thread-pre-split_crit_edge
  %89 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %89)
  %.pr907 = load i16, ptr %vendor, align 8
  br label %if.end225

if.end225:                                        ; preds = %if.end225thread-pre-split, %if.end212.if.end225_crit_edge, %if.end184.if.end225_crit_edge, %if.end176.if.end225_crit_edge, %if.end161.if.end225_crit_edge, %if.end143.if.end225_crit_edge, %if.end115.if.end225_crit_edge, %if.end104.if.end225_crit_edge, %if.end92.if.end225_crit_edge
  %90 = phi i16 [ %.pr907, %if.end225thread-pre-split ], [ %.pr905.pr.pr, %if.end212.if.end225_crit_edge ], [ %.pr903, %if.end184.if.end225_crit_edge ], [ %.pr901.pr.pr.pr, %if.end176.if.end225_crit_edge ], [ %.pr899, %if.end161.if.end225_crit_edge ], [ %51, %if.end92.if.end225_crit_edge ], [ %.pr891, %if.end104.if.end225_crit_edge ], [ %.pr893, %if.end115.if.end225_crit_edge ], [ %.pr895.pr, %if.end143.if.end225_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %90)
  %cmp228 = icmp eq i16 %90, -32634
  br i1 %cmp228, label %if.then230, label %if.end225.if.end237_crit_edge

if.end225.if.end237_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end237

if.then230:                                       ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #9
  %quirks231 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %91 = ptrtoint ptr %quirks231 to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %quirks231, align 8
  %or236 = or i64 %92, 38912
  store i64 %or236, ptr %quirks231, align 8
  br label %if.end237

if.end237:                                        ; preds = %if.then230, %if.end225.if.end237_crit_edge
  %93 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %94)
  %cmp240 = icmp eq i16 %94, -32634
  br i1 %cmp240, label %land.lhs.true242, label %if.end237.if.end459thread-pre-split_crit_edge

if.end237.if.end459thread-pre-split_crit_edge:    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end459thread-pre-split

land.lhs.true242:                                 ; preds = %if.end237
  %device243 = getelementptr i8, ptr %dev, i32 -102
  %95 = ptrtoint ptr %device243 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %device243, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7729, i16 %96)
  %cmp245 = icmp eq i16 %96, 7729
  br i1 %cmp245, label %if.then247, label %land.lhs.true242.if.end254_crit_edge

land.lhs.true242.if.end254_crit_edge:             ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

if.then247:                                       ; preds = %land.lhs.true242
  call void @__sanitizer_cov_trace_pc() #9
  %quirks248 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %97 = ptrtoint ptr %quirks248 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %quirks248, align 8
  %limit_active_eps = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 53
  %99 = ptrtoint ptr %limit_active_eps to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 64, ptr %limit_active_eps, align 4
  %or253 = or i64 %98, 8480
  store i64 %or253, ptr %quirks248, align 8
  br label %if.end254

if.end254:                                        ; preds = %if.then247, %land.lhs.true242.if.end254_crit_edge
  %100 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %100)
  %.pr908 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %.pr908)
  %cmp257 = icmp eq i16 %.pr908, -32634
  br i1 %cmp257, label %land.lhs.true259, label %if.end254.if.end459thread-pre-split_crit_edge

if.end254.if.end459thread-pre-split_crit_edge:    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end459thread-pre-split

land.lhs.true259:                                 ; preds = %if.end254
  %101 = ptrtoint ptr %device243 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %device243, align 2
  %103 = zext i16 %102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %102, label %land.lhs.true259.land.lhs.true279_crit_edge [
    i16 -25551, label %land.lhs.true259.if.end274_crit_edge
    i16 -25423, label %land.lhs.true259.if.end274_crit_edge996
  ]

land.lhs.true259.if.end274_crit_edge996:          ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274

land.lhs.true259.if.end274_crit_edge:             ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end274

land.lhs.true259.land.lhs.true279_crit_edge:      ; preds = %land.lhs.true259
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true279

if.end274:                                        ; preds = %land.lhs.true259.if.end274_crit_edge, %land.lhs.true259.if.end274_crit_edge996
  %quirks270 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %104 = ptrtoint ptr %quirks270 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %quirks270, align 8
  %or273 = or i64 %105, 270336
  store i64 %or273, ptr %quirks270, align 8
  %106 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %106)
  %.pr910 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %.pr910)
  %cmp277 = icmp eq i16 %.pr910, -32634
  br i1 %cmp277, label %land.lhs.true279thread-pre-split, label %if.end274.if.end459thread-pre-split_crit_edge

if.end274.if.end459thread-pre-split_crit_edge:    ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end459thread-pre-split

land.lhs.true279thread-pre-split:                 ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #9
  %107 = ptrtoint ptr %device243 to i32
  call void @__asan_load2_noabort(i32 %107)
  %.pr988 = load i16, ptr %device243, align 2
  br label %land.lhs.true279

land.lhs.true279:                                 ; preds = %land.lhs.true279thread-pre-split, %land.lhs.true259.land.lhs.true279_crit_edge
  %108 = phi i16 [ %.pr988, %land.lhs.true279thread-pre-split ], [ %102, %land.lhs.true259.land.lhs.true279_crit_edge ]
  %109 = zext i16 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %108, label %land.lhs.true279.if.end322_crit_edge [
    i16 -25297, label %land.lhs.true279.if.then319_crit_edge
    i16 -24273, label %land.lhs.true279.if.then319_crit_edge997
    i16 8885, label %land.lhs.true279.if.then319_crit_edge998
    i16 2728, label %land.lhs.true279.if.then319_crit_edge999
    i16 6824, label %land.lhs.true279.if.then319_crit_edge1000
    i16 23208, label %land.lhs.true279.if.then319_crit_edge1001
    i16 6608, label %land.lhs.true279.if.then319_crit_edge1002
    i16 -23633, label %land.lhs.true279.if.then319_crit_edge1003
  ]

land.lhs.true279.if.then319_crit_edge1003:        ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.then319_crit_edge1002:        ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.then319_crit_edge1001:        ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.then319_crit_edge1000:        ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.then319_crit_edge999:         ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.then319_crit_edge998:         ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.then319_crit_edge997:         ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.then319_crit_edge:            ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then319

land.lhs.true279.if.end322_crit_edge:             ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end322

if.then319:                                       ; preds = %land.lhs.true279.if.then319_crit_edge, %land.lhs.true279.if.then319_crit_edge997, %land.lhs.true279.if.then319_crit_edge998, %land.lhs.true279.if.then319_crit_edge999, %land.lhs.true279.if.then319_crit_edge1000, %land.lhs.true279.if.then319_crit_edge1001, %land.lhs.true279.if.then319_crit_edge1002, %land.lhs.true279.if.then319_crit_edge1003
  %quirks320 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %110 = ptrtoint ptr %quirks320 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %quirks320, align 8
  %or321 = or i64 %111, 1048576
  store i64 %or321, ptr %quirks320, align 8
  br label %if.end322

if.end322:                                        ; preds = %if.then319, %land.lhs.true279.if.end322_crit_edge
  %112 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %112)
  %.pr914.pr = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %.pr914.pr)
  %cmp325 = icmp eq i16 %.pr914.pr, -32634
  br i1 %cmp325, label %land.lhs.true327, label %if.end322.if.end459thread-pre-split_crit_edge

if.end322.if.end459thread-pre-split_crit_edge:    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end459thread-pre-split

land.lhs.true327:                                 ; preds = %if.end322
  %113 = ptrtoint ptr %device243 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %device243, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8885, i16 %114)
  %cmp330 = icmp eq i16 %114, 8885
  br i1 %cmp330, label %if.end335, label %land.lhs.true327.land.lhs.true340_crit_edge

land.lhs.true327.land.lhs.true340_crit_edge:      ; preds = %land.lhs.true327
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true340

if.end335:                                        ; preds = %land.lhs.true327
  %quirks333 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %115 = ptrtoint ptr %quirks333 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %quirks333, align 8
  %or334 = or i64 %116, 4194304
  store i64 %or334, ptr %quirks333, align 8
  %117 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %117)
  %.pr916.pr = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %.pr916.pr)
  %cmp338 = icmp eq i16 %.pr916.pr, -32634
  br i1 %cmp338, label %land.lhs.true340thread-pre-split, label %if.end335.if.end459thread-pre-split_crit_edge

if.end335.if.end459thread-pre-split_crit_edge:    ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end459thread-pre-split

land.lhs.true340thread-pre-split:                 ; preds = %if.end335
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %device243 to i32
  call void @__asan_load2_noabort(i32 %118)
  %.pr991 = load i16, ptr %device243, align 2
  br label %land.lhs.true340

land.lhs.true340:                                 ; preds = %land.lhs.true340thread-pre-split, %land.lhs.true327.land.lhs.true340_crit_edge
  %119 = phi i16 [ %.pr991, %land.lhs.true340thread-pre-split ], [ %114, %land.lhs.true327.land.lhs.true340_crit_edge ]
  %120 = zext i16 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %119, label %land.lhs.true340.land.lhs.true363_crit_edge [
    i16 8885, label %land.lhs.true340.if.end358_crit_edge
    i16 -25297, label %land.lhs.true340.if.end358_crit_edge1004
    i16 23208, label %land.lhs.true340.if.end358_crit_edge1005
  ]

land.lhs.true340.if.end358_crit_edge1005:         ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end358

land.lhs.true340.if.end358_crit_edge1004:         ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end358

land.lhs.true340.if.end358_crit_edge:             ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end358

land.lhs.true340.land.lhs.true363_crit_edge:      ; preds = %land.lhs.true340
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true363

if.end358:                                        ; preds = %land.lhs.true340.if.end358_crit_edge, %land.lhs.true340.if.end358_crit_edge1004, %land.lhs.true340.if.end358_crit_edge1005
  %quirks356 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %121 = ptrtoint ptr %quirks356 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %quirks356, align 8
  %or357 = or i64 %122, 2147483648
  store i64 %or357, ptr %quirks356, align 8
  %123 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %123)
  %.pr918.pr.pr = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %.pr918.pr.pr)
  %cmp361 = icmp eq i16 %.pr918.pr.pr, -32634
  br i1 %cmp361, label %if.end358.land.lhs.true363_crit_edge, label %if.end358.if.end459thread-pre-split_crit_edge

if.end358.if.end459thread-pre-split_crit_edge:    ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end459thread-pre-split

if.end358.land.lhs.true363_crit_edge:             ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true363

land.lhs.true363:                                 ; preds = %if.end358.land.lhs.true363_crit_edge, %land.lhs.true340.land.lhs.true363_crit_edge
  %124 = ptrtoint ptr %device243 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %device243, align 2
  %126 = zext i16 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %125, label %land.lhs.true363.if.end391_crit_edge [
    i16 8885, label %land.lhs.true363.if.then388_crit_edge
    i16 -25297, label %land.lhs.true363.if.then388_crit_edge1006
    i16 -24273, label %land.lhs.true363.if.then388_crit_edge1007
    i16 23208, label %land.lhs.true363.if.then388_crit_edge1008
    i16 6608, label %land.lhs.true363.if.then388_crit_edge1009
  ]

land.lhs.true363.if.then388_crit_edge1009:        ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then388

land.lhs.true363.if.then388_crit_edge1008:        ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then388

land.lhs.true363.if.then388_crit_edge1007:        ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then388

land.lhs.true363.if.then388_crit_edge1006:        ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then388

land.lhs.true363.if.then388_crit_edge:            ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then388

land.lhs.true363.if.end391_crit_edge:             ; preds = %land.lhs.true363
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end391

if.then388:                                       ; preds = %land.lhs.true363.if.then388_crit_edge, %land.lhs.true363.if.then388_crit_edge1006, %land.lhs.true363.if.then388_crit_edge1007, %land.lhs.true363.if.then388_crit_edge1008, %land.lhs.true363.if.then388_crit_edge1009
  %quirks389 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %127 = ptrtoint ptr %quirks389 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %quirks389, align 8
  %or390 = or i64 %128, 16777216
  store i64 %or390, ptr %quirks389, align 8
  br label %if.end391

if.end391:                                        ; preds = %if.then388, %land.lhs.true363.if.end391_crit_edge
  %129 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %129)
  %.pr922 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %.pr922)
  %cmp394 = icmp eq i16 %.pr922, -32634
  br i1 %cmp394, label %land.lhs.true396, label %if.end391.if.end459_crit_edge

if.end391.if.end459_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end459

land.lhs.true396:                                 ; preds = %if.end391
  %130 = ptrtoint ptr %device243 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %device243, align 2
  %132 = zext i16 %131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %132, ptr @__sancov_gen_cov_switch_values.20)
  switch i16 %131, label %land.lhs.true396.if.end606thread-pre-split_crit_edge [
    i16 5557, label %land.lhs.true396.if.then456_crit_edge
    i16 5558, label %land.lhs.true396.if.then456_crit_edge1010
    i16 5569, label %land.lhs.true396.if.then456_crit_edge1011
    i16 5595, label %land.lhs.true396.if.then456_crit_edge1012
    i16 5588, label %land.lhs.true396.if.then456_crit_edge1013
    i16 5609, label %land.lhs.true396.if.then456_crit_edge1014
    i16 5612, label %land.lhs.true396.if.then456_crit_edge1015
    i16 5616, label %land.lhs.true396.if.then456_crit_edge1016
    i16 -30189, label %land.lhs.true396.if.then456_crit_edge1017
    i16 -26093, label %land.lhs.true396.if.then456_crit_edge1018
    i16 4408, label %land.lhs.true396.if.then456_crit_edge1019
    i16 17950, label %land.lhs.true396.if.then456_crit_edge1020
  ]

land.lhs.true396.if.then456_crit_edge1020:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1019:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1018:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1017:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1016:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1015:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1014:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1013:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1012:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1011:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge1010:        ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.then456_crit_edge:            ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then456

land.lhs.true396.if.end606thread-pre-split_crit_edge: ; preds = %land.lhs.true396
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end606thread-pre-split

if.then456:                                       ; preds = %land.lhs.true396.if.then456_crit_edge, %land.lhs.true396.if.then456_crit_edge1010, %land.lhs.true396.if.then456_crit_edge1011, %land.lhs.true396.if.then456_crit_edge1012, %land.lhs.true396.if.then456_crit_edge1013, %land.lhs.true396.if.then456_crit_edge1014, %land.lhs.true396.if.then456_crit_edge1015, %land.lhs.true396.if.then456_crit_edge1016, %land.lhs.true396.if.then456_crit_edge1017, %land.lhs.true396.if.then456_crit_edge1018, %land.lhs.true396.if.then456_crit_edge1019, %land.lhs.true396.if.then456_crit_edge1020
  %quirks457 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %133 = ptrtoint ptr %quirks457 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %quirks457, align 8
  %or458 = or i64 %134, 8589934592
  store i64 %or458, ptr %quirks457, align 8
  br label %if.end459thread-pre-split

if.end459thread-pre-split:                        ; preds = %if.then456, %if.end358.if.end459thread-pre-split_crit_edge, %if.end335.if.end459thread-pre-split_crit_edge, %if.end322.if.end459thread-pre-split_crit_edge, %if.end274.if.end459thread-pre-split_crit_edge, %if.end254.if.end459thread-pre-split_crit_edge, %if.end237.if.end459thread-pre-split_crit_edge
  %135 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %135)
  %.pr924 = load i16, ptr %vendor, align 8
  br label %if.end459

if.end459:                                        ; preds = %if.end459thread-pre-split, %if.end391.if.end459_crit_edge
  %136 = phi i16 [ %.pr924, %if.end459thread-pre-split ], [ %.pr922, %if.end391.if.end459_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 7023, i16 %136)
  %cmp462 = icmp eq i16 %136, 7023
  br i1 %cmp462, label %land.lhs.true464, label %if.end459.if.end476_crit_edge

if.end459.if.end476_crit_edge:                    ; preds = %if.end459
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end476

land.lhs.true464:                                 ; preds = %if.end459
  %device465 = getelementptr i8, ptr %dev, i32 -102
  %137 = ptrtoint ptr %device465 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %device465, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 28707, i16 %138)
  %cmp467 = icmp eq i16 %138, 28707
  br i1 %cmp467, label %if.then469, label %land.lhs.true464.if.end476_crit_edge

land.lhs.true464.if.end476_crit_edge:             ; preds = %land.lhs.true464
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end476

if.then469:                                       ; preds = %land.lhs.true464
  call void @__sanitizer_cov_trace_pc() #9
  %quirks470 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %139 = ptrtoint ptr %quirks470 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %quirks470, align 8
  %or475 = or i64 %140, 525440
  store i64 %or475, ptr %quirks470, align 8
  br label %if.end476

if.end476:                                        ; preds = %if.then469, %land.lhs.true464.if.end476_crit_edge, %if.end459.if.end476_crit_edge
  %141 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %141)
  %.pr959 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6418, i16 %.pr959)
  %cmp479 = icmp eq i16 %.pr959, 6418
  br i1 %cmp479, label %land.lhs.true481, label %if.end476.if.end506_crit_edge

if.end476.if.end506_crit_edge:                    ; preds = %if.end476
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end506

land.lhs.true481:                                 ; preds = %if.end476
  %device482 = getelementptr i8, ptr %dev, i32 -102
  %142 = ptrtoint ptr %device482 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %device482, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %143)
  %cmp484 = icmp eq i16 %143, 20
  br i1 %cmp484, label %if.then486, label %land.lhs.true481.if.end491_crit_edge

land.lhs.true481.if.end491_crit_edge:             ; preds = %land.lhs.true481
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end491

if.then486:                                       ; preds = %land.lhs.true481
  call void @__sanitizer_cov_trace_pc() #9
  %quirks487 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %144 = ptrtoint ptr %quirks487 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %quirks487, align 8
  %or490 = or i64 %145, 4294968320
  store i64 %or490, ptr %quirks487, align 8
  br label %if.end491

if.end491:                                        ; preds = %if.then486, %land.lhs.true481.if.end491_crit_edge
  %146 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %146)
  %.pr926 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6418, i16 %.pr926)
  %cmp494 = icmp eq i16 %.pr926, 6418
  br i1 %cmp494, label %land.lhs.true496, label %if.end491.if.end506_crit_edge

if.end491.if.end506_crit_edge:                    ; preds = %if.end491
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end506

land.lhs.true496:                                 ; preds = %if.end491
  %147 = ptrtoint ptr %device482 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %device482, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %148)
  %cmp499 = icmp eq i16 %148, 21
  br i1 %cmp499, label %if.then501, label %land.lhs.true496.if.end506thread-pre-split_crit_edge

land.lhs.true496.if.end506thread-pre-split_crit_edge: ; preds = %land.lhs.true496
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end506thread-pre-split

if.then501:                                       ; preds = %land.lhs.true496
  call void @__sanitizer_cov_trace_pc() #9
  %quirks502 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %149 = ptrtoint ptr %quirks502 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %quirks502, align 8
  %or505 = or i64 %150, 4294967424
  store i64 %or505, ptr %quirks502, align 8
  br label %if.end506thread-pre-split

if.end506thread-pre-split:                        ; preds = %if.then501, %land.lhs.true496.if.end506thread-pre-split_crit_edge
  %151 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %151)
  %.pr928 = load i16, ptr %vendor, align 8
  br label %if.end506

if.end506:                                        ; preds = %if.end506thread-pre-split, %if.end491.if.end506_crit_edge, %if.end476.if.end506_crit_edge
  %152 = phi i16 [ %.pr928, %if.end506thread-pre-split ], [ %.pr926, %if.end491.if.end506_crit_edge ], [ %.pr959, %if.end476.if.end506_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4358, i16 %152)
  %cmp509 = icmp eq i16 %152, 4358
  br i1 %cmp509, label %if.then511, label %if.end506.if.end514_crit_edge

if.end506.if.end514_crit_edge:                    ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end514

if.then511:                                       ; preds = %if.end506
  call void @__sanitizer_cov_trace_pc() #9
  %quirks512 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %153 = ptrtoint ptr %quirks512 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %quirks512, align 8
  %or513 = or i64 %154, 128
  store i64 %or513, ptr %quirks512, align 8
  br label %if.end514

if.end514:                                        ; preds = %if.then511, %if.end506.if.end514_crit_edge
  %155 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %155)
  %.pr976 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4358, i16 %.pr976)
  %cmp517 = icmp eq i16 %.pr976, 4358
  br i1 %cmp517, label %land.lhs.true519, label %if.end514.if.end542_crit_edge

if.end514.if.end542_crit_edge:                    ; preds = %if.end514
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end542

land.lhs.true519:                                 ; preds = %if.end514
  %device520 = getelementptr i8, ptr %dev, i32 -102
  %156 = ptrtoint ptr %device520 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %device520, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13362, i16 %157)
  %cmp522 = icmp eq i16 %157, 13362
  br i1 %cmp522, label %if.then524, label %land.lhs.true519.if.end527_crit_edge

land.lhs.true519.if.end527_crit_edge:             ; preds = %land.lhs.true519
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end527

if.then524:                                       ; preds = %land.lhs.true519
  call void @__sanitizer_cov_trace_pc() #9
  %quirks525 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %158 = ptrtoint ptr %quirks525 to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %quirks525, align 8
  %or526 = or i64 %159, 524288
  store i64 %or526, ptr %quirks525, align 8
  br label %if.end527

if.end527:                                        ; preds = %if.then524, %land.lhs.true519.if.end527_crit_edge
  %160 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %160)
  %.pr929 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4358, i16 %.pr929)
  %cmp530 = icmp eq i16 %.pr929, 4358
  br i1 %cmp530, label %land.lhs.true532, label %if.end527.if.end542_crit_edge

if.end527.if.end542_crit_edge:                    ; preds = %if.end527
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end542

land.lhs.true532:                                 ; preds = %if.end527
  %161 = ptrtoint ptr %device520 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %device520, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 13443, i16 %162)
  %cmp535 = icmp eq i16 %162, 13443
  br i1 %cmp535, label %if.then537, label %land.lhs.true532.if.end542thread-pre-split_crit_edge

land.lhs.true532.if.end542thread-pre-split_crit_edge: ; preds = %land.lhs.true532
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end542thread-pre-split

if.then537:                                       ; preds = %land.lhs.true532
  call void @__sanitizer_cov_trace_pc() #9
  %quirks538 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %163 = ptrtoint ptr %quirks538 to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %quirks538, align 8
  %or541 = or i64 %164, 4398046513152
  store i64 %or541, ptr %quirks538, align 8
  br label %if.end542thread-pre-split

if.end542thread-pre-split:                        ; preds = %if.then537, %land.lhs.true532.if.end542thread-pre-split_crit_edge
  %165 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %165)
  %.pr931 = load i16, ptr %vendor, align 8
  br label %if.end542

if.end542:                                        ; preds = %if.end542thread-pre-split, %if.end527.if.end542_crit_edge, %if.end514.if.end542_crit_edge
  %166 = phi i16 [ %.pr931, %if.end542thread-pre-split ], [ %.pr929, %if.end527.if.end542_crit_edge ], [ %.pr976, %if.end514.if.end542_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 6945, i16 %166)
  %cmp545 = icmp eq i16 %166, 6945
  br i1 %cmp545, label %land.lhs.true547, label %if.end542.if.end555_crit_edge

if.end542.if.end555_crit_edge:                    ; preds = %if.end542
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end555

land.lhs.true547:                                 ; preds = %if.end542
  %device548 = getelementptr i8, ptr %dev, i32 -102
  %167 = ptrtoint ptr %device548 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %device548, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4162, i16 %168)
  %cmp550 = icmp eq i16 %168, 4162
  br i1 %cmp550, label %if.then552, label %land.lhs.true547.if.end555_crit_edge

land.lhs.true547.if.end555_crit_edge:             ; preds = %land.lhs.true547
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end555

if.then552:                                       ; preds = %land.lhs.true547
  call void @__sanitizer_cov_trace_pc() #9
  %quirks553 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %169 = ptrtoint ptr %quirks553 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %quirks553, align 8
  %or554 = or i64 %170, 524288
  store i64 %or554, ptr %quirks553, align 8
  br label %if.end555

if.end555:                                        ; preds = %if.then552, %land.lhs.true547.if.end555_crit_edge, %if.end542.if.end555_crit_edge
  %171 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %171)
  %.pr979 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6945, i16 %.pr979)
  %cmp558 = icmp eq i16 %.pr979, 6945
  br i1 %cmp558, label %land.lhs.true560, label %if.end555.if.end606thread-pre-split_crit_edge

if.end555.if.end606thread-pre-split_crit_edge:    ; preds = %if.end555
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end606thread-pre-split

land.lhs.true560:                                 ; preds = %if.end555
  %device561 = getelementptr i8, ptr %dev, i32 -102
  %172 = ptrtoint ptr %device561 to i32
  call void @__asan_load2_noabort(i32 %172)
  %173 = load i16, ptr %device561, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4418, i16 %173)
  %cmp563 = icmp eq i16 %173, 4418
  br i1 %cmp563, label %if.then565, label %land.lhs.true560.if.end570_crit_edge

land.lhs.true560.if.end570_crit_edge:             ; preds = %land.lhs.true560
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end570

if.then565:                                       ; preds = %land.lhs.true560
  call void @__sanitizer_cov_trace_pc() #9
  %quirks566 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %174 = ptrtoint ptr %quirks566 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %quirks566, align 8
  %or569 = or i64 %175, 8389632
  store i64 %or569, ptr %quirks566, align 8
  br label %if.end570

if.end570:                                        ; preds = %if.then565, %land.lhs.true560.if.end570_crit_edge
  %176 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %176)
  %.pr932 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6945, i16 %.pr932)
  %cmp573 = icmp eq i16 %.pr932, 6945
  br i1 %cmp573, label %land.lhs.true575, label %if.end570.if.end606thread-pre-split_crit_edge

if.end570.if.end606thread-pre-split_crit_edge:    ; preds = %if.end570
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end606thread-pre-split

land.lhs.true575:                                 ; preds = %if.end570
  %177 = ptrtoint ptr %device561 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %device561, align 2
  %179 = zext i16 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.21)
  switch i16 %178, label %land.lhs.true575.land.lhs.true598_crit_edge [
    i16 4674, label %land.lhs.true575.if.end593_crit_edge
    i16 8514, label %land.lhs.true575.if.end593_crit_edge1021
    i16 12866, label %land.lhs.true575.if.end593_crit_edge1022
  ]

land.lhs.true575.if.end593_crit_edge1022:         ; preds = %land.lhs.true575
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end593

land.lhs.true575.if.end593_crit_edge1021:         ; preds = %land.lhs.true575
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end593

land.lhs.true575.if.end593_crit_edge:             ; preds = %land.lhs.true575
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end593

land.lhs.true575.land.lhs.true598_crit_edge:      ; preds = %land.lhs.true575
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true598

if.end593:                                        ; preds = %land.lhs.true575.if.end593_crit_edge, %land.lhs.true575.if.end593_crit_edge1021, %land.lhs.true575.if.end593_crit_edge1022
  %quirks591 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %180 = ptrtoint ptr %quirks591 to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %quirks591, align 8
  %or592 = or i64 %181, 8388608
  store i64 %or592, ptr %quirks591, align 8
  %182 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %182)
  %.pr934 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6945, i16 %.pr934)
  %cmp596 = icmp eq i16 %.pr934, 6945
  br i1 %cmp596, label %land.lhs.true598thread-pre-split, label %if.end593.if.end606_crit_edge

if.end593.if.end606_crit_edge:                    ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end606

land.lhs.true598thread-pre-split:                 ; preds = %if.end593
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %device561 to i32
  call void @__asan_load2_noabort(i32 %183)
  %.pr992 = load i16, ptr %device561, align 2
  br label %land.lhs.true598

land.lhs.true598:                                 ; preds = %land.lhs.true598thread-pre-split, %land.lhs.true575.land.lhs.true598_crit_edge
  %184 = phi i16 [ %.pr992, %land.lhs.true598thread-pre-split ], [ %178, %land.lhs.true575.land.lhs.true598_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4418, i16 %184)
  %cmp601 = icmp eq i16 %184, 4418
  br i1 %cmp601, label %if.then603, label %land.lhs.true598.if.end606thread-pre-split_crit_edge

land.lhs.true598.if.end606thread-pre-split_crit_edge: ; preds = %land.lhs.true598
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end606thread-pre-split

if.then603:                                       ; preds = %land.lhs.true598
  call void @__sanitizer_cov_trace_pc() #9
  %quirks604 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %185 = ptrtoint ptr %quirks604 to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %quirks604, align 8
  %or605 = or i64 %186, 268435456
  store i64 %or605, ptr %quirks604, align 8
  br label %if.end606thread-pre-split

if.end606thread-pre-split:                        ; preds = %if.then603, %land.lhs.true598.if.end606thread-pre-split_crit_edge, %if.end570.if.end606thread-pre-split_crit_edge, %if.end555.if.end606thread-pre-split_crit_edge, %land.lhs.true396.if.end606thread-pre-split_crit_edge
  %187 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %187)
  %.pr938 = load i16, ptr %vendor, align 8
  br label %if.end606

if.end606:                                        ; preds = %if.end606thread-pre-split, %if.end593.if.end606_crit_edge
  %188 = phi i16 [ %.pr938, %if.end606thread-pre-split ], [ %.pr934, %if.end593.if.end606_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4172, i16 %188)
  %cmp609 = icmp eq i16 %188, 4172
  br i1 %cmp609, label %land.lhs.true611, label %if.end606.if.end619_crit_edge

if.end606.if.end619_crit_edge:                    ; preds = %if.end606
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end619

land.lhs.true611:                                 ; preds = %if.end606
  %device612 = getelementptr i8, ptr %dev, i32 -102
  %189 = ptrtoint ptr %device612 to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %device612, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32191, i16 %190)
  %cmp614 = icmp eq i16 %190, -32191
  br i1 %cmp614, label %if.then616, label %land.lhs.true611.if.end619_crit_edge

land.lhs.true611.if.end619_crit_edge:             ; preds = %land.lhs.true611
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end619

if.then616:                                       ; preds = %land.lhs.true611
  call void @__sanitizer_cov_trace_pc() #9
  %quirks617 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %191 = ptrtoint ptr %quirks617 to i32
  call void @__asan_load8_noabort(i32 %191)
  %192 = load i64, ptr %quirks617, align 8
  %or618 = or i64 %192, 67108864
  store i64 %or618, ptr %quirks617, align 8
  br label %if.end619

if.end619:                                        ; preds = %if.then616, %land.lhs.true611.if.end619_crit_edge, %if.end606.if.end619_crit_edge
  %193 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %vendor, align 8
  %195 = zext i16 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.22)
  switch i16 %194, label %if.end619.if.end637_crit_edge [
    i16 5348, label %if.end619.land.lhs.true629_crit_edge
    i16 6013, label %if.end619.land.lhs.true629_crit_edge1023
  ]

if.end619.land.lhs.true629_crit_edge1023:         ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true629

if.end619.land.lhs.true629_crit_edge:             ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true629

if.end619.if.end637_crit_edge:                    ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end637

land.lhs.true629:                                 ; preds = %if.end619.land.lhs.true629_crit_edge, %if.end619.land.lhs.true629_crit_edge1023
  %device630 = getelementptr i8, ptr %dev, i32 -102
  %196 = ptrtoint ptr %device630 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %device630, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28634, i16 %197)
  %cmp632 = icmp eq i16 %197, -28634
  br i1 %cmp632, label %if.then634, label %land.lhs.true629.if.end637thread-pre-split_crit_edge

land.lhs.true629.if.end637thread-pre-split_crit_edge: ; preds = %land.lhs.true629
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end637thread-pre-split

if.then634:                                       ; preds = %land.lhs.true629
  call void @__sanitizer_cov_trace_pc() #9
  %quirks635 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %198 = ptrtoint ptr %quirks635 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %quirks635, align 8
  %or636 = or i64 %199, 17179869184
  store i64 %or636, ptr %quirks635, align 8
  br label %if.end637thread-pre-split

if.end637thread-pre-split:                        ; preds = %if.then634, %land.lhs.true629.if.end637thread-pre-split_crit_edge
  %200 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %200)
  %.pr939 = load i16, ptr %vendor, align 8
  br label %if.end637

if.end637:                                        ; preds = %if.end637thread-pre-split, %if.end619.if.end637_crit_edge
  %201 = phi i16 [ %.pr939, %if.end637thread-pre-split ], [ %194, %if.end619.if.end637_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %201)
  %cmp640 = icmp eq i16 %201, 4130
  br i1 %cmp640, label %land.lhs.true642, label %if.end637.if.end655_crit_edge

if.end637.if.end655_crit_edge:                    ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end655

land.lhs.true642:                                 ; preds = %if.end637
  %device643 = getelementptr i8, ptr %dev, i32 -102
  %202 = ptrtoint ptr %device643 to i32
  call void @__asan_load2_noabort(i32 %202)
  %203 = load i16, ptr %device643, align 2
  %204 = zext i16 %203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %204, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %203, label %land.lhs.true642.if.end655_crit_edge [
    i16 17339, label %land.lhs.true642.if.then652_crit_edge
    i16 17337, label %land.lhs.true642.if.then652_crit_edge1024
  ]

land.lhs.true642.if.then652_crit_edge1024:        ; preds = %land.lhs.true642
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then652

land.lhs.true642.if.then652_crit_edge:            ; preds = %land.lhs.true642
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then652

land.lhs.true642.if.end655_crit_edge:             ; preds = %land.lhs.true642
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end655

if.then652:                                       ; preds = %land.lhs.true642.if.then652_crit_edge, %land.lhs.true642.if.then652_crit_edge1024
  %quirks653 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %205 = ptrtoint ptr %quirks653 to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %quirks653, align 8
  %or654 = or i64 %206, 1099511627776
  store i64 %or654, ptr %quirks653, align 8
  br label %if.end655

if.end655:                                        ; preds = %if.then652, %land.lhs.true642.if.end655_crit_edge, %if.end637.if.end655_crit_edge
  %207 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4130, i16 %208)
  %cmp658 = icmp eq i16 %208, 4130
  br i1 %cmp658, label %land.lhs.true660, label %if.end655.if.end703_crit_edge

if.end655.if.end703_crit_edge:                    ; preds = %if.end655
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end703

land.lhs.true660:                                 ; preds = %if.end655
  %device661 = getelementptr i8, ptr %dev, i32 -102
  %209 = ptrtoint ptr %device661 to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %device661, align 2
  %211 = zext i16 %210 to i64
  call void @__sanitizer_cov_trace_switch(i64 %211, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %210, label %land.lhs.true660.if.end703_crit_edge [
    i16 5658, label %land.lhs.true660.if.then700_crit_edge
    i16 5659, label %land.lhs.true660.if.then700_crit_edge1025
    i16 5661, label %land.lhs.true660.if.then700_crit_edge1026
    i16 5662, label %land.lhs.true660.if.then700_crit_edge1027
    i16 5590, label %land.lhs.true660.if.then700_crit_edge1028
    i16 5591, label %land.lhs.true660.if.then700_crit_edge1029
    i16 5660, label %land.lhs.true660.if.then700_crit_edge1030
    i16 5663, label %land.lhs.true660.if.then700_crit_edge1031
  ]

land.lhs.true660.if.then700_crit_edge1031:        ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.then700_crit_edge1030:        ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.then700_crit_edge1029:        ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.then700_crit_edge1028:        ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.then700_crit_edge1027:        ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.then700_crit_edge1026:        ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.then700_crit_edge1025:        ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.then700_crit_edge:            ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then700

land.lhs.true660.if.end703_crit_edge:             ; preds = %land.lhs.true660
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end703

if.then700:                                       ; preds = %land.lhs.true660.if.then700_crit_edge, %land.lhs.true660.if.then700_crit_edge1025, %land.lhs.true660.if.then700_crit_edge1026, %land.lhs.true660.if.then700_crit_edge1027, %land.lhs.true660.if.then700_crit_edge1028, %land.lhs.true660.if.then700_crit_edge1029, %land.lhs.true660.if.then700_crit_edge1030, %land.lhs.true660.if.then700_crit_edge1031
  %quirks701 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %212 = ptrtoint ptr %quirks701 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %quirks701, align 8
  %or702 = or i64 %213, 8589934592
  store i64 %or702, ptr %quirks701, align 8
  br label %if.end703

if.end703:                                        ; preds = %if.then700, %land.lhs.true660.if.end703_crit_edge, %if.end655.if.end703_crit_edge
  %quirks704 = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 51
  %214 = ptrtoint ptr %quirks704 to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %quirks704, align 8
  %and = and i64 %215, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool705.not = icmp eq i64 %and, 0
  br i1 %tobool705.not, label %if.end703.if.end707_crit_edge, label %if.then706

if.end703.if.end707_crit_edge:                    ; preds = %if.end703
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end707

if.then706:                                       ; preds = %if.end703
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @xhci_dbg_trace(ptr noundef %xhci, ptr noundef nonnull @trace_xhci_dbg_quirks, ptr noundef nonnull @.str.7) #7
  br label %if.end707

if.end707:                                        ; preds = %if.then706, %if.end703.if.end707_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_dbg_trace(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_xhci_dbg_quirks(ptr noundef %vaf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 1), ptr blockaddress(@trace_xhci_dbg_quirks, %do.body)) #7
          to label %if.end48 [label %do.body], !srcloc !72

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !55) #7
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !73

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call i32 @llvm.read_register.i32(metadata !55) #7
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !74
  %call42 = tail call i32 @__traceiter_xhci_dbg_quirks(ptr noundef null, ptr noundef %vaf) #7
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !55) #7
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !55) #7
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !73

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !55) #7
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xhci_dbg_quirks, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xhci_dbg_quirks.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @trace_xhci_dbg_quirks.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 51, ptr noundef nonnull @.str.9) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !77
  %31 = tail call i32 @llvm.read_register.i32(metadata !55) #7
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_quirk_pll_check() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xhci_dbg_quirks(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_d3cold_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_ssic_port_unused_quirk(ptr noundef %hcd, i1 noundef zeroext %suspend) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
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
  %0 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %1, %if.else.i ], [ %hcd, %entry.hcd_to_xhci.exit_crit_edge ]
  %cap_regs = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 2
  %masksel = select i1 %suspend, i32 -2147483648, i32 0
  %2 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cap_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 34828
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %5 = and i32 %4, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #7, !srcloc !68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %7 = and i32 %6, -129
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %val.0 = or i32 %8, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #7, !srcloc !68
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %11 = or i32 %10, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !68
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %13 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cap_regs, align 8
  %add.ptr1.1 = getelementptr i8, ptr %14, i32 34876
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %16 = and i32 %15, -65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 %16) #7, !srcloc !68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %18 = and i32 %17, -129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %val.0.1 = or i32 %19, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %val.0.1)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 %20) #7, !srcloc !68
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %22 = or i32 %21, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 %22) #7, !srcloc !68
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.1) #7, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_intel_xhci_ports(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xhci_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_pci_probe(ptr noundef %dev, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data2 = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %2 = inttoptr i32 %1 to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %2, align 8
  %and = and i64 %4, 68719476736
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 @renesas_xhci_check_request_fw(ptr noundef %dev, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %call.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev7, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #7
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = tail call i32 @reset_control_reset(ptr noundef %call.i) #7
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !85
  %call15 = tail call i32 @usb_hcd_pci_probe(ptr noundef %dev, ptr noundef %id, ptr noundef nonnull @xhci_pci_hc_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.put_runtime_pm_crit_edge

if.end12.put_runtime_pm_crit_edge:                ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_runtime_pm

if.end18:                                         ; preds = %if.end12
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %call.i92 = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool.not.i = icmp eq i32 %call.i92, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.end18.hcd_to_xhci.exit_crit_edge

if.end18.hcd_to_xhci.exit_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %if.end18.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %10, %if.else.i ], [ %8, %if.end18.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %reset22 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 10, i32 0, i32 3
  %11 = ptrtoint ptr %reset22 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %reset22, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %hcd_to_xhci.exit.pci_name.exit_crit_edge

hcd_to_xhci.exit.pci_name.exit_crit_edge:         ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev7, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %hcd_to_xhci.exit.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %hcd_to_xhci.exit.pci_name.exit_crit_edge ]
  %call25 = tail call ptr @usb_create_shared_hcd(ptr noundef nonnull @xhci_pci_hc_driver, ptr noundef %dev7, ptr noundef %retval.0.i.i, ptr noundef %8) #7
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call25, ptr %shared_hcd, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %pci_name.exit.dealloc_usb2_hcd_crit_edge, label %if.end29

pci_name.exit.dealloc_usb2_hcd_crit_edge:         ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dealloc_usb2_hcd

if.end29:                                         ; preds = %pci_name.exit
  %call30 = tail call i32 @xhci_ext_cap_init(ptr noundef %hcd_priv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.put_usb3_hcd_crit_edge

if.end29.put_usb3_hcd_crit_edge:                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_usb3_hcd

if.end33:                                         ; preds = %if.end29
  %17 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shared_hcd, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 46
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call35 = tail call i32 @usb_add_hcd(ptr noundef %18, i32 noundef %20, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.put_usb3_hcd_crit_edge

if.end33.put_usb3_hcd_crit_edge:                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %put_usb3_hcd

if.end38:                                         ; preds = %if.end33
  %quirks39 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %21 = ptrtoint ptr %quirks39 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %quirks39, align 8
  %and40 = and i64 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %if.end38.if.end46_crit_edge

if.end38.if.end46_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true42:                                  ; preds = %if.end38
  %hcc_params = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 2
  %23 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hcc_params, align 8
  %shr = lshr i32 %24, 12
  %and43 = and i32 %shr, 15
  %shl = shl nuw nsw i32 2, %and43
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shl)
  %cmp = icmp ugt i32 %shl, 3
  br i1 %cmp, label %if.then44, label %land.lhs.true42.if.end46_crit_edge

land.lhs.true42.if.end46_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %shared_hcd, align 4
  %can_do_streams = getelementptr inbounds %struct.usb_hcd, ptr %26, i32 0, i32 14
  %27 = ptrtoint ptr %can_do_streams to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %can_do_streams, align 4
  %bf.set = or i16 %bf.load, 64
  store i16 %bf.set, ptr %can_do_streams, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %land.lhs.true42.if.end46_crit_edge, %if.end38.if.end46_crit_edge
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev7)
  %28 = ptrtoint ptr %quirks39 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %quirks39, align 8
  %and49 = and i64 %29, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and49)
  %tobool50.not = icmp eq i64 %and49, 0
  br i1 %tobool50.not, label %if.end46.cleanup_crit_edge, label %if.then51

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @pm_runtime_allow(ptr noundef %dev7) #7
  br label %cleanup

put_usb3_hcd:                                     ; preds = %if.end33.put_usb3_hcd_crit_edge, %if.end29.put_usb3_hcd_crit_edge
  %retval1.0 = phi i32 [ %call30, %if.end29.put_usb3_hcd_crit_edge ], [ %call35, %if.end33.put_usb3_hcd_crit_edge ]
  %30 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %shared_hcd, align 4
  tail call void @usb_put_hcd(ptr noundef %31) #7
  br label %dealloc_usb2_hcd

dealloc_usb2_hcd:                                 ; preds = %put_usb3_hcd, %pci_name.exit.dealloc_usb2_hcd_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %put_usb3_hcd ], [ -12, %pci_name.exit.dealloc_usb2_hcd_crit_edge ]
  tail call void @usb_hcd_pci_remove(ptr noundef %dev) #7
  br label %put_runtime_pm

put_runtime_pm:                                   ; preds = %dealloc_usb2_hcd, %if.end12.put_runtime_pm_crit_edge
  %retval1.2 = phi i32 [ %call15, %if.end12.put_runtime_pm_crit_edge ], [ %retval1.1, %dealloc_usb2_hcd ]
  %call.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !87
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %put_runtime_pm.cleanup_crit_edge, label %do.end11.i.i.i.i

put_runtime_pm.cleanup_crit_edge:                 ; preds = %put_runtime_pm
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %put_runtime_pm
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %put_runtime_pm.cleanup_crit_edge, %if.then51, %if.end46.cleanup_crit_edge, %if.then10, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then10 ], [ %call, %if.then.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.end46.cleanup_crit_edge ], [ %retval1.2, %put_runtime_pm.cleanup_crit_edge ], [ %retval1.2, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xhci_pci_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
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
  %xhc_state = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 7, i32 3, i32 6
  %4 = ptrtoint ptr %xhc_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xhc_state, align 4
  %or = or i32 %5, 4
  store i32 %or, ptr %xhc_state, align 4
  %quirks = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 3, i32 11
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %quirks, align 8
  %and = and i64 %7, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %hcd_to_xhci.exit.if.end_crit_edge, label %if.then

hcd_to_xhci.exit.if.end_crit_edge:                ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %dev2) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %hcd_to_xhci.exit.if.end_crit_edge
  %shared_hcd = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %shared_hcd, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_remove_hcd(ptr noundef nonnull %9) #7
  %10 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %shared_hcd, align 4
  tail call void @usb_put_hcd(ptr noundef %11) #7
  %12 = ptrtoint ptr %shared_hcd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %shared_hcd, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %quirks to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %quirks, align 8
  %and10 = and i64 %14, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool11.not = icmp eq i64 %and10, 0
  br i1 %tobool11.not, label %if.end8.if.end14_crit_edge, label %if.then12

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @pci_set_power_state(ptr noundef %dev, i32 noundef 3) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end8.if.end14_crit_edge
  tail call void @usb_hcd_pci_remove(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @renesas_xhci_check_request_fw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_pci_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_shared_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_ext_cap_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #7, !srcloc !87
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !88
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !47, !49, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__UNIQUE_ID_firmware351, !1, !"__UNIQUE_ID_firmware351", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-pci.c", i32 670, i32 1}
!2 = !{ptr @__initcall__kmod_xhci_pci__352_700_xhci_pci_init6, !3, !"__initcall__kmod_xhci_pci__352_700_xhci_pci_init6", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-pci.c", i32 700, i32 1}
!4 = !{ptr @__exitcall_xhci_pci_exit, !5, !"__exitcall_xhci_pci_exit", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-pci.c", i32 706, i32 1}
!6 = !{ptr @__UNIQUE_ID_description353, !7, !"__UNIQUE_ID_description353", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-pci.c", i32 708, i32 1}
!8 = !{ptr @__UNIQUE_ID_file354, !9, !"__UNIQUE_ID_file354", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-pci.c", i32 709, i32 1}
!10 = !{ptr @__UNIQUE_ID_license355, !9, !"__UNIQUE_ID_license355", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/host/xhci-pci.c", i32 698, i32 9}
!13 = !{ptr @xhci_pci_hc_driver, !14, !"xhci_pci_hc_driver", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/xhci-pci.c", i32 85, i32 39}
!15 = !{ptr @xhci_pci_overrides, !16, !"xhci_pci_overrides", i1 false, i1 false}
!16 = !{!"../drivers/usb/host/xhci-pci.c", i32 89, i32 43}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/host/xhci-pci.c", i32 388, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @xhci_pci_setup.__UNIQUE_ID_ddebug350, !18, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/xhci-pci.c", i32 131, i32 5}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/xhci-pci.c", i32 138, i32 5}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/xhci-pci.c", i32 150, i32 5}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/xhci-pci.c", i32 345, i32 5}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-trace.h", i32 48, i32 1}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__already_done", i1 false, i1 false}
!36 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/xhci-pci.c", i32 104, i32 3}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @xhci_pci_reinit.__UNIQUE_ID_ddebug348, !39, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/xhci-pci.c", i32 106, i32 2}
!44 = !{ptr @xhci_pci_reinit.__UNIQUE_ID_ddebug349, !43, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!45 = !{ptr @xhci_pci_driver, !46, !"xhci_pci_driver", i1 false, i1 false}
!46 = !{!"../drivers/usb/host/xhci-pci.c", i32 674, i32 26}
!47 = !{ptr @hcd_name, !48, !"hcd_name", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/xhci-pci.c", i32 83, i32 19}
!49 = !{ptr @pci_ids, !50, !"pci_ids", i1 false, i1 false}
!50 = !{!"../drivers/usb/host/xhci-pci.c", i32 651, i32 35}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/host/xhci-pci.c", i32 647, i32 14}
!53 = !{ptr @reneses_data, !54, !"reneses_data", i1 false, i1 false}
!54 = !{!"../drivers/usb/host/xhci-pci.c", i32 645, i32 38}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 5001393}
!66 = !{i64 2156689236}
!67 = !{i64 2156689543}
!68 = !{i64 5000975}
!69 = !{i64 2156690227}
!70 = !{i64 2156690724}
!71 = !{i64 2156691025}
!72 = !{i64 2148506378, i64 2148506383, i64 2148506396, i64 2148506440, i64 2148506474, i64 2148506495}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2155763114}
!75 = !{i64 2155763313}
!76 = !{i64 2150133061}
!77 = !{i64 2150134097}
!78 = !{i64 2156686393}
!79 = !{i64 2156686603}
!80 = !{i64 2156687194}
!81 = !{i64 2156687414}
!82 = !{i64 2156688005}
!83 = !{i64 2156688215}
!84 = !{i64 2156688806}
!85 = !{i64 2148682563, i64 2148682589, i64 2148682618, i64 2148682652, i64 2148682683, i64 2148682706}
!86 = !{i64 2148681982}
!87 = !{i64 1168582, i64 1168607, i64 1168629, i64 1168645, i64 1168657, i64 1168677, i64 1168701, i64 1168717, i64 1168729}
!88 = !{i64 2148682170}
