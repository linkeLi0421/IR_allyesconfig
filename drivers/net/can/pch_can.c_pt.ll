; ModuleID = '/llk/IR_all_yes/drivers/net/can/pch_can.c_pt.bc'
source_filename = "../drivers/net/can/pch_can.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.can_bittiming_const = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pch_can_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.pch_can_if_regs], [8 x i32], i32, i32, [6 x i32], i32, i32, [6 x i32], i32, i32, [6 x i32], i32, i32, [37 x i32], i32 }
%struct.pch_can_if_regs = type { i32, i32, i32, i32, i32, i32, i32, [4 x i32], [13 x i32] }
%struct.can_berr_counter = type { i16, i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.can_frame = type { i32, %union.anon.146, i8, i8, i8, [8 x i8] }
%union.anon.146 = type { i8 }
%struct.pch_can_priv = type { %struct.can_priv, ptr, [32 x i32], [32 x i32], [32 x i32], i32, ptr, ptr, %struct.napi_struct, i32, i32 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }
%struct.can_skb_priv = type { i32, i32, i32, [4 x i8], [0 x %struct.can_frame] }

@__initcall__kmod_pch_can__466_1238_pch_can_pci_driver_init6 = internal global ptr @pch_can_pci_driver_init, section ".initcall6.init", align 4
@pch_can_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @pch_pci_tbl, ptr @pch_can_probe, ptr @pch_can_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pch_can_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pch_can_pci_driver_exit = internal global ptr @pch_can_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description467 = internal constant [72 x i8] c"pch_can.description=Intel EG20T PCH CAN(Controller Area Network) Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file468 = internal constant [37 x i8] c"pch_can.file=drivers/net/can/pch_can\00", section ".modinfo", align 1
@__UNIQUE_ID_license469 = internal constant [23 x i8] c"pch_can.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version470 = internal constant [21 x i8] c"pch_can.version=0.94\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pch_can\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.94\00", [27 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@pch_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 34840, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pch_can_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pch_can_suspend, ptr @pch_can_resume, ptr @pch_can_suspend, ptr @pch_can_resume, ptr @pch_can_suspend, ptr @pch_can_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pch_can_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1149, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed pci_enable_device %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_can_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/net/can/pch_can.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pch_can_probe._entry_ptr = internal global ptr @pch_can_probe._entry, section ".printk_index", align 4
@pch_can_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1155, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed pci_request_regions %d\0A\00", [33 x i8] zeroinitializer }, align 32
@pch_can_probe._entry_ptr.10 = internal global ptr @pch_can_probe._entry.8, section ".printk_index", align 4
@pch_can_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1162, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Failed pci_iomap\0A\00", [46 x i8] zeroinitializer }, align 32
@pch_can_probe._entry_ptr.13 = internal global ptr @pch_can_probe._entry.11, section ".printk_index", align 4
@pch_can_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1169, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed alloc_candev\0A\00", [43 x i8] zeroinitializer }, align 32
@pch_can_probe._entry_ptr.16 = internal global ptr @pch_can_probe._entry.14, section ".printk_index", align 4
@pch_can_bittiming_const = internal constant { %struct.can_bittiming_const, [48 x i8] } { %struct.can_bittiming_const { [16 x i8] c"pch_can\00\00\00\00\00\00\00\00\00", i32 2, i32 16, i32 1, i32 8, i32 4, i32 1, i32 1024, i32 1 }, [48 x i8] zeroinitializer }, align 32
@pch_can_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @pch_can_open, ptr @pch_close, ptr @pch_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @can_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCH CAN opened without MSI\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCH CAN opened with MSI\0A\00", [39 x i8] zeroinitializer }, align 32
@pch_can_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed register_candev %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pch_can_probe._entry_ptr.21 = internal global ptr @pch_can_probe._entry.19, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pch_can_rw_msg_obj._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:IF1 BUSY Flag is set forever.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pch_can_rw_msg_obj\00", [45 x i8] zeroinitializer }, align 32
@pch_can_rw_msg_obj._entry_ptr = internal global ptr @pch_can_rw_msg_obj._entry, section ".printk_index", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request_irq failed.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"open_candev() failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@can_skb_headroom_valid.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/can/skb.h\00", [40 x i8] zeroinitializer }, align 32
@pch_can_error.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.5, ptr @.str.30, i8 0, i8 -128, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pch_can_error\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s -> Error Counter is more than 96.\0A\00", [58 x i8] zeroinitializer }, align 32
@pch_can_error.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.29, ptr @.str.5, ptr @.str.31, i8 0, i8 -125, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s -> CAN controller is ERROR PASSIVE .\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alloc_can_skb Failed\0A\00", [42 x i8] zeroinitializer }, align 32
@pch_can_rx_msg_lost.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.5, ptr @.str.34, i8 0, i8 -104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pch_can_rx_msg_lost\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Msg Obj is overwritten.\0A\00", [39 x i8] zeroinitializer }, align 32
@pch_can_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 1055, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s -> Transmission time out.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pch_can_suspend\00", [16 x i8] zeroinitializer }, align 32
@pch_can_suspend._entry_ptr = internal global ptr @pch_can_suspend._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 32768]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 12, i64 13]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"pch_can_pci_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1230, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1242, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"pch_pci_tbl\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 186, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"pch_can_pm_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1226, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1149, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1155, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1162, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1169, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"pch_can_bittiming_const\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 174, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"pch_can_netdev_ops\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 933, i32 36 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1196, i32 20 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1199, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1206, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 248, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 836, i32 20 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 843, i32 20 }
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"../include/linux/can/skb.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 104, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 511, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 523, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 665, i32 21 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 608, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [29 x i8] c"../drivers/net/can/pch_can.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 1055, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_description467, ptr @__UNIQUE_ID_file468, ptr @__UNIQUE_ID_license469, ptr @__UNIQUE_ID_version470, ptr @__exitcall_pch_can_pci_driver_exit, ptr @__initcall__kmod_pch_can__466_1238_pch_can_pci_driver_init6, ptr @__modver_attr, ptr @pch_can_pci_driver_exit, ptr @pch_can_probe._entry, ptr @pch_can_probe._entry.11, ptr @pch_can_probe._entry.14, ptr @pch_can_probe._entry.19, ptr @pch_can_probe._entry.8, ptr @pch_can_probe._entry_ptr, ptr @pch_can_probe._entry_ptr.10, ptr @pch_can_probe._entry_ptr.13, ptr @pch_can_probe._entry_ptr.16, ptr @pch_can_probe._entry_ptr.21, ptr @pch_can_rw_msg_obj._entry, ptr @pch_can_rw_msg_obj._entry_ptr, ptr @pch_can_suspend._entry, ptr @pch_can_suspend._entry_ptr, ptr @pch_can_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pch_pci_tbl, ptr @pch_can_pm_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @pch_can_bittiming_const, ptr @pch_can_netdev_ops, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_bittiming_const to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_rw_msg_obj._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pch_can_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @pch_can_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pch_can_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @pch_can_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.9, i32 noundef %call1) #9
  br label %probe_exit_pcireq

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.12) #9
  br label %probe_exit_ipmap

if.end16:                                         ; preds = %if.end8
  %call17 = tail call ptr @alloc_candev_mqs(i32 noundef 944, i32 noundef 32, i32 noundef 1, i32 noundef 1) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.15) #9
  br label %probe_exit_alloc_candev

if.end24:                                         ; preds = %if.end16
  %ndev26 = getelementptr i8, ptr %call17, i32 3008
  %0 = ptrtoint ptr %ndev26 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call17, ptr %ndev26, align 8
  %regs = getelementptr i8, ptr %call17, i32 3012
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9, ptr %regs, align 4
  %dev27 = getelementptr i8, ptr %call17, i32 2616
  %2 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %dev27, align 8
  %bittiming_const = getelementptr i8, ptr %call17, i32 2332
  %3 = ptrtoint ptr %bittiming_const to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @pch_can_bittiming_const, ptr %bittiming_const, align 4
  %do_set_mode = getelementptr i8, ptr %call17, i32 2596
  %4 = ptrtoint ptr %do_set_mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @pch_can_do_set_mode, ptr %do_set_mode, align 4
  %do_get_berr_counter = getelementptr i8, ptr %call17, i32 2608
  %5 = ptrtoint ptr %do_get_berr_counter to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pch_can_get_berr_counter, ptr %do_get_berr_counter, align 8
  %ctrlmode_supported = getelementptr i8, ptr %call17, i32 2480
  %6 = ptrtoint ptr %ctrlmode_supported to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %ctrlmode_supported, align 8
  %tx_obj = getelementptr i8, ptr %call17, i32 3240
  %7 = ptrtoint ptr %tx_obj to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 27, ptr %tx_obj, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %irq31 = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 64
  %10 = ptrtoint ptr %irq31 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %irq31, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %or = or i32 %12, 262144
  store i32 %or, ptr %flags, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %driver_data.i.i, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 133, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev32, ptr %parent, align 8
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call17, i32 0, i32 16
  %15 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pch_can_netdev_ops, ptr %netdev_ops, align 8
  %clock = getelementptr i8, ptr %call17, i32 2440
  %16 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 50000000, ptr %clock, align 8
  %napi = getelementptr i8, ptr %call17, i32 3016
  tail call void @netif_napi_add(ptr noundef nonnull %call17, ptr noundef %napi, ptr noundef nonnull @pch_can_poll, i32 noundef 26) #6
  %17 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev27, align 8
  %call36 = tail call i32 @pci_enable_msi(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call17, ptr noundef nonnull @.str.17) #9
  br label %if.end40

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call17, ptr noundef nonnull @.str.18) #9
  tail call void @pci_set_master(ptr noundef %pdev) #6
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then38
  %.sink = phi i32 [ 1, %if.else ], [ 0, %if.then38 ]
  %19 = getelementptr i8, ptr %call17, i32 3244
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %19, align 4
  %call41 = tail call i32 @register_candev(ptr noundef nonnull %call17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %do.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.20, i32 noundef %call41) #9
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool50.not = icmp eq i32 %22, 0
  br i1 %tobool50.not, label %do.end46.if.end53_crit_edge, label %if.then51

do.end46.if.end53_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then51:                                        ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev27, align 8
  tail call void @pci_disable_msi(ptr noundef %24) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %do.end46.if.end53_crit_edge
  tail call void @free_candev(ptr noundef nonnull %call17) #6
  br label %probe_exit_alloc_candev

probe_exit_alloc_candev:                          ; preds = %if.end53, %if.then19
  %rc.0 = phi i32 [ %call41, %if.end53 ], [ -12, %if.then19 ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call9) #6
  br label %probe_exit_ipmap

probe_exit_ipmap:                                 ; preds = %probe_exit_alloc_candev, %if.then11
  %rc.1 = phi i32 [ %rc.0, %probe_exit_alloc_candev ], [ -5, %if.then11 ]
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  br label %probe_exit_pcireq

probe_exit_pcireq:                                ; preds = %probe_exit_ipmap, %do.end6
  %rc.2 = phi i32 [ %call1, %do.end6 ], [ %rc.1, %probe_exit_ipmap ]
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %probe_exit_pcireq, %if.end40.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end40.cleanup_crit_edge ], [ %call, %do.end ], [ %rc.2, %probe_exit_pcireq ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pch_can_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev2 = getelementptr i8, ptr %1, i32 3008
  %2 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev2, align 8
  tail call void @unregister_candev(ptr noundef %3) #6
  %use_msi = getelementptr i8, ptr %1, i32 3244
  %4 = ptrtoint ptr %use_msi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %use_msi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %1, i32 2616
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void @pci_disable_msi(ptr noundef %7) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  %regs.i = getelementptr i8, ptr %1, i32 3012
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %srst.i = getelementptr inbounds %struct.pch_can_regs, ptr %9, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srst.i, i32 16777216) #6, !srcloc !98
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %srst2.i = getelementptr inbounds %struct.pch_can_regs, ptr %11, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srst2.i, i32 0) #6, !srcloc !98
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %13) #6
  %14 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ndev2, align 8
  tail call void @free_candev(ptr noundef %15) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_candev_mqs(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_do_set_mode(ptr nocapture noundef %ndev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cond = icmp eq i32 %mode, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pch_can_start(ptr noundef %ndev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_get_berr_counter(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %bec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %dev, i32 3012
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %errc1 = getelementptr inbounds %struct.pch_can_regs, ptr %1, i32 0, i32 2
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %errc1) #6, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %4 = trunc i32 %3 to i16
  %conv = and i16 %4, 255
  %5 = ptrtoint ptr %bec to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %bec, align 2
  %6 = lshr i16 %4, 8
  %conv4 = and i16 %6, 127
  %rxerr = getelementptr inbounds %struct.can_berr_counter, ptr %bec, i32 0, i32 1
  %7 = ptrtoint ptr %rxerr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv4, ptr %rxerr, align 2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_poll(ptr noundef %napi, i32 noundef %quota) #2 align 64 {
entry:
  %cf.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %regs.i = getelementptr i8, ptr %1, i32 3012
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %intr.i = getelementptr inbounds %struct.pch_can_regs, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %5 = and i32 %4, -65536
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  %trunc = trunc i32 %6 to i16
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i16 %trunc, label %entry.if.end17_crit_edge [
    i16 0, label %entry.end_crit_edge
    i16 -32768, label %if.then2
  ]

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then2:                                         ; preds = %entry
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %stat = getelementptr inbounds %struct.pch_can_regs, ptr %9, i32 0, i32 1
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat) #6, !srcloc !99
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and = and i32 %11, 135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %and5 = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and5)
  %cmp6.not = icmp eq i32 %and5, 7
  %or.cond = or i1 %tobool4.not, %cmp6.not
  br i1 %or.cond, label %if.then2.if.end8_crit_edge, label %if.then7

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pch_can_error(ptr noundef %1, i32 noundef %11)
  %dec = add i32 %quota, -1
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.then2.if.end8_crit_edge
  %quota.addr.0 = phi i32 [ %dec, %if.then7 ], [ %quota, %if.then2.if.end8_crit_edge ]
  %and9 = and i32 %11, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end15_crit_edge, label %if.then11

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %stat13 = getelementptr inbounds %struct.pch_can_regs, ptr %13, i32 0, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %stat13) #6, !srcloc !99
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %neg.i = xor i32 %and9, -1
  %and.i = and i32 %15, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stat13, i32 %16) #6, !srcloc !98
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end8.if.end15_crit_edge
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %intr.i61 = getelementptr inbounds %struct.pch_can_regs, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intr.i61) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %20 = and i32 %19, -65536
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %entry.if.end17_crit_edge
  %quota.addr.1 = phi i32 [ %quota.addr.0, %if.end15 ], [ %quota, %entry.if.end17_crit_edge ]
  %int_stat.0 = phi i32 [ %21, %if.end15 ], [ %6, %entry.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %quota.addr.1)
  %cmp18 = icmp eq i32 %quota.addr.1, 0
  br i1 %cmp18, label %if.end17.end_crit_edge, label %if.end20

if.end17.end_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.end20:                                         ; preds = %if.end17
  %22 = add nsw i32 %int_stat.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %22)
  %23 = icmp ult i32 %22, 26
  br i1 %23, label %if.then24, label %if.else

if.then24:                                        ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf.i) #6
  %24 = ptrtoint ptr %cf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf.i, align 4, !annotation !101
  %ndev1.i = getelementptr i8, ptr %1, i32 3008
  %25 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ndev1.i, align 8
  %stats2.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 36, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then24
  %obj_num.addr.0.i = phi i32 [ %int_stat.0, %if.then24 ], [ %obj_num.addr.1.i, %do.cond.i.do.body.i_crit_edge ]
  %quota.addr.0.i = phi i32 [ %quota.addr.1, %if.then24 ], [ %quota.addr.1.i, %do.cond.i.do.body.i_crit_edge ]
  %rcv_pkts.0.i = phi i32 [ 0, %if.then24 ], [ %rcv_pkts.1.i, %do.cond.i.do.body.i_crit_edge ]
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %cmask.i = getelementptr inbounds %struct.pch_can_regs, ptr %28, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i, i32 1929379840) #6, !srcloc !98
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %ifregs4.i = getelementptr inbounds %struct.pch_can_regs, ptr %30, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs4.i, i32 noundef %obj_num.addr.0.i) #6
  %31 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs.i, align 4
  %mcont.i = getelementptr inbounds %struct.pch_can_regs, ptr %32, i32 0, i32 8, i32 0, i32 6
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i) #6, !srcloc !99
  %34 = call i32 @llvm.bswap.i32(i32 %33) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and.i63 = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63)
  %tobool.not.i = icmp eq i32 %and.i63, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.pch_can_rx_normal.exit_crit_edge

do.body.i.pch_can_rx_normal.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pch_can_rx_normal.exit

if.end.i:                                         ; preds = %do.body.i
  %and10.i = and i32 %34, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @pch_can_rx_msg_lost(ptr noundef %1, i32 noundef %obj_num.addr.0.i) #6
  %inc.i = add i32 %rcv_pkts.0.i, 1
  %dec.i = add i32 %quota.addr.0.i, -1
  br label %do.cond.i

if.else.i:                                        ; preds = %if.end.i
  %and14.i = and i32 %34, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else.i.do.cond.i_crit_edge, label %if.end19.i

if.else.i.do.cond.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.end19.i:                                       ; preds = %if.else.i
  %35 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ndev1.i, align 8
  %call21.i = call ptr @alloc_can_skb(ptr noundef %36, ptr noundef nonnull %cf.i) #6
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.32) #9
  br label %pch_can_rx_normal.exit

if.end24.i:                                       ; preds = %if.end19.i
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %id228.i = getelementptr inbounds %struct.pch_can_regs, ptr %38, i32 0, i32 8, i32 0, i32 5
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id228.i) #6, !srcloc !99
  %40 = call i32 @llvm.bswap.i32(i32 %39) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and30.i = and i32 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.else40.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 4
  %id1.i = getelementptr inbounds %struct.pch_can_regs, ptr %42, i32 0, i32 8, i32 0, i32 4
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id1.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %44 = and i32 %43, -65536
  %45 = call i32 @llvm.bswap.i32(i32 %44) #6
  %and38.i = shl i32 %40, 16
  %shl.i = and i32 %and38.i, 536805376
  %or.i = or i32 %shl.i, %45
  %or39.i = or i32 %or.i, -2147483648
  %46 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cf.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or39.i, ptr %47, align 8
  br label %if.end43.i

if.else40.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %40, 2
  %and41.i = and i32 %shr.i, 2047
  %49 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cf.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and41.i, ptr %50, align 8
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.else40.i, %if.then32.i
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %mcont47.i = getelementptr inbounds %struct.pch_can_regs, ptr %53, i32 0, i32 8, i32 0, i32 6
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont47.i) #6, !srcloc !99
  %55 = lshr i32 %54, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %conv.i = and i32 %55, 15
  %56 = call i32 @llvm.umin.i32(i32 %conv.i, i32 8) #6
  %conv55.i = trunc i32 %56 to i8
  %57 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %cf.i, align 4
  %59 = getelementptr inbounds %struct.can_frame, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv55.i, ptr %59, align 4
  %and56.i = and i32 %40, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %for.cond.preheader.i, label %if.then58.i

for.cond.preheader.i:                             ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv55.i)
  %cmp63232.not.i = icmp eq i8 %conv55.i, 0
  br i1 %cmp63232.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

if.then58.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %58, align 8
  %or60.i = or i32 %62, 1073741824
  store i32 %or60.i, ptr %58, align 8
  br label %if.end81.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0233.i = phi i32 [ %add78.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %63 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs.i, align 4
  %div.udiv236.i = lshr exact i32 %i.0233.i, 1
  %arrayidx68.i = getelementptr %struct.pch_can_regs, ptr %64, i32 0, i32 8, i32 0, i32 7, i32 %div.udiv236.i
  %65 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %arrayidx68.i) #6, !srcloc !102
  %66 = call i16 @llvm.bswap.i16(i16 %65) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  %conv70.i = trunc i16 %66 to i8
  %67 = ptrtoint ptr %cf.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cf.i, align 4
  %arrayidx72.i = getelementptr %struct.can_frame, ptr %68, i32 0, i32 5, i32 %i.0233.i
  %69 = ptrtoint ptr %arrayidx72.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv70.i, ptr %arrayidx72.i, align 1
  %70 = lshr i16 %66, 8
  %conv75.i = trunc i16 %70 to i8
  %71 = load ptr, ptr %cf.i, align 4
  %add.i = or i32 %i.0233.i, 1
  %arrayidx77.i = getelementptr %struct.can_frame, ptr %71, i32 0, i32 5, i32 %add.i
  %72 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv75.i, ptr %arrayidx77.i, align 1
  %add78.i = add nuw nsw i32 %i.0233.i, 2
  %73 = load ptr, ptr %cf.i, align 4
  %74 = getelementptr inbounds %struct.can_frame, ptr %73, i32 0, i32 1
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 4
  %conv62.i = zext i8 %76 to i32
  %cmp63.i = icmp ult i32 %add78.i, %conv62.i
  br i1 %cmp63.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %.lcssa.i = phi i8 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %76, %for.body.i.for.end.i_crit_edge ]
  %conv62.le.i = zext i8 %.lcssa.i to i32
  %77 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_bytes.i, align 4
  %add80.i = add i32 %78, %conv62.le.i
  store i32 %add80.i, ptr %rx_bytes.i, align 4
  br label %if.end81.i

if.end81.i:                                       ; preds = %for.end.i, %if.then58.i
  %79 = ptrtoint ptr %stats2.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %stats2.i, align 4
  %inc82.i = add i32 %80, 1
  store i32 %inc82.i, ptr %stats2.i, align 4
  %inc83.i = add i32 %rcv_pkts.0.i, 1
  %dec84.i = add i32 %quota.addr.0.i, -1
  %call85.i = call i32 @netif_receive_skb(ptr noundef nonnull %call21.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %obj_num.addr.0.i)
  %cmp.i.i = icmp slt i32 %obj_num.addr.0.i, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 4
  %cmask.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %82, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i.i, i32 -1342177280) #6, !srcloc !98
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %id2.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %84, i32 0, i32 8, i32 0, i32 5
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %86 = and i32 %85, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i.i, i32 %86) #6, !srcloc !98
  %87 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i, align 4
  %mcont.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %88, i32 0, i32 8, i32 0, i32 6
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %90 = and i32 %89, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i.i, i32 %90) #6, !srcloc !98
  %91 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i, align 4
  %ifregs8.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %92, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs8.i.i, i32 noundef %obj_num.addr.0.i) #6
  br label %do.cond.i

if.else.i.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %obj_num.addr.0.i)
  %cmp10.not.i.i = icmp eq i32 %obj_num.addr.0.i, 16
  br i1 %cmp10.not.i.i, label %for.body.preheader.i.i, label %if.then11.i.i

for.body.preheader.i.i:                           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %cmask.i225.i = getelementptr inbounds %struct.pch_can_regs, ptr %94, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i225.i, i32 -1342177280) #6, !srcloc !98
  %95 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs.i, align 4
  %id2.i226.i = getelementptr inbounds %struct.pch_can_regs, ptr %96, i32 0, i32 8, i32 0, i32 5
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i226.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %98 = and i32 %97, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i226.i, i32 %98) #6, !srcloc !98
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %mcont.i227.i = getelementptr inbounds %struct.pch_can_regs, ptr %100, i32 0, i32 8, i32 0, i32 6
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i227.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %102 = and i32 %101, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i227.i, i32 %102) #6, !srcloc !98
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  %ifregs9.i228.i = getelementptr inbounds %struct.pch_can_regs, ptr %104, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i228.i, i32 noundef 1) #6
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 4
  %cmask.i219.i = getelementptr inbounds %struct.pch_can_regs, ptr %106, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i219.i, i32 -1342177280) #6, !srcloc !98
  %107 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i, align 4
  %id2.i220.i = getelementptr inbounds %struct.pch_can_regs, ptr %108, i32 0, i32 8, i32 0, i32 5
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i220.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %110 = and i32 %109, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i220.i, i32 %110) #6, !srcloc !98
  %111 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i, align 4
  %mcont.i221.i = getelementptr inbounds %struct.pch_can_regs, ptr %112, i32 0, i32 8, i32 0, i32 6
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i221.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %114 = and i32 %113, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i221.i, i32 %114) #6, !srcloc !98
  %115 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs.i, align 4
  %ifregs9.i222.i = getelementptr inbounds %struct.pch_can_regs, ptr %116, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i222.i, i32 noundef 2) #6
  %117 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i, align 4
  %cmask.i213.i = getelementptr inbounds %struct.pch_can_regs, ptr %118, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i213.i, i32 -1342177280) #6, !srcloc !98
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 4
  %id2.i214.i = getelementptr inbounds %struct.pch_can_regs, ptr %120, i32 0, i32 8, i32 0, i32 5
  %121 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i214.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %122 = and i32 %121, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i214.i, i32 %122) #6, !srcloc !98
  %123 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i, align 4
  %mcont.i215.i = getelementptr inbounds %struct.pch_can_regs, ptr %124, i32 0, i32 8, i32 0, i32 6
  %125 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i215.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %126 = and i32 %125, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i215.i, i32 %126) #6, !srcloc !98
  %127 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i, align 4
  %ifregs9.i216.i = getelementptr inbounds %struct.pch_can_regs, ptr %128, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i216.i, i32 noundef 3) #6
  %129 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs.i, align 4
  %cmask.i207.i = getelementptr inbounds %struct.pch_can_regs, ptr %130, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i207.i, i32 -1342177280) #6, !srcloc !98
  %131 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regs.i, align 4
  %id2.i208.i = getelementptr inbounds %struct.pch_can_regs, ptr %132, i32 0, i32 8, i32 0, i32 5
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i208.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %134 = and i32 %133, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i208.i, i32 %134) #6, !srcloc !98
  %135 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regs.i, align 4
  %mcont.i209.i = getelementptr inbounds %struct.pch_can_regs, ptr %136, i32 0, i32 8, i32 0, i32 6
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i209.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %138 = and i32 %137, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i209.i, i32 %138) #6, !srcloc !98
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 4
  %ifregs9.i210.i = getelementptr inbounds %struct.pch_can_regs, ptr %140, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i210.i, i32 noundef 4) #6
  %141 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regs.i, align 4
  %cmask.i201.i = getelementptr inbounds %struct.pch_can_regs, ptr %142, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i201.i, i32 -1342177280) #6, !srcloc !98
  %143 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i, align 4
  %id2.i202.i = getelementptr inbounds %struct.pch_can_regs, ptr %144, i32 0, i32 8, i32 0, i32 5
  %145 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i202.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %146 = and i32 %145, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i202.i, i32 %146) #6, !srcloc !98
  %147 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regs.i, align 4
  %mcont.i203.i = getelementptr inbounds %struct.pch_can_regs, ptr %148, i32 0, i32 8, i32 0, i32 6
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i203.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %150 = and i32 %149, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i203.i, i32 %150) #6, !srcloc !98
  %151 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i, align 4
  %ifregs9.i204.i = getelementptr inbounds %struct.pch_can_regs, ptr %152, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i204.i, i32 noundef 5) #6
  %153 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i, align 4
  %cmask.i195.i = getelementptr inbounds %struct.pch_can_regs, ptr %154, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i195.i, i32 -1342177280) #6, !srcloc !98
  %155 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs.i, align 4
  %id2.i196.i = getelementptr inbounds %struct.pch_can_regs, ptr %156, i32 0, i32 8, i32 0, i32 5
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i196.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %158 = and i32 %157, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i196.i, i32 %158) #6, !srcloc !98
  %159 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %regs.i, align 4
  %mcont.i197.i = getelementptr inbounds %struct.pch_can_regs, ptr %160, i32 0, i32 8, i32 0, i32 6
  %161 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i197.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %162 = and i32 %161, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i197.i, i32 %162) #6, !srcloc !98
  %163 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i, align 4
  %ifregs9.i198.i = getelementptr inbounds %struct.pch_can_regs, ptr %164, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i198.i, i32 noundef 6) #6
  %165 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regs.i, align 4
  %cmask.i189.i = getelementptr inbounds %struct.pch_can_regs, ptr %166, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i189.i, i32 -1342177280) #6, !srcloc !98
  %167 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regs.i, align 4
  %id2.i190.i = getelementptr inbounds %struct.pch_can_regs, ptr %168, i32 0, i32 8, i32 0, i32 5
  %169 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i190.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %170 = and i32 %169, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i190.i, i32 %170) #6, !srcloc !98
  %171 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i, align 4
  %mcont.i191.i = getelementptr inbounds %struct.pch_can_regs, ptr %172, i32 0, i32 8, i32 0, i32 6
  %173 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i191.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %174 = and i32 %173, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i191.i, i32 %174) #6, !srcloc !98
  %175 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i, align 4
  %ifregs9.i192.i = getelementptr inbounds %struct.pch_can_regs, ptr %176, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i192.i, i32 noundef 7) #6
  %177 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i, align 4
  %cmask.i183.i = getelementptr inbounds %struct.pch_can_regs, ptr %178, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i183.i, i32 -1342177280) #6, !srcloc !98
  %179 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regs.i, align 4
  %id2.i184.i = getelementptr inbounds %struct.pch_can_regs, ptr %180, i32 0, i32 8, i32 0, i32 5
  %181 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i184.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %182 = and i32 %181, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i184.i, i32 %182) #6, !srcloc !98
  %183 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regs.i, align 4
  %mcont.i185.i = getelementptr inbounds %struct.pch_can_regs, ptr %184, i32 0, i32 8, i32 0, i32 6
  %185 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i185.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %186 = and i32 %185, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i185.i, i32 %186) #6, !srcloc !98
  %187 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i, align 4
  %ifregs9.i186.i = getelementptr inbounds %struct.pch_can_regs, ptr %188, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i186.i, i32 noundef 8) #6
  %189 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regs.i, align 4
  %cmask.i177.i = getelementptr inbounds %struct.pch_can_regs, ptr %190, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i177.i, i32 -1342177280) #6, !srcloc !98
  %191 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regs.i, align 4
  %id2.i178.i = getelementptr inbounds %struct.pch_can_regs, ptr %192, i32 0, i32 8, i32 0, i32 5
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i178.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %194 = and i32 %193, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i178.i, i32 %194) #6, !srcloc !98
  %195 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regs.i, align 4
  %mcont.i179.i = getelementptr inbounds %struct.pch_can_regs, ptr %196, i32 0, i32 8, i32 0, i32 6
  %197 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i179.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %198 = and i32 %197, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i179.i, i32 %198) #6, !srcloc !98
  %199 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i, align 4
  %ifregs9.i180.i = getelementptr inbounds %struct.pch_can_regs, ptr %200, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i180.i, i32 noundef 9) #6
  %201 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regs.i, align 4
  %cmask.i171.i = getelementptr inbounds %struct.pch_can_regs, ptr %202, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i171.i, i32 -1342177280) #6, !srcloc !98
  %203 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regs.i, align 4
  %id2.i172.i = getelementptr inbounds %struct.pch_can_regs, ptr %204, i32 0, i32 8, i32 0, i32 5
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i172.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %206 = and i32 %205, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i172.i, i32 %206) #6, !srcloc !98
  %207 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regs.i, align 4
  %mcont.i173.i = getelementptr inbounds %struct.pch_can_regs, ptr %208, i32 0, i32 8, i32 0, i32 6
  %209 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i173.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %210 = and i32 %209, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i173.i, i32 %210) #6, !srcloc !98
  %211 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regs.i, align 4
  %ifregs9.i174.i = getelementptr inbounds %struct.pch_can_regs, ptr %212, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i174.i, i32 noundef 10) #6
  %213 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regs.i, align 4
  %cmask.i165.i = getelementptr inbounds %struct.pch_can_regs, ptr %214, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i165.i, i32 -1342177280) #6, !srcloc !98
  %215 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regs.i, align 4
  %id2.i166.i = getelementptr inbounds %struct.pch_can_regs, ptr %216, i32 0, i32 8, i32 0, i32 5
  %217 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i166.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %218 = and i32 %217, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i166.i, i32 %218) #6, !srcloc !98
  %219 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regs.i, align 4
  %mcont.i167.i = getelementptr inbounds %struct.pch_can_regs, ptr %220, i32 0, i32 8, i32 0, i32 6
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i167.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %222 = and i32 %221, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i167.i, i32 %222) #6, !srcloc !98
  %223 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regs.i, align 4
  %ifregs9.i168.i = getelementptr inbounds %struct.pch_can_regs, ptr %224, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i168.i, i32 noundef 11) #6
  %225 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regs.i, align 4
  %cmask.i159.i = getelementptr inbounds %struct.pch_can_regs, ptr %226, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i159.i, i32 -1342177280) #6, !srcloc !98
  %227 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regs.i, align 4
  %id2.i160.i = getelementptr inbounds %struct.pch_can_regs, ptr %228, i32 0, i32 8, i32 0, i32 5
  %229 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i160.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %230 = and i32 %229, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i160.i, i32 %230) #6, !srcloc !98
  %231 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regs.i, align 4
  %mcont.i161.i = getelementptr inbounds %struct.pch_can_regs, ptr %232, i32 0, i32 8, i32 0, i32 6
  %233 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i161.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %234 = and i32 %233, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i161.i, i32 %234) #6, !srcloc !98
  %235 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs.i, align 4
  %ifregs9.i162.i = getelementptr inbounds %struct.pch_can_regs, ptr %236, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i162.i, i32 noundef 12) #6
  %237 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i, align 4
  %cmask.i153.i = getelementptr inbounds %struct.pch_can_regs, ptr %238, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i153.i, i32 -1342177280) #6, !srcloc !98
  %239 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regs.i, align 4
  %id2.i154.i = getelementptr inbounds %struct.pch_can_regs, ptr %240, i32 0, i32 8, i32 0, i32 5
  %241 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i154.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %242 = and i32 %241, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i154.i, i32 %242) #6, !srcloc !98
  %243 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regs.i, align 4
  %mcont.i155.i = getelementptr inbounds %struct.pch_can_regs, ptr %244, i32 0, i32 8, i32 0, i32 6
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i155.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %246 = and i32 %245, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i155.i, i32 %246) #6, !srcloc !98
  %247 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regs.i, align 4
  %ifregs9.i156.i = getelementptr inbounds %struct.pch_can_regs, ptr %248, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i156.i, i32 noundef 13) #6
  %249 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regs.i, align 4
  %cmask.i147.i = getelementptr inbounds %struct.pch_can_regs, ptr %250, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i147.i, i32 -1342177280) #6, !srcloc !98
  %251 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regs.i, align 4
  %id2.i148.i = getelementptr inbounds %struct.pch_can_regs, ptr %252, i32 0, i32 8, i32 0, i32 5
  %253 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i148.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %254 = and i32 %253, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i148.i, i32 %254) #6, !srcloc !98
  %255 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regs.i, align 4
  %mcont.i149.i = getelementptr inbounds %struct.pch_can_regs, ptr %256, i32 0, i32 8, i32 0, i32 6
  %257 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i149.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %258 = and i32 %257, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i149.i, i32 %258) #6, !srcloc !98
  %259 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regs.i, align 4
  %ifregs9.i150.i = getelementptr inbounds %struct.pch_can_regs, ptr %260, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i150.i, i32 noundef 14) #6
  %261 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regs.i, align 4
  %cmask.i141.i = getelementptr inbounds %struct.pch_can_regs, ptr %262, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i141.i, i32 -1342177280) #6, !srcloc !98
  %263 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regs.i, align 4
  %id2.i142.i = getelementptr inbounds %struct.pch_can_regs, ptr %264, i32 0, i32 8, i32 0, i32 5
  %265 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i142.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %266 = and i32 %265, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i142.i, i32 %266) #6, !srcloc !98
  %267 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regs.i, align 4
  %mcont.i143.i = getelementptr inbounds %struct.pch_can_regs, ptr %268, i32 0, i32 8, i32 0, i32 6
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i143.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %270 = and i32 %269, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i143.i, i32 %270) #6, !srcloc !98
  %271 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regs.i, align 4
  %ifregs9.i144.i = getelementptr inbounds %struct.pch_can_regs, ptr %272, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i144.i, i32 noundef 15) #6
  %273 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %regs.i, align 4
  %cmask.i136.i = getelementptr inbounds %struct.pch_can_regs, ptr %274, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i136.i, i32 -1342177280) #6, !srcloc !98
  %275 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regs.i, align 4
  %id2.i137.i = getelementptr inbounds %struct.pch_can_regs, ptr %276, i32 0, i32 8, i32 0, i32 5
  %277 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i137.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %278 = and i32 %277, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i137.i, i32 %278) #6, !srcloc !98
  %279 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regs.i, align 4
  %mcont.i138.i = getelementptr inbounds %struct.pch_can_regs, ptr %280, i32 0, i32 8, i32 0, i32 6
  %281 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i138.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %282 = and i32 %281, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i138.i, i32 %282) #6, !srcloc !98
  %283 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %regs.i, align 4
  %ifregs9.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %284, i32 0, i32 8
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs9.i.i, i32 noundef 16) #6
  br label %do.cond.i

if.then11.i.i:                                    ; preds = %if.else.i.i
  %285 = add nsw i32 %obj_num.addr.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %285)
  %286 = icmp ult i32 %285, 26
  br i1 %286, label %if.then.i73, label %if.else.i74

if.then.i73:                                      ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %287 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %regs.i, align 4
  %cmask.i71 = getelementptr inbounds %struct.pch_can_regs, ptr %288, i32 0, i32 8, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i71, i32 -1342177280) #6, !srcloc !98
  %289 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %regs.i, align 4
  %id2.i = getelementptr inbounds %struct.pch_can_regs, ptr %290, i32 0, i32 8, i32 0, i32 5
  %291 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %292 = and i32 %291, -2097153
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i, i32 %292) #6, !srcloc !98
  %293 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %regs.i, align 4
  %mcont.i72 = getelementptr inbounds %struct.pch_can_regs, ptr %294, i32 0, i32 8, i32 0, i32 6
  %295 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i72) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %296 = and i32 %295, -10485761
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i72, i32 %296) #6, !srcloc !98
  %297 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %regs.i, align 4
  %ifregs9.i = getelementptr inbounds %struct.pch_can_regs, ptr %298, i32 0, i32 8
  br label %if.end34.sink.split.i

if.else.i74:                                      ; preds = %if.then11.i.i
  %299 = add nsw i32 %obj_num.addr.0.i, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %299)
  %300 = icmp ult i32 %299, 6
  br i1 %300, label %if.then14.i, label %if.else.i74.do.cond.i_crit_edge

if.else.i74.do.cond.i_crit_edge:                  ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.cond.i

if.then14.i:                                      ; preds = %if.else.i74
  call void @__sanitizer_cov_trace_pc() #8
  %301 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %regs.i, align 4
  %cmask18.i = getelementptr %struct.pch_can_regs, ptr %302, i32 0, i32 8, i32 1, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask18.i, i32 -1342177280) #6, !srcloc !98
  %303 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regs.i, align 4
  %id222.i = getelementptr %struct.pch_can_regs, ptr %304, i32 0, i32 8, i32 1, i32 5
  %305 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id222.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %306 = or i32 %305, -62980096
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id222.i, i32 %306) #6, !srcloc !98
  %307 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %regs.i, align 4
  %id1.i75 = getelementptr %struct.pch_can_regs, ptr %308, i32 0, i32 8, i32 1, i32 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id1.i75, i32 0) #6, !srcloc !98
  %309 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %regs.i, align 4
  %mcont29.i = getelementptr %struct.pch_can_regs, ptr %310, i32 0, i32 8, i32 1, i32 6
  %311 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont29.i) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %312 = and i32 %311, -10551297
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont29.i, i32 %312) #6, !srcloc !98
  %313 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %regs.i, align 4
  %arrayidx32.i = getelementptr %struct.pch_can_regs, ptr %314, i32 0, i32 8, i32 1
  br label %if.end34.sink.split.i

if.end34.sink.split.i:                            ; preds = %if.then14.i, %if.then.i73
  %arrayidx32.sink.i = phi ptr [ %arrayidx32.i, %if.then14.i ], [ %ifregs9.i, %if.then.i73 ]
  call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx32.sink.i, i32 noundef %obj_num.addr.0.i) #6
  br label %do.cond.i

do.cond.i:                                        ; preds = %if.end34.sink.split.i, %if.else.i74.do.cond.i_crit_edge, %for.body.preheader.i.i, %if.then.i.i, %if.else.i.do.cond.i_crit_edge, %if.then12.i
  %quota.addr.1.i = phi i32 [ %dec.i, %if.then12.i ], [ %quota.addr.0.i, %if.else.i.do.cond.i_crit_edge ], [ %dec84.i, %if.then.i.i ], [ %dec84.i, %for.body.preheader.i.i ], [ %dec84.i, %if.else.i74.do.cond.i_crit_edge ], [ %dec84.i, %if.end34.sink.split.i ]
  %rcv_pkts.1.i = phi i32 [ %inc.i, %if.then12.i ], [ %rcv_pkts.0.i, %if.else.i.do.cond.i_crit_edge ], [ %inc83.i, %if.then.i.i ], [ %inc83.i, %for.body.preheader.i.i ], [ %inc83.i, %if.else.i74.do.cond.i_crit_edge ], [ %inc83.i, %if.end34.sink.split.i ]
  %obj_num.addr.1.i = add i32 %obj_num.addr.0.i, 1
  %cmp87.i = icmp sgt i32 %quota.addr.1.i, 0
  br i1 %cmp87.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.pch_can_rx_normal.exit_crit_edge

do.cond.i.pch_can_rx_normal.exit_crit_edge:       ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pch_can_rx_normal.exit

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

pch_can_rx_normal.exit:                           ; preds = %do.cond.i.pch_can_rx_normal.exit_crit_edge, %if.then23.i, %do.body.i.pch_can_rx_normal.exit_crit_edge
  %retval.0.i = phi i32 [ %rcv_pkts.0.i, %if.then23.i ], [ %rcv_pkts.0.i, %do.body.i.pch_can_rx_normal.exit_crit_edge ], [ %rcv_pkts.1.i, %do.cond.i.pch_can_rx_normal.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf.i) #6
  %sub = sub i32 %quota.addr.1, %retval.0.i
  br label %end

if.else:                                          ; preds = %if.end20
  %315 = add nsw i32 %int_stat.0, -27
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %315)
  %316 = icmp ult i32 %315, 6
  br i1 %316, label %if.then29, label %if.else.end_crit_edge

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then29:                                        ; preds = %if.else
  %ndev1.i64 = getelementptr i8, ptr %1, i32 3008
  %317 = ptrtoint ptr %ndev1.i64 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %ndev1.i64, align 8
  %call4.i = tail call i32 @can_get_echo_skb(ptr noundef %1, i32 noundef %315, ptr noundef null) #6
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %318, i32 0, i32 36, i32 3
  %319 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %tx_bytes.i, align 4
  %add.i65 = add i32 %320, %call4.i
  store i32 %add.i65, ptr %tx_bytes.i, align 4
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %318, i32 0, i32 36, i32 1
  %321 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %tx_packets.i, align 4
  %inc.i66 = add i32 %322, 1
  store i32 %inc.i66, ptr %tx_packets.i, align 4
  %323 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regs.i, align 4
  %cmask.i68 = getelementptr %struct.pch_can_regs, ptr %324, i32 0, i32 8, i32 1, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i68, i32 2063597568) #6, !srcloc !98
  %325 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %regs.i, align 4
  %arrayidx7.i = getelementptr %struct.pch_can_regs, ptr %326, i32 0, i32 8, i32 1
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx7.i, i32 noundef %int_stat.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %int_stat.0)
  %cmp.i = icmp eq i32 %int_stat.0, 32
  br i1 %cmp.i, label %if.then.i, label %if.then29.end_crit_edge

if.then29.end_crit_edge:                          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %end

if.then.i:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %327 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %328) #6
  br label %end

end:                                              ; preds = %if.then.i, %if.then29.end_crit_edge, %if.else.end_crit_edge, %pch_can_rx_normal.exit, %if.end17.end_crit_edge, %entry.end_crit_edge
  %quota.addr.2 = phi i32 [ 0, %if.end17.end_crit_edge ], [ %sub, %pch_can_rx_normal.exit ], [ %quota.addr.1, %if.else.end_crit_edge ], [ %quota, %entry.end_crit_edge ], [ %quota.addr.1, %if.then29.end_crit_edge ], [ %quota.addr.1, %if.then.i ]
  %call.i = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #6
  %329 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %regs.i, align 4
  %331 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %330) #6, !srcloc !99
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %332 = or i32 %331, 234881024
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %330, i32 %332) #6, !srcloc !98
  %sub33 = sub i32 %quota, %quota.addr.2
  ret i32 %sub33
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_can_start(ptr nocapture noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %state = getelementptr i8, ptr %ndev, i32 2472
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr i8, ptr %ndev, i32 3012
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %srst.i = getelementptr inbounds %struct.pch_can_regs, ptr %3, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srst.i, i32 16777216) #6, !srcloc !98
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %srst2.i = getelementptr inbounds %struct.pch_can_regs, ptr %5, i32 0, i32 22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %srst2.i, i32 0) #6, !srcloc !98
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @pch_set_bittiming(ptr noundef %ndev)
  %regs.i11 = getelementptr i8, ptr %ndev, i32 3012
  %6 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i11, align 4
  %opt.i = getelementptr inbounds %struct.pch_can_regs, ptr %7, i32 0, i32 5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %opt.i) #6, !srcloc !99
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %ctrlmode.i = getelementptr i8, ptr %ndev, i32 2476
  %10 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrlmode.i, align 4
  %and.i = shl i32 %11, 2
  %12 = and i32 %and.i, 8
  %13 = or i32 %12, %9
  %and3.i = shl i32 %11, 4
  %14 = and i32 %and3.i, 16
  %15 = or i32 %13, %14
  %16 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i11, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %19 = or i32 %18, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #6, !srcloc !98
  %20 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i11, align 4
  %opt10.i = getelementptr inbounds %struct.pch_can_regs, ptr %21, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %opt10.i, i32 %22) #6, !srcloc !98
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 27, i32 noundef 1, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 28, i32 noundef 1, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 29, i32 noundef 1, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 30, i32 noundef 1, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 31, i32 noundef 1, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef 1, i32 noundef 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %i.03.i = phi i32 [ 1, %if.end ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef %i.03.i, i32 noundef 1, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 27
  br i1 %exitcond.not.i, label %pch_can_set_rx_all.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

pch_can_set_rx_all.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %regs.i11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i11, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %26 = and i32 %25, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %26) #6, !srcloc !98
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_set_bittiming(ptr nocapture noundef readonly %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %ndev, i32 3012
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %3 = or i32 %2, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #6, !srcloc !98
  %brp = getelementptr i8, ptr %ndev, i32 2368
  %4 = ptrtoint ptr %brp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %brp, align 4
  %sub = add i32 %5, -1
  %and = and i32 %sub, 63
  %sjw = getelementptr i8, ptr %ndev, i32 2364
  %6 = ptrtoint ptr %sjw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sjw, align 4
  %sub1 = shl i32 %7, 6
  %shl = add i32 %sub1, -64
  %or = or i32 %shl, %and
  %phase_seg1 = getelementptr i8, ptr %ndev, i32 2356
  %8 = ptrtoint ptr %phase_seg1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phase_seg1, align 4
  %prop_seg = getelementptr i8, ptr %ndev, i32 2352
  %10 = ptrtoint ptr %prop_seg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prop_seg, align 4
  %add = add i32 %11, %9
  %sub2 = shl i32 %add, 8
  %shl3 = add i32 %sub2, -256
  %or4 = or i32 %shl3, %or
  %phase_seg2 = getelementptr i8, ptr %ndev, i32 2360
  %12 = ptrtoint ptr %phase_seg2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phase_seg2, align 4
  %sub5 = shl i32 %13, 12
  %shl6 = add i32 %sub5, -4096
  %or7 = or i32 %or4, %shl6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %bitt = getelementptr inbounds %struct.pch_can_regs, ptr %15, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %or7) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %bitt, i32 %16) #6, !srcloc !98
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %brpe = getelementptr inbounds %struct.pch_can_regs, ptr %18, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %19 = shl i32 %sub, 18
  %20 = and i32 %19, 251658240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %brpe, i32 %20) #6, !srcloc !98
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %24 = and i32 %23, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #6, !srcloc !98
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_can_set_rxtx(ptr nocapture noundef readonly %priv, i32 noundef %buff_num, i32 noundef %set, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %tobool.not = icmp eq i32 %dir, 0
  %. = select i1 %tobool.not, i32 1024, i32 2048
  %regs = getelementptr inbounds %struct.pch_can_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %cmask = getelementptr %struct.pch_can_regs, ptr %1, i32 0, i32 8, i32 %dir, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask, i32 1929379840) #6, !srcloc !98
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx3 = getelementptr %struct.pch_can_regs, ptr %3, i32 0, i32 8, i32 %dir
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx3, i32 noundef %buff_num)
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %cmask7 = getelementptr %struct.pch_can_regs, ptr %5, i32 0, i32 8, i32 %dir, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask7, i32 -1342177280) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set)
  %tobool8.not = icmp eq i32 %set, 0
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %mcont20 = getelementptr %struct.pch_can_regs, ptr %7, i32 0, i32 8, i32 %dir, i32 6
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont20) #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool8.not, label %if.else16, label %if.then9

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %or.i = or i32 %9, %.
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont20, i32 %10) #6, !srcloc !98
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %id2 = getelementptr %struct.pch_can_regs, ptr %12, i32 0, i32 8, i32 %dir, i32 5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %14 = or i32 %13, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2, i32 %14) #6, !srcloc !98
  br label %if.end25

if.else16:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %., -1
  %and.i = and i32 %9, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont20, i32 %15) #6, !srcloc !98
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %id224 = getelementptr %struct.pch_can_regs, ptr %17, i32 0, i32 8, i32 %dir, i32 5
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id224) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %19 = and i32 %18, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id224, i32 %19) #6, !srcloc !98
  br label %if.end25

if.end25:                                         ; preds = %if.else16, %if.then9
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %arrayidx28 = getelementptr %struct.pch_can_regs, ptr %21, i32 0, i32 8, i32 %dir
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx28, i32 noundef %buff_num)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_can_rw_msg_obj(ptr noundef %creq_addr, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %num) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %creq_addr, i32 %0) #6, !srcloc !98
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %2 = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #6
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %5 = and i32 %4, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not.1 = icmp eq i32 %5, 0
  br i1 %tobool1.not.1, label %if.end.if.end5_crit_edge, label %if.end.1

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.1:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %8 = and i32 %7, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not.2 = icmp eq i32 %8, 0
  br i1 %tobool1.not.2, label %if.end.1.if.end5_crit_edge, label %if.end.2

if.end.1.if.end5_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.2:                                         ; preds = %if.end.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748) #6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %11 = and i32 %10, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool1.not.3 = icmp eq i32 %11, 0
  br i1 %tobool1.not.3, label %if.end.2.if.end5_crit_edge, label %if.end.3

if.end.2.if.end5_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.3:                                         ; preds = %if.end.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %14 = and i32 %13, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool1.not.4 = icmp eq i32 %14, 0
  br i1 %tobool1.not.4, label %if.end.3.if.end5_crit_edge, label %if.end.4

if.end.3.if.end5_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.4:                                         ; preds = %if.end.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %17 = and i32 %16, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.5 = icmp eq i32 %17, 0
  br i1 %tobool1.not.5, label %if.end.4.if.end5_crit_edge, label %if.end.5

if.end.4.if.end5_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.5:                                         ; preds = %if.end.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %20 = and i32 %19, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool1.not.6 = icmp eq i32 %20, 0
  br i1 %tobool1.not.6, label %if.end.5.if.end5_crit_edge, label %if.end.6

if.end.5.if.end5_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.6:                                         ; preds = %if.end.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748) #6
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %23 = and i32 %22, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool1.not.7 = icmp eq i32 %23, 0
  br i1 %tobool1.not.7, label %if.end.6.if.end5_crit_edge, label %if.end.7

if.end.6.if.end5_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.7:                                         ; preds = %if.end.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748) #6
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %26 = and i32 %25, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool1.not.8 = icmp eq i32 %26, 0
  br i1 %tobool1.not.8, label %if.end.7.if.end5_crit_edge, label %if.end.8

if.end.7.if.end5_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.8:                                         ; preds = %if.end.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #6
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %creq_addr) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %29 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool1.not.9 = icmp eq i32 %29, 0
  br i1 %tobool1.not.9, label %if.end.8.if.end5_crit_edge, label %if.end.9

if.end.8.if.end5_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.9:                                         ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748) #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  br label %if.end5

if.end5:                                          ; preds = %if.end.9, %if.end.8.if.end5_crit_edge, %if.end.7.if.end5_crit_edge, %if.end.6.if.end5_crit_edge, %if.end.5.if.end5_crit_edge, %if.end.4.if.end5_crit_edge, %if.end.3.if.end5_crit_edge, %if.end.2.if.end5_crit_edge, %if.end.1.if.end5_crit_edge, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %dev = getelementptr i8, ptr %ndev, i32 2616
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @pch_can_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %ndev, ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.25) #9
  br label %req_irq_err

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @open_candev(ptr noundef %ndev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.26, i32 noundef %call3) #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %irq8 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 46
  %6 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq8, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %ndev) #6
  br label %req_irq_err

if.end6:                                          ; preds = %if.end
  %regs2.i.i = getelementptr i8, ptr %ndev, i32 3012
  %8 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs2.i.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #6, !srcloc !98
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6
  %i.055.i.i = phi i32 [ 1, %if.end6 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs2.i.i, align 4
  %cmask.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %13, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i.i, i32 -218103808) #6, !srcloc !98
  %14 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs2.i.i, align 4
  %mask1.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %15, i32 0, i32 8, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask1.i.i, i32 -65536) #6, !srcloc !98
  %16 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs2.i.i, align 4
  %mask2.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %17, i32 0, i32 8, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask2.i.i, i32 -65536) #6, !srcloc !98
  %18 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs2.i.i, align 4
  %id1.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %19, i32 0, i32 8, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id1.i.i, i32 0) #6, !srcloc !98
  %20 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs2.i.i, align 4
  %id2.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %21, i32 0, i32 8, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2.i.i, i32 0) #6, !srcloc !98
  %22 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs2.i.i, align 4
  %mcont.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %23, i32 0, i32 8, i32 0, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont.i.i, i32 0) #6, !srcloc !98
  %24 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs2.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %25, i32 0, i32 8, i32 0, i32 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %data.i.i, i32 0) #6, !srcloc !98
  %26 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs2.i.i, align 4
  %arrayidx24.i.i = getelementptr %struct.pch_can_regs, ptr %27, i32 0, i32 8, i32 0, i32 7, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24.i.i, i32 0) #6, !srcloc !98
  %28 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs2.i.i, align 4
  %arrayidx29.i.i = getelementptr %struct.pch_can_regs, ptr %29, i32 0, i32 8, i32 0, i32 7, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx29.i.i, i32 0) #6, !srcloc !98
  %30 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs2.i.i, align 4
  %arrayidx34.i.i = getelementptr %struct.pch_can_regs, ptr %31, i32 0, i32 8, i32 0, i32 7, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx34.i.i, i32 0) #6, !srcloc !98
  %32 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs2.i.i, align 4
  %cmask38.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %33, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask38.i.i, i32 -268435456) #6, !srcloc !98
  %34 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs2.i.i, align 4
  %ifregs40.i.i = getelementptr inbounds %struct.pch_can_regs, ptr %35, i32 0, i32 8
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs40.i.i, i32 noundef %i.055.i.i) #6
  %inc.i.i = add nuw nsw i32 %i.055.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 33
  br i1 %exitcond.not.i.i, label %pch_can_init.exit, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

pch_can_init.exit:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pch_can_config_rx_tx_buffers(ptr noundef %add.ptr.i) #6
  %36 = ptrtoint ptr %regs2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs2.i.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %39 = or i32 %38, 234881024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %39) #6, !srcloc !98
  tail call fastcc void @pch_can_start(ptr noundef %ndev)
  %napi = getelementptr i8, ptr %ndev, i32 3016
  tail call void @napi_enable(ptr noundef %napi) #6
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %cleanup

req_irq_err:                                      ; preds = %if.then5, %if.then
  %retval1.0 = phi i32 [ %call.i, %if.then ], [ %call3, %if.then5 ]
  tail call fastcc void @pch_can_release(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %req_irq_err, %pch_can_init.exit
  %retval.0 = phi i32 [ %retval1.0, %req_irq_err ], [ 0, %pch_can_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %napi = getelementptr i8, ptr %ndev, i32 3016
  tail call void @napi_disable(ptr noundef %napi) #6
  tail call fastcc void @pch_can_release(ptr noundef %add.ptr.i)
  %dev = getelementptr i8, ptr %ndev, i32 2616
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %ndev) #6
  tail call void @close_candev(ptr noundef %ndev) #6
  %state = getelementptr i8, ptr %ndev, i32 2472
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %state, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i, align 8
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %3, label %entry.can_dropped_invalid_skb.exit_crit_edge [
    i16 12, label %if.then.i
    i16 13, label %if.then14.i
  ]

entry.can_dropped_invalid_skb.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i:                                        ; preds = %entry
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp2.not.i = icmp eq i32 %6, 16
  br i1 %cmp2.not.i, label %lor.rhs.i, label %if.then.i.can_dropped_invalid_skb.exit_crit_edge, !prof !104

if.then.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs.i:                                        ; preds = %if.then.i
  %len4.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp6.i = icmp ugt i8 %8, 8
  br i1 %cmp6.i, label %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs.i.if.end34.i_crit_edge, !prof !105

lor.rhs.i.if.end34.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then14.i:                                      ; preds = %entry
  %len15.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %10)
  %cmp16.not.i = icmp eq i32 %10, 72
  br i1 %cmp16.not.i, label %lor.rhs18.i, label %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, !prof !104

if.then14.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

lor.rhs18.i:                                      ; preds = %if.then14.i
  %len19.i = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len19.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %12)
  %cmp21.i = icmp ugt i8 %12, 64
  br i1 %cmp21.i, label %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, label %lor.rhs18.i.if.end34.i_crit_edge, !prof !105

lor.rhs18.i.if.end34.i_crit_edge:                 ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %lor.rhs18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.end34.i:                                       ; preds = %lor.rhs18.i.if.end34.i_crit_edge, %lor.rhs.i.if.end34.i_crit_edge
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %13 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, 16
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end37.i.i

land.rhs.i.i:                                     ; preds = %if.end34.i
  %.b70.i.i = load i1, ptr @can_skb_headroom_valid.__already_done, align 1
  br i1 %.b70.i.i, label %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, label %if.then.i.i, !prof !104

land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %can_dropped_invalid_skb.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @can_skb_headroom_valid.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 104, i32 noundef 9, ptr noundef null) #6
  br label %can_dropped_invalid_skb.exit

if.end37.i.i:                                     ; preds = %if.end34.i
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %16 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp38.i.i = icmp eq i16 %16, 0
  br i1 %cmp38.i.i, label %if.then40.i.i, label %if.end37.i.i.if.end_crit_edge

if.end37.i.i.if.end_crit_edge:                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then40.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 17
  %17 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex.i.i, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %14, align 8
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %skbcnt.i.i = getelementptr inbounds %struct.can_skb_priv, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %skbcnt.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %skbcnt.i.i, align 4
  %23 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load45.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear46.i.i = and i16 %bf.load45.i.i, -1537
  %bf.set.i.i = or i16 %bf.clear46.i.i, 512
  store i16 %bf.set.i.i, ptr %ip_summed.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %25, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i, 0
  %bf.clear54.i.i = and i16 %bf.set.i.i, 7167
  %bf.set51.i.i = or i16 %bf.clear54.i.i, -24576
  %storemerge.i.i = select i1 %tobool47.not.i.i, i16 %bf.clear54.i.i, i16 %bf.set51.i.i
  %26 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge.i.i, ptr %ip_summed.i.i, align 8
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %29 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i76.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i77.i.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i78.i.i = sub i32 %sub.ptr.lhs.cast.i76.i.i, %sub.ptr.rhs.cast.i77.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i78.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %31 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %33 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %transport_header.i.i.i, align 2
  br label %if.end

can_dropped_invalid_skb.exit:                     ; preds = %if.then.i.i, %land.rhs.i.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs18.i.can_dropped_invalid_skb.exit_crit_edge, %if.then14.i.can_dropped_invalid_skb.exit_crit_edge, %lor.rhs.i.can_dropped_invalid_skb.exit_crit_edge, %if.then.i.can_dropped_invalid_skb.exit_crit_edge, %entry.can_dropped_invalid_skb.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #6
  %tx_dropped.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %34 = ptrtoint ptr %tx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_dropped.i, align 4
  %inc.i = add i32 %35, 1
  store i32 %inc.i, ptr %tx_dropped.i, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then40.i.i, %if.end37.i.i.if.end_crit_edge
  %tx_obj = getelementptr i8, ptr %ndev, i32 3240
  %36 = ptrtoint ptr %tx_obj to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_obj, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %37)
  %cmp = icmp eq i32 %37, 32
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %regs = getelementptr i8, ptr %ndev, i32 3012
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %treq2 = getelementptr inbounds %struct.pch_can_regs, ptr %39, i32 0, i32 11
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %treq2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %41 = and i32 %40, 16515072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not = icmp eq i32 %41, 0
  br i1 %tobool.not, label %if.then3.if.end9_crit_edge, label %if.then5

if.then3.if.end9_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %43, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %37, 1
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then5, %if.then3.if.end9_crit_edge
  %storemerge = phi i32 [ %inc, %if.else ], [ 27, %if.then5 ], [ 27, %if.then3.if.end9_crit_edge ]
  %44 = ptrtoint ptr %tx_obj to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %storemerge, ptr %tx_obj, align 8
  %regs10 = getelementptr i8, ptr %ndev, i32 3012
  %45 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs10, align 4
  %cmask = getelementptr %struct.pch_can_regs, ptr %46, i32 0, i32 8, i32 1, i32 1
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmask) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %48 = or i32 %47, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask, i32 %48) #6, !srcloc !98
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %tobool12.not = icmp sgt i32 %50, -1
  br i1 %tobool12.not, label %if.else21, label %if.then13

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %and15 = and i32 %50, 65535
  %51 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs10, align 4
  %id1 = getelementptr %struct.pch_can_regs, ptr %52, i32 0, i32 8, i32 1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %53 = tail call i32 @llvm.bswap.i32(i32 %and15) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id1, i32 %53) #6, !srcloc !98
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %1, align 8
  %shr = lshr i32 %55, 16
  %and20 = and i32 %shr, 8191
  %or = or i32 %and20, 16384
  br label %if.end28

if.else21:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs10, align 4
  %id125 = getelementptr %struct.pch_can_regs, ptr %57, i32 0, i32 8, i32 1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id125, i32 0) #6, !srcloc !98
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %1, align 8
  %and27 = shl i32 %59, 2
  %shl = and i32 %and27, 8188
  br label %if.end28

if.end28:                                         ; preds = %if.else21, %if.then13
  %id2.0 = phi i32 [ %or, %if.then13 ], [ %shl, %if.else21 ]
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %1, align 8
  %and31 = and i32 %61, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %spec.select.v = select i1 %tobool32.not, i32 40960, i32 32768
  %spec.select = or i32 %spec.select.v, %id2.0
  %62 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs10, align 4
  %id239 = getelementptr %struct.pch_can_regs, ptr %63, i32 0, i32 8, i32 1, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %64 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id239, i32 %64) #6, !srcloc !98
  %65 = getelementptr inbounds %struct.can_frame, ptr %1, i32 0, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp40106.not = icmp eq i8 %67, 0
  br i1 %cmp40106.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end28.for.body_crit_edge
  %i.0107 = phi i32 [ %add56, %for.body.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %arrayidx43 = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %i.0107
  %68 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %69 to i16
  %add = or i32 %i.0107, 1
  %arrayidx46 = getelementptr %struct.can_frame, ptr %1, i32 0, i32 5, i32 %add
  %70 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %71 to i16
  %shl48 = shl nuw i16 %conv47, 8
  %or49 = or i16 %shl48, %conv44
  %72 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs10, align 4
  %div.udiv108 = lshr exact i32 %i.0107, 1
  %arrayidx55 = getelementptr %struct.pch_can_regs, ptr %73, i32 0, i32 8, i32 1, i32 7, i32 %div.udiv108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %74 = tail call i16 @llvm.bswap.i16(i16 %or49) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %arrayidx55, i16 %74) #6, !srcloc !107
  %add56 = add nuw nsw i32 %i.0107, 2
  %75 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %65, align 4
  %conv = zext i8 %76 to i32
  %cmp40 = icmp ult i32 %add56, %conv
  br i1 %cmp40, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  %sub57 = add i32 %37, -27
  %call58 = tail call i32 @can_put_echo_skb(ptr noundef %skb, ptr noundef %ndev, i32 noundef %sub57, i32 noundef 0) #6
  %77 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %65, align 4
  %conv59 = zext i8 %78 to i32
  %or62 = or i32 %conv59, 35072
  %79 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs10, align 4
  %mcont = getelementptr %struct.pch_can_regs, ptr %80, i32 0, i32 8, i32 1, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %81 = tail call i32 @llvm.bswap.i32(i32 %or62) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont, i32 %81) #6, !srcloc !98
  %82 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs10, align 4
  %arrayidx68 = getelementptr %struct.pch_can_regs, ptr %83, i32 0, i32 8, i32 1
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx68, i32 noundef %37)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %can_dropped_invalid_skb.exit
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_change_mtu(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr i8, ptr %dev_id, i32 3012
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %intr.i = getelementptr inbounds %struct.pch_can_regs, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %intr.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %2)
  %tobool.not = icmp ult i32 %2, 65536
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %6 = and i32 %5, -234881025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #6, !srcloc !98
  %napi = getelementptr i8, ptr %dev_id, i32 3016
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #6
  br i1 %call.i, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__napi_schedule(ptr noundef %napi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @open_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_can_release(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs2.i = getelementptr inbounds %struct.pch_can_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs2.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #6, !srcloc !98
  %4 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs2.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %7 = and i32 %6, -234881025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %7) #6, !srcloc !98
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 1, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %priv, i32 noundef %i.03.i, i32 noundef 0, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 27
  br i1 %exitcond.not.i, label %pch_can_set_rx_all.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

pch_can_set_rx_all.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %priv, i32 noundef 27, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %priv, i32 noundef 28, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %priv, i32 noundef 29, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %priv, i32 noundef 30, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %priv, i32 noundef 31, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %priv, i32 noundef 32, i32 noundef 0, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_can_config_rx_tx_buffers(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pch_can_priv, ptr %priv, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.0108 = phi i32 [ 1, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %cmask = getelementptr inbounds %struct.pch_can_regs, ptr %1, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask, i32 1929379840) #6, !srcloc !98
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %ifregs2 = getelementptr inbounds %struct.pch_can_regs, ptr %3, i32 0, i32 8
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs2, i32 noundef %i.0108)
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %id1 = getelementptr inbounds %struct.pch_can_regs, ptr %5, i32 0, i32 8, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id1, i32 0) #6, !srcloc !98
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %id2 = getelementptr inbounds %struct.pch_can_regs, ptr %7, i32 0, i32 8, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id2, i32 0) #6, !srcloc !98
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %mcont = getelementptr inbounds %struct.pch_can_regs, ptr %9, i32 0, i32 8, i32 0, i32 6
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %11 = or i32 %10, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont, i32 %11) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %i.0108)
  %cmp13 = icmp eq i32 %i.0108, 26
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %mcont17 = getelementptr inbounds %struct.pch_can_regs, ptr %13, i32 0, i32 8, i32 0, i32 6
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %15 = or i32 %14, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont17, i32 %15) #6, !srcloc !98
  br label %if.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %16 = and i32 %14, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont17, i32 %16) #6, !srcloc !98
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %mask1 = getelementptr inbounds %struct.pch_can_regs, ptr %18, i32 0, i32 8, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask1, i32 0) #6, !srcloc !98
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %mask2 = getelementptr inbounds %struct.pch_can_regs, ptr %20, i32 0, i32 8, i32 0, i32 3
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mask2) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %22 = and i32 %21, 2162687
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask2, i32 %22) #6, !srcloc !98
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %cmask31 = getelementptr inbounds %struct.pch_can_regs, ptr %24, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask31, i32 -268435456) #6, !srcloc !98
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %ifregs33 = getelementptr inbounds %struct.pch_can_regs, ptr %26, i32 0, i32 8
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs33, i32 noundef %i.0108)
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 27
  br i1 %exitcond.not, label %if.end.for.body38_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.body38_crit_edge:                      ; preds = %if.end
  br label %for.body38

for.body38:                                       ; preds = %for.body38.for.body38_crit_edge, %if.end.for.body38_crit_edge
  %i.1109 = phi i32 [ %inc76, %for.body38.for.body38_crit_edge ], [ 27, %if.end.for.body38_crit_edge ]
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs, align 4
  %cmask42 = getelementptr %struct.pch_can_regs, ptr %28, i32 0, i32 8, i32 1, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask42, i32 1929379840) #6, !srcloc !98
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %arrayidx45 = getelementptr %struct.pch_can_regs, ptr %30, i32 0, i32 8, i32 1
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx45, i32 noundef %i.1109)
  %31 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs, align 4
  %id150 = getelementptr %struct.pch_can_regs, ptr %32, i32 0, i32 8, i32 1, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id150, i32 0) #6, !srcloc !98
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %id254 = getelementptr %struct.pch_can_regs, ptr %34, i32 0, i32 8, i32 1, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %id254, i32 2097152) #6, !srcloc !98
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %mcont58 = getelementptr %struct.pch_can_regs, ptr %36, i32 0, i32 8, i32 1, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont58, i32 -2146435072) #6, !srcloc !98
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %mask162 = getelementptr %struct.pch_can_regs, ptr %38, i32 0, i32 8, i32 1, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask162, i32 0) #6, !srcloc !98
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %mask266 = getelementptr %struct.pch_can_regs, ptr %40, i32 0, i32 8, i32 1, i32 3
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mask266) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %42 = and i32 %41, 14745599
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mask266, i32 %42) #6, !srcloc !98
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %cmask70 = getelementptr %struct.pch_can_regs, ptr %44, i32 0, i32 8, i32 1, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask70, i32 -268435456) #6, !srcloc !98
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %arrayidx73 = getelementptr %struct.pch_can_regs, ptr %46, i32 0, i32 8, i32 1
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx73, i32 noundef %i.1109)
  %inc76 = add nuw nsw i32 %i.1109, 1
  %exitcond110.not = icmp eq i32 %inc76, 33
  br i1 %exitcond110.not, label %for.end77, label %for.body38.for.body38_crit_edge

for.body38.for.body38_crit_edge:                  ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body38

for.end77:                                        ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_put_echo_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_can_error(ptr noundef %ndev, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %0 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !101
  %ndev1 = getelementptr i8, ptr %ndev, i32 3008
  %1 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ndev1, align 8
  %state3 = getelementptr i8, ptr %ndev, i32 2472
  %3 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state3, align 8
  %call4 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 27, i32 noundef 0, i32 noundef 1) #6
  call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 28, i32 noundef 0, i32 noundef 1) #6
  call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 29, i32 noundef 0, i32 noundef 1) #6
  call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 30, i32 noundef 0, i32 noundef 1) #6
  call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 31, i32 noundef 0, i32 noundef 1) #6
  call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef 0, i32 noundef 1) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then6
  %i.03.i = phi i32 [ 1, %if.then6 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef %i.03.i, i32 noundef 0, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 27
  br i1 %exitcond.not.i, label %pch_can_set_rx_all.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

pch_can_set_rx_all.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %or = or i32 %8, 64
  store i32 %or, ptr %6, align 8
  %bus_off = getelementptr i8, ptr %ndev, i32 2320
  %9 = ptrtoint ptr %bus_off to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bus_off, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %bus_off, align 4
  call void @can_bus_off(ptr noundef %ndev) #6
  br label %if.end8

if.end8:                                          ; preds = %pch_can_set_rx_all.exit, %if.end.if.end8_crit_edge
  %state.0 = phi i32 [ 3, %pch_can_set_rx_all.exit ], [ %4, %if.end.if.end8_crit_edge ]
  %regs = getelementptr i8, ptr %ndev, i32 3012
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %errc9 = getelementptr inbounds %struct.pch_can_regs, ptr %12, i32 0, i32 2
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %errc9) #6, !srcloc !99
  %14 = call i32 @llvm.bswap.i32(i32 %13) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %and11 = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end8.if.end44_crit_edge, label %if.then13

if.end8.if.end44_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then13:                                        ; preds = %if.end8
  %error_warning = getelementptr i8, ptr %ndev, i32 2312
  %15 = ptrtoint ptr %error_warning to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %error_warning, align 4
  %inc16 = add i32 %16, 1
  store i32 %inc16, ptr %error_warning, align 4
  %17 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 8
  %or18 = or i32 %20, 4
  store i32 %or18, ptr %18, align 8
  %21 = and i32 %14, 32512
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %21)
  %cmp = icmp ugt i32 %21, 24576
  br i1 %cmp, label %if.then20, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cf, align 4
  %arrayidx = getelementptr %struct.can_frame, ptr %23, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx, align 1
  %26 = or i8 %25, 4
  store i8 %26, ptr %arrayidx, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then13.if.end23_crit_edge
  %and24 = and i32 %14, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and24)
  %cmp25 = icmp ugt i32 %and24, 96
  br i1 %cmp25, label %if.then27, label %if.end23.do.body34_crit_edge

if.end23.do.body34_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cf, align 4
  %arrayidx29 = getelementptr %struct.can_frame, ptr %28, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx29, align 1
  %31 = or i8 %30, 8
  store i8 %31, ptr %arrayidx29, align 1
  br label %do.body34

do.body34:                                        ; preds = %if.then27, %if.end23.do.body34_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_can_error.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_can_error, %if.end44)) #6
          to label %if.then40 [label %if.end44], !srcloc !108

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_can_error.__UNIQUE_ID_ddebug461, ptr noundef %ndev, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %do.body34, %if.end8.if.end44_crit_edge
  %state.1 = phi i32 [ 1, %if.then40 ], [ %state.0, %if.end8.if.end44_crit_edge ], [ 1, %do.body34 ]
  %and45 = and i32 %status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end93_crit_edge, label %if.then47

if.end44.if.end93_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then47:                                        ; preds = %if.end44
  %error_passive = getelementptr i8, ptr %ndev, i32 2316
  %32 = ptrtoint ptr %error_passive to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %error_passive, align 4
  %inc50 = add i32 %33, 1
  store i32 %inc50, ptr %error_passive, align 4
  %34 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cf, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %or52 = or i32 %37, 4
  store i32 %or52, ptr %35, align 8
  %and53 = and i32 %14, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.then47.if.end61_crit_edge, label %if.then55

if.then47.if.end61_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then55:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cf, align 4
  %arrayidx57 = getelementptr %struct.can_frame, ptr %39, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx57, align 1
  %42 = or i8 %41, 16
  store i8 %42, ptr %arrayidx57, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then55, %if.then47.if.end61_crit_edge
  %and62 = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %cmp63.not = icmp eq i32 %and62, 0
  br i1 %cmp63.not, label %if.end61.do.body73_crit_edge, label %if.then65

if.end61.do.body73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body73

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cf, align 4
  %arrayidx67 = getelementptr %struct.can_frame, ptr %44, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx67, align 1
  %47 = or i8 %46, 32
  store i8 %47, ptr %arrayidx67, align 1
  br label %do.body73

do.body73:                                        ; preds = %if.then65, %if.end61.do.body73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_can_error.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_can_error, %if.end93)) #6
          to label %if.then87 [label %if.end93], !srcloc !108

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_can_error.__UNIQUE_ID_ddebug462, ptr noundef %ndev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29) #6
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %do.body73, %if.end44.if.end93_crit_edge
  %state.2 = phi i32 [ 2, %if.then87 ], [ %state.1, %if.end44.if.end93_crit_edge ], [ 2, %do.body73 ]
  %and94 = and i32 %status, 7
  %48 = zext i32 %and94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %and94, label %if.end93.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb104
    i32 3, label %sw.bb116
    i32 4, label %if.end93.sw.bb125_crit_edge
    i32 5, label %if.end93.sw.bb125_crit_edge201
    i32 6, label %sw.bb137
  ]

if.end93.sw.bb125_crit_edge201:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb125

if.end93.sw.bb125_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb125

if.end93.sw.epilog_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cf, align 4
  %arrayidx96 = getelementptr %struct.can_frame, ptr %50, i32 0, i32 5, i32 2
  %51 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx96, align 2
  %53 = or i8 %52, 4
  store i8 %53, ptr %arrayidx96, align 2
  br label %sw.epilog.sink.split

sw.bb104:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cf, align 4
  %arrayidx106 = getelementptr %struct.can_frame, ptr %55, i32 0, i32 5, i32 2
  %56 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx106, align 2
  %58 = or i8 %57, 2
  store i8 %58, ptr %arrayidx106, align 2
  br label %sw.epilog.sink.split

sw.bb116:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cf, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 8
  %or118 = or i32 %62, 32
  store i32 %or118, ptr %60, align 8
  br label %sw.epilog.sink.split

sw.bb125:                                         ; preds = %if.end93.sw.bb125_crit_edge, %if.end93.sw.bb125_crit_edge201
  %63 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cf, align 4
  %arrayidx127 = getelementptr %struct.can_frame, ptr %64, i32 0, i32 5, i32 2
  %65 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx127, align 2
  %67 = or i8 %66, 1
  store i8 %67, ptr %arrayidx127, align 2
  br label %sw.epilog.sink.split

sw.bb137:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cf, align 4
  %arrayidx139 = getelementptr %struct.can_frame, ptr %69, i32 0, i32 5, i32 3
  %70 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 8, ptr %arrayidx139, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb137, %sw.bb125, %sw.bb116, %sw.bb104, %sw.bb
  %can_stats101 = getelementptr i8, ptr %ndev, i32 2308
  %71 = ptrtoint ptr %can_stats101 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %can_stats101, align 4
  %inc102 = add i32 %72, 1
  store i32 %inc102, ptr %can_stats101, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 36, i32 4
  %73 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %rx_errors, align 4
  %inc145 = add i32 %74, 1
  store i32 %inc145, ptr %rx_errors, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end93.sw.epilog_crit_edge
  %conv147 = trunc i32 %14 to i8
  %75 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cf, align 4
  %arrayidx149 = getelementptr %struct.can_frame, ptr %76, i32 0, i32 5, i32 6
  %77 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv147, ptr %arrayidx149, align 2
  %and150 = lshr i32 %14, 8
  %78 = trunc i32 %and150 to i8
  %conv152 = and i8 %78, 127
  %79 = load ptr, ptr %cf, align 4
  %arrayidx154 = getelementptr %struct.can_frame, ptr %79, i32 0, i32 5, i32 7
  %80 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv152, ptr %arrayidx154, align 1
  %81 = ptrtoint ptr %state3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %state.2, ptr %state3, align 8
  %call157 = call i32 @netif_receive_skb(ptr noundef nonnull %call4) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_err_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @can_bus_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pch_can_rx_msg_lost(ptr noundef %ndev, i32 noundef %obj_id) unnamed_addr #2 align 64 {
entry:
  %cf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr i8, ptr %ndev, i32 3008
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cf) #6
  %2 = ptrtoint ptr %cf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %cf, align 4, !annotation !101
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pch_can_rx_msg_lost.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pch_can_rx_msg_lost, %do.end10)) #6
          to label %if.then [label %do.end10], !srcloc !108

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @pch_can_rx_msg_lost.__UNIQUE_ID_ddebug463, ptr noundef %4, ptr noundef nonnull @.str.34) #6
  br label %do.end10

do.end10:                                         ; preds = %if.then, %entry
  %regs = getelementptr i8, ptr %ndev, i32 3012
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %mcont = getelementptr inbounds %struct.pch_can_regs, ptr %6, i32 0, i32 8, i32 0, i32 6
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %8 = and i32 %7, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont, i32 %8) #6, !srcloc !98
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %cmask = getelementptr inbounds %struct.pch_can_regs, ptr %10, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask, i32 -1879048192) #6, !srcloc !98
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %ifregs15 = getelementptr inbounds %struct.pch_can_regs, ptr %12, i32 0, i32 8
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs15, i32 noundef %obj_id)
  %call17 = call ptr @alloc_can_err_skb(ptr noundef %ndev, ptr noundef nonnull %cf) #6
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %do.end10.cleanup_crit_edge, label %if.end20

do.end10.cleanup_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cf, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %or = or i32 %16, 4
  store i32 %or, ptr %14, align 8
  %17 = load ptr, ptr %cf, align 4
  %arrayidx21 = getelementptr %struct.can_frame, ptr %17, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx21, align 1
  %rx_over_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  %19 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_over_errors, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %rx_over_errors, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %21 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_errors, align 4
  %inc22 = add i32 %22, 1
  store i32 %inc22, ptr %rx_errors, align 4
  %call23 = call i32 @netif_receive_skb(ptr noundef nonnull %call17) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %do.end10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cf) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_can_skb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @can_get_echo_skb(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_candev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_suspend(ptr noundef %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %regs2.i = getelementptr i8, ptr %1, i32 3012
  %2 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs2.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #6, !srcloc !98
  %state = getelementptr i8, ptr %1, i32 2472
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %state, align 8
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry
  %counter.064 = phi i32 [ 10, %entry ], [ %dec, %if.end.while.body_crit_edge ]
  %7 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs2.i, align 4
  %treq1.i = getelementptr inbounds %struct.pch_can_regs, ptr %8, i32 0, i32 10
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %treq1.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %10 = and i32 %9, -65536
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %12 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs2.i, align 4
  %treq2.i = getelementptr inbounds %struct.pch_can_regs, ptr %13, i32 0, i32 11
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %treq2.i) #6, !srcloc !99
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %shl.i = shl i32 %15, 16
  %or.i = or i32 %shl.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool3.not = icmp eq i32 %or.i, 0
  br i1 %tobool3.not, label %while.body.if.end6_crit_edge, label %if.end

while.body.if.end6_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %counter.064, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.critedge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.end.critedge:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev_d, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end.critedge, %while.body.if.end6_crit_edge
  %17 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs2.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !99
  %20 = lshr i32 %19, 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %shr.i = and i32 %20, 7
  %int_enables = getelementptr i8, ptr %1, i32 3004
  %21 = ptrtoint ptr %int_enables to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i, ptr %int_enables, align 4
  %22 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs2.i, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %25 = and i32 %24, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #6, !srcloc !98
  br label %for.body

for.body:                                         ; preds = %pch_can_get_rxtx_ir.exit.for.body_crit_edge, %if.end6
  %i.065 = phi i32 [ 27, %if.end6 ], [ %inc, %pch_can_get_rxtx_ir.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs2.i, align 4
  %cmask.i = getelementptr %struct.pch_can_regs, ptr %27, i32 0, i32 8, i32 1, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i, i32 1929379840) #6, !srcloc !98
  %28 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs2.i, align 4
  %arrayidx3.i = getelementptr %struct.pch_can_regs, ptr %29, i32 0, i32 8, i32 1
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx3.i, i32 noundef %i.065) #6
  %30 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs2.i, align 4
  %id2.i = getelementptr %struct.pch_can_regs, ptr %31, i32 0, i32 8, i32 1, i32 5
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %33 = and i32 %32, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool7.not.i = icmp eq i32 %33, 0
  br i1 %tobool7.not.i, label %for.body.if.else15.i_crit_edge, label %land.lhs.true.i

for.body.if.else15.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else15.i

land.lhs.true.i:                                  ; preds = %for.body
  %34 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs2.i, align 4
  %mcont.i = getelementptr %struct.pch_can_regs, ptr %35, i32 0, i32 8, i32 1, i32 6
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %37 = and i32 %36, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool13.not.i = icmp eq i32 %37, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.else15.i_crit_edge, label %land.lhs.true.i.pch_can_get_rxtx_ir.exit_crit_edge

land.lhs.true.i.pch_can_get_rxtx_ir.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pch_can_get_rxtx_ir.exit

land.lhs.true.i.if.else15.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true.i.if.else15.i_crit_edge, %for.body.if.else15.i_crit_edge
  br label %pch_can_get_rxtx_ir.exit

pch_can_get_rxtx_ir.exit:                         ; preds = %if.else15.i, %land.lhs.true.i.pch_can_get_rxtx_ir.exit_crit_edge
  %enable.0.i = phi i32 [ 0, %if.else15.i ], [ 1, %land.lhs.true.i.pch_can_get_rxtx_ir.exit_crit_edge ]
  %sub = add nsw i32 %i.065, -1
  %arrayidx = getelementptr %struct.pch_can_priv, ptr %add.ptr.i, i32 0, i32 2, i32 %sub
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %enable.0.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.end, label %pch_can_get_rxtx_ir.exit.for.body_crit_edge

pch_can_get_rxtx_ir.exit.for.body_crit_edge:      ; preds = %pch_can_get_rxtx_ir.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %pch_can_get_rxtx_ir.exit
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 27, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 28, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 29, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 30, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 31, i32 noundef 0, i32 noundef 1) #6
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef 0, i32 noundef 1) #6
  br label %for.body11

for.body11:                                       ; preds = %pch_can_get_rxtx_ir.exit60.for.body11_crit_edge, %for.end
  %i.166 = phi i32 [ 1, %for.end ], [ %inc19, %pch_can_get_rxtx_ir.exit60.for.body11_crit_edge ]
  %39 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs2.i, align 4
  %cmask.i50 = getelementptr %struct.pch_can_regs, ptr %40, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i50, i32 1929379840) #6, !srcloc !98
  %41 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs2.i, align 4
  %arrayidx3.i51 = getelementptr %struct.pch_can_regs, ptr %42, i32 0, i32 8, i32 0
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %arrayidx3.i51, i32 noundef %i.166) #6
  %43 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs2.i, align 4
  %id2.i52 = getelementptr %struct.pch_can_regs, ptr %44, i32 0, i32 8, i32 0, i32 5
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %id2.i52) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %46 = and i32 %45, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool7.not.i53 = icmp eq i32 %46, 0
  br i1 %tobool7.not.i53, label %for.body11.if.else15.i58_crit_edge, label %land.lhs.true.i57

for.body11.if.else15.i58_crit_edge:               ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else15.i58

land.lhs.true.i57:                                ; preds = %for.body11
  %47 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs2.i, align 4
  %mcont.i54 = getelementptr %struct.pch_can_regs, ptr %48, i32 0, i32 8, i32 0, i32 6
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i54) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %50 = and i32 %49, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool13.not.i56 = icmp eq i32 %50, 0
  br i1 %tobool13.not.i56, label %land.lhs.true.i57.if.else15.i58_crit_edge, label %land.lhs.true.i57.pch_can_get_rxtx_ir.exit60_crit_edge

land.lhs.true.i57.pch_can_get_rxtx_ir.exit60_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %pch_can_get_rxtx_ir.exit60

land.lhs.true.i57.if.else15.i58_crit_edge:        ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else15.i58

if.else15.i58:                                    ; preds = %land.lhs.true.i57.if.else15.i58_crit_edge, %for.body11.if.else15.i58_crit_edge
  br label %pch_can_get_rxtx_ir.exit60

pch_can_get_rxtx_ir.exit60:                       ; preds = %if.else15.i58, %land.lhs.true.i57.pch_can_get_rxtx_ir.exit60_crit_edge
  %enable.0.i59 = phi i32 [ 0, %if.else15.i58 ], [ 1, %land.lhs.true.i57.pch_can_get_rxtx_ir.exit60_crit_edge ]
  %sub13 = add nsw i32 %i.166, -1
  %arrayidx14 = getelementptr %struct.pch_can_priv, ptr %add.ptr.i, i32 0, i32 3, i32 %sub13
  %51 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %enable.0.i59, ptr %arrayidx14, align 4
  %52 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs2.i, align 4
  %cmask.i62 = getelementptr inbounds %struct.pch_can_regs, ptr %53, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i62, i32 1929379840) #6, !srcloc !98
  %54 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs2.i, align 4
  %ifregs2.i = getelementptr inbounds %struct.pch_can_regs, ptr %55, i32 0, i32 8
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs2.i, i32 noundef %i.166) #6
  %56 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs2.i, align 4
  %mcont.i63 = getelementptr inbounds %struct.pch_can_regs, ptr %57, i32 0, i32 8, i32 0, i32 6
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont.i63) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %59 = xor i32 %58, -1
  %.lobit.not.i = lshr i32 %59, 31
  %arrayidx17 = getelementptr %struct.pch_can_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %sub13
  %60 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.lobit.not.i, ptr %arrayidx17, align 4
  %inc19 = add nuw nsw i32 %i.166, 1
  %exitcond67.not = icmp eq i32 %inc19, 27
  br i1 %exitcond67.not, label %pch_can_get_rxtx_ir.exit60.for.body.i_crit_edge, label %pch_can_get_rxtx_ir.exit60.for.body11_crit_edge

pch_can_get_rxtx_ir.exit60.for.body11_crit_edge:  ; preds = %pch_can_get_rxtx_ir.exit60
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11

pch_can_get_rxtx_ir.exit60.for.body.i_crit_edge:  ; preds = %pch_can_get_rxtx_ir.exit60
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %pch_can_get_rxtx_ir.exit60.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 1, %pch_can_get_rxtx_ir.exit60.for.body.i_crit_edge ]
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef %i.03.i, i32 noundef 0, i32 noundef 0) #6
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 27
  br i1 %exitcond.not.i, label %pch_can_set_rx_all.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

pch_can_set_rx_all.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pch_can_resume(ptr nocapture noundef readonly %dev_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %state = getelementptr i8, ptr %1, i32 2472
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 8
  %regs.i = getelementptr i8, ptr %1, i32 3012
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %6 = and i32 %5, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #6, !srcloc !98
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %10 = or i32 %9, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #6, !srcloc !98
  tail call fastcc void @pch_can_config_rx_tx_buffers(ptr noundef %add.ptr.i)
  tail call fastcc void @pch_set_bittiming(ptr noundef %1)
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %opt.i = getelementptr inbounds %struct.pch_can_regs, ptr %12, i32 0, i32 5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %opt.i) #6, !srcloc !99
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %ctrlmode.i = getelementptr i8, ptr %1, i32 2476
  %15 = ptrtoint ptr %ctrlmode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrlmode.i, align 4
  %and.i = shl i32 %16, 2
  %17 = and i32 %and.i, 8
  %18 = or i32 %17, %14
  %and3.i = shl i32 %16, 4
  %19 = and i32 %and3.i, 16
  %20 = or i32 %18, %19
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %24 = or i32 %23, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %24) #6, !srcloc !98
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %opt10.i = getelementptr inbounds %struct.pch_can_regs, ptr %26, i32 0, i32 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %opt10.i, i32 %27) #6, !srcloc !98
  %arrayidx = getelementptr i8, ptr %1, i32 2724
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 27, i32 noundef %29, i32 noundef 1)
  %arrayidx.1 = getelementptr i8, ptr %1, i32 2728
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1, align 4
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 28, i32 noundef %31, i32 noundef 1)
  %arrayidx.2 = getelementptr i8, ptr %1, i32 2732
  %32 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.2, align 4
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 29, i32 noundef %33, i32 noundef 1)
  %arrayidx.3 = getelementptr i8, ptr %1, i32 2736
  %34 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.3, align 4
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 30, i32 noundef %35, i32 noundef 1)
  %arrayidx.4 = getelementptr i8, ptr %1, i32 2740
  %36 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.4, align 4
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 31, i32 noundef %37, i32 noundef 1)
  %arrayidx.5 = getelementptr i8, ptr %1, i32 2744
  %38 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.5, align 4
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef 32, i32 noundef %39, i32 noundef 1)
  br label %for.body5

for.body5:                                        ; preds = %pch_can_set_rx_buffer_link.exit.for.body5_crit_edge, %entry
  %i.141 = phi i32 [ %inc11, %pch_can_set_rx_buffer_link.exit.for.body5_crit_edge ], [ 1, %entry ]
  %sub6 = add nsw i32 %i.141, -1
  %arrayidx7 = getelementptr %struct.pch_can_priv, ptr %add.ptr.i, i32 0, i32 4, i32 %sub6
  %40 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx7, align 4
  %42 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i, align 4
  %cmask.i = getelementptr inbounds %struct.pch_can_regs, ptr %43, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask.i, i32 1929379840) #6, !srcloc !98
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %ifregs2.i = getelementptr inbounds %struct.pch_can_regs, ptr %45, i32 0, i32 8
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs2.i, i32 noundef %i.141) #6
  %46 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i, align 4
  %cmask7.i = getelementptr inbounds %struct.pch_can_regs, ptr %47, i32 0, i32 8, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmask7.i, i32 -1879048192) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 4
  %mcont14.i = getelementptr inbounds %struct.pch_can_regs, ptr %49, i32 0, i32 8, i32 0, i32 6
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mcont14.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  %51 = and i32 %50, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont14.i, i32 %51) #6, !srcloc !98
  br label %pch_can_set_rx_buffer_link.exit

if.else.i:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #8
  %52 = or i32 %50, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mcont14.i, i32 %52) #6, !srcloc !98
  br label %pch_can_set_rx_buffer_link.exit

pch_can_set_rx_buffer_link.exit:                  ; preds = %if.else.i, %if.then.i
  %53 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i, align 4
  %ifregs16.i = getelementptr inbounds %struct.pch_can_regs, ptr %54, i32 0, i32 8
  tail call fastcc void @pch_can_rw_msg_obj(ptr noundef %ifregs16.i, i32 noundef %i.141) #6
  %arrayidx9 = getelementptr %struct.pch_can_priv, ptr %add.ptr.i, i32 0, i32 3, i32 %sub6
  %55 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx9, align 4
  tail call fastcc void @pch_can_set_rxtx(ptr noundef %add.ptr.i, i32 noundef %i.141, i32 noundef %56, i32 noundef 0)
  %inc11 = add nuw nsw i32 %i.141, 1
  %exitcond.not = icmp eq i32 %inc11, 27
  br i1 %exitcond.not, label %for.end12, label %pch_can_set_rx_buffer_link.exit.for.body5_crit_edge

pch_can_set_rx_buffer_link.exit.for.body5_crit_edge: ; preds = %pch_can_set_rx_buffer_link.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5

for.end12:                                        ; preds = %pch_can_set_rx_buffer_link.exit
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %60 = and i32 %59, -234881025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %60) #6, !srcloc !98
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %int_enables.i = getelementptr i8, ptr %1, i32 3004
  %63 = ptrtoint ptr %int_enables.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %int_enables.i, align 4
  %and.i38 = shl i32 %64, 1
  %shl.i = and i32 %and.i38, 14
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #6, !srcloc !99
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %or.i.i = or i32 %66, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %67) #6, !srcloc !98
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %71 = and i32 %70, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %71) #6, !srcloc !98
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !71, !72, !74, !75, !77, !79, !80, !81, !83, !85, !86, !87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__initcall__kmod_pch_can__466_1238_pch_can_pci_driver_init6, !1, !"__initcall__kmod_pch_can__466_1238_pch_can_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/pch_can.c", i32 1238, i32 1}
!2 = !{ptr @__exitcall_pch_can_pci_driver_exit, !1, !"__exitcall_pch_can_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description467, !4, !"__UNIQUE_ID_description467", i1 false, i1 false}
!4 = !{!"../drivers/net/can/pch_can.c", i32 1240, i32 1}
!5 = !{ptr @__UNIQUE_ID_file468, !6, !"__UNIQUE_ID_file468", i1 false, i1 false}
!6 = !{!"../drivers/net/can/pch_can.c", i32 1241, i32 1}
!7 = !{ptr @__UNIQUE_ID_license469, !6, !"__UNIQUE_ID_license469", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_version470, !9, !"__UNIQUE_ID_version470", i1 false, i1 false}
!9 = !{!"../drivers/net/can/pch_can.c", i32 1242, i32 1}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__modver_attr, !9, !"__modver_attr", i1 false, i1 false}
!14 = !{ptr @pch_can_pci_driver, !15, !"pch_can_pci_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/pch_can.c", i32 1230, i32 26}
!16 = !{ptr @pch_pci_tbl, !17, !"pch_pci_tbl", i1 false, i1 false}
!17 = !{!"../drivers/net/can/pch_can.c", i32 186, i32 35}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/pch_can.c", i32 1149, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pch_can_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pch_can_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/pch_can.c", i32 1155, i32 3}
!28 = !{ptr @pch_can_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @pch_can_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/pch_can.c", i32 1162, i32 3}
!32 = !{ptr @pch_can_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pch_can_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/pch_can.c", i32 1169, i32 3}
!36 = !{ptr @pch_can_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @pch_can_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/can/pch_can.c", i32 1196, i32 20}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/pch_can.c", i32 1199, i32 20}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/can/pch_can.c", i32 1206, i32 3}
!44 = !{ptr @pch_can_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pch_can_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @pch_can_bittiming_const, !47, !"pch_can_bittiming_const", i1 false, i1 false}
!47 = !{!"../drivers/net/can/pch_can.c", i32 174, i32 41}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/pch_can.c", i32 248, i32 3}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pch_can_rw_msg_obj._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @pch_can_rw_msg_obj._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/can/pch_can.c", i32 215, i32 26}
!55 = distinct !{null, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/can/pch_can.c", i32 215, i32 51}
!57 = !{ptr @pch_can_netdev_ops, !58, !"pch_can_netdev_ops", i1 false, i1 false}
!58 = !{!"../drivers/net/can/pch_can.c", i32 933, i32 36}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/can/pch_can.c", i32 836, i32 20}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/can/pch_can.c", i32 843, i32 20}
!63 = distinct !{null, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/can/pch_can.c", i32 268, i32 26}
!65 = distinct !{null, !66, !"__already_done", i1 false, i1 false}
!66 = !{!"../include/linux/can/skb.h", i32 104, i32 6}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/can/pch_can.c", i32 511, i32 3}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pch_can_error.__UNIQUE_ID_ddebug461, !69, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/can/pch_can.c", i32 523, i32 3}
!74 = !{ptr @pch_can_error.__UNIQUE_ID_ddebug462, !73, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/can/pch_can.c", i32 665, i32 21}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/can/pch_can.c", i32 608, i32 2}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @pch_can_rx_msg_lost.__UNIQUE_ID_ddebug463, !78, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!81 = !{ptr @pch_can_pm_ops, !82, !"pch_can_pm_ops", i1 false, i1 false}
!82 = !{!"../drivers/net/can/pch_can.c", i32 1226, i32 8}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/can/pch_can.c", i32 1055, i32 3}
!85 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pch_can_suspend._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @pch_can_suspend._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 2151770282}
!98 = !{i64 4228160}
!99 = !{i64 4228578}
!100 = !{i64 2151768927}
!101 = !{!"auto-init"}
!102 = !{i64 4227740}
!103 = !{i64 2151768315}
!104 = !{!"branch_weights", i32 2000, i32 1}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 2151769732}
!107 = !{i64 4227540}
!108 = !{i64 2148747352, i64 2148747357, i64 2148747370, i64 2148747414, i64 2148747448, i64 2148747469}
