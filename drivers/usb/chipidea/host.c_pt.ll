; ModuleID = '/llk/IR_all_yes/drivers/usb/chipidea/host.c_pt.bc'
source_filename = "../drivers/usb/chipidea/host.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ci_hdrc = type { ptr, %struct.spinlock, %struct.hw_bank, i32, [2 x ptr], i32, i8, %struct.usb_otg, %struct.otg_fsm, %struct.hrtimer, [12 x i64], i32, i32, ptr, %struct.work_struct, ptr, ptr, ptr, %struct.usb_gadget, ptr, i32, i32, [32 x %struct.ci_hw_ep], i32, ptr, ptr, ptr, i8, i8, i8, i8, i8, ptr, i32, ptr, %struct.ulpi_ops, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hw_bank = type { i32, i32, ptr, ptr, ptr, i32, [38 x ptr] }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.otg_fsm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.mutex, ptr, %struct.delayed_work, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ci_hw_ep = type { %struct.usb_ep, i8, i8, i8, [16 x i8], %struct.anon.78, i32, ptr, ptr, ptr, ptr }
%struct.usb_ep = type { ptr, ptr, ptr, %struct.list_head, %struct.usb_ep_caps, i8, i8, [7 x i8], i8, ptr, ptr }
%struct.usb_ep_caps = type { i8, [3 x i8] }
%struct.anon.78 = type { %struct.list_head, ptr, i32 }
%struct.ulpi_ops = type { ptr, ptr }
%struct.ci_hdrc_platform_data = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, ptr, %struct.usb_otg_caps, i8, i32, i32, i32, i32, %struct.ci_hdrc_cable, %struct.ci_hdrc_cable, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_otg_caps = type { i16, i8, i8, i8 }
%struct.ci_hdrc_cable = type { i8, i8, i8, ptr, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.ci_role_driver = type { ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.ci_hdrc_dma_aligned_buffer = type { ptr, ptr, [0 x i8] }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.86, %union.anon.88, [2 x i32], i32 }
%union.anon.86 = type { [15 x i32] }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, [15 x i32] }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"host\00", [27 x i8] zeroinitializer }, align 32
@ci_ehci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@ehci_ci_overrides = internal constant { %struct.ehci_driver_overrides, [20 x i8] } { %struct.ehci_driver_overrides { i32 8, ptr @ehci_ci_reset, ptr @ehci_ci_portpower }, [20 x i8] zeroinitializer }, align 32
@orig_bus_suspend = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@host_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to enable vbus regulator, ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"host_start\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/chipidea/host.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@host_start._entry_ptr = internal global ptr @host_start._entry, section ".printk_index", align 4
@ehci_ci_portpower._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 50, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not support multi-port regulator control\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ehci_ci_portpower\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ehci_ci_portpower._entry_ptr = internal global ptr @ehci_ci_portpower._entry, section ".printk_index", align 4
@ehci_ci_portpower._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.3, i32 60, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to %s vbus regulator, ret=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ehci_ci_portpower._entry_ptr.11 = internal global ptr @ehci_ci_portpower._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@ci_ehci_hub_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"timeout waiting for SUSPEND\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ci_ehci_hub_control\00", [44 x i8] zeroinitializer }, align 32
@ci_ehci_hub_control._entry_ptr = internal global ptr @ci_ehci_hub_control._entry, section ".printk_index", align 4
@ci_ehci_hub_control._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 311, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timeout waiting for resume\0A\00", [36 x i8] zeroinitializer }, align 32
@ci_ehci_hub_control._entry_ptr.18 = internal global ptr @ci_ehci_hub_control._entry.16, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 469, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"ehci_ci_overrides\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 102, i32 43 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"orig_bus_suspend\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 25, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 155, i32 5 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 49, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 58, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 287, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [31 x i8] c"../drivers/usb/chipidea/host.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 311, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @ci_ehci_hub_control._entry, ptr @ci_ehci_hub_control._entry.16, ptr @ci_ehci_hub_control._entry_ptr, ptr @ci_ehci_hub_control._entry_ptr.18, ptr @ehci_ci_portpower._entry, ptr @ehci_ci_portpower._entry.9, ptr @ehci_ci_portpower._entry_ptr, ptr @ehci_ci_portpower._entry_ptr.11, ptr @host_start._entry, ptr @host_start._entry_ptr, ptr @.str, ptr @ehci_ci_overrides, ptr @orig_bus_suspend, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_ci_overrides to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orig_bus_suspend to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @host_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_ci_portpower._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_ci_portpower._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_ehci_hub_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ci_ehci_hub_control._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_hdrc_host_destroy(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 5
  %0 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hcd = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 38
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @host_stop(ptr noundef %ci)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @host_stop(ptr noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd1 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 38
  %0 = ptrtoint ptr %hcd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %2 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platdata, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify_event, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %5(ptr noundef %ci, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  tail call void @usb_remove_hcd(ptr noundef nonnull %1) #6
  %role = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 5
  %6 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %role, align 4
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  tail call void @synchronize_irq(i32 noundef %8) #6
  tail call void @usb_put_hcd(ptr noundef nonnull %1) #6
  %9 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platdata, align 4
  %reg_vbus = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %reg_vbus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_vbus, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %13 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_otg.i, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true.land.lhs.true9_crit_edge, label %land.lhs.true.i

land.lhs.true.land.lhs.true9_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true9

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %15 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %16, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.lhs.true9_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.land.lhs.true9_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true9

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %18, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.land.lhs.true9_crit_edge, label %land.rhs.i

land.lhs.true2.i.land.lhs.true9_crit_edge:        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true9

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %srp_support.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool6.not.i = icmp eq i8 %20, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.end17_crit_edge

land.rhs.i.if.end17_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %hnp_support.i, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not.i = icmp eq i8 %22, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.end17_crit_edge

lor.lhs.false.i.if.end17_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %adp_support.i, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool8.i.not = icmp eq i8 %24, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.land.lhs.true9_crit_edge, label %ci_otg_is_fsm_mode.exit.if.end17_crit_edge

ci_otg_is_fsm_mode.exit.if.end17_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

ci_otg_is_fsm_mode.exit.land.lhs.true9_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true9

land.lhs.true9:                                   ; preds = %ci_otg_is_fsm_mode.exit.land.lhs.true9_crit_edge, %land.lhs.true2.i.land.lhs.true9_crit_edge, %land.lhs.true.i.land.lhs.true9_crit_edge, %land.lhs.true.land.lhs.true9_crit_edge
  %flags = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %10, i32 0, i32 6
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end17_crit_edge, label %if.then12

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @regulator_disable(ptr noundef nonnull %12) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then12, %land.lhs.true9.if.end17_crit_edge, %ci_otg_is_fsm_mode.exit.if.end17_crit_edge, %lor.lhs.false.i.if.end17_crit_edge, %land.rhs.i.if.end17_crit_edge, %if.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %27 = ptrtoint ptr %hcd1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %hcd1, align 8
  %host = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %host, align 4
  %platdata19 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %29 = ptrtoint ptr %platdata19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %platdata19, align 4
  %pins_host = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %30, i32 0, i32 21
  %31 = ptrtoint ptr %pins_host to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pins_host, align 4
  %tobool20.not = icmp eq ptr %32, null
  br i1 %tobool20.not, label %if.end17.if.end29_crit_edge, label %land.lhs.true21

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true21:                                  ; preds = %if.end17
  %pins_default = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %30, i32 0, i32 20
  %33 = ptrtoint ptr %pins_default to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins_default, align 4
  %tobool23.not = icmp eq ptr %34, null
  br i1 %tobool23.not, label %land.lhs.true21.if.end29_crit_edge, label %if.then24

land.lhs.true21.if.end29_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then24:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  %pctl = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %30, i32 0, i32 19
  %35 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pctl, align 4
  %call28 = tail call i32 @pinctrl_select_state(ptr noundef %36, ptr noundef nonnull %34) #6
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %land.lhs.true21.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ci_hdrc_host_init(ptr nocapture noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 6, i32 2
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %3 = and i32 %2, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 16, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @host_start, ptr %call.i, align 4
  %stop = getelementptr inbounds %struct.ci_role_driver, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %stop to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @host_stop, ptr %stop, align 4
  %irq = getelementptr inbounds %struct.ci_role_driver, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @host_irq, ptr %irq, align 4
  %name = getelementptr inbounds %struct.ci_role_driver, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str, ptr %name, align 4
  %roles = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %10 = ptrtoint ptr %roles to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %roles, align 4
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %11 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platdata, align 4
  %flags = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and = and i32 %14, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @ci_hdrc_map_urb_for_dma, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 14), align 4
  store ptr @ci_hdrc_unmap_urb_for_dma, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 15), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host_start(ptr noundef %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call4 = tail call ptr @__usb_create_hcd(ptr noundef nonnull @ci_ehci_hc_driver, ptr noundef %3, ptr noundef %1, ptr noundef %retval.0.i, ptr noundef null) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %dev_name.exit.cleanup_crit_edge, label %if.end7

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %dev_name.exit
  %8 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ci, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ci, ptr %driver_data.i, align 4
  %hw_bank = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2
  %phys = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phys, align 4
  %rsrc_start = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 17
  %13 = ptrtoint ptr %rsrc_start to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rsrc_start, align 8
  %size = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %rsrc_len = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 18
  %16 = ptrtoint ptr %rsrc_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rsrc_len, align 4
  %abs = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %abs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %abs, align 8
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 16
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %regs, align 4
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 14
  %20 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %has_tt, align 4
  %bf.set = or i16 %bf.load, 256
  store i16 %bf.set, ptr %has_tt, align 4
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 32
  %21 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %platdata, align 4
  %power_budget = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %power_budget to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_budget, align 4
  %power_budget11 = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 19
  %25 = ptrtoint ptr %power_budget11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %power_budget11, align 8
  %26 = load ptr, ptr %platdata, align 4
  %tpl_support = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %tpl_support to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tpl_support, align 2, !range !46
  %29 = shl nuw nsw i8 %28, 5
  %bf.shl = zext i8 %29 to i16
  %bf.clear16 = and i16 %bf.set, -33
  %bf.set17 = or i16 %bf.clear16, %bf.shl
  store i16 %bf.set17, ptr %has_tt, align 4
  %phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 36
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy, align 8
  %tobool18.not = icmp eq ptr %31, null
  br i1 %tobool18.not, label %lor.lhs.false, label %if.end7.if.then20_crit_edge

if.end7.if.then20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.end7
  %usb_phy = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 37
  %32 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %usb_phy, align 4
  %tobool19.not = icmp eq ptr %33, null
  br i1 %tobool19.not, label %lor.lhs.false.if.end30_crit_edge, label %lor.lhs.false.if.then20_crit_edge

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.end7.if.then20_crit_edge
  %bf.set23 = or i16 %bf.set17, 2048
  %34 = ptrtoint ptr %has_tt to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %bf.set23, ptr %has_tt, align 4
  %usb_phy24 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 37
  %35 = ptrtoint ptr %usb_phy24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %usb_phy24, align 4
  %tobool25.not = icmp eq ptr %36, null
  br i1 %tobool25.not, label %if.then20.if.end30_crit_edge, label %if.then26

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then26:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %usb_phy28 = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 0, i32 10
  %37 = ptrtoint ptr %usb_phy28 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %usb_phy28, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.then20.if.end30_crit_edge, %lor.lhs.false.if.end30_crit_edge
  %cap = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 2, i32 3
  %38 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cap, align 4
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 1, i32 0, i32 18
  %40 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %caps, align 4
  %41 = ptrtoint ptr %hw_bank to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hw_bank, align 8
  %has_hostpc = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 3
  %43 = trunc i32 %42 to i8
  %44 = ptrtoint ptr %has_hostpc to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load34 = load i8, ptr %has_hostpc, align 4
  %bf.shl36 = shl i8 %43, 7
  %bf.clear37 = and i8 %bf.load34, 127
  %bf.set38 = or i8 %bf.clear37, %bf.shl36
  store i8 %bf.set38, ptr %has_hostpc, align 4
  %45 = load i32, ptr %hw_bank, align 8
  %46 = trunc i32 %45 to i8
  %bf.value43 = shl i8 %46, 6
  %bf.shl44 = and i8 %bf.value43, 64
  %bf.clear45 = and i8 %bf.set38, -65
  %bf.set46 = or i8 %bf.shl44, %bf.clear45
  store i8 %bf.set46, ptr %has_hostpc, align 4
  %imx28_write_fix = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 41
  %47 = ptrtoint ptr %imx28_write_fix to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %imx28_write_fix, align 2, !range !46
  %49 = zext i8 %48 to i32
  %imx28_write_fix50 = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %50 = ptrtoint ptr %imx28_write_fix50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load51 = load i32, ptr %imx28_write_fix50, align 4
  %bf.shl53 = shl nuw nsw i32 %49, 17
  %bf.clear54 = and i32 %bf.load51, -131073
  %bf.set55 = or i32 %bf.clear54, %bf.shl53
  store i32 %bf.set55, ptr %imx28_write_fix50, align 4
  %priv56 = getelementptr inbounds %struct.usb_hcd, ptr %call4, i32 2, i32 0, i32 9, i32 3
  %51 = ptrtoint ptr %priv56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %priv56, align 4
  %52 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platdata, align 4
  %reg_vbus58 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %reg_vbus58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_vbus58, align 4
  %tobool59.not = icmp eq ptr %55, null
  br i1 %tobool59.not, label %if.end30.if.end76_crit_edge, label %land.lhs.true

if.end30.if.end76_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

land.lhs.true:                                    ; preds = %if.end30
  %is_otg.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %56 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_otg.i, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i190 = icmp eq i8 %57, 0
  br i1 %tobool.not.i190, label %land.lhs.true.if.then61_crit_edge, label %land.lhs.true.i

land.lhs.true.if.then61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %roles.i = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %58 = ptrtoint ptr %roles.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %roles.i, align 4
  %tobool1.not.i = icmp eq ptr %59, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then61_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.then61_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %arrayidx4.i = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %60 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx4.i, align 4
  %tobool5.not.i = icmp eq ptr %61, null
  br i1 %tobool5.not.i, label %land.lhs.true2.i.if.then61_crit_edge, label %land.rhs.i

land.lhs.true2.i.if.then61_crit_edge:             ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

land.rhs.i:                                       ; preds = %land.lhs.true2.i
  %srp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %53, i32 0, i32 10, i32 2
  %62 = ptrtoint ptr %srp_support.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %srp_support.i, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool6.not.i = icmp eq i8 %63, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.end76_crit_edge

land.rhs.i.if.end76_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %hnp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %53, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %hnp_support.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %hnp_support.i, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool7.not.i = icmp eq i8 %65, 0
  br i1 %tobool7.not.i, label %ci_otg_is_fsm_mode.exit, label %lor.lhs.false.i.if.end76_crit_edge

lor.lhs.false.i.if.end76_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

ci_otg_is_fsm_mode.exit:                          ; preds = %lor.lhs.false.i
  %adp_support.i = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %53, i32 0, i32 10, i32 3
  %66 = ptrtoint ptr %adp_support.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %adp_support.i, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool8.i.not = icmp eq i8 %67, 0
  br i1 %tobool8.i.not, label %ci_otg_is_fsm_mode.exit.if.then61_crit_edge, label %ci_otg_is_fsm_mode.exit.if.end76_crit_edge

ci_otg_is_fsm_mode.exit.if.end76_crit_edge:       ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

ci_otg_is_fsm_mode.exit.if.then61_crit_edge:      ; preds = %ci_otg_is_fsm_mode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then61

if.then61:                                        ; preds = %ci_otg_is_fsm_mode.exit.if.then61_crit_edge, %land.lhs.true2.i.if.then61_crit_edge, %land.lhs.true.i.if.then61_crit_edge, %land.lhs.true.if.then61_crit_edge
  %flags = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %53, i32 0, i32 6
  %68 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags, align 4
  %and = and i32 %69, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.then61
  %call67 = tail call i32 @regulator_enable(ptr noundef nonnull %55) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.then64.if.end76_crit_edge, label %do.end

if.then64.if.end76_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

do.end:                                           ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ci, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.1, i32 noundef %call67) #9
  br label %put_hcd

if.else:                                          ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %priv56 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %55, ptr %priv56, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then64.if.end76_crit_edge, %ci_otg_is_fsm_mode.exit.if.end76_crit_edge, %lor.lhs.false.i.if.end76_crit_edge, %land.rhs.i.if.end76_crit_edge, %if.end30.if.end76_crit_edge
  %73 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %platdata, align 4
  %pins_host = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %74, i32 0, i32 21
  %75 = ptrtoint ptr %pins_host to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pins_host, align 4
  %tobool78.not = icmp eq ptr %76, null
  br i1 %tobool78.not, label %if.end76.if.end84_crit_edge, label %if.then79

if.end76.if.end84_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  %pctl = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %74, i32 0, i32 19
  %77 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pctl, align 4
  %call83 = tail call i32 @pinctrl_select_state(ptr noundef %78, ptr noundef nonnull %76) #6
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %if.end76.if.end84_crit_edge
  %hcd85 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 38
  %79 = ptrtoint ptr %hcd85 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call4, ptr %hcd85, align 8
  %call86 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call4, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.else90, label %if.then88

if.then88:                                        ; preds = %if.end84
  %80 = ptrtoint ptr %hcd85 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %hcd85, align 8
  %81 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %platdata, align 4
  %reg_vbus110 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %82, i32 0, i32 9
  %83 = ptrtoint ptr %reg_vbus110 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_vbus110, align 4
  %tobool111.not = icmp eq ptr %84, null
  br i1 %tobool111.not, label %if.then88.put_hcd_crit_edge, label %land.lhs.true112

if.then88.put_hcd_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_hcd

if.else90:                                        ; preds = %if.end84
  %85 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %platdata, align 4
  %is_otg.i192 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %87 = ptrtoint ptr %is_otg.i192 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %is_otg.i192, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i193 = icmp eq i8 %88, 0
  br i1 %tobool.not.i193, label %if.else90.if.end95_crit_edge, label %land.lhs.true.i196

if.else90.if.end95_crit_edge:                     ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true.i196:                               ; preds = %if.else90
  %roles.i194 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %89 = ptrtoint ptr %roles.i194 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %roles.i194, align 4
  %tobool1.not.i195 = icmp eq ptr %90, null
  br i1 %tobool1.not.i195, label %land.lhs.true.i196.if.end95_crit_edge, label %land.lhs.true2.i199

land.lhs.true.i196.if.end95_crit_edge:            ; preds = %land.lhs.true.i196
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true2.i199:                              ; preds = %land.lhs.true.i196
  %arrayidx4.i197 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %91 = ptrtoint ptr %arrayidx4.i197 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx4.i197, align 4
  %tobool5.not.i198 = icmp eq ptr %92, null
  br i1 %tobool5.not.i198, label %land.lhs.true2.i199.if.end95_crit_edge, label %land.rhs.i202

land.lhs.true2.i199.if.end95_crit_edge:           ; preds = %land.lhs.true2.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.rhs.i202:                                    ; preds = %land.lhs.true2.i199
  %srp_support.i200 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %86, i32 0, i32 10, i32 2
  %93 = ptrtoint ptr %srp_support.i200 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %srp_support.i200, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool6.not.i201 = icmp eq i8 %94, 0
  br i1 %tobool6.not.i201, label %lor.lhs.false.i205, label %land.rhs.i202.if.then93_crit_edge

land.rhs.i202.if.then93_crit_edge:                ; preds = %land.rhs.i202
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

lor.lhs.false.i205:                               ; preds = %land.rhs.i202
  %hnp_support.i203 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %86, i32 0, i32 10, i32 1
  %95 = ptrtoint ptr %hnp_support.i203 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %hnp_support.i203, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool7.not.i204 = icmp eq i8 %96, 0
  br i1 %tobool7.not.i204, label %ci_otg_is_fsm_mode.exit209, label %lor.lhs.false.i205.if.then93_crit_edge

lor.lhs.false.i205.if.then93_crit_edge:           ; preds = %lor.lhs.false.i205
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

ci_otg_is_fsm_mode.exit209:                       ; preds = %lor.lhs.false.i205
  %adp_support.i206 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %86, i32 0, i32 10, i32 3
  %97 = ptrtoint ptr %adp_support.i206 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %adp_support.i206, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool8.i207.not = icmp eq i8 %98, 0
  br i1 %tobool8.i207.not, label %ci_otg_is_fsm_mode.exit209.if.end95_crit_edge, label %ci_otg_is_fsm_mode.exit209.if.then93_crit_edge

ci_otg_is_fsm_mode.exit209.if.then93_crit_edge:   ; preds = %ci_otg_is_fsm_mode.exit209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then93

ci_otg_is_fsm_mode.exit209.if.end95_crit_edge:    ; preds = %ci_otg_is_fsm_mode.exit209
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then93:                                        ; preds = %ci_otg_is_fsm_mode.exit209.if.then93_crit_edge, %lor.lhs.false.i205.if.then93_crit_edge, %land.rhs.i202.if.then93_crit_edge
  %host = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 7, i32 3
  %99 = ptrtoint ptr %host to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call4, ptr %host, align 4
  %otg_port = getelementptr inbounds %struct.usb_bus, ptr %call4, i32 0, i32 5
  %100 = ptrtoint ptr %otg_port to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %otg_port, align 1
  br label %if.end95

if.end95:                                         ; preds = %if.then93, %ci_otg_is_fsm_mode.exit209.if.end95_crit_edge, %land.lhs.true2.i199.if.end95_crit_edge, %land.lhs.true.i196.if.end95_crit_edge, %if.else90.if.end95_crit_edge
  %101 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %platdata, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %102, i32 0, i32 8
  %103 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %notify_event, align 4
  %tobool97.not = icmp eq ptr %104, null
  br i1 %tobool97.not, label %if.end95.cleanup_crit_edge, label %land.lhs.true98

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true98:                                  ; preds = %if.end95
  %flags100 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %102, i32 0, i32 6
  %105 = ptrtoint ptr %flags100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %flags100, align 4
  %and101 = and i32 %106, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %land.lhs.true98.cleanup_crit_edge, label %if.then103

land.lhs.true98.cleanup_crit_edge:                ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then103:                                       ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #8
  %call106 = tail call i32 %104(ptr noundef %ci, i32 noundef 2) #6
  br label %cleanup

land.lhs.true112:                                 ; preds = %if.then88
  %is_otg.i211 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 6
  %107 = ptrtoint ptr %is_otg.i211 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %is_otg.i211, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool.not.i212 = icmp eq i8 %108, 0
  br i1 %tobool.not.i212, label %land.lhs.true112.land.lhs.true114_crit_edge, label %land.lhs.true.i215

land.lhs.true112.land.lhs.true114_crit_edge:      ; preds = %land.lhs.true112
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true114

land.lhs.true.i215:                               ; preds = %land.lhs.true112
  %roles.i213 = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 4
  %109 = ptrtoint ptr %roles.i213 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %roles.i213, align 4
  %tobool1.not.i214 = icmp eq ptr %110, null
  br i1 %tobool1.not.i214, label %land.lhs.true.i215.land.lhs.true114_crit_edge, label %land.lhs.true2.i218

land.lhs.true.i215.land.lhs.true114_crit_edge:    ; preds = %land.lhs.true.i215
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true114

land.lhs.true2.i218:                              ; preds = %land.lhs.true.i215
  %arrayidx4.i216 = getelementptr %struct.ci_hdrc, ptr %ci, i32 0, i32 4, i32 1
  %111 = ptrtoint ptr %arrayidx4.i216 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx4.i216, align 4
  %tobool5.not.i217 = icmp eq ptr %112, null
  br i1 %tobool5.not.i217, label %land.lhs.true2.i218.land.lhs.true114_crit_edge, label %land.rhs.i221

land.lhs.true2.i218.land.lhs.true114_crit_edge:   ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true114

land.rhs.i221:                                    ; preds = %land.lhs.true2.i218
  %srp_support.i219 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %82, i32 0, i32 10, i32 2
  %113 = ptrtoint ptr %srp_support.i219 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %srp_support.i219, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool6.not.i220 = icmp eq i8 %114, 0
  br i1 %tobool6.not.i220, label %lor.lhs.false.i224, label %land.rhs.i221.put_hcd_crit_edge

land.rhs.i221.put_hcd_crit_edge:                  ; preds = %land.rhs.i221
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_hcd

lor.lhs.false.i224:                               ; preds = %land.rhs.i221
  %hnp_support.i222 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %82, i32 0, i32 10, i32 1
  %115 = ptrtoint ptr %hnp_support.i222 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %hnp_support.i222, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool7.not.i223 = icmp eq i8 %116, 0
  br i1 %tobool7.not.i223, label %ci_otg_is_fsm_mode.exit228, label %lor.lhs.false.i224.put_hcd_crit_edge

lor.lhs.false.i224.put_hcd_crit_edge:             ; preds = %lor.lhs.false.i224
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_hcd

ci_otg_is_fsm_mode.exit228:                       ; preds = %lor.lhs.false.i224
  %adp_support.i225 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %82, i32 0, i32 10, i32 3
  %117 = ptrtoint ptr %adp_support.i225 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %adp_support.i225, align 2, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool8.i226.not = icmp eq i8 %118, 0
  br i1 %tobool8.i226.not, label %ci_otg_is_fsm_mode.exit228.land.lhs.true114_crit_edge, label %ci_otg_is_fsm_mode.exit228.put_hcd_crit_edge

ci_otg_is_fsm_mode.exit228.put_hcd_crit_edge:     ; preds = %ci_otg_is_fsm_mode.exit228
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_hcd

ci_otg_is_fsm_mode.exit228.land.lhs.true114_crit_edge: ; preds = %ci_otg_is_fsm_mode.exit228
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true114

land.lhs.true114:                                 ; preds = %ci_otg_is_fsm_mode.exit228.land.lhs.true114_crit_edge, %land.lhs.true2.i218.land.lhs.true114_crit_edge, %land.lhs.true.i215.land.lhs.true114_crit_edge, %land.lhs.true112.land.lhs.true114_crit_edge
  %flags116 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %82, i32 0, i32 6
  %119 = ptrtoint ptr %flags116 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags116, align 4
  %and117 = and i32 %120, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %land.lhs.true114.put_hcd_crit_edge, label %if.then119

land.lhs.true114.put_hcd_crit_edge:               ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #8
  br label %put_hcd

if.then119:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #8
  %call122 = tail call i32 @regulator_disable(ptr noundef nonnull %84) #6
  br label %put_hcd

put_hcd:                                          ; preds = %if.then119, %land.lhs.true114.put_hcd_crit_edge, %ci_otg_is_fsm_mode.exit228.put_hcd_crit_edge, %lor.lhs.false.i224.put_hcd_crit_edge, %land.rhs.i221.put_hcd_crit_edge, %if.then88.put_hcd_crit_edge, %do.end
  %ret.0 = phi i32 [ %call86, %ci_otg_is_fsm_mode.exit228.put_hcd_crit_edge ], [ %call86, %if.then119 ], [ %call86, %land.lhs.true114.put_hcd_crit_edge ], [ %call86, %if.then88.put_hcd_crit_edge ], [ %call67, %do.end ], [ %call86, %lor.lhs.false.i224.put_hcd_crit_edge ], [ %call86, %land.rhs.i221.put_hcd_crit_edge ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %put_hcd, %if.then103, %land.lhs.true98.cleanup_crit_edge, %if.end95.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %put_hcd ], [ -19, %entry.cleanup_crit_edge ], [ -12, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.then103 ], [ 0, %land.lhs.true98.cleanup_crit_edge ], [ 0, %if.end95.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @host_irq(ptr nocapture noundef readonly %ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  %hcd = getelementptr inbounds %struct.ci_hdrc, ptr %ci, i32 0, i32 38
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  %call = tail call i32 @usb_hcd_irq(i32 noundef %1, ptr noundef %3) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_hdrc_map_urb_for_dma(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_sgs.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 18
  %0 = ptrtoint ptr %num_sgs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_sgs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %sg.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 16
  %2 = ptrtoint ptr %sg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false2.i, label %lor.lhs.false.i.if.end_crit_edge

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %4 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %transfer_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %lor.lhs.false2.i.if.end_crit_edge, label %lor.lhs.false3.i

lor.lhs.false2.i.if.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false2.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %6 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transfer_buffer.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %and.i = and i32 %8, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.if.end_crit_edge, label %if.end8.i.i

lor.lhs.false3.i.if.end_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end8.i.i:                                      ; preds = %lor.lhs.false3.i
  %sub.i = add i32 %5, 39
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i, i32 noundef %mem_flags) #10
  %tobool7.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool7.not.i, label %if.end8.i.i.cleanup_crit_edge, label %if.end9.i

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %if.end8.i.i
  %add.ptr.i = getelementptr %struct.ci_hdrc_dma_aligned_buffer, ptr %call9.i.i, i32 1
  %9 = ptrtoint ptr %add.ptr.i to i32
  %add10.i = add nuw nsw i32 %9, 31
  %and11.i = and i32 %add10.i, -96
  %10 = inttoptr i32 %and11.i to ptr
  %add.ptr12.i = getelementptr %struct.ci_hdrc_dma_aligned_buffer, ptr %10, i32 -1
  %11 = ptrtoint ptr %add.ptr12.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %add.ptr12.i, align 8
  %12 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %transfer_buffer.i, align 4
  %old_xfer_buffer.i = getelementptr %struct.ci_hdrc_dma_aligned_buffer, ptr %10, i32 -1, i32 1
  %14 = ptrtoint ptr %old_xfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %old_xfer_buffer.i, align 4
  %transfer_flags.i.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %15 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transfer_flags.i.i, align 4
  %17 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not.not.i = icmp eq i32 %17, 0
  br i1 %tobool16.not.not.i, label %if.then17.i, label %if.end9.i.if.end20.i_crit_edge

if.end9.i.if.end20.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

if.then17.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %transfer_buffer.i, align 4
  %20 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transfer_buffer_length.i, align 4
  %22 = call ptr @memcpy(ptr %10, ptr %19, i32 %21)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.end9.i.if.end20.i_crit_edge
  %23 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %10, ptr %transfer_buffer.i, align 4
  %24 = ptrtoint ptr %transfer_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transfer_flags.i.i, align 4
  %or.i = or i32 %25, 8388608
  store i32 %or.i, ptr %transfer_flags.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end20.i, %lor.lhs.false3.i.if.end_crit_edge, %lor.lhs.false2.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @usb_hcd_map_urb_for_dma(ptr noundef %hcd, ptr noundef %urb, i32 noundef %mem_flags) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %26 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %transfer_flags.i, align 4
  %and.i11 = and i32 %27, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i11)
  %tobool.not.i12 = icmp eq i32 %and.i11, 0
  br i1 %tobool.not.i12, label %if.then3.cleanup_crit_edge, label %if.end.i16

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i16:                                       ; preds = %if.then3
  %transfer_buffer.i13 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer.i13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transfer_buffer.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %29, i32 -8
  %30 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool1.not.i15 = icmp eq i32 %30, 0
  br i1 %tobool1.not.i15, label %if.end.i16.if.end6.i_crit_edge, label %if.then2.i

if.end.i16.if.end6.i_crit_edge:                   ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i16
  call void @__sanitizer_cov_trace_pc() #8
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %31 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %32)
  %cmp.i17 = icmp ult i32 %32, 1073741824
  %transfer_buffer_length.i18 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %length.0.in.i = select i1 %cmp.i17, ptr %transfer_buffer_length.i18, ptr %actual_length.i
  %33 = ptrtoint ptr %length.0.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %length.0.i = load i32, ptr %length.0.in.i, align 4
  %old_xfer_buffer.i19 = getelementptr i8, ptr %29, i32 -4
  %34 = ptrtoint ptr %old_xfer_buffer.i19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %old_xfer_buffer.i19, align 4
  %36 = call ptr @memcpy(ptr %35, ptr %29, i32 %length.0.i)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i16.if.end6.i_crit_edge
  %old_xfer_buffer7.i = getelementptr i8, ptr %29, i32 -4
  %37 = ptrtoint ptr %old_xfer_buffer7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %old_xfer_buffer7.i, align 4
  %39 = ptrtoint ptr %transfer_buffer.i13 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %transfer_buffer.i13, align 4
  %40 = ptrtoint ptr %add.ptr.i14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i14, align 4
  tail call void @kfree(ptr noundef %41) #6
  %42 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %transfer_flags.i, align 4
  %and10.i = and i32 %43, -8388609
  store i32 %and10.i, ptr %transfer_flags.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ %call1, %if.then3.cleanup_crit_edge ], [ %call1, %if.end6.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ci_hdrc_unmap_urb_for_dma(ptr noundef %hcd, ptr noundef %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_hcd_unmap_urb_for_dma(ptr noundef %hcd, ptr noundef %urb) #6
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 13
  %0 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %transfer_flags.i, align 4
  %and.i = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.ci_hdrc_free_dma_aligned_buffer.exit_crit_edge, label %if.end.i

entry.ci_hdrc_free_dma_aligned_buffer.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ci_hdrc_free_dma_aligned_buffer.exit

if.end.i:                                         ; preds = %entry
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 -8
  %4 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool1.not.i = icmp eq i32 %4, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then2.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %pipe.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 10
  %5 = ptrtoint ptr %pipe.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pipe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %6)
  %cmp.i = icmp ult i32 %6, 1073741824
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %actual_length.i = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %length.0.in.i = select i1 %cmp.i, ptr %transfer_buffer_length.i, ptr %actual_length.i
  %7 = ptrtoint ptr %length.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %length.0.i = load i32, ptr %length.0.in.i, align 4
  %old_xfer_buffer.i = getelementptr i8, ptr %3, i32 -4
  %8 = ptrtoint ptr %old_xfer_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_xfer_buffer.i, align 4
  %10 = call ptr @memcpy(ptr %9, ptr %3, i32 %length.0.i)
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then2.i, %if.end.i.if.end6.i_crit_edge
  %old_xfer_buffer7.i = getelementptr i8, ptr %3, i32 -4
  %11 = ptrtoint ptr %old_xfer_buffer7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %old_xfer_buffer7.i, align 4
  %13 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %transfer_buffer.i, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %transfer_flags.i, align 4
  %and10.i = and i32 %17, -8388609
  store i32 %and10.i, ptr %transfer_flags.i, align 4
  br label %ci_hdrc_free_dma_aligned_buffer.exit

ci_hdrc_free_dma_aligned_buffer.exit:             ; preds = %if.end6.i, %entry.ci_hdrc_free_dma_aligned_buffer.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ci_hdrc_host_driver_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ehci_init_driver(ptr noundef nonnull @ci_ehci_hc_driver, ptr noundef nonnull @ehci_ci_overrides) #6
  %0 = load ptr, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 20), align 4
  store ptr %0, ptr @orig_bus_suspend, align 4
  store ptr @ci_ehci_bus_suspend, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 20), align 4
  store ptr @ci_ehci_hub_control, ptr getelementptr inbounds (%struct.hc_driver, ptr @ci_ehci_hc_driver, i32 0, i32 19), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_ehci_bus_suspend(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = load ptr, ptr @orig_bus_suspend, align 4
  %call2 = tail call i32 %4(ptr noundef %hcd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup20_crit_edge

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

if.end:                                           ; preds = %entry
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %5 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hcs_params, align 8
  %and = and i32 %6, 15
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %port.0 = phi i32 [ %and, %if.end ], [ %dec, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port.0)
  %tobool3.not = icmp eq i32 %port.0, 0
  br i1 %tobool3.not, label %while.cond.cleanup20_crit_edge, label %while.body

while.cond.cleanup20_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %port.0, -1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %9 = getelementptr inbounds %struct.ehci_regs, ptr %8, i32 0, i32 11
  %arrayidx = getelementptr [15 x i32], ptr %9, i32 0, i32 %dec
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %11 = and i32 %10, 16777216
  %tobool6.not = icmp eq i32 %11, 0
  br i1 %tobool6.not, label %while.body.while.cond_crit_edge, label %if.then7

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

if.then7:                                         ; preds = %while.body
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %imx28_write_fix.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %15 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %bf.load.i = load i32, ptr %imx28_write_fix.i, align 4
  %16 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then7.ehci_writel.exit_crit_edge

if.then7.ehci_writel.exit_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %ehci_writel.exit

do.body.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %19 = or i32 %14, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %19) #6, !srcloc !51
  br label %ehci_writel.exit

ehci_writel.exit:                                 ; preds = %do.body.i, %if.then7.ehci_writel.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 150, i32 noundef 200, i32 noundef 2) #6
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %20 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %platdata, align 4
  %flags = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and12 = and i32 %23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %ehci_writel.exit.cleanup20_crit_edge, label %if.then14

ehci_writel.exit.cleanup20_crit_edge:             ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

if.then14:                                        ; preds = %ehci_writel.exit
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %25 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i44 = load i32, ptr %imx28_write_fix.i, align 4
  %26 = and i32 %bf.load.i44, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i45 = icmp eq i32 %26, 0
  br i1 %tobool.not.i45, label %do.body.i46, label %if.then14.cleanup20_crit_edge

if.then14.cleanup20_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup20

do.body.i46:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %27 = and i32 %24, -12289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %27) #6, !srcloc !51
  br label %cleanup20

cleanup20:                                        ; preds = %do.body.i46, %if.then14.cleanup20_crit_edge, %ehci_writel.exit.cleanup20_crit_edge, %while.cond.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup20_crit_edge ], [ 0, %ehci_writel.exit.cleanup20_crit_edge ], [ 0, %if.then14.cleanup20_crit_edge ], [ 0, %do.body.i46 ], [ 0, %while.cond.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ci_ehci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #0 align 64 {
entry:
  %flags = alloca i32, align 4
  %done = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 30
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %0 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hcs_params, align 8
  %and = and i32 %1, 15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %done) #6
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %done, align 1
  %3 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hcd, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %conv = zext i16 %wIndex to i32
  %and3 = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp ne i32 %and3, 0
  %conv4.neg = sext i1 %cmp to i32
  %sub = add nsw i32 %and3, %conv4.neg
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %9 = getelementptr inbounds %struct.ehci_regs, ptr %8, i32 0, i32 11
  %arrayidx = getelementptr [15 x i32], ptr %9, i32 0, i32 %sub
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 4
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call9, ptr %flags, align 4
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %6, i32 0, i32 32
  %11 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platdata, align 4
  %hub_control = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 23
  %13 = ptrtoint ptr %hub_control to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hub_control, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end17_crit_edge, label %if.then

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then:                                          ; preds = %entry
  %call14 = call i32 %14(ptr noundef %6, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength, ptr noundef nonnull %done, ptr noundef nonnull %flags) #6
  %15 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %done, align 1, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %if.then.if.end17_crit_edge, label %if.then.done90_crit_edge

if.then.done90_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %done90

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end17:                                         ; preds = %if.then.if.end17_crit_edge, %entry.if.end17_crit_edge
  %retval1.0 = phi i32 [ %call14, %if.then.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 8963, i16 %typeReq)
  %cmp19 = icmp eq i16 %typeReq, 8963
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %cmp22 = icmp eq i16 %wValue, 2
  %or.cond = and i1 %cmp19, %cmp22
  br i1 %or.cond, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %wIndex)
  %tobool25.not = icmp eq i16 %wIndex, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp27 = icmp ult i32 %and, %conv
  %or.cond149 = select i1 %tobool25.not, i1 true, i1 %cmp27
  br i1 %or.cond149, label %if.then24.done90_crit_edge, label %if.end30

if.then24.done90_crit_edge:                       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %done90

if.end30:                                         ; preds = %if.then24
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !47
  %18 = call i32 @llvm.bswap.i32(i32 %17) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %19 = and i32 %18, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %20 = icmp eq i32 %19, 4
  br i1 %20, label %if.end40, label %if.end30.done90_crit_edge

if.end30.done90_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %done90

if.end40:                                         ; preds = %if.end30
  %imx28_write_fix.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %21 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load.i = load i32, ptr %imx28_write_fix.i, align 4
  %22 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end40.ehci_writel.exit_crit_edge

if.end40.ehci_writel.exit_crit_edge:              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %ehci_writel.exit

do.body.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %and41 = and i32 %18, -7340203
  %or42 = or i32 %and41, 6291584
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  call void @arm_heavy_mb() #6
  %23 = call i32 @llvm.bswap.i32(i32 %or42) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %23) #6, !srcloc !51
  br label %ehci_writel.exit

ehci_writel.exit:                                 ; preds = %do.body.i, %if.end40.ehci_writel.exit_crit_edge
  %call43 = call i32 @ehci_handshake(ptr noundef %hcd_priv.i, ptr noundef %arrayidx, i32 noundef 128, i32 noundef 128, i32 noundef 5000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %ehci_writel.exit.if.end52_crit_edge, label %do.end48

ehci_writel.exit.if.end52_crit_edge:              ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

do.end48:                                         ; preds = %ehci_writel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.14) #9
  br label %if.end52

if.end52:                                         ; preds = %do.end48, %ehci_writel.exit.if.end52_crit_edge
  %26 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %platdata, align 4
  %flags54 = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags54, align 4
  %and55 = and i32 %29, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.end52.if.end67_crit_edge, label %if.then57

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then57:                                        ; preds = %if.end52
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %27, i32 0, i32 8
  %30 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %notify_event, align 4
  %tobool59.not = icmp eq ptr %31, null
  br i1 %tobool59.not, label %if.then57.if.end64_crit_edge, label %if.then60

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = call i32 %31(ptr noundef %6, i32 noundef 3) #6
  br label %if.end64

if.end64:                                         ; preds = %if.then60, %if.then57.if.end64_crit_edge
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx) #6, !srcloc !47
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
  %33 = ptrtoint ptr %imx28_write_fix.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load.i153 = load i32, ptr %imx28_write_fix.i, align 4
  %34 = and i32 %bf.load.i153, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i154 = icmp eq i32 %34, 0
  br i1 %tobool.not.i154, label %do.body.i155, label %if.end64.if.end67_crit_edge

if.end64.if.end67_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.body.i155:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %35 = and i32 %32, -12289
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 %35) #6, !srcloc !51
  br label %if.end67

if.end67:                                         ; preds = %do.body.i155, %if.end64.if.end67_crit_edge, %if.end52.if.end67_crit_edge
  %suspended_ports = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 20, i32 3, i32 2
  call void @_set_bit(i32 noundef %sub, ptr noundef %suspended_ports) #6
  br label %done90

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp2(i16 8961, i16 %typeReq)
  %cmp69 = icmp eq i16 %typeReq, 8961
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %wValue)
  %cmp73 = icmp eq i16 %wValue, 18
  %or.cond151 = and i1 %cmp69, %cmp73
  br i1 %or.cond151, label %if.then75, label %if.else.if.end87_crit_edge

if.else.if.end87_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.then75:                                        ; preds = %if.else
  %call76 = call i32 @ehci_handshake(ptr noundef %hcd_priv.i, ptr noundef %arrayidx, i32 noundef 64, i32 noundef 0, i32 noundef 25000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.if.end87_crit_edge, label %do.end81

if.then75.if.end87_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

do.end81:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.17) #9
  br label %if.end87

if.end87:                                         ; preds = %do.end81, %if.then75.if.end87_crit_edge, %if.else.if.end87_crit_edge
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %39) #6
  %call89 = call i32 @ehci_hub_control(ptr noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr noundef %buf, i16 noundef zeroext %wLength) #6
  br label %cleanup

done90:                                           ; preds = %if.end67, %if.end30.done90_crit_edge, %if.then24.done90_crit_edge, %if.then.done90_crit_edge
  %retval1.1 = phi i32 [ %call14, %if.then.done90_crit_edge ], [ %retval1.0, %if.end67 ], [ -32, %if.then24.done90_crit_edge ], [ -32, %if.end30.done90_crit_edge ]
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %41) #6
  br label %cleanup

cleanup:                                          ; preds = %done90, %if.end87
  %retval.0 = phi i32 [ %retval1.1, %done90 ], [ %call89, %if.end87 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %done) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__usb_create_hcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_map_urb_for_dma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_unmap_urb_for_dma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_ci_reset(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @ehci_setup(ptr noundef %hcd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %need_io_watchdog = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %need_io_watchdog to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load = load i32, ptr %need_io_watchdog, align 4
  %bf.clear = and i32 %bf.load, -8388609
  store i32 %bf.clear, ptr %need_io_watchdog, align 4
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %5 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platdata, align 4
  %notify_event = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %notify_event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notify_event, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then4:                                         ; preds = %if.end
  %call7 = tail call i32 %8(ptr noundef %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then4.if.end11_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4.if.end11_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then4.if.end11_crit_edge, %if.end.if.end11_crit_edge
  tail call void @ci_platform_configure(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call2, %entry.cleanup_crit_edge ], [ %call7, %if.then4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_ci_portpower(ptr nocapture noundef %hcd, i32 noundef %portnum, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %enable to i8
  %priv1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %hcs_params = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %4 = ptrtoint ptr %hcs_params to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hcs_params, align 8
  %and = and i32 %5, 14
  %6 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv1, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end28_crit_edge, label %land.lhs.true

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 2, i32 0, i32 9, i32 3, i32 1
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !46
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %frombool)
  %cmp.not = icmp eq i8 %9, %frombool
  br i1 %cmp.not, label %land.lhs.true.if.end28_crit_edge, label %if.then

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp7.not = icmp eq i32 %and, 0
  br i1 %cmp7.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  br i1 %enable, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @regulator_enable(ptr noundef nonnull %7) #6
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @regulator_disable(ptr noundef nonnull %7) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %ret.0 = phi i32 [ %call13, %if.then11 ], [ %call15, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool17.not = icmp eq i32 %ret.0, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %enable, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond, i32 noundef %ret.0) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %enabled, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end24, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  br i1 %enable, label %land.lhs.true31, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true31:                                  ; preds = %if.end28
  %platdata = getelementptr inbounds %struct.ci_hdrc, ptr %3, i32 0, i32 32
  %11 = ptrtoint ptr %platdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %platdata, align 4
  %phy_mode = getelementptr inbounds %struct.ci_hdrc_platform_data, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %phy_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phy_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %cmp32 = icmp eq i32 %14, 5
  br i1 %cmp32, label %if.then34, label %land.lhs.true31.cleanup_crit_edge

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 @hw_port_test_set(ptr noundef %3, i8 noundef zeroext 5) #6
  %call36 = tail call i32 @hw_port_test_set(ptr noundef %3, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %land.lhs.true31.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %do.end21, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %do.end21 ], [ 0, %if.then34 ], [ 0, %land.lhs.true31.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ci_platform_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hw_port_test_set(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_handshake(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_hub_control(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/chipidea/host.c", i32 469, i32 15}
!2 = !{ptr @ci_ehci_hc_driver, !3, !"ci_ehci_hc_driver", i1 false, i1 false}
!3 = !{!"../drivers/usb/chipidea/host.c", i32 24, i32 39}
!4 = !{ptr @orig_bus_suspend, !5, !"orig_bus_suspend", i1 false, i1 false}
!5 = !{!"../drivers/usb/chipidea/host.c", i32 25, i32 14}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/chipidea/host.c", i32 155, i32 5}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @host_start._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @host_start._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ehci_ci_overrides, !15, !"ehci_ci_overrides", i1 false, i1 false}
!15 = !{!"../drivers/usb/chipidea/host.c", i32 102, i32 43}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/chipidea/host.c", i32 49, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ehci_ci_portpower._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @ehci_ci_portpower._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/chipidea/host.c", i32 58, i32 4}
!24 = !{ptr @ehci_ci_portpower._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ehci_ci_portpower._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/chipidea/host.c", i32 287, i32 4}
!30 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ci_ehci_hub_control._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @ci_ehci_hub_control._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/chipidea/host.c", i32 311, i32 4}
!35 = !{ptr @ci_ehci_hub_control._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ci_ehci_hub_control._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
!47 = !{i64 1256345}
!48 = !{i64 2148936337}
!49 = !{i64 2155287859}
!50 = !{i64 2155288398}
!51 = !{i64 1255927}
