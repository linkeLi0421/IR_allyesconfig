; ModuleID = '/llk/IR_all_yes/drivers/net/hippi/rrunner.c_pt.bc'
source_filename = "../drivers/net/hippi/rrunner.c"
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.atomic_t = type { i32 }
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
%struct.rr_regs = type { [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [17 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [33 x i32], i32, [5 x i32], i32, i32, [8 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [325 x i32], [512 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rr_info = type { %union.anon.146, %struct.ring_ctrl, %struct.ring_ctrl, %struct.ring_ctrl, [464 x i8], [3072 x i8] }
%union.anon.146 = type { %struct.rr_stats, [248 x i8] }
%struct.rr_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ring_ctrl = type { %struct.rraddr, i8, i8, i16, i16, i16 }
%struct.rraddr = type { i32, i32 }
%struct.rr_private = type { ptr, ptr, ptr, i32, i32, i32, [32 x ptr], [32 x ptr], ptr, ptr, ptr, i32, i32, %struct.spinlock, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i16, ptr }
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
%struct.tx_desc = type { %struct.rraddr, i32, i8, i8, i16 }
%struct.rx_desc = type { %struct.rraddr, i32, i8, i8, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.event = type { i8, i8, i16, i32 }

@__UNIQUE_ID_author459 = internal constant [53 x i8] c"rrunner.author=Jes Sorensen <jes@wildopensource.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [54 x i8] c"rrunner.description=Essential RoadRunner HIPPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file461 = internal constant [39 x i8] c"rrunner.file=drivers/net/hippi/rrunner\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [20 x i8] c"rrunner.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_rrunner__467_1684_rr_driver_init6 = internal global ptr @rr_driver_init, section ".initcall6.init", align 4
@rr_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @rr_pci_tbl, ptr @rr_init_one, ptr @rr_remove_one, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_rr_driver_exit = internal global ptr @rr_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rrunner\00", [24 x i8] zeroinitializer }, align 32
@rr_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4623, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rr_init_one.version_disp = internal global { i1, [31 x i8] } zeroinitializer, align 32
@rr_init_one.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&rrpriv->lock\00", [18 x i8] zeroinitializer }, align 32
@rr_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rr_open, ptr @rr_close, ptr @rr_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @hippi_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rr_siocdevprivate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rr_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.2, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rr_init_one\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/net/hippi/rrunner.c\00", [36 x i8] zeroinitializer }, align 32
@rr_init_one._entry_ptr = internal global ptr @rr_init_one._entry, section ".printk_index", align 4
@version = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"rrunner.c: v0.50 11/11/2002  Jes Sorensen (jes@wildopensource.com)\0A\00", [60 x i8] zeroinitializer }, align 32
@rr_init_one._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\016%s: Essential RoadRunner serial HIPPI at 0x%llx, irq %i, PCI latency %i\0A\00", [53 x i8] zeroinitializer }, align 32
@rr_init_one._entry_ptr.6 = internal global ptr @rr_init_one._entry.4, section ".printk_index", align 4
@rr_init_one._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s:  Unable to map I/O register, RoadRunner will be disabled.\0A\00", [63 x i8] zeroinitializer }, align 32
@rr_init_one._entry_ptr.9 = internal global ptr @rr_init_one._entry.7, section ".printk_index", align 4
@rr_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014%s: trying to configure device with obsolete firmware\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rr_open\00", [24 x i8] zeroinitializer }, align 32
@rr_open._entry_ptr = internal global ptr @rr_open._entry, section ".printk_index", align 4
@rr_open._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014%s: Requested IRQ %d is busy\0A\00", [32 x i8] zeroinitializer }, align 32
@rr_open._entry_ptr.14 = internal global ptr @rr_open._entry.12, section ".printk_index", align 4
@rr_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&rrpriv->timer)\00", [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rr_handle_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016%s: Firmware revision %i.%i.%i up and running\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rr_handle_event\00", [16 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr = internal global ptr @rr_handle_event._entry, section ".printk_index", align 4
@rr_handle_event._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016%s: Optical link ON\0A\00", [41 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.20 = internal global ptr @rr_handle_event._entry.18, section ".printk_index", align 4
@rr_handle_event._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s: Optical link OFF\0A\00", [40 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.23 = internal global ptr @rr_handle_event._entry.21, section ".printk_index", align 4
@rr_handle_event._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.3, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: RX data not moving\0A\00", [38 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.26 = internal global ptr @rr_handle_event._entry.24, section ".printk_index", align 4
@rr_handle_event._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.3, i32 758, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: The watchdog is here to see us\0A\00", [58 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.29 = internal global ptr @rr_handle_event._entry.27, section ".printk_index", align 4
@rr_handle_event._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.3, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: HIPPI Internal NIC error\0A\00", [32 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.32 = internal global ptr @rr_handle_event._entry.30, section ".printk_index", align 4
@rr_handle_event._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.3, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: Host software error\0A\00", [37 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.35 = internal global ptr @rr_handle_event._entry.33, section ".printk_index", align 4
@rr_handle_event._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.17, ptr @.str.3, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: Connection rejected\0A\00", [37 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.38 = internal global ptr @rr_handle_event._entry.36, section ".printk_index", align 4
@rr_handle_event._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.17, ptr @.str.3, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: Connection timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.41 = internal global ptr @rr_handle_event._entry.39, section ".printk_index", align 4
@rr_handle_event._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.17, ptr @.str.3, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: HIPPI disconnect error\0A\00", [34 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.44 = internal global ptr @rr_handle_event._entry.42, section ".printk_index", align 4
@rr_handle_event._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.17, ptr @.str.3, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: HIPPI Internal Parity error\0A\00", [61 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.47 = internal global ptr @rr_handle_event._entry.45, section ".printk_index", align 4
@rr_handle_event._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.17, ptr @.str.3, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\014%s: Transmitter idle\0A\00", [40 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.50 = internal global ptr @rr_handle_event._entry.48, section ".printk_index", align 4
@rr_handle_event._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.17, ptr @.str.3, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014%s: Link lost during transmit\0A\00", [63 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.53 = internal global ptr @rr_handle_event._entry.51, section ".printk_index", align 4
@rr_handle_event._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.17, ptr @.str.3, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Invalid send ring block\0A\00", [33 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.56 = internal global ptr @rr_handle_event._entry.54, section ".printk_index", align 4
@rr_handle_event._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.17, ptr @.str.3, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Invalid send buffer address\0A\00", [61 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.59 = internal global ptr @rr_handle_event._entry.57, section ".printk_index", align 4
@rr_handle_event._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.17, ptr @.str.3, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Invalid descriptor address\0A\00", [62 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.62 = internal global ptr @rr_handle_event._entry.60, section ".printk_index", align 4
@rr_handle_event._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.17, ptr @.str.3, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: Receive ring full\0A\00", [39 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.65 = internal global ptr @rr_handle_event._entry.63, section ".printk_index", align 4
@rr_handle_event._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.17, ptr @.str.3, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: Receive parity error\0A\00", [36 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.68 = internal global ptr @rr_handle_event._entry.66, section ".printk_index", align 4
@rr_handle_event._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.17, ptr @.str.3, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014%s: Receive LLRC error\0A\00", [38 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.71 = internal global ptr @rr_handle_event._entry.69, section ".printk_index", align 4
@rr_handle_event._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.17, ptr @.str.3, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014%s: Receive packet length error\0A\00", [61 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.74 = internal global ptr @rr_handle_event._entry.72, section ".printk_index", align 4
@rr_handle_event._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.17, ptr @.str.3, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: Data checksum error\0A\00", [37 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.77 = internal global ptr @rr_handle_event._entry.75, section ".printk_index", align 4
@rr_handle_event._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.17, ptr @.str.3, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: Unexpected short burst error\0A\00", [60 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.80 = internal global ptr @rr_handle_event._entry.78, section ".printk_index", align 4
@rr_handle_event._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.17, ptr @.str.3, i32 860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: Recv. state transition error\0A\00", [60 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.83 = internal global ptr @rr_handle_event._entry.81, section ".printk_index", align 4
@rr_handle_event._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.17, ptr @.str.3, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014%s: Unexpected data error\0A\00", [35 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.86 = internal global ptr @rr_handle_event._entry.84, section ".printk_index", align 4
@rr_handle_event._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.17, ptr @.str.3, i32 868, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s: Link lost error\0A\00", [41 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.89 = internal global ptr @rr_handle_event._entry.87, section ".printk_index", align 4
@rr_handle_event._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.17, ptr @.str.3, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\014%s: Framing Error\0A\00", [43 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.92 = internal global ptr @rr_handle_event._entry.90, section ".printk_index", align 4
@rr_handle_event._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.17, ptr @.str.3, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: Flag sync. lost during packet\0A\00", [59 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.95 = internal global ptr @rr_handle_event._entry.93, section ".printk_index", align 4
@rr_handle_event._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.17, ptr @.str.3, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Invalid receive buffer address\0A\00", [58 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.98 = internal global ptr @rr_handle_event._entry.96, section ".printk_index", align 4
@rr_handle_event._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.17, ptr @.str.3, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: Invalid receive descriptor address\0A\00", [54 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.101 = internal global ptr @rr_handle_event._entry.99, section ".printk_index", align 4
@rr_handle_event._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.17, ptr @.str.3, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s: Invalid ring block\0A\00", [38 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.104 = internal global ptr @rr_handle_event._entry.102, section ".printk_index", align 4
@rr_handle_event._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.17, ptr @.str.3, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Unhandled event 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@rr_handle_event._entry_ptr.107 = internal global ptr @rr_handle_event._entry.105, section ".printk_index", align 4
@rx_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: Unable to allocate skb (%i bytes), deferring packet\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rx_int\00", [25 x i8] zeroinitializer }, align 32
@rx_int._entry_ptr = internal global ptr @rx_int._entry, section ".printk_index", align 4
@rx_int._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.3, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Out of memory, deferring packet\0A\00", [59 x i8] zeroinitializer }, align 32
@rx_int._entry_ptr.112 = internal global ptr @rx_int._entry.110, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@rr_init1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.3, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Parity error halting NIC - this is serious!\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rr_init1\00", [23 x i8] zeroinitializer }, align 32
@rr_init1._entry_ptr = internal global ptr @rr_init1._entry, section ".printk_index", align 4
@rr_init1._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str.3, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014%s: Unable to allocate memory for receive ring - halting NIC\0A\00", [32 x i8] zeroinitializer }, align 32
@rr_init1._entry_ptr.119 = internal global ptr @rr_init1._entry.117, section ".printk_index", align 4
@rr_init1._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.116, ptr @.str.3, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"skb alloc error\0A\00", [47 x i8] zeroinitializer }, align 32
@rr_init1._entry_ptr.122 = internal global ptr @rr_init1._entry.120, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rr_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.3, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Trying to load firmware to a running NIC.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rr_load_firmware\00", [47 x i8] zeroinitializer }, align 32
@rr_load_firmware._entry_ptr = internal global ptr @rr_load_firmware._entry, section ".printk_index", align 4
@rr_load_firmware._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.3, i32 1524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: eptr is invalid\0A\00", [43 x i8] zeroinitializer }, align 32
@rr_load_firmware._entry_ptr.127 = internal global ptr @rr_load_firmware._entry.125, section ".printk_index", align 4
@rr_load_firmware._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.3, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: invalid firmware format (%i)\0A\00", [62 x i8] zeroinitializer }, align 32
@rr_load_firmware._entry_ptr.130 = internal global ptr @rr_load_firmware._entry.128, section ".printk_index", align 4
@rr_issue_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"issuing command for halted NIC, code 0x%x, HostCtrl %08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rr_issue_cmd\00", [19 x i8] zeroinitializer }, align 32
@rr_issue_cmd._entry_ptr = internal global ptr @rr_issue_cmd._entry, section ".printk_index", align 4
@rr_issue_cmd._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.132, ptr @.str.3, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error codes Fail1 %02x, Fail2 %02x\0A\00", [60 x i8] zeroinitializer }, align 32
@rr_issue_cmd._entry_ptr.135 = internal global ptr @rr_issue_cmd._entry.133, section ".printk_index", align 4
@rr_issue_cmd._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.132, ptr @.str.3, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"error code %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@rr_issue_cmd._entry_ptr.138 = internal global ptr @rr_issue_cmd._entry.136, section ".printk_index", align 4
@rr_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.3, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Restarting nic\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rr_timer\00", [23 x i8] zeroinitializer }, align 32
@rr_timer._entry_ptr = internal global ptr @rr_timer._entry, section ".printk_index", align 4
@rr_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.3, i32 1348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: NIC already halted\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rr_close\00", [23 x i8] zeroinitializer }, align 32
@rr_close._entry_ptr = internal global ptr @rr_close._entry, section ".printk_index", align 4
@rr_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: dumping NIC TX rings\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rr_dump\00", [24 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr = internal global ptr @rr_dump._entry, section ".printk_index", align 4
@rr_dump._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.3, i32 1281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"RxPrd %08x, TxPrd %02x, EvtPrd %08x, TxPi %02x, TxCtrlPi %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.147 = internal global ptr @rr_dump._entry.145, section ".printk_index", align 4
@rr_dump._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.144, ptr @.str.3, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Error code 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.150 = internal global ptr @rr_dump._entry.148, section ".printk_index", align 4
@rr_dump._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.144, ptr @.str.3, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TX ring index %i, TX consumer %i\0A\00", [62 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.153 = internal global ptr @rr_dump._entry.151, section ".printk_index", align 4
@rr_dump._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.144, ptr @.str.3, i32 1292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"skbuff for index %i is valid - dumping data (0x%x bytes - DMA len 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.156 = internal global ptr @rr_dump._entry.154, section ".printk_index", align 4
@rr_dump._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.144, ptr @.str.3, i32 1295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.159 = internal global ptr @rr_dump._entry.157, section ".printk_index", align 4
@rr_dump._entry.160 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.144, ptr @.str.3, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.162 = internal global ptr @rr_dump._entry.160, section ".printk_index", align 4
@rr_dump._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.144, ptr @.str.3, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.164 = internal global ptr @rr_dump._entry.163, section ".printk_index", align 4
@rr_dump._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.144, ptr @.str.3, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"skbuff for cons %i is valid - dumping data (0x%x bytes - skbuff len 0x%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.167 = internal global ptr @rr_dump._entry.165, section ".printk_index", align 4
@rr_dump._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.144, ptr @.str.3, i32 1309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"mode 0x%x, size 0x%x,\0A phys %08Lx, skbuff-addr %p, truesize 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.170 = internal global ptr @rr_dump._entry.168, section ".printk_index", align 4
@rr_dump._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.144, ptr @.str.3, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.172 = internal global ptr @rr_dump._entry.171, section ".printk_index", align 4
@rr_dump._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.144, ptr @.str.3, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.174 = internal global ptr @rr_dump._entry.173, section ".printk_index", align 4
@rr_dump._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.144, ptr @.str.3, i32 1315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.176 = internal global ptr @rr_dump._entry.175, section ".printk_index", align 4
@rr_dump._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.144, ptr @.str.3, i32 1318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dumping TX ring info:\0A\00", [41 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.179 = internal global ptr @rr_dump._entry.177, section ".printk_index", align 4
@rr_dump._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.144, ptr @.str.3, i32 1323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mode 0x%x, size 0x%x, phys-addr %08Lx\0A\00", [57 x i8] zeroinitializer }, align 32
@rr_dump._entry_ptr.182 = internal global ptr @rr_dump._entry.180, section ".printk_index", align 4
@rr_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.183, ptr @.str.3, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rr_start_xmit\00", [18 x i8] zeroinitializer }, align 32
@rr_start_xmit._entry_ptr = internal global ptr @rr_start_xmit._entry, section ".printk_index", align 4
@rr_start_xmit._entry.184 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.183, ptr @.str.3, i32 1413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"incoming skb too small - reallocating\0A\00", [57 x i8] zeroinitializer }, align 32
@rr_start_xmit._entry_ptr.186 = internal global ptr @rr_start_xmit._entry.184, section ".printk_index", align 4
@rr_siocdevprivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.3, i32 1595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Firmware already running\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rr_siocdevprivate\00", [46 x i8] zeroinitializer }, align 32
@rr_siocdevprivate._entry_ptr = internal global ptr @rr_siocdevprivate._entry, section ".printk_index", align 4
@rr_siocdevprivate._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.188, ptr @.str.3, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Error reading EEPROM\0A\00", [36 x i8] zeroinitializer }, align 32
@rr_siocdevprivate._entry_ptr.191 = internal global ptr @rr_siocdevprivate._entry.189, section ".printk_index", align 4
@rr_siocdevprivate._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.188, ptr @.str.3, i32 1632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@rr_siocdevprivate._entry_ptr.193 = internal global ptr @rr_siocdevprivate._entry.192, section ".printk_index", align 4
@rr_siocdevprivate._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.188, ptr @.str.3, i32 1637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Updating EEPROM firmware\0A\00", [34 x i8] zeroinitializer }, align 32
@rr_siocdevprivate._entry_ptr.196 = internal global ptr @rr_siocdevprivate._entry.194, section ".printk_index", align 4
@rr_siocdevprivate._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.188, ptr @.str.3, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: Error writing EEPROM\0A\00", [36 x i8] zeroinitializer }, align 32
@rr_siocdevprivate._entry_ptr.199 = internal global ptr @rr_siocdevprivate._entry.197, section ".printk_index", align 4
@rr_siocdevprivate._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.188, ptr @.str.3, i32 1650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Error reading back EEPROM image\0A\00", [57 x i8] zeroinitializer }, align 32
@rr_siocdevprivate._entry_ptr.202 = internal global ptr @rr_siocdevprivate._entry.200, section ".printk_index", align 4
@rr_siocdevprivate._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.188, ptr @.str.3, i32 1655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Error verifying EEPROM image\0A\00", [60 x i8] zeroinitializer }, align 32
@rr_siocdevprivate._entry_ptr.205 = internal global ptr @rr_siocdevprivate._entry.203, section ".printk_index", align 4
@.str.208 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@write_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.3, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"data mismatch: %08x, WinData %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_eeprom\00", [19 x i8] zeroinitializer }, align 32
@write_eeprom._entry_ptr = internal global ptr @write_eeprom._entry, section ".printk_index", align 4
@rr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.3, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"  Firmware revision: %i.%i.%i\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rr_init\00", [24 x i8] zeroinitializer }, align 32
@rr_init._entry_ptr = internal global ptr @rr_init._entry, section ".printk_index", align 4
@rr_init._entry.213 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.212, ptr @.str.3, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"  Firmware revision: %i.%i.%i (2.0.37 or later is recommended)\0A\00", [32 x i8] zeroinitializer }, align 32
@rr_init._entry_ptr.215 = internal global ptr @rr_init._entry.213, section ".printk_index", align 4
@rr_init._entry.216 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.217, ptr @.str.212, ptr @.str.3, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"  Firmware revision too old: %i.%i.%i, please upgrade to 2.0.37 or later.\0A\00", [53 x i8] zeroinitializer }, align 32
@rr_init._entry_ptr.218 = internal global ptr @rr_init._entry.216, section ".printk_index", align 4
@rr_init._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.212, ptr @.str.3, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"  MAC: %pM\0A\00", [20 x i8] zeroinitializer }, align 32
@rr_init._entry_ptr.221 = internal global ptr @rr_init._entry.219, section ".printk_index", align 4
@rr_init._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.212, ptr @.str.3, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"  SRAM size 0x%06x\0A\00", [44 x i8] zeroinitializer }, align 32
@rr_init._entry_ptr.224 = internal global ptr @rr_init._entry.222, section ".printk_index", align 4
@rr_remove_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.226, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: trying to unload running NIC\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rr_remove_one\00", [18 x i8] zeroinitializer }, align 32
@rr_remove_one._entry_ptr = internal global ptr @rr_remove_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35312, i64 35313, i64 35314]
@__sancov_gen_cov_switch_values.227 = internal global [32 x i64] [i64 30, i64 8, i64 1, i64 2, i64 7, i64 8, i64 9, i64 10, i64 19, i64 20, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 36, i64 43, i64 44, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 60]
@___asan_gen_.228 = private unnamed_addr constant [10 x i8] c"rr_driver\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1677, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1684, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant [11 x i8] c"rr_pci_tbl\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1670, i32 35 }
@___asan_gen_.237 = private unnamed_addr constant [25 x i8] c"rr_init_one.version_disp\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 118, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"rr_netdev_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 63, i32 36 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 127, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 59, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 138, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 148, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1194, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1224, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1235, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 739, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 747, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 750, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 753, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 757, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 761, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 768, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 778, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 783, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 787, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 792, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 799, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 803, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 811, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 818, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 825, i32 4 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 835, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 839, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 843, i32 4 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 847, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 851, i32 4 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 855, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 859, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 863, i32 4 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 867, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 871, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 875, i32 4 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 879, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 886, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 893, i32 4 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 917, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 957, i32 6 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 995, i32 6 }
@___asan_gen_.500 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.500, i32 326, i32 6 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 576, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 650, i32 4 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 663, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1484, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1524, i32 3 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1532, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 262, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 265, i32 4 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 279, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1162, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1348, i32 3 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1276, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1278, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1283, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1287, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1292, i32 3 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1295, i32 5 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1296, i32 4 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1298, i32 3 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1303, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1304, i32 3 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1312, i32 5 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1313, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1315, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1318, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1320, i32 3 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1405, i32 3 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1413, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1595, i32 4 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1604, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1632, i32 4 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1637, i32 3 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1642, i32 4 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1649, i32 4 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 1654, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 174, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 485, i32 6 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 516, i32 3 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 519, i32 3 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 523, i32 3 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 547, i32 2 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 550, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.769 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.770 = private constant [31 x i8] c"../drivers/net/hippi/rrunner.c\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.770, i32 228, i32 3 }
@llvm.compiler.used = appending global [269 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file461, ptr @__UNIQUE_ID_license462, ptr @__exitcall_rr_driver_exit, ptr @__initcall__kmod_rrunner__467_1684_rr_driver_init6, ptr @rr_close._entry, ptr @rr_close._entry_ptr, ptr @rr_driver_exit, ptr @rr_dump._entry, ptr @rr_dump._entry.145, ptr @rr_dump._entry.148, ptr @rr_dump._entry.151, ptr @rr_dump._entry.154, ptr @rr_dump._entry.157, ptr @rr_dump._entry.160, ptr @rr_dump._entry.163, ptr @rr_dump._entry.165, ptr @rr_dump._entry.168, ptr @rr_dump._entry.171, ptr @rr_dump._entry.173, ptr @rr_dump._entry.175, ptr @rr_dump._entry.177, ptr @rr_dump._entry.180, ptr @rr_dump._entry_ptr, ptr @rr_dump._entry_ptr.147, ptr @rr_dump._entry_ptr.150, ptr @rr_dump._entry_ptr.153, ptr @rr_dump._entry_ptr.156, ptr @rr_dump._entry_ptr.159, ptr @rr_dump._entry_ptr.162, ptr @rr_dump._entry_ptr.164, ptr @rr_dump._entry_ptr.167, ptr @rr_dump._entry_ptr.170, ptr @rr_dump._entry_ptr.172, ptr @rr_dump._entry_ptr.174, ptr @rr_dump._entry_ptr.176, ptr @rr_dump._entry_ptr.179, ptr @rr_dump._entry_ptr.182, ptr @rr_handle_event._entry, ptr @rr_handle_event._entry.102, ptr @rr_handle_event._entry.105, ptr @rr_handle_event._entry.18, ptr @rr_handle_event._entry.21, ptr @rr_handle_event._entry.24, ptr @rr_handle_event._entry.27, ptr @rr_handle_event._entry.30, ptr @rr_handle_event._entry.33, ptr @rr_handle_event._entry.36, ptr @rr_handle_event._entry.39, ptr @rr_handle_event._entry.42, ptr @rr_handle_event._entry.45, ptr @rr_handle_event._entry.48, ptr @rr_handle_event._entry.51, ptr @rr_handle_event._entry.54, ptr @rr_handle_event._entry.57, ptr @rr_handle_event._entry.60, ptr @rr_handle_event._entry.63, ptr @rr_handle_event._entry.66, ptr @rr_handle_event._entry.69, ptr @rr_handle_event._entry.72, ptr @rr_handle_event._entry.75, ptr @rr_handle_event._entry.78, ptr @rr_handle_event._entry.81, ptr @rr_handle_event._entry.84, ptr @rr_handle_event._entry.87, ptr @rr_handle_event._entry.90, ptr @rr_handle_event._entry.93, ptr @rr_handle_event._entry.96, ptr @rr_handle_event._entry.99, ptr @rr_handle_event._entry_ptr, ptr @rr_handle_event._entry_ptr.101, ptr @rr_handle_event._entry_ptr.104, ptr @rr_handle_event._entry_ptr.107, ptr @rr_handle_event._entry_ptr.20, ptr @rr_handle_event._entry_ptr.23, ptr @rr_handle_event._entry_ptr.26, ptr @rr_handle_event._entry_ptr.29, ptr @rr_handle_event._entry_ptr.32, ptr @rr_handle_event._entry_ptr.35, ptr @rr_handle_event._entry_ptr.38, ptr @rr_handle_event._entry_ptr.41, ptr @rr_handle_event._entry_ptr.44, ptr @rr_handle_event._entry_ptr.47, ptr @rr_handle_event._entry_ptr.50, ptr @rr_handle_event._entry_ptr.53, ptr @rr_handle_event._entry_ptr.56, ptr @rr_handle_event._entry_ptr.59, ptr @rr_handle_event._entry_ptr.62, ptr @rr_handle_event._entry_ptr.65, ptr @rr_handle_event._entry_ptr.68, ptr @rr_handle_event._entry_ptr.71, ptr @rr_handle_event._entry_ptr.74, ptr @rr_handle_event._entry_ptr.77, ptr @rr_handle_event._entry_ptr.80, ptr @rr_handle_event._entry_ptr.83, ptr @rr_handle_event._entry_ptr.86, ptr @rr_handle_event._entry_ptr.89, ptr @rr_handle_event._entry_ptr.92, ptr @rr_handle_event._entry_ptr.95, ptr @rr_handle_event._entry_ptr.98, ptr @rr_init._entry, ptr @rr_init._entry.213, ptr @rr_init._entry.216, ptr @rr_init._entry.219, ptr @rr_init._entry.222, ptr @rr_init._entry_ptr, ptr @rr_init._entry_ptr.215, ptr @rr_init._entry_ptr.218, ptr @rr_init._entry_ptr.221, ptr @rr_init._entry_ptr.224, ptr @rr_init1._entry, ptr @rr_init1._entry.117, ptr @rr_init1._entry.120, ptr @rr_init1._entry_ptr, ptr @rr_init1._entry_ptr.119, ptr @rr_init1._entry_ptr.122, ptr @rr_init_one._entry, ptr @rr_init_one._entry.4, ptr @rr_init_one._entry.7, ptr @rr_init_one._entry_ptr, ptr @rr_init_one._entry_ptr.6, ptr @rr_init_one._entry_ptr.9, ptr @rr_issue_cmd._entry, ptr @rr_issue_cmd._entry.133, ptr @rr_issue_cmd._entry.136, ptr @rr_issue_cmd._entry_ptr, ptr @rr_issue_cmd._entry_ptr.135, ptr @rr_issue_cmd._entry_ptr.138, ptr @rr_load_firmware._entry, ptr @rr_load_firmware._entry.125, ptr @rr_load_firmware._entry.128, ptr @rr_load_firmware._entry_ptr, ptr @rr_load_firmware._entry_ptr.127, ptr @rr_load_firmware._entry_ptr.130, ptr @rr_open._entry, ptr @rr_open._entry.12, ptr @rr_open._entry_ptr, ptr @rr_open._entry_ptr.14, ptr @rr_remove_one._entry, ptr @rr_remove_one._entry_ptr, ptr @rr_siocdevprivate._entry, ptr @rr_siocdevprivate._entry.189, ptr @rr_siocdevprivate._entry.192, ptr @rr_siocdevprivate._entry.194, ptr @rr_siocdevprivate._entry.197, ptr @rr_siocdevprivate._entry.200, ptr @rr_siocdevprivate._entry.203, ptr @rr_siocdevprivate._entry_ptr, ptr @rr_siocdevprivate._entry_ptr.191, ptr @rr_siocdevprivate._entry_ptr.193, ptr @rr_siocdevprivate._entry_ptr.196, ptr @rr_siocdevprivate._entry_ptr.199, ptr @rr_siocdevprivate._entry_ptr.202, ptr @rr_siocdevprivate._entry_ptr.205, ptr @rr_start_xmit._entry, ptr @rr_start_xmit._entry.184, ptr @rr_start_xmit._entry_ptr, ptr @rr_start_xmit._entry_ptr.186, ptr @rr_timer._entry, ptr @rr_timer._entry_ptr, ptr @rx_int._entry, ptr @rx_int._entry.110, ptr @rx_int._entry_ptr, ptr @rx_int._entry_ptr.112, ptr @write_eeprom._entry, ptr @write_eeprom._entry_ptr, ptr @rr_driver, ptr @.str, ptr @rr_pci_tbl, ptr @rr_init_one.version_disp, ptr @rr_init_one.__key, ptr @.str.1, ptr @rr_netdev_ops, ptr @.str.2, ptr @.str.3, ptr @version, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @rr_open.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.137, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.161, ptr @.str.166, ptr @.str.169, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.185, ptr @.str.187, ptr @.str.188, ptr @.str.190, ptr @.str.195, ptr @.str.198, ptr @.str.201, ptr @.str.204, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.214, ptr @.str.217, ptr @.str.220, ptr @.str.223, ptr @.str.225, ptr @.str.226], section "llvm.metadata"
@0 = internal global [182 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init_one.version_disp to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init_one.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init_one._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init_one._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_open._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_handle_event._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_int._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init1._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init1._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_load_firmware._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_load_firmware._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_issue_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_issue_cmd._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_issue_cmd._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.160 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_dump._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_start_xmit._entry.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_siocdevprivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_siocdevprivate._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_siocdevprivate._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_siocdevprivate._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_siocdevprivate._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_siocdevprivate._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_siocdevprivate._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init._entry.213 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init._entry.216 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_init._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rr_remove_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @rr_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rr_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @rr_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %pci_latency = alloca i8, align 1
  %ring_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pci_latency) #9
  %0 = ptrtoint ptr %pci_latency to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pci_latency, align 1, !annotation !377
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ring_dma) #9
  %1 = ptrtoint ptr %ring_dma to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ring_dma, align 4, !annotation !377
  %call = tail call ptr @alloc_hippi_dev(i32 noundef 428) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out2_crit_edge

if.end.out2_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev6, ptr %parent, align 8
  %call8 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.end4.out_crit_edge, label %if.end10

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end10:                                         ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  %pci_dev = getelementptr i8, ptr %call, i32 2728
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdev, ptr %pci_dev, align 4
  %lock = getelementptr i8, ptr %call, i32 2604
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rr_init_one.__key, i16 noundef signext 3) #9
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %5 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rr_netdev_ops, ptr %netdev_ops, align 8
  %.b = load i1, ptr @rr_init_one.version_disp, align 4
  br i1 %.b, label %if.end10.if.end20_crit_edge, label %if.then13

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rr_init_one.version_disp, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @version) #12
  br label %if.end20

if.end20:                                         ; preds = %if.then13, %if.end10.if.end20_crit_edge
  %call21 = call i32 @pci_read_config_byte(ptr noundef %pdev, i32 noundef 13, ptr noundef nonnull %pci_latency) #9
  %6 = ptrtoint ptr %pci_latency to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pci_latency, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 89, i8 %7)
  %cmp22 = icmp ult i8 %7, 89
  br i1 %cmp22, label %if.then24, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %pci_latency to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 88, ptr %pci_latency, align 1
  %call25 = call i32 @pci_write_config_byte(ptr noundef %pdev, i32 noundef 13, i8 noundef zeroext 88) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  call void @pci_set_master(ptr noundef %pdev) #9
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %conv31 = zext i32 %10 to i64
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %13 = ptrtoint ptr %pci_latency to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pci_latency, align 1
  %conv32 = zext i8 %14 to i32
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull %call, i64 noundef %conv31, i32 noundef %12, i32 noundef %conv32) #12
  %call34 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 4096) #9
  %regs = getelementptr i8, ptr %call, i32 2584
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call34, ptr %regs, align 4
  %tobool36.not = icmp eq ptr %call34, null
  br i1 %tobool36.not, label %do.end40, label %if.end45

do.end40:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull %call) #12
  br label %out

if.end45:                                         ; preds = %if.end26
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %tx_ring = getelementptr i8, ptr %call, i32 2308
  %16 = ptrtoint ptr %tx_ring to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %tx_ring, align 4
  %17 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ring_dma, align 4
  %tx_ring_dma = getelementptr i8, ptr %call, i32 2316
  %19 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tx_ring_dma, align 4
  %tobool48.not = icmp eq ptr %call.i, null
  br i1 %tobool48.not, label %if.end45.out_crit_edge, label %if.end50

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end50:                                         ; preds = %if.end45
  %call.i170 = call ptr @dma_alloc_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i170, ptr %add.ptr.i, align 4
  %21 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ring_dma, align 4
  %rx_ring_dma = getelementptr i8, ptr %call, i32 2320
  %23 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %rx_ring_dma, align 4
  %tobool53.not = icmp eq ptr %call.i170, null
  br i1 %tobool53.not, label %if.end50.out_crit_edge, label %if.end55

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end55:                                         ; preds = %if.end50
  %call.i171 = call ptr @dma_alloc_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef nonnull %ring_dma, i32 noundef 3264, i32 noundef 0) #9
  %evt_ring = getelementptr i8, ptr %call, i32 2312
  %24 = ptrtoint ptr %evt_ring to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i171, ptr %evt_ring, align 4
  %25 = ptrtoint ptr %ring_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ring_dma, align 4
  %evt_ring_dma = getelementptr i8, ptr %call, i32 2324
  %27 = ptrtoint ptr %evt_ring_dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %evt_ring_dma, align 4
  %tobool58.not = icmp eq ptr %call.i171, null
  br i1 %tobool58.not, label %if.end55.out_crit_edge, label %do.body61

if.end55.out_crit_edge:                           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body61:                                        ; preds = %if.end55
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !378
  call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %29, i32 0, i32 1
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !380
  %31 = or i32 %30, 67108868
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %HostCtrl69 = getelementptr inbounds %struct.rr_regs, ptr %33, i32 0, i32 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl69, i32 %31) #9, !srcloc !381
  call fastcc void @rr_init(ptr noundef nonnull %call)
  %call71 = call i32 @register_netdev(ptr noundef nonnull %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body61.cleanup_crit_edge, label %do.body61.out_crit_edge

do.body61.out_crit_edge:                          ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

do.body61.cleanup_crit_edge:                      ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

out:                                              ; preds = %do.body61.out_crit_edge, %if.end55.out_crit_edge, %if.end50.out_crit_edge, %if.end45.out_crit_edge, %do.end40, %if.end4.out_crit_edge
  %ret.0 = phi i32 [ %call8, %if.end4.out_crit_edge ], [ %call71, %do.body61.out_crit_edge ], [ -5, %do.end40 ], [ -12, %if.end45.out_crit_edge ], [ -12, %if.end50.out_crit_edge ], [ -12, %if.end55.out_crit_edge ]
  %evt_ring75 = getelementptr i8, ptr %call, i32 2312
  %34 = ptrtoint ptr %evt_ring75 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %evt_ring75, align 4
  %tobool76.not = icmp eq ptr %35, null
  br i1 %tobool76.not, label %out.if.end81_crit_edge, label %if.then77

out.if.end81_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81

if.then77:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %evt_ring_dma80 = getelementptr i8, ptr %call, i32 2324
  %36 = ptrtoint ptr %evt_ring_dma80 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %evt_ring_dma80, align 4
  call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef nonnull %35, i32 noundef %37, i32 noundef 0) #9
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %out.if.end81_crit_edge
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 4
  %tobool83.not = icmp eq ptr %39, null
  br i1 %tobool83.not, label %if.end81.if.end88_crit_edge, label %if.then84

if.end81.if.end88_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then84:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %rx_ring_dma87 = getelementptr i8, ptr %call, i32 2320
  %40 = ptrtoint ptr %rx_ring_dma87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx_ring_dma87, align 4
  call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef nonnull %39, i32 noundef %41, i32 noundef 0) #9
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end81.if.end88_crit_edge
  %tx_ring89 = getelementptr i8, ptr %call, i32 2308
  %42 = ptrtoint ptr %tx_ring89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_ring89, align 4
  %tobool90.not = icmp eq ptr %43, null
  br i1 %tobool90.not, label %if.end88.if.end95_crit_edge, label %if.then91

if.end88.if.end95_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ring_dma94 = getelementptr i8, ptr %call, i32 2316
  %44 = ptrtoint ptr %tx_ring_dma94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_ring_dma94, align 4
  call void @dma_free_attrs(ptr noundef %dev6, i32 noundef 512, ptr noundef nonnull %43, i32 noundef %45, i32 noundef 0) #9
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end88.if.end95_crit_edge
  %regs96 = getelementptr i8, ptr %call, i32 2584
  %46 = ptrtoint ptr %regs96 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs96, align 4
  %tobool97.not = icmp eq ptr %47, null
  br i1 %tobool97.not, label %if.end95.if.end100_crit_edge, label %if.then98

if.end95.if.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end100

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %47) #9
  br label %if.end100

if.end100:                                        ; preds = %if.then98, %if.end95.if.end100_crit_edge
  %tobool101.not = icmp eq ptr %pdev, null
  br i1 %tobool101.not, label %if.end100.out2_crit_edge, label %if.then102

if.end100.out2_crit_edge:                         ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  br label %out2

if.then102:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #11
  call void @pci_release_regions(ptr noundef nonnull %pdev) #9
  br label %out2

out2:                                             ; preds = %if.then102, %if.end100.out2_crit_edge, %if.end.out2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then102 ], [ %ret.0, %if.end100.out2_crit_edge ], [ -19, %if.end.out2_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out2, %do.body61.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body61.cleanup_crit_edge ], [ %ret.1, %out2 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ring_dma) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pci_latency) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rr_remove_one(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr i8, ptr %1, i32 2584
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %3, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !382
  %5 = and i32 %4, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225, ptr noundef %1) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !383
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %HostCtrl10 = getelementptr inbounds %struct.rr_regs, ptr %7, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl10, i32 268435456) #9, !srcloc !381
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @unregister_netdev(ptr noundef %1) #9
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %evt_ring = getelementptr i8, ptr %1, i32 2312
  %8 = ptrtoint ptr %evt_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %evt_ring, align 4
  %evt_ring_dma = getelementptr i8, ptr %1, i32 2324
  %10 = ptrtoint ptr %evt_ring_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %evt_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 512, ptr noundef %9, i32 noundef %11, i32 noundef 0) #9
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %rx_ring_dma = getelementptr i8, ptr %1, i32 2320
  %14 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 512, ptr noundef %13, i32 noundef %15, i32 noundef 0) #9
  %tx_ring = getelementptr i8, ptr %1, i32 2308
  %16 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring, align 4
  %tx_ring_dma = getelementptr i8, ptr %1, i32 2316
  %18 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_ring_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev11, i32 noundef 512, ptr noundef %17, i32 noundef %19, i32 noundef 0) #9
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %21) #9
  tail call void @pci_release_regions(ptr noundef %pdev) #9
  tail call void @pci_disable_device(ptr noundef %pdev) #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_hippi_dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rr_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %word.i7 = alloca i32, align 4
  %word.i1 = alloca i32, align 4
  %word.i = alloca i32, align 4
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #9
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %regs1 = getelementptr i8, ptr %dev, i32 2584
  %1 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs1, align 4
  %FwRev = getelementptr inbounds %struct.rr_regs, ptr %2, i32 0, i32 91
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FwRev) #9, !srcloc !379
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !384
  %fw_rev = getelementptr i8, ptr %dev, i32 2720
  %5 = ptrtoint ptr %fw_rev to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131108, i32 %4)
  %cmp = icmp ugt i32 %4, 131108
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr = lshr i32 %4, 16
  %shr5 = lshr i32 %4, 8
  %and = and i32 %shr5, 255
  %and6 = and i32 %4, 255
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %shr, i32 noundef %and, i32 noundef %and6) #12
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %4)
  %cmp8 = icmp ugt i32 %4, 131071
  br i1 %cmp8, label %do.end12, label %do.end22

do.end12:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and17 = and i32 %4, 255
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.214, i32 noundef 2, i32 noundef 0, i32 noundef %and17) #12
  br label %if.end29

do.end22:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %shr24 = lshr i32 %4, 16
  %shr25 = lshr i32 %4, 8
  %and26 = and i32 %shr25, 255
  %and27 = and i32 %4, 255
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.217, i32 noundef %shr24, i32 noundef %and26, i32 noundef %and27) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end22, %do.end12, %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i) #9
  %6 = ptrtoint ptr %word.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %word.i, align 4, !annotation !377
  %call.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 160, ptr noundef nonnull %word.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 4
  br i1 %cmp.i, label %if.then.i, label %if.end29.rr_read_eeprom_word.exit_crit_edge

if.end29.rr_read_eeprom_word.exit_crit_edge:      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit

if.then.i:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %word.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %word.i, align 4
  %phi.cast = trunc i32 %8 to i16
  br label %rr_read_eeprom_word.exit

rr_read_eeprom_word.exit:                         ; preds = %if.then.i, %if.end29.rr_read_eeprom_word.exit_crit_edge
  %retval.0.i = phi i16 [ %phi.cast, %if.then.i ], [ 0, %if.end29.rr_read_eeprom_word.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i) #9
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %retval.0.i, ptr %addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i1) #9
  %10 = ptrtoint ptr %word.i1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %word.i1, align 4, !annotation !377
  %call.i2 = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 164, ptr noundef nonnull %word.i1, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i2)
  %cmp.i3 = icmp eq i32 %call.i2, 4
  br i1 %cmp.i3, label %if.then.i4, label %rr_read_eeprom_word.exit.rr_read_eeprom_word.exit6_crit_edge

rr_read_eeprom_word.exit.rr_read_eeprom_word.exit6_crit_edge: ; preds = %rr_read_eeprom_word.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit6

if.then.i4:                                       ; preds = %rr_read_eeprom_word.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %word.i1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word.i1, align 4
  br label %rr_read_eeprom_word.exit6

rr_read_eeprom_word.exit6:                        ; preds = %if.then.i4, %rr_read_eeprom_word.exit.rr_read_eeprom_word.exit6_crit_edge
  %retval.0.i5 = phi i32 [ %12, %if.then.i4 ], [ 0, %rr_read_eeprom_word.exit.rr_read_eeprom_word.exit6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i1) #9
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i5, ptr %0, align 4
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %14 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr_len.i, align 1
  %conv.i = zext i8 %15 to i32
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef %conv.i) #9
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %16 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr, align 64
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %17) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i7) #9
  %18 = ptrtoint ptr %word.i7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %word.i7, align 4, !annotation !377
  %call.i8 = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef nonnull %word.i7, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i8)
  %cmp.i9 = icmp eq i32 %call.i8, 4
  br i1 %cmp.i9, label %if.then.i10, label %rr_read_eeprom_word.exit6.rr_read_eeprom_word.exit12_crit_edge

rr_read_eeprom_word.exit6.rr_read_eeprom_word.exit12_crit_edge: ; preds = %rr_read_eeprom_word.exit6
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit12

if.then.i10:                                      ; preds = %rr_read_eeprom_word.exit6
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %word.i7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %word.i7, align 4
  br label %rr_read_eeprom_word.exit12

rr_read_eeprom_word.exit12:                       ; preds = %if.then.i10, %rr_read_eeprom_word.exit6.rr_read_eeprom_word.exit12_crit_edge
  %retval.0.i11 = phi i32 [ %20, %if.then.i10 ], [ 0, %rr_read_eeprom_word.exit6.rr_read_eeprom_word.exit12_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i7) #9
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, i32 noundef %retval.0.i11) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_open(ptr noundef %dev) #2 align 64 {
entry:
  %dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %dev, i32 2728
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr) #9
  %2 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_addr, align 4, !annotation !377
  %regs1 = getelementptr i8, ptr %dev, i32 2584
  %3 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs1, align 4
  %fw_rev = getelementptr i8, ptr %dev, i32 2720
  %5 = ptrtoint ptr %fw_rev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %6)
  %cmp = icmp ult i32 %6, 131072
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %dev) #12
  br label %do.body66

if.end:                                           ; preds = %entry
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 3264, i32 noundef 0) #9
  %rx_ctrl = getelementptr i8, ptr %dev, i32 2588
  %7 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %rx_ctrl, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.do.body66_crit_edge, label %if.end7

if.end.do.body66_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 4
  %rx_ctrl_dma = getelementptr i8, ptr %dev, i32 2596
  %10 = ptrtoint ptr %rx_ctrl_dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rx_ctrl_dma, align 4
  %call.i155 = call ptr @dma_alloc_attrs(ptr noundef %dev3, i32 noundef 4096, ptr noundef nonnull %dma_addr, i32 noundef 3264, i32 noundef 0) #9
  %info = getelementptr i8, ptr %dev, i32 2592
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i155, ptr %info, align 4
  %tobool11.not = icmp eq ptr %call.i155, null
  br i1 %tobool11.not, label %if.end7.do.body66_crit_edge, label %if.end13

if.end7.do.body66_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

if.end13:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_addr, align 4
  %info_dma = getelementptr i8, ptr %dev, i32 2600
  %14 = ptrtoint ptr %info_dma to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %info_dma, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !385
  call void @arm_heavy_mb() #9
  %lock = getelementptr i8, ptr %dev, i32 2604
  %call22 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !386
  call void @arm_heavy_mb() #9
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %4, i32 0, i32 1
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !387
  %16 = or i32 %15, 301989888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 %16) #9, !srcloc !381
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !388
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call22) #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call.i156 = call i32 @request_threaded_irq(i32 noundef %19, ptr noundef nonnull @rr_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool45.not = icmp eq i32 %call.i156, 0
  br i1 %tobool45.not, label %if.end55, label %do.end49

do.end49:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %dev, i32 noundef %21) #12
  br label %do.body66

if.end55:                                         ; preds = %if.end13
  %call56 = call fastcc i32 @rr_init1(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %do.body60, label %if.end55.do.body66_crit_edge

if.end55.do.body66_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

do.body60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  %timer = getelementptr i8, ptr %dev, i32 2648
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @rr_timer, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @rr_open.__key) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %22, 500
  %expires = getelementptr i8, ptr %dev, i32 2656
  %23 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %expires, align 4
  call void @add_timer(ptr noundef %timer) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %24 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %25, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup

do.body66:                                        ; preds = %if.end55.do.body66_crit_edge, %do.end49, %if.end7.do.body66_crit_edge, %if.end.do.body66_crit_edge, %do.end
  %ecode.0 = phi i32 [ -16, %do.end ], [ -11, %do.end49 ], [ %call56, %if.end55.do.body66_crit_edge ], [ -12, %if.end.do.body66_crit_edge ], [ -12, %if.end7.do.body66_crit_edge ]
  %lock72 = getelementptr i8, ptr %dev, i32 2604
  %call74 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock72) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !389
  call void @arm_heavy_mb() #9
  %HostCtrl84 = getelementptr inbounds %struct.rr_regs, ptr %4, i32 0, i32 1
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl84) #9, !srcloc !379
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !390
  %27 = or i32 %26, 301989888
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl84, i32 %27) #9, !srcloc !381
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock72, i32 noundef %call74) #9
  %info92 = getelementptr i8, ptr %dev, i32 2592
  %28 = ptrtoint ptr %info92 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info92, align 4
  %tobool93.not = icmp eq ptr %29, null
  br i1 %tobool93.not, label %do.body66.if.end99_crit_edge, label %if.then94

do.body66.if.end99_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then94:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %dev95 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %info_dma97 = getelementptr i8, ptr %dev, i32 2600
  %30 = ptrtoint ptr %info_dma97 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %info_dma97, align 4
  call void @dma_free_attrs(ptr noundef %dev95, i32 noundef 4096, ptr noundef nonnull %29, i32 noundef %31, i32 noundef 0) #9
  %32 = ptrtoint ptr %info92 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %info92, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %do.body66.if.end99_crit_edge
  %rx_ctrl100 = getelementptr i8, ptr %dev, i32 2588
  %33 = ptrtoint ptr %rx_ctrl100 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_ctrl100, align 4
  %tobool101.not = icmp eq ptr %34, null
  br i1 %tobool101.not, label %if.end99.if.end107_crit_edge, label %if.then102

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %dev103 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %rx_ctrl_dma105 = getelementptr i8, ptr %dev, i32 2596
  %35 = ptrtoint ptr %rx_ctrl_dma105 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_ctrl_dma105, align 4
  call void @dma_free_attrs(ptr noundef %dev103, i32 noundef 4096, ptr noundef nonnull %34, i32 noundef %36, i32 noundef 0) #9
  %37 = ptrtoint ptr %rx_ctrl100 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %rx_ctrl100, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then102, %if.end99.if.end107_crit_edge
  %_tx.i.i157 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i157 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i157, align 128
  %state.i.i158 = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 13
  call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i158) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end107, %do.body60
  %retval.0 = phi i32 [ %ecode.0, %if.end107 ], [ 0, %do.body60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %regs1 = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2728
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %lock = getelementptr i8, ptr %dev, i32 2604
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !391
  %and = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.end13

do.end13:                                         ; preds = %entry
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %dev) #12
  %8 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs1, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %dev) #12
  %RxPrd.i = getelementptr inbounds %struct.rr_regs, ptr %9, i32 0, i32 33
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %RxPrd.i) #9, !srcloc !379
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !392
  %TxPrd.i = getelementptr inbounds %struct.rr_regs, ptr %9, i32 0, i32 37
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TxPrd.i) #9, !srcloc !379
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !393
  %EvtPrd.i = getelementptr inbounds %struct.rr_regs, ptr %9, i32 0, i32 85
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EvtPrd.i) #9, !srcloc !379
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !394
  %TxPi.i = getelementptr inbounds %struct.rr_regs, ptr %9, i32 0, i32 66
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %TxPi.i) #9, !srcloc !379
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !395
  %info.i = getelementptr i8, ptr %dev, i32 2592
  %18 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %info.i, align 4
  %pi.i = getelementptr inbounds %struct.rr_info, ptr %19, i32 0, i32 3, i32 5
  %20 = ptrtoint ptr %pi.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pi.i, align 2
  %conv.i = zext i16 %21 to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %conv.i) #12
  %Fail1.i = getelementptr inbounds %struct.rr_regs, ptr %9, i32 0, i32 87
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Fail1.i) #9, !srcloc !379
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !396
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %23) #12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EvtPrd.i) #9, !srcloc !379
  %25 = lshr i32 %24, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !397
  %sub.i = add nuw nsw i32 %25, 31
  %rem.i = and i32 %sub.i, 31
  %dirty_tx.i = getelementptr i8, ptr %dev, i32 2712
  %26 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dirty_tx.i, align 4
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, i32 noundef %rem.i, i32 noundef %27) #12
  %arrayidx.i = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 7, i32 %rem.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %29, null
  br i1 %tobool.not.i, label %do.end13.if.end85.i_crit_edge, label %if.then.i

do.end13.if.end85.i_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

if.then.i:                                        ; preds = %do.end13
  %len49.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %len49.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len49.i, align 4
  %32 = tail call i32 @llvm.smin.i32(i32 %31, i32 128) #9
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2308
  %33 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_ring.i, align 4
  %size.i = getelementptr %struct.tx_desc, ptr %34, i32 %rem.i, i32 4
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %size.i, align 2
  %conv57.i = zext i16 %36 to i32
  %call58.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, i32 noundef %rem.i, i32 noundef %32, i32 noundef %conv57.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp60257.i = icmp sgt i32 %31, 0
  br i1 %cmp60257.i, label %if.then.i.for.body.i_crit_edge, label %if.then.i.do.end82.i_crit_edge

if.then.i.do.end82.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82.i

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

for.body.i:                                       ; preds = %do.end73.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %conv59259.i = phi i32 [ %conv59.i, %do.end73.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %i.0258.i = phi i16 [ %inc.i, %do.end73.i.for.body.i_crit_edge ], [ 0, %if.then.i.for.body.i_crit_edge ]
  %and63.i = and i32 %conv59259.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63.i)
  %tobool64.not.i = icmp eq i32 %and63.i, 0
  br i1 %tobool64.not.i, label %do.end68.i, label %for.body.i.do.end73.i_crit_edge

for.body.i.do.end73.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73.i

do.end68.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call70.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #12
  br label %do.end73.i

do.end73.i:                                       ; preds = %do.end68.i, %for.body.i.do.end73.i_crit_edge
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %arrayidx77.i = getelementptr i8, ptr %40, i32 %conv59259.i
  %41 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx77.i, align 1
  %conv78.i = zext i8 %42 to i32
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %conv78.i) #12
  %inc.i = add i16 %i.0258.i, 1
  %conv59.i = sext i16 %inc.i to i32
  %cmp60.i = icmp sgt i32 %32, %conv59.i
  br i1 %cmp60.i, label %do.end73.i.for.body.i_crit_edge, label %do.end73.i.do.end82.i_crit_edge

do.end73.i.do.end82.i_crit_edge:                  ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end82.i

do.end73.i.for.body.i_crit_edge:                  ; preds = %do.end73.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end82.i:                                       ; preds = %do.end73.i.do.end82.i_crit_edge, %if.then.i.do.end82.i_crit_edge
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #12
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end82.i, %do.end13.if.end85.i_crit_edge
  %arrayidx87.i = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 7, i32 %27
  %43 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx87.i, align 4
  %tobool88.not.i = icmp eq ptr %44, null
  br i1 %tobool88.not.i, label %if.end85.i.do.end164.i_crit_edge, label %if.then89.i

if.end85.i.do.end164.i_crit_edge:                 ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end164.i

if.then89.i:                                      ; preds = %if.end85.i
  %len92.i = getelementptr inbounds %struct.sk_buff, ptr %44, i32 0, i32 6
  %45 = ptrtoint ptr %len92.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len92.i, align 4
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 128) #9
  %call107.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %27, i32 noundef %47, i32 noundef %46) #12
  %tx_ring112.i = getelementptr i8, ptr %dev, i32 2308
  %48 = ptrtoint ptr %tx_ring112.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_ring112.i, align 4
  %mode.i = getelementptr %struct.tx_desc, ptr %49, i32 %27, i32 2
  %50 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mode.i, align 4
  %conv114.i = zext i8 %51 to i32
  %size117.i = getelementptr %struct.tx_desc, ptr %49, i32 %27, i32 4
  %52 = ptrtoint ptr %size117.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %size117.i, align 2
  %conv118.i = zext i16 %53 to i32
  %addrlo.i = getelementptr %struct.tx_desc, ptr %49, i32 %27, i32 0, i32 1
  %54 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %addrlo.i, align 4
  %conv121.i = zext i32 %55 to i64
  %56 = ptrtoint ptr %arrayidx87.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx87.i, align 4
  %data124.i = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 19
  %58 = ptrtoint ptr %data124.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data124.i, align 4
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 20
  %60 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %truesize.i, align 8
  %call127.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %conv114.i, i32 noundef %conv118.i, i64 noundef %conv121.i, ptr noundef %59, i32 noundef %61) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp130260.i = icmp sgt i32 %46, 0
  br i1 %cmp130260.i, label %if.then89.i.for.body132.i_crit_edge, label %if.then89.i.do.end158.i_crit_edge

if.then89.i.do.end158.i_crit_edge:                ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158.i

if.then89.i.for.body132.i_crit_edge:              ; preds = %if.then89.i
  br label %for.body132.i

for.body132.i:                                    ; preds = %do.end145.i.for.body132.i_crit_edge, %if.then89.i.for.body132.i_crit_edge
  %conv129262.i = phi i32 [ %conv129.i, %do.end145.i.for.body132.i_crit_edge ], [ 0, %if.then89.i.for.body132.i_crit_edge ]
  %i.1261.i = phi i16 [ %inc154.i, %do.end145.i.for.body132.i_crit_edge ], [ 0, %if.then89.i.for.body132.i_crit_edge ]
  %and134.i = and i32 %conv129262.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %do.end139.i, label %for.body132.i.do.end145.i_crit_edge

for.body132.i.do.end145.i_crit_edge:              ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end145.i

do.end139.i:                                      ; preds = %for.body132.i
  call void @__sanitizer_cov_trace_pc() #11
  %call141.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #12
  br label %do.end145.i

do.end145.i:                                      ; preds = %do.end139.i, %for.body132.i.do.end145.i_crit_edge
  %62 = ptrtoint ptr %tx_ring112.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_ring112.i, align 4
  %size149.i = getelementptr %struct.tx_desc, ptr %63, i32 %27, i32 4
  %64 = ptrtoint ptr %size149.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %size149.i, align 2
  %66 = and i16 %65, 255
  %conv151.i = zext i16 %66 to i32
  %call152.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, i32 noundef %conv151.i) #12
  %inc154.i = add i16 %i.1261.i, 1
  %conv129.i = sext i16 %inc154.i to i32
  %cmp130.i = icmp sgt i32 %47, %conv129.i
  br i1 %cmp130.i, label %do.end145.i.for.body132.i_crit_edge, label %do.end145.i.do.end158.i_crit_edge

do.end145.i.do.end158.i_crit_edge:                ; preds = %do.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end158.i

do.end145.i.for.body132.i_crit_edge:              ; preds = %do.end145.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body132.i

do.end158.i:                                      ; preds = %do.end145.i.do.end158.i_crit_edge, %if.then89.i.do.end158.i_crit_edge
  %call160.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158) #12
  br label %do.end164.i

do.end164.i:                                      ; preds = %do.end158.i, %if.end85.i.do.end164.i_crit_edge
  %call166.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #12
  %tx_ring176.i = getelementptr i8, ptr %dev, i32 2308
  br label %do.end174.i

do.end174.i:                                      ; preds = %do.end174.i.do.end174.i_crit_edge, %do.end164.i
  %indvars.iv.i = phi i32 [ 0, %do.end164.i ], [ %indvars.iv.next.i, %do.end174.i.do.end174.i_crit_edge ]
  %67 = ptrtoint ptr %tx_ring176.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %tx_ring176.i, align 4
  %mode179.i = getelementptr %struct.tx_desc, ptr %68, i32 %indvars.iv.i, i32 2
  %69 = ptrtoint ptr %mode179.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %mode179.i, align 4
  %conv180.i = zext i8 %70 to i32
  %size184.i = getelementptr %struct.tx_desc, ptr %68, i32 %indvars.iv.i, i32 4
  %71 = ptrtoint ptr %size184.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %size184.i, align 2
  %conv185.i = zext i16 %72 to i32
  %addrlo190.i = getelementptr %struct.tx_desc, ptr %68, i32 %indvars.iv.i, i32 0, i32 1
  %73 = ptrtoint ptr %addrlo190.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %addrlo190.i, align 4
  %conv191.i = zext i32 %74 to i64
  %call192.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %conv180.i, i32 noundef %conv185.i, i64 noundef %conv191.i) #12
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %do.end174.i.if.end_crit_edge, label %do.end174.i.do.end174.i_crit_edge

do.end174.i.do.end174.i_crit_edge:                ; preds = %do.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end174.i

do.end174.i.if.end_crit_edge:                     ; preds = %do.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %7, 18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !398
  tail call void @arm_heavy_mb() #9
  %75 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 %75) #9, !srcloc !381
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !399
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end174.i.if.end_crit_edge
  %fw_running = getelementptr i8, ptr %dev, i32 2724
  %77 = ptrtoint ptr %fw_running to i32
  call void @__asan_store2_noabort(i32 %77)
  store volatile i16 0, ptr %fw_running, align 4
  %timer = getelementptr i8, ptr %dev, i32 2648
  %call26 = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !400
  tail call void @arm_heavy_mb() #9
  %TxPi = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxPi, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !401
  tail call void @arm_heavy_mb() #9
  %IpRxPi = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IpRxPi, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !402
  tail call void @arm_heavy_mb() #9
  %EvtCon = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtCon, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !403
  tail call void @arm_heavy_mb() #9
  %EvtPrd = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtPrd, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.1 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.1, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.2 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.2, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.3 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.3, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.4 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.4, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.5 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.5, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.6 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.6, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.7 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.7, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.8 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.8, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.9 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.9, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.10 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.10, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.11 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.11, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.12 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.12, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.13 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.13, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.14 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.14, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !404
  tail call void @arm_heavy_mb() #9
  %arrayidx.15 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.15, i32 0) #9, !srcloc !381
  %info = getelementptr i8, ptr %dev, i32 2592
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 4
  %entries = getelementptr inbounds %struct.rr_info, ptr %79, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %entries, align 2
  %81 = load ptr, ptr %info, align 4
  %pi = getelementptr inbounds %struct.rr_info, ptr %81, i32 0, i32 2, i32 5
  %82 = ptrtoint ptr %pi to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %pi, align 2
  %83 = load ptr, ptr %info, align 4
  %pi47 = getelementptr inbounds %struct.rr_info, ptr %83, i32 0, i32 1, i32 5
  %84 = ptrtoint ptr %pi47 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %pi47, align 2
  %rx_ctrl = getelementptr i8, ptr %dev, i32 2588
  %85 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rx_ctrl, align 4
  %entries49 = getelementptr %struct.ring_ctrl, ptr %86, i32 4, i32 3
  %87 = ptrtoint ptr %entries49 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %entries49, align 2
  %tx_ring.i94 = getelementptr i8, ptr %dev, i32 2308
  br label %for.body.i97

for.body.i97:                                     ; preds = %if.end.i.for.body.i97_crit_edge, %if.end
  %i.01.i = phi i32 [ 0, %if.end ], [ %inc.i101, %if.end.i.for.body.i97_crit_edge ]
  %arrayidx.i95 = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 7, i32 %i.01.i
  %88 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i95, align 4
  %tobool.not.i96 = icmp eq ptr %89, null
  br i1 %tobool.not.i96, label %for.body.i97.if.end.i_crit_edge, label %if.then.i100

for.body.i97.if.end.i_crit_edge:                  ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i100:                                     ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %tx_ring.i94 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %tx_ring.i94, align 4
  %92 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pci_dev, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %93, i32 0, i32 44
  %addrlo.i98 = getelementptr %struct.tx_desc, ptr %91, i32 %i.01.i, i32 0, i32 1
  %94 = ptrtoint ptr %addrlo.i98 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %addrlo.i98, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %89, i32 0, i32 6
  %96 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %95, i32 noundef %97, i32 noundef 1, i32 noundef 0) #9
  %size.i99 = getelementptr %struct.tx_desc, ptr %91, i32 %i.01.i, i32 4
  %98 = ptrtoint ptr %size.i99 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %size.i99, align 2
  %99 = ptrtoint ptr %addrlo.i98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %addrlo.i98, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  tail call void @consume_skb(ptr noundef nonnull %89) #9
  %100 = ptrtoint ptr %arrayidx.i95 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %arrayidx.i95, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i100, %for.body.i97.if.end.i_crit_edge
  %inc.i101 = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i102 = icmp eq i32 %inc.i101, 32
  br i1 %exitcond.not.i102, label %rr_raz_tx.exit, label %if.end.i.for.body.i97_crit_edge

if.end.i.for.body.i97_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i97

rr_raz_tx.exit:                                   ; preds = %if.end.i
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  br label %for.body.i106

for.body.i106:                                    ; preds = %if.end.i113.for.body.i106_crit_edge, %rr_raz_tx.exit
  %i.016.i = phi i32 [ 0, %rr_raz_tx.exit ], [ %inc.i111, %if.end.i113.for.body.i106_crit_edge ]
  %arrayidx.i104 = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 6, i32 %i.016.i
  %101 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i104, align 4
  %tobool.not.i105 = icmp eq ptr %102, null
  br i1 %tobool.not.i105, label %for.body.i106.if.end.i113_crit_edge, label %if.then.i110

for.body.i106.if.end.i113_crit_edge:              ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i113

if.then.i110:                                     ; preds = %for.body.i106
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i, align 4
  %105 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pci_dev, align 4
  %dev2.i107 = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %addrlo.i108 = getelementptr %struct.rx_desc, ptr %104, i32 %i.016.i, i32 0, i32 1
  %107 = ptrtoint ptr %addrlo.i108 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %addrlo.i108, align 4
  %109 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mtu.i, align 4
  %add.i = add i32 %110, 40
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i107, i32 noundef %108, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #9
  %size.i109 = getelementptr %struct.rx_desc, ptr %104, i32 %i.016.i, i32 4
  %111 = ptrtoint ptr %size.i109 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 0, ptr %size.i109, align 2
  %112 = ptrtoint ptr %addrlo.i108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %addrlo.i108, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  tail call void @consume_skb(ptr noundef nonnull %102) #9
  %113 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %arrayidx.i104, align 4
  br label %if.end.i113

if.end.i113:                                      ; preds = %if.then.i110, %for.body.i106.if.end.i113_crit_edge
  %inc.i111 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i112 = icmp eq i32 %inc.i111, 32
  br i1 %exitcond.not.i112, label %rr_raz_rx.exit, label %if.end.i113.for.body.i106_crit_edge

if.end.i113.for.body.i106_crit_edge:              ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i106

rr_raz_rx.exit:                                   ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %114 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rx_ctrl, align 4
  %rx_ctrl_dma = getelementptr i8, ptr %dev, i32 2596
  %116 = ptrtoint ptr %rx_ctrl_dma to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rx_ctrl_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev50, i32 noundef 4096, ptr noundef %115, i32 noundef %117, i32 noundef 0) #9
  %118 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %rx_ctrl, align 4
  %119 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %info, align 4
  %info_dma = getelementptr i8, ptr %dev, i32 2600
  %121 = ptrtoint ptr %info_dma to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %info_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev50, i32 noundef 4096, ptr noundef %120, i32 noundef %122, i32 noundef 0) #9
  %123 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %info, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 46
  %124 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %irq, align 4
  %call57 = tail call ptr @free_irq(i32 noundef %125, ptr noundef %dev) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %regs1 = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len2, align 4
  %Mode = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Mode) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !406
  %5 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %Fail1 = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 87
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Fail1) #9, !srcloc !379
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !407
  %Fail2 = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 88
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Fail2) #9, !srcloc !379
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !408
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %7, i32 noundef %9) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.ptr.sub.i)
  %cmp = icmp ult i32 %sub.ptr.sub.i, 8
  br i1 %cmp, label %do.end21, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = add i32 %3, 8
  br label %if.end29

do.end21:                                         ; preds = %if.end
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.185) #12
  %add = add i32 %3, 8
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %add, i32 noundef 2592) #9
  %tobool25.not = icmp eq ptr %call.i.i, null
  br i1 %tobool25.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef %skb) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %15) #9
  br label %cleanup

if.end27:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  %data.i120 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i120 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i120, align 4
  %add.ptr.i121 = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr.i121, ptr %data.i120, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call28 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %3) #9
  %20 = ptrtoint ptr %data.i120 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i120, align 4
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = call ptr @memcpy(ptr %21, ptr %23, i32 %3)
  tail call void @consume_skb(ptr noundef %skb) #9
  br label %if.end29

if.end29:                                         ; preds = %if.end27, %if.end.if.end29_crit_edge
  %add48.pre-phi = phi i32 [ %.pre, %if.end.if.end29_crit_edge ], [ %add, %if.end27 ]
  %skb.addr.0 = phi ptr [ %skb, %if.end.if.end29_crit_edge ], [ %call.i.i, %if.end27 ]
  %call30 = tail call ptr @skb_push(ptr noundef %skb.addr.0, i32 noundef 8) #9
  %25 = ptrtoint ptr %call30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %call30, align 4
  %26 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cb, align 4
  %arrayidx32 = getelementptr i32, ptr %call30, i32 1
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx32, align 4
  %lock = getelementptr i8, ptr %dev, i32 2604
  %call38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %info = getelementptr i8, ptr %dev, i32 2592
  %29 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %info, align 4
  %pi = getelementptr inbounds %struct.rr_info, ptr %30, i32 0, i32 3, i32 5
  %31 = ptrtoint ptr %pi to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %pi, align 2
  %conv43 = zext i16 %32 to i32
  %arrayidx44 = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 7, i32 %conv43
  %33 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %skb.addr.0, ptr %arrayidx44, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  %34 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_ring, align 4
  %pci_dev = getelementptr i8, ptr %dev, i32 2728
  %36 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %data47 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %38 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data47, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %39) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end29
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !409

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev46) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 3
  %40 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %41, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev46, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %43, %if.end.i.i ], [ %41, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %dev46, ptr noundef %39, i32 noundef %add48.pre-phi) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %44 = load ptr, ptr @mem_map, align 4
  %45 = ptrtoint ptr %39 to i32
  %sub.i = add i32 %45, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i123 = getelementptr %struct.page, ptr %44, i32 %shr.i
  %and.i = and i32 %45, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev46, ptr noundef %add.ptr.i123, i32 noundef %and.i, i32 noundef %add48.pre-phi, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %addrlo.i = getelementptr %struct.tx_desc, ptr %35, i32 %conv43, i32 0, i32 1
  %46 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i, ptr %addrlo.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %conv51 = trunc i32 %add48.pre-phi to i16
  %47 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tx_ring, align 4
  %size = getelementptr %struct.tx_desc, ptr %48, i32 %conv43, i32 4
  %49 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv51, ptr %size, align 2
  %50 = load ptr, ptr %tx_ring, align 4
  %mode = getelementptr %struct.tx_desc, ptr %50, i32 %conv43, i32 2
  %51 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 24, ptr %mode, align 4
  %add56 = add i16 %32, 1
  %rem = and i16 %add56, 31
  %52 = ptrtoint ptr %pi to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %rem, ptr %pi, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !410
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !411
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %pi to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %pi, align 2
  %conv66 = zext i16 %54 to i32
  %55 = tail call i32 @llvm.bswap.i32(i32 %conv66)
  %TxPi = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxPi, i32 %55) #9, !srcloc !381
  %56 = ptrtoint ptr %pi to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %pi, align 2
  %conv68 = zext i16 %57 to i32
  %dirty_tx = getelementptr i8, ptr %dev, i32 2712
  %58 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv68)
  %cmp69 = icmp eq i32 %59, %conv68
  br i1 %cmp69, label %if.then71, label %dma_map_single_attrs.exit.if.end72_crit_edge

dma_map_single_attrs.exit.if.end72_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then71:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_full = getelementptr i8, ptr %dev, i32 2716
  %60 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %tx_full, align 4
  %_tx.i.i124 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %61 = ptrtoint ptr %_tx.i.i124 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %_tx.i.i124, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %62, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %dma_map_single_attrs.exit.if.end72_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call38) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.then26
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hippi_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_siocdevprivate(ptr noundef %dev, ptr nocapture noundef readnone %rq, ptr noundef %data, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 35313, label %sw.bb
    i32 35312, label %sw.bb35
    i32 35314, label %sw.bb115
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call zeroext i1 @capable(i32 noundef 17) #9
  br i1 %call1, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #13
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fw_running = getelementptr i8, ptr %dev, i32 2724
  %1 = ptrtoint ptr %fw_running to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load volatile i16, ptr %fw_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool5.not = icmp eq i16 %2, 0
  br i1 %tobool5.not, label %do.body10, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, ptr noundef %dev) #12
  br label %gf_out

do.body10:                                        ; preds = %if.end4
  %lock = getelementptr i8, ptr %dev, i32 2604
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call18 = tail call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %call1.i.i.i, i32 noundef 32768)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call18)
  %cmp20.not = icmp eq i32 %call18, 32768
  br i1 %cmp20.not, label %if.then.i, label %do.end25

do.end25:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, ptr noundef %dev) #12
  br label %gf_out

if.then.i:                                        ; preds = %do.body10
  tail call void @__might_fault(ptr noundef nonnull @.str.208, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.gf_out_crit_edge, label %if.end.i.i

if.then.i.gf_out_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gf_out

if.end.i.i:                                       ; preds = %if.then.i
  %3 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %data, i32 32768, i32 -1226833920) #14, !srcloc !412
  %asmresult.i.i = extractvalue { i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %copy_to_user.exit, label %if.end.i.i.gf_out_crit_edge

if.end.i.i.gf_out_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gf_out

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call1.i.i.i, i32 noundef 32768) #9
  %call.i1.i.i = tail call i32 @arm_copy_to_user(ptr noundef %data, ptr noundef nonnull %call1.i.i.i, i32 noundef 32768) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool32.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool32.not, i32 0, i32 -14
  br label %gf_out

gf_out:                                           ; preds = %copy_to_user.exit, %if.end.i.i.gf_out_crit_edge, %if.then.i.gf_out_crit_edge, %do.end25, %do.end
  %error.0 = phi i32 [ -1, %do.end ], [ -14, %do.end25 ], [ -14, %if.then.i.gf_out_crit_edge ], [ -14, %if.end.i.i.gf_out_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  %call36 = tail call zeroext i1 @capable(i32 noundef 17) #9
  br i1 %call36, label %if.end38, label %sw.bb35.cleanup_crit_edge

sw.bb35.cleanup_crit_edge:                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %sw.bb35
  %call39 = tail call ptr @memdup_user(ptr noundef %data, i32 noundef 32768) #9
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call39 to i32
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32768, i32 noundef 3264, i32 noundef 3) #13
  %tobool45.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %call39) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %fw_running48 = getelementptr i8, ptr %dev, i32 2724
  %5 = ptrtoint ptr %fw_running48 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load volatile i16, ptr %fw_running48, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool49.not = icmp eq i16 %6, 0
  br i1 %tobool49.not, label %do.end61, label %if.end47.wf_out.sink.split_crit_edge

if.end47.wf_out.sink.split_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %wf_out.sink.split

do.end61:                                         ; preds = %if.end47
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef %dev) #12
  %lock73 = getelementptr i8, ptr %dev, i32 2604
  %call75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock73) #9
  %call80 = tail call fastcc i32 @write_eeprom(ptr noundef %add.ptr.i, ptr noundef %call39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.end61.if.end90_crit_edge, label %do.end85

do.end61.if.end90_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.end85:                                         ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef %dev) #12
  br label %if.end90

if.end90:                                         ; preds = %do.end85, %do.end61.if.end90_crit_edge
  %call91 = tail call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 0, ptr noundef nonnull %call1.i.i, i32 noundef 32768)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock73, i32 noundef %call75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call91)
  %cmp93.not = icmp eq i32 %call91, 32768
  br i1 %cmp93.not, label %if.end90.if.end103_crit_edge, label %do.end98

if.end90.if.end103_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

do.end98:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.201, ptr noundef %dev) #12
  br label %if.end103

if.end103:                                        ; preds = %do.end98, %if.end90.if.end103_crit_edge
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(32768) %call39, ptr noundef nonnull dereferenceable(32768) %call1.i.i, i32 32768) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool105.not = icmp eq i32 %bcmp, 0
  br i1 %tobool105.not, label %if.end103.wf_out_crit_edge, label %if.end103.wf_out.sink.split_crit_edge

if.end103.wf_out.sink.split_crit_edge:            ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %wf_out.sink.split

if.end103.wf_out_crit_edge:                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %wf_out

wf_out.sink.split:                                ; preds = %if.end103.wf_out.sink.split_crit_edge, %if.end47.wf_out.sink.split_crit_edge
  %.str.204.sink = phi ptr [ @.str.187, %if.end47.wf_out.sink.split_crit_edge ], [ @.str.204, %if.end103.wf_out.sink.split_crit_edge ]
  %error.1.ph = phi i32 [ -1, %if.end47.wf_out.sink.split_crit_edge ], [ -14, %if.end103.wf_out.sink.split_crit_edge ]
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.204.sink, ptr noundef %dev) #12
  br label %wf_out

wf_out:                                           ; preds = %wf_out.sink.split, %if.end103.wf_out_crit_edge
  %error.1 = phi i32 [ 0, %if.end103.wf_out_crit_edge ], [ %error.1.ph, %wf_out.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call1.i.i) #9
  tail call void @kfree(ptr noundef %call39) #9
  br label %cleanup

sw.bb115:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1664) #9
  %7 = tail call i32 @llvm.read_register.i32(metadata !367) #9
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #7, !srcloc !413
  %and.i = and i32 %9, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  %10 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %data, i32 1381118002, i32 -1226833921) #9, !srcloc !416
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #9, !srcloc !414
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !415
  br label %cleanup

cleanup:                                          ; preds = %sw.bb115, %wf_out, %if.then46, %if.then41, %sw.bb35.cleanup_crit_edge, %gf_out, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %sw.bb115 ], [ %4, %if.then41 ], [ %error.1, %wf_out ], [ -12, %if.then46 ], [ %error.0, %gf_out ], [ -1, %sw.bb.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -1, %sw.bb35.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rr_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %regs1 = getelementptr i8, ptr %dev_id, i32 2584
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !417
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev_id, i32 2604
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %EvtPrd = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 85
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %EvtPrd) #9, !srcloc !379
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !418
  %shr = lshr i32 %5, 8
  %and9 = and i32 %shr, 255
  %shr10 = lshr i32 %5, 16
  %and11 = and i32 %shr10, 255
  %and12 = and i32 %5, 255
  %info = getelementptr i8, ptr %dev_id, i32 2592
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %pi = getelementptr inbounds %struct.rr_info, ptr %7, i32 0, i32 1, i32 5
  %8 = ptrtoint ptr %pi to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pi, align 2
  %conv = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %conv)
  %cmp.not = icmp eq i32 %and12, %conv
  br i1 %cmp.not, label %if.end.if.end16_crit_edge, label %while.body.lr.ph.i

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

while.body.lr.ph.i:                               ; preds = %if.end
  %10 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1, align 4
  %evt_ring.i = getelementptr i8, ptr %dev_id, i32 2312
  %HostCtrl391.i = getelementptr inbounds %struct.rr_regs, ptr %11, i32 0, i32 1
  %tx_aborted_errors158.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 16
  %FwRev.i = getelementptr inbounds %struct.rr_regs, ptr %11, i32 0, i32 91
  %fw_running.i = getelementptr i8, ptr %dev_id, i32 2724
  %IpRxPi.i = getelementptr inbounds %struct.rr_regs, ptr %11, i32 0, i32 67
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %eidx.addr.0498.i = phi i32 [ %conv, %while.body.lr.ph.i ], [ %rem422.i, %sw.epilog.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %evt_ring.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %evt_ring.i, align 4
  %arrayidx.i = getelementptr %struct.event, ptr %13, i32 %eidx.addr.0498.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 4
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.227)
  switch i8 %15, label %do.end412.i [
    i8 1, label %sw.bb.i
    i8 7, label %do.end18.i
    i8 8, label %do.end26.i
    i8 51, label %while.body.i.drop.i_crit_edge
    i8 2, label %do.end42.i
    i8 9, label %do.end50.i
    i8 10, label %do.end71.i
    i8 19, label %do.end94.i
    i8 20, label %do.end102.i
    i8 22, label %do.end110.i
    i8 23, label %do.end121.i
    i8 24, label %do.end144.i
    i8 25, label %do.end152.i
    i8 26, label %do.end178.i
    i8 27, label %do.end201.i
    i8 28, label %do.end224.i
    i8 36, label %do.end247.i
    i8 43, label %do.end255.i
    i8 44, label %do.end263.i
    i8 52, label %do.end271.i
    i8 46, label %do.end279.i
    i8 47, label %do.end287.i
    i8 53, label %do.end295.i
    i8 60, label %do.end303.i
    i8 48, label %do.end311.i
    i8 50, label %do.end319.i
    i8 49, label %do.end327.i
    i8 54, label %do.end335.i
    i8 55, label %do.end358.i
    i8 56, label %do.end381.i
  ]

while.body.i.drop.i_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %FwRev.i) #9, !srcloc !379
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !419
  %shr.i = lshr i32 %18, 16
  %shr6.i = lshr i32 %18, 8
  %and.i = and i32 %shr6.i, 255
  %and7.i = and i32 %18, 255
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %dev_id, i32 noundef %shr.i, i32 noundef %and.i, i32 noundef %and7.i) #12
  %19 = ptrtoint ptr %fw_running.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store volatile i16 1, ptr %fw_running.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !420
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IpRxPi.i, i32 520093696) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !421
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end18.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %dev_id) #12
  br label %sw.epilog.i

do.end26.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %dev_id) #12
  br label %sw.epilog.i

do.end42.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %dev_id) #12
  br label %sw.epilog.i

do.end50.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call54.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !422
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !423
  %21 = or i32 %20, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %21) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !424
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end71.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !425
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !426
  %23 = or i32 %22, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %23) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !427
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end94.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call98.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dev_id) #12
  %24 = ptrtoint ptr %tx_aborted_errors158.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_aborted_errors158.i, align 8
  %inc.i = add i32 %25, 1
  store i32 %inc.i, ptr %tx_aborted_errors158.i, align 8
  br label %sw.epilog.i

do.end102.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call106.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %dev_id) #12
  br label %sw.epilog.i

do.end110.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call114.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %dev_id) #12
  %26 = ptrtoint ptr %tx_aborted_errors158.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_aborted_errors158.i, align 8
  %inc117.i = add i32 %27, 1
  store i32 %inc117.i, ptr %tx_aborted_errors158.i, align 8
  br label %sw.epilog.i

do.end121.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call125.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !428
  tail call void @arm_heavy_mb() #9
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !429
  %29 = or i32 %28, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %29) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !430
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end144.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call148.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %dev_id) #12
  br label %sw.epilog.i

do.end152.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call156.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %dev_id) #12
  %30 = ptrtoint ptr %tx_aborted_errors158.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_aborted_errors158.i, align 8
  %inc159.i = add i32 %31, 1
  store i32 %inc159.i, ptr %tx_aborted_errors158.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !431
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !432
  %33 = or i32 %32, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %33) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !433
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end178.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call182.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !434
  tail call void @arm_heavy_mb() #9
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !435
  %35 = or i32 %34, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %35) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !436
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end201.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call205.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !437
  tail call void @arm_heavy_mb() #9
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !438
  %37 = or i32 %36, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %37) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !439
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end224.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call228.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !440
  tail call void @arm_heavy_mb() #9
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !441
  %39 = or i32 %38, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %39) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !442
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end247.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call251.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef %dev_id) #12
  br label %sw.epilog.i

do.end255.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end263.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end271.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end279.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end287.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end295.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end303.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end311.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end319.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end327.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %drop.i

do.end335.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call339.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !443
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !444
  %41 = or i32 %40, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %41) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !445
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end358.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call362.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !446
  tail call void @arm_heavy_mb() #9
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !447
  %43 = or i32 %42, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %43) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !448
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

do.end381.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call385.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %dev_id) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !449
  tail call void @arm_heavy_mb() #9
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl391.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !450
  %45 = or i32 %44, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl391.i, i32 %45) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !451
  tail call void @arm_heavy_mb() #9
  br label %sw.epilog.i

drop.i:                                           ; preds = %do.end327.i, %do.end319.i, %do.end311.i, %do.end303.i, %do.end295.i, %do.end287.i, %do.end279.i, %do.end271.i, %do.end263.i, %do.end255.i, %while.body.i.drop.i_crit_edge
  %.str.94.sink.i = phi ptr [ @.str.94, %do.end327.i ], [ @.str.91, %do.end319.i ], [ @.str.88, %do.end311.i ], [ @.str.85, %do.end303.i ], [ @.str.82, %do.end295.i ], [ @.str.79, %do.end287.i ], [ @.str.76, %do.end279.i ], [ @.str.73, %do.end271.i ], [ @.str.70, %do.end263.i ], [ @.str.67, %do.end255.i ], [ @.str.25, %while.body.i.drop.i_crit_edge ]
  %call331.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.94.sink.i, ptr noundef %dev_id) #12
  %46 = ptrtoint ptr %evt_ring.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %evt_ring.i, align 4
  %index403.i = getelementptr %struct.event, ptr %47, i32 %eidx.addr.0498.i, i32 2
  %48 = ptrtoint ptr %index403.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %index403.i, align 2
  %50 = add i16 %49, 31
  %51 = and i16 %50, 31
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  %idxprom.i = zext i16 %51 to i32
  %mode.i = getelementptr %struct.rx_desc, ptr %53, i32 %idxprom.i, i32 2
  %54 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %mode.i, align 4
  %56 = or i8 %55, 9
  store i8 %56, ptr %mode.i, align 4
  br label %sw.epilog.i

do.end412.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %15 to i32
  %call420.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %dev_id, i32 noundef %conv.i) #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end412.i, %drop.i, %do.end381.i, %do.end358.i, %do.end335.i, %do.end247.i, %do.end224.i, %do.end201.i, %do.end178.i, %do.end152.i, %do.end144.i, %do.end121.i, %do.end110.i, %do.end102.i, %do.end94.i, %do.end71.i, %do.end50.i, %do.end42.i, %do.end26.i, %do.end18.i, %sw.bb.i
  %add421.i = add nuw nsw i32 %eidx.addr.0498.i, 1
  %rem422.i = and i32 %add421.i, 63
  %cmp.not.i = icmp eq i32 %rem422.i, %and12
  br i1 %cmp.not.i, label %rr_handle_event.exit, label %sw.epilog.i.while.body.i_crit_edge

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

rr_handle_event.exit:                             ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv423.i = trunc i32 %and12 to i16
  %57 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %info, align 4
  %pi.i = getelementptr inbounds %struct.rr_info, ptr %58, i32 0, i32 1, i32 5
  %59 = ptrtoint ptr %pi.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv423.i, ptr %pi.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !452
  tail call void @arm_heavy_mb() #9
  br label %if.end16

if.end16:                                         ; preds = %rr_handle_event.exit, %if.end.if.end16_crit_edge
  %cur_rx = getelementptr i8, ptr %dev_id, i32 2696
  %60 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cur_rx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %and11)
  %cmp17.not = icmp eq i32 %61, %and11
  br i1 %cmp17.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  %62 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs1, align 4
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 20
  %pci_dev33.i = getelementptr i8, ptr %dev_id, i32 2728
  %stats64.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %IpRxPi.i130 = getelementptr inbounds %struct.rr_regs, ptr %63, i32 0, i32 67
  br label %do.body.i

do.body.i:                                        ; preds = %if.end85.i.do.body.i_crit_edge, %if.then19
  %index.addr.0.i = phi i32 [ %61, %if.then19 ], [ %rem.i, %if.end85.i.do.body.i_crit_edge ]
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  %arrayidx.i131 = getelementptr %struct.rx_desc, ptr %65, i32 %index.addr.0.i
  %size.i = getelementptr %struct.rx_desc, ptr %65, i32 %index.addr.0.i, i32 4
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %size.i, align 2
  %conv.i132 = zext i16 %67 to i32
  %mode.i133 = getelementptr %struct.rx_desc, ptr %65, i32 %index.addr.0.i, i32 2
  %68 = ptrtoint ptr %mode.i133 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mode.i133, align 4
  %70 = and i8 %69, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp.not.i134 = icmp eq i8 %70, 0
  br i1 %cmp.not.i134, label %if.end.i, label %do.body.i.defer.sink.split.i_crit_edge

do.body.i.defer.sink.split.i_crit_edge:           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %defer.sink.split.i

if.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp6.not.i = icmp eq i16 %67, 0
  br i1 %cmp6.not.i, label %if.end.i.defer.i_crit_edge, label %if.then8.i

if.end.i.defer.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %defer.i

if.then8.i:                                       ; preds = %if.end.i
  %arrayidx9.i = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 6, i32 %index.addr.0.i
  %71 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %67)
  %cmp10.i = icmp ult i16 %67, 512
  br i1 %cmp10.i, label %if.then12.i, label %if.else29.i

if.then12.i:                                      ; preds = %if.then8.i
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %conv.i132, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %cmp14.i = icmp eq ptr %call.i.i, null
  br i1 %cmp14.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %dev_id, i32 noundef %conv.i132) #12
  br label %defer.sink.split.i

if.else.i:                                        ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %pci_dev33.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci_dev33.i, align 4
  %dev22.i = getelementptr inbounds %struct.pci_dev, ptr %74, i32 0, i32 44
  %addrlo.i = getelementptr inbounds %struct.rraddr, ptr %arrayidx.i131, i32 0, i32 1
  %75 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %addrlo.i, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev22.i, i32 noundef %76, i32 noundef %conv.i132, i32 noundef 2) #9
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 19
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i, align 4
  %call.i145.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv.i132) #9
  %79 = call ptr @memcpy(ptr %call.i145.i, ptr %78, i32 %conv.i132)
  %80 = ptrtoint ptr %pci_dev33.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pci_dev33.i, align 4
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %81, i32 0, i32 44
  %82 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %addrlo.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev25.i, i32 noundef %83, i32 noundef %conv.i132, i32 noundef 2) #9
  br label %if.end61.i

if.else29.i:                                      ; preds = %if.then8.i
  %84 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mtu.i, align 4
  %add.i = add i32 %85, 40
  %call.i146.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i146.i, null
  br i1 %tobool.not.i, label %cleanup.thread.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.else29.i
  %86 = ptrtoint ptr %pci_dev33.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pci_dev33.i, align 4
  %dev34.i = getelementptr inbounds %struct.pci_dev, ptr %87, i32 0, i32 44
  %addrlo36.i = getelementptr inbounds %struct.rraddr, ptr %arrayidx.i131, i32 0, i32 1
  %88 = ptrtoint ptr %addrlo36.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addrlo36.i, align 4
  %90 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mtu.i, align 4
  %add38.i = add i32 %91, 40
  tail call void @dma_unmap_page_attrs(ptr noundef %dev34.i, i32 noundef %89, i32 noundef %add38.i, i32 noundef 2, i32 noundef 0) #9
  %call39.i = tail call ptr @skb_put(ptr noundef %72, i32 noundef %conv.i132) #9
  %92 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call.i146.i, ptr %arrayidx9.i, align 4
  %93 = ptrtoint ptr %pci_dev33.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pci_dev33.i, align 4
  %dev43.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44
  %data44.i = getelementptr inbounds %struct.sk_buff, ptr %call.i146.i, i32 0, i32 19
  %95 = ptrtoint ptr %data44.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data44.i, align 4
  %97 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mtu.i, align 4
  %call.i147.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %96) #9
  br i1 %call.i147.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then31.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup.i_crit_edge, label %if.then.i.i, !prof !409

land.rhs.i.i.cleanup.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev43.i) #9
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %94, i32 0, i32 44, i32 3
  %99 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %100, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %dev43.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev43.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %102, %if.end.i.i.i ], [ %100, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #9
  br label %cleanup.i

if.end39.i.i:                                     ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #11
  %add46.i = add i32 %98, 40
  tail call void @debug_dma_map_single(ptr noundef %dev43.i, ptr noundef %96, i32 noundef %add46.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %103 = load ptr, ptr @mem_map, align 4
  %104 = ptrtoint ptr %96 to i32
  %sub.i.i = add i32 %104, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i148.i = getelementptr %struct.page, ptr %103, i32 %shr.i.i
  %and.i.i = and i32 %104, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev43.i, ptr noundef %add.ptr.i148.i, i32 noundef %and.i.i, i32 noundef %add46.i, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %dev_id) #12
  br label %defer.sink.split.i

cleanup.i:                                        ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.cleanup.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.cleanup.i_crit_edge ]
  %105 = ptrtoint ptr %addrlo36.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %retval.0.i.i, ptr %addrlo36.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  br label %if.end61.i

if.end61.i:                                       ; preds = %cleanup.i, %if.else.i
  %skb.1.i = phi ptr [ %call.i.i, %if.else.i ], [ %72, %cleanup.i ]
  %call62.i = tail call zeroext i16 @hippi_type_trans(ptr noundef %skb.1.i, ptr noundef %dev_id) #9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1.i, i32 0, i32 15, i32 0, i32 18
  %106 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %call62.i, ptr %protocol.i, align 8
  %call63.i = tail call i32 @netif_rx(ptr noundef %skb.1.i) #9
  %107 = ptrtoint ptr %stats64.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %stats64.i, align 8
  %inc65.i = add i32 %108, 1
  store i32 %inc65.i, ptr %stats64.i, align 8
  br label %defer.sink.split.i

defer.sink.split.i:                               ; preds = %if.end61.i, %cleanup.thread.i, %do.end.i, %do.body.i.defer.sink.split.i_crit_edge
  %rx_dropped.sink151.i = phi ptr [ %rx_dropped.i, %cleanup.thread.i ], [ %rx_bytes.i, %if.end61.i ], [ %rx_dropped.i, %do.end.i ], [ %rx_dropped.i, %do.body.i.defer.sink.split.i_crit_edge ]
  %.sink150.i = phi i32 [ 1, %cleanup.thread.i ], [ %conv.i132, %if.end61.i ], [ 1, %do.end.i ], [ 1, %do.body.i.defer.sink.split.i_crit_edge ]
  %109 = ptrtoint ptr %rx_dropped.sink151.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %rx_dropped.sink151.i, align 8
  %inc59.i = add i32 %110, %.sink150.i
  store i32 %inc59.i, ptr %rx_dropped.sink151.i, align 8
  br label %defer.i

defer.i:                                          ; preds = %defer.sink.split.i, %if.end.i.defer.i_crit_edge
  %111 = ptrtoint ptr %mode.i133 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %mode.i133, align 4
  %112 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %mtu.i, align 4
  %114 = trunc i32 %113 to i16
  %conv76.i = add i16 %114, 40
  %115 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv76.i, ptr %size.i, align 2
  %and78.i = and i32 %index.addr.0.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and78.i)
  %cmp79.i = icmp eq i32 %and78.i, 7
  br i1 %cmp79.i, label %do.body82.i, label %defer.i.if.end85.i_crit_edge

defer.i.if.end85.i_crit_edge:                     ; preds = %defer.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85.i

do.body82.i:                                      ; preds = %defer.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !453
  tail call void @arm_heavy_mb() #9
  %116 = tail call i32 @llvm.bswap.i32(i32 %index.addr.0.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IpRxPi.i130, i32 %116) #9, !srcloc !381
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.body82.i, %defer.i.if.end85.i_crit_edge
  %add86.i = add i32 %index.addr.0.i, 1
  %rem.i = and i32 %add86.i, 31
  %cmp88.not.i = icmp eq i32 %rem.i, %and11
  br i1 %cmp88.not.i, label %rx_int.exit, label %if.end85.i.do.body.i_crit_edge

if.end85.i.do.body.i_crit_edge:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

rx_int.exit:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #11
  %117 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %and11, ptr %cur_rx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !454
  tail call void @arm_heavy_mb() #9
  br label %if.end20

if.end20:                                         ; preds = %rx_int.exit, %if.end16.if.end20_crit_edge
  %dirty_tx = getelementptr i8, ptr %dev_id, i32 2712
  %118 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dirty_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %119)
  %cmp21.not = icmp eq i32 %and9, %119
  br i1 %cmp21.not, label %if.end20.if.end60_crit_edge, label %do.body.preheader

if.end20.if.end60_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

do.body.preheader:                                ; preds = %if.end20
  %tx_ring = getelementptr i8, ptr %dev_id, i32 2308
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 3
  %pci_dev = getelementptr i8, ptr %dev_id, i32 2728
  br label %do.body

do.body:                                          ; preds = %if.end37.do.body_crit_edge, %do.body.preheader
  %txcon.0 = phi i32 [ %rem, %if.end37.do.body_crit_edge ], [ %119, %do.body.preheader ]
  %arrayidx = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 7, i32 %txcon.0
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %121, null
  br i1 %tobool24.not, label %do.body.if.end37_crit_edge, label %if.then25

do.body.if.end37_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tx_ring, align 4
  %124 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %125, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %121, i32 0, i32 6
  %126 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len, align 4
  %128 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %129, %127
  store i32 %add, ptr %tx_bytes, align 4
  %130 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pci_dev, align 4
  %dev30 = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  %addrlo = getelementptr %struct.tx_desc, ptr %123, i32 %txcon.0, i32 0, i32 1
  %132 = ptrtoint ptr %addrlo to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addrlo, align 4
  %134 = load i32, ptr %len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev30, i32 noundef %133, i32 noundef %134, i32 noundef 1, i32 noundef 0) #9
  tail call void @__dev_kfree_skb_irq(ptr noundef nonnull %121, i32 noundef 1) #9
  %135 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %arrayidx, align 4
  %size = getelementptr %struct.tx_desc, ptr %123, i32 %txcon.0, i32 4
  %136 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 0, ptr %size, align 2
  %137 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %tx_ring, align 4
  %addrlo.i135 = getelementptr %struct.tx_desc, ptr %138, i32 %txcon.0, i32 0, i32 1
  %139 = ptrtoint ptr %addrlo.i135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %addrlo.i135, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %mode = getelementptr %struct.tx_desc, ptr %123, i32 %txcon.0, i32 2
  %140 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 0, ptr %mode, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then25, %do.body.if.end37_crit_edge
  %add38 = add i32 %txcon.0, 1
  %rem = and i32 %add38, 31
  %cmp39.not = icmp eq i32 %and9, %rem
  br i1 %cmp39.not, label %do.body41, label %if.end37.do.body_crit_edge

if.end37.do.body_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body41:                                        ; preds = %if.end37
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !455
  tail call void @arm_heavy_mb() #9
  %141 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %and9, ptr %dirty_tx, align 4
  %tx_full = getelementptr i8, ptr %dev_id, i32 2716
  %142 = ptrtoint ptr %tx_full to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_full, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool45.not = icmp eq i32 %143, 0
  br i1 %tobool45.not, label %do.body41.if.end60_crit_edge, label %land.lhs.true

do.body41.if.end60_crit_edge:                     ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

land.lhs.true:                                    ; preds = %do.body41
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %144 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %145, i32 0, i32 13
  %146 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %land.lhs.true.if.end60_crit_edge, label %land.lhs.true48

land.lhs.true.if.end60_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

land.lhs.true48:                                  ; preds = %land.lhs.true
  %148 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %info, align 4
  %pi50 = getelementptr inbounds %struct.rr_info, ptr %149, i32 0, i32 3, i32 5
  %150 = ptrtoint ptr %pi50 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %pi50, align 2
  %152 = add i16 %151, 1
  %153 = and i16 %152, 31
  %rem53 = zext i16 %153 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and9, i32 %rem53)
  %cmp55.not = icmp eq i32 %and9, %rem53
  br i1 %cmp55.not, label %land.lhs.true48.if.end60_crit_edge, label %if.then57

land.lhs.true48.if.end60_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60

if.then57:                                        ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 0, ptr %tx_full, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %145) #9
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %land.lhs.true48.if.end60_crit_edge, %land.lhs.true.if.end60_crit_edge, %do.body41.if.end60_crit_edge, %if.end20.if.end60_crit_edge
  %shl = shl nuw nsw i32 %and9, 8
  %shl61 = shl nuw nsw i32 %and11, 16
  %or = or i32 %shl, %shl61
  %or62 = or i32 %and12, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !456
  tail call void @arm_heavy_mb() #9
  %155 = tail call i32 @llvm.bswap.i32(i32 %or62)
  %EvtCon = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtCon, i32 %155) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !457
  tail call void @arm_heavy_mb() #9
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end60 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rr_init1(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %word.i.i = alloca i32, align 4
  %word.i50.i.i = alloca i32, align 4
  %word.i44.i.i = alloca i32, align 4
  %word.i38.i.i = alloca i32, align 4
  %word.i32.i.i = alloca i32, align 4
  %word.i26.i.i = alloca i32, align 4
  %word.i20.i.i = alloca i32, align 4
  %word.i14.i.i = alloca i32, align 4
  %word.i8.i.i = alloca i32, align 4
  %word.i2.i.i = alloca i32, align 4
  %word.i.i.i = alloca i32, align 4
  %addr.addr.i338 = alloca i32, align 4
  %addr.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %regs1 = getelementptr i8, ptr %dev, i32 2584
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %lock = getelementptr i8, ptr %dev, i32 2604
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !458
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !459
  tail call void @arm_heavy_mb() #9
  %or13 = or i32 %3, 18
  %4 = tail call i32 @llvm.bswap.i32(i32 %or13)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 %4) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !460
  tail call void @arm_heavy_mb() #9
  %and = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end20

do.end20:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %dev) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %error

if.end:                                           ; preds = %entry
  %rx_ctrl_dma = getelementptr i8, ptr %dev, i32 2596
  %5 = ptrtoint ptr %rx_ctrl_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_ctrl_dma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i)
  %7 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %6, ptr %addr.addr.i, align 4
  %addr.addr.i.0.addr.addr.i.0.addr.addr.0.addr.addr.0.addr.addr.0..i = load volatile i32, ptr %addr.addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !461
  tail call void @arm_heavy_mb() #9
  %RxRingHi.i = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxRingHi.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !462
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %addr.addr.i.0.addr.addr.i.0.addr.addr.0.addr.addr.0.addr.addr.0..i) #9
  %RxRingLo.i = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxRingLo.i, i32 %8) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !463
  tail call void @arm_heavy_mb() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i)
  %info_dma = getelementptr i8, ptr %dev, i32 2600
  %9 = ptrtoint ptr %info_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %info_dma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.addr.i338)
  %11 = ptrtoint ptr %addr.addr.i338 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 %10, ptr %addr.addr.i338, align 4
  %addr.addr.i338.0.addr.addr.i338.0.addr.addr.0.addr.addr.0.addr.addr.0..i339 = load volatile i32, ptr %addr.addr.i338, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !464
  tail call void @arm_heavy_mb() #9
  %InfoPtrHi.i = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %InfoPtrHi.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !465
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %addr.addr.i338.0.addr.addr.i338.0.addr.addr.0.addr.addr.0.addr.addr.0..i339) #9
  %InfoPtrLo.i = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %InfoPtrLo.i, i32 %12) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !466
  tail call void @arm_heavy_mb() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.addr.i338)
  %info = getelementptr i8, ptr %dev, i32 2592
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %entry_size = getelementptr inbounds %struct.rr_info, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %entry_size to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %entry_size, align 8
  %16 = load ptr, ptr %info, align 4
  %entries = getelementptr inbounds %struct.rr_info, ptr %16, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 64, ptr %entries, align 2
  %18 = load ptr, ptr %info, align 4
  %mode = getelementptr inbounds %struct.rr_info, ptr %18, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %mode, align 4
  %20 = load ptr, ptr %info, align 4
  %pi = getelementptr inbounds %struct.rr_info, ptr %20, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %pi to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %pi, align 2
  %22 = load ptr, ptr %info, align 4
  %evt_ring_dma = getelementptr i8, ptr %dev, i32 2324
  %23 = ptrtoint ptr %evt_ring_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %evt_ring_dma, align 4
  %addrlo.i = getelementptr inbounds %struct.rr_info, ptr %22, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %addrlo.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %entry_size33 = getelementptr inbounds %struct.rr_info, ptr %27, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %entry_size33 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 4, ptr %entry_size33, align 8
  %29 = load ptr, ptr %info, align 4
  %entries36 = getelementptr inbounds %struct.rr_info, ptr %29, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %entries36 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 16, ptr %entries36, align 2
  %31 = load ptr, ptr %info, align 4
  %mode39 = getelementptr inbounds %struct.rr_info, ptr %31, i32 0, i32 2, i32 4
  %32 = ptrtoint ptr %mode39 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %mode39, align 4
  %33 = load ptr, ptr %info, align 4
  %pi42 = getelementptr inbounds %struct.rr_info, ptr %33, i32 0, i32 2, i32 5
  %34 = ptrtoint ptr %pi42 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 15, ptr %pi42, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.1 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.1, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.2 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.2, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.3 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.3, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.4 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.4, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.5 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.5, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.6 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.6, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.7 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.7, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.8 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.8, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.9 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.9, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.10 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.10, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.11 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.11, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.12 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.12, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.13 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.13, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.14 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.14, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !467
  tail call void @arm_heavy_mb() #9
  %arrayidx.15 = getelementptr %struct.rr_regs, ptr %1, i32 0, i32 69, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.15, i32 0) #9, !srcloc !381
  %tx_ring = getelementptr i8, ptr %dev, i32 2308
  br label %for.body53

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %if.end
  %indvars.iv = phi i32 [ 0, %if.end ], [ %indvars.iv.next, %for.body53.for.body53_crit_edge ]
  %35 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_ring, align 4
  %size = getelementptr %struct.tx_desc, ptr %36, i32 %indvars.iv, i32 4
  %37 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %size, align 2
  %38 = load ptr, ptr %tx_ring, align 4
  %addrlo.i340 = getelementptr %struct.tx_desc, ptr %38, i32 %indvars.iv, i32 0, i32 1
  %39 = ptrtoint ptr %addrlo.i340 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %addrlo.i340, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %arrayidx60 = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 7, i32 %indvars.iv
  %40 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx60, align 4
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 32
  br i1 %exitcond.not, label %for.end63, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body53

for.end63:                                        ; preds = %for.body53
  %41 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info, align 4
  %entry_size65 = getelementptr inbounds %struct.rr_info, ptr %42, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %entry_size65 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 16, ptr %entry_size65, align 8
  %44 = load ptr, ptr %info, align 4
  %entries68 = getelementptr inbounds %struct.rr_info, ptr %44, i32 0, i32 3, i32 3
  %45 = ptrtoint ptr %entries68 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 32, ptr %entries68, align 2
  %46 = load ptr, ptr %info, align 4
  %mode71 = getelementptr inbounds %struct.rr_info, ptr %46, i32 0, i32 3, i32 4
  %47 = ptrtoint ptr %mode71 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %mode71, align 4
  %48 = load ptr, ptr %info, align 4
  %pi74 = getelementptr inbounds %struct.rr_info, ptr %48, i32 0, i32 3, i32 5
  %49 = ptrtoint ptr %pi74 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %pi74, align 2
  %50 = load ptr, ptr %info, align 4
  %tx_ring_dma = getelementptr i8, ptr %dev, i32 2316
  %51 = ptrtoint ptr %tx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_ring_dma, align 4
  %addrlo.i341 = getelementptr inbounds %struct.rr_info, ptr %50, i32 0, i32 3, i32 0, i32 1
  %53 = ptrtoint ptr %addrlo.i341 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %addrlo.i341, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %tx_full = getelementptr i8, ptr %dev, i32 2716
  %54 = ptrtoint ptr %tx_full to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %tx_full, align 4
  %cur_rx = getelementptr i8, ptr %dev, i32 2696
  %55 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %cur_rx, align 4
  %dirty_tx = getelementptr i8, ptr %dev, i32 2712
  %56 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %dirty_tx, align 4
  %dirty_rx = getelementptr i8, ptr %dev, i32 2708
  %57 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %dirty_rx, align 4
  %58 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs1, align 4
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %60 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.end63.rr_load_firmware.exit.i_crit_edge

for.end63.rr_load_firmware.exit.i_crit_edge:      ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_load_firmware.exit.i

if.end.i.i:                                       ; preds = %for.end63
  %HostCtrl.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 1
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl.i.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !468
  %63 = and i32 %62, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool6.not.i.i = icmp eq i32 %63, 0
  br i1 %tobool6.not.i.i, label %do.end.i.i, label %if.end10.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef %dev) #12
  br label %rr_load_firmware.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %LocalCtrl.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 2
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl.i.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !469
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !470
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl.i.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !471
  tail call void @arm_heavy_mb() #9
  %EvtPrd.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtPrd.i.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !472
  tail call void @arm_heavy_mb() #9
  %RxPrd.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxPrd.i.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !473
  tail call void @arm_heavy_mb() #9
  %TxPrd.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxPrd.i.i, i32 0) #9, !srcloc !381
  %ExtIo.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 16
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ExtIo.i.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !475
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ExtIo.i.i, i32 0) #9, !srcloc !381
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i.i.i) #9
  %66 = ptrtoint ptr %word.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %word.i.i.i, align 4, !annotation !377
  %call.i.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 8, ptr noundef nonnull %word.i.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i, 4
  br i1 %cmp.i.i.i, label %rr_read_eeprom_word.exit.i.i, label %rr_read_eeprom_word.exit.thread.i.i

rr_read_eeprom_word.exit.thread.i.i:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i.i) #9
  br label %do.body51.i.i

rr_read_eeprom_word.exit.i.i:                     ; preds = %if.end10.i.i
  %67 = ptrtoint ptr %word.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %word.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 803, i32 %68)
  %cmp63.i.i = icmp ugt i32 %68, 803
  br i1 %cmp63.i.i, label %do.body39.lr.ph.i.i, label %rr_read_eeprom_word.exit.i.i.do.body51.i.i_crit_edge

rr_read_eeprom_word.exit.i.i.do.body51.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51.i.i

do.body39.lr.ph.i.i:                              ; preds = %rr_read_eeprom_word.exit.i.i
  %div1.i.i = lshr i32 %68, 2
  %WinBase.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 11
  %WinData.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 12
  br label %do.body39.i.i

do.body39.i.i:                                    ; preds = %do.body39.i.i.do.body39.i.i_crit_edge, %do.body39.lr.ph.i.i
  %i.064.i.i = phi i32 [ 200, %do.body39.lr.ph.i.i ], [ %inc.i.i, %do.body39.i.i.do.body39.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !476
  tail call void @arm_heavy_mb() #9
  %mul.i.i = shl i32 %i.064.i.i, 2
  %69 = tail call i32 @llvm.bswap.i32(i32 %mul.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinBase.i.i, i32 %69) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !477
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !478
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinData.i.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !479
  tail call void @arm_heavy_mb() #9
  %inc.i.i = add nuw nsw i32 %i.064.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div1.i.i
  br i1 %exitcond.not.i.i, label %do.body39.i.i.do.body51.i.i_crit_edge, label %do.body39.i.i.do.body39.i.i_crit_edge

do.body39.i.i.do.body39.i.i_crit_edge:            ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body39.i.i

do.body39.i.i.do.body51.i.i_crit_edge:            ; preds = %do.body39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body51.i.i

do.body51.i.i:                                    ; preds = %do.body39.i.i.do.body51.i.i_crit_edge, %rr_read_eeprom_word.exit.i.i.do.body51.i.i_crit_edge, %rr_read_eeprom_word.exit.thread.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !480
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ExtIo.i.i, i32 %65) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !481
  tail call void @arm_heavy_mb() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i2.i.i) #9
  %70 = ptrtoint ptr %word.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %word.i2.i.i, align 4, !annotation !377
  %call.i3.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 336, ptr noundef nonnull %word.i2.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i3.i.i)
  %cmp.i4.i.i = icmp eq i32 %call.i3.i.i, 4
  br i1 %cmp.i4.i.i, label %if.then.i5.i.i, label %do.body51.i.i.rr_read_eeprom_word.exit7.i.i_crit_edge

do.body51.i.i.rr_read_eeprom_word.exit7.i.i_crit_edge: ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit7.i.i

if.then.i5.i.i:                                   ; preds = %do.body51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %word.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %word.i2.i.i, align 4
  %phi.bo.i.i = lshr i32 %72, 3
  %phi.bo59.i.i = and i32 %phi.bo.i.i, 262143
  br label %rr_read_eeprom_word.exit7.i.i

rr_read_eeprom_word.exit7.i.i:                    ; preds = %if.then.i5.i.i, %do.body51.i.i.rr_read_eeprom_word.exit7.i.i_crit_edge
  %retval.0.i6.i.i = phi i32 [ %phi.bo59.i.i, %if.then.i5.i.i ], [ 0, %do.body51.i.i.rr_read_eeprom_word.exit7.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i2.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i8.i.i) #9
  %73 = ptrtoint ptr %word.i8.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %word.i8.i.i, align 4, !annotation !377
  %call.i9.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 524, ptr noundef nonnull %word.i8.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i9.i.i)
  %cmp.i10.i.i = icmp eq i32 %call.i9.i.i, 4
  br i1 %cmp.i10.i.i, label %if.then.i11.i.i, label %rr_read_eeprom_word.exit7.i.i.rr_read_eeprom_word.exit13.i.i_crit_edge

rr_read_eeprom_word.exit7.i.i.rr_read_eeprom_word.exit13.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit13.i.i

if.then.i11.i.i:                                  ; preds = %rr_read_eeprom_word.exit7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %word.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %word.i8.i.i, align 4
  %phi.bo62.i.i = shl i32 %75, 2
  br label %rr_read_eeprom_word.exit13.i.i

rr_read_eeprom_word.exit13.i.i:                   ; preds = %if.then.i11.i.i, %rr_read_eeprom_word.exit7.i.i.rr_read_eeprom_word.exit13.i.i_crit_edge
  %retval.0.i12.i.i = phi i32 [ %phi.bo62.i.i, %if.then.i11.i.i ], [ 0, %rr_read_eeprom_word.exit7.i.i.rr_read_eeprom_word.exit13.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i8.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i14.i.i) #9
  %76 = ptrtoint ptr %word.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %word.i14.i.i, align 4, !annotation !377
  %call.i15.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 528, ptr noundef nonnull %word.i14.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i15.i.i)
  %cmp.i16.i.i = icmp eq i32 %call.i15.i.i, 4
  br i1 %cmp.i16.i.i, label %if.then.i17.i.i, label %rr_read_eeprom_word.exit13.i.i.rr_read_eeprom_word.exit19.i.i_crit_edge

rr_read_eeprom_word.exit13.i.i.rr_read_eeprom_word.exit19.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit19.i.i

if.then.i17.i.i:                                  ; preds = %rr_read_eeprom_word.exit13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %word.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %word.i14.i.i, align 4
  %phi.bo60.i.i = lshr i32 %78, 3
  %phi.bo61.i.i = and i32 %phi.bo60.i.i, 262143
  br label %rr_read_eeprom_word.exit19.i.i

rr_read_eeprom_word.exit19.i.i:                   ; preds = %if.then.i17.i.i, %rr_read_eeprom_word.exit13.i.i.rr_read_eeprom_word.exit19.i.i_crit_edge
  %retval.0.i18.i.i = phi i32 [ %phi.bo61.i.i, %if.then.i17.i.i ], [ 0, %rr_read_eeprom_word.exit13.i.i.rr_read_eeprom_word.exit19.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i14.i.i) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i6.i.i, i32 %retval.0.i18.i.i)
  %cmp64.i.i = icmp ult i32 %retval.0.i6.i.i, %retval.0.i18.i.i
  %add.i.i = add i32 %retval.0.i18.i.i, %retval.0.i12.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i6.i.i, i32 %add.i.i)
  %cmp65.i.i = icmp ugt i32 %retval.0.i6.i.i, %add.i.i
  %or.cond.i.i = select i1 %cmp64.i.i, i1 true, i1 %cmp65.i.i
  br i1 %or.cond.i.i, label %do.end69.i.i, label %if.end74.i.i

do.end69.i.i:                                     ; preds = %rr_read_eeprom_word.exit19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call73.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126, ptr noundef %dev) #12
  br label %do.body125.i.i

if.end74.i.i:                                     ; preds = %rr_read_eeprom_word.exit19.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i20.i.i) #9
  %79 = ptrtoint ptr %word.i20.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %word.i20.i.i, align 4, !annotation !377
  %call.i21.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 64, ptr noundef nonnull %word.i20.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i21.i.i)
  %cmp.i22.i.i = icmp eq i32 %call.i21.i.i, 4
  br i1 %cmp.i22.i.i, label %rr_read_eeprom_word.exit25.i.i, label %rr_read_eeprom_word.exit25.thread.i.i

rr_read_eeprom_word.exit25.thread.i.i:            ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i20.i.i) #9
  br label %do.end80.i.i

rr_read_eeprom_word.exit25.i.i:                   ; preds = %if.end74.i.i
  %80 = ptrtoint ptr %word.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %word.i20.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i20.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %81)
  %cmp76.not.i.i = icmp eq i32 %81, 1
  br i1 %cmp76.not.i.i, label %if.end85.i.i, label %rr_read_eeprom_word.exit25.i.i.do.end80.i.i_crit_edge

rr_read_eeprom_word.exit25.i.i.do.end80.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit25.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80.i.i

do.end80.i.i:                                     ; preds = %rr_read_eeprom_word.exit25.i.i.do.end80.i.i_crit_edge, %rr_read_eeprom_word.exit25.thread.i.i
  %retval.0.i2458.i.i = phi i32 [ 0, %rr_read_eeprom_word.exit25.thread.i.i ], [ %81, %rr_read_eeprom_word.exit25.i.i.do.end80.i.i_crit_edge ]
  %call84.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef %dev, i32 noundef %retval.0.i2458.i.i) #12
  br label %do.body125.i.i

if.end85.i.i:                                     ; preds = %rr_read_eeprom_word.exit25.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i26.i.i) #9
  %82 = ptrtoint ptr %word.i26.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %word.i26.i.i, align 4, !annotation !377
  %call.i27.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef %retval.0.i6.i.i, ptr noundef nonnull %word.i26.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i27.i.i)
  %cmp.i28.i.i = icmp eq i32 %call.i27.i.i, 4
  br i1 %cmp.i28.i.i, label %rr_read_eeprom_word.exit31.i.i, label %rr_read_eeprom_word.exit31.thread.i.i

rr_read_eeprom_word.exit31.thread.i.i:            ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i26.i.i) #9
  br label %do.body125.i.i

rr_read_eeprom_word.exit31.i.i:                   ; preds = %if.end85.i.i
  %83 = ptrtoint ptr %word.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %word.i26.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i26.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp8969.not.i.i = icmp eq i32 %84, 0
  br i1 %cmp8969.not.i.i, label %rr_read_eeprom_word.exit31.i.i.do.body125.i.i_crit_edge, label %for.body90.lr.ph.i.i

rr_read_eeprom_word.exit31.i.i.do.body125.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125.i.i

for.body90.lr.ph.i.i:                             ; preds = %rr_read_eeprom_word.exit31.i.i
  %WinBase106.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 11
  %WinData113.i.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 12
  br label %for.body90.i.i

for.body90.i.i:                                   ; preds = %for.inc122.i.i.for.body90.i.i_crit_edge, %for.body90.lr.ph.i.i
  %eptr.0.in71.i.i = phi i32 [ %retval.0.i6.i.i, %for.body90.lr.ph.i.i ], [ %add94.i.i, %for.inc122.i.i.for.body90.i.i_crit_edge ]
  %i.170.i.i = phi i32 [ 0, %for.body90.lr.ph.i.i ], [ %inc123.i.i, %for.inc122.i.i.for.body90.i.i_crit_edge ]
  %eptr.0.i.i = add i32 %eptr.0.in71.i.i, 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i32.i.i) #9
  %85 = ptrtoint ptr %word.i32.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %word.i32.i.i, align 4, !annotation !377
  %call.i33.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef %eptr.0.i.i, ptr noundef nonnull %word.i32.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i33.i.i)
  %cmp.i34.i.i = icmp eq i32 %call.i33.i.i, 4
  br i1 %cmp.i34.i.i, label %if.then.i35.i.i, label %for.body90.i.i.rr_read_eeprom_word.exit37.i.i_crit_edge

for.body90.i.i.rr_read_eeprom_word.exit37.i.i_crit_edge: ; preds = %for.body90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit37.i.i

if.then.i35.i.i:                                  ; preds = %for.body90.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %word.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %word.i32.i.i, align 4
  br label %rr_read_eeprom_word.exit37.i.i

rr_read_eeprom_word.exit37.i.i:                   ; preds = %if.then.i35.i.i, %for.body90.i.i.rr_read_eeprom_word.exit37.i.i_crit_edge
  %retval.0.i36.i.i = phi i32 [ %87, %if.then.i35.i.i ], [ 0, %for.body90.i.i.rr_read_eeprom_word.exit37.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i32.i.i) #9
  %add92.i.i = add i32 %eptr.0.in71.i.i, 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i38.i.i) #9
  %88 = ptrtoint ptr %word.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %word.i38.i.i, align 4, !annotation !377
  %call.i39.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef %add92.i.i, ptr noundef nonnull %word.i38.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i39.i.i)
  %cmp.i40.i.i = icmp eq i32 %call.i39.i.i, 4
  br i1 %cmp.i40.i.i, label %if.then.i41.i.i, label %rr_read_eeprom_word.exit37.i.i.rr_read_eeprom_word.exit43.i.i_crit_edge

rr_read_eeprom_word.exit37.i.i.rr_read_eeprom_word.exit43.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit43.i.i

if.then.i41.i.i:                                  ; preds = %rr_read_eeprom_word.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %word.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %word.i38.i.i, align 4
  br label %rr_read_eeprom_word.exit43.i.i

rr_read_eeprom_word.exit43.i.i:                   ; preds = %if.then.i41.i.i, %rr_read_eeprom_word.exit37.i.i.rr_read_eeprom_word.exit43.i.i_crit_edge
  %retval.0.i42.i.i = phi i32 [ %90, %if.then.i41.i.i ], [ 0, %rr_read_eeprom_word.exit37.i.i.rr_read_eeprom_word.exit43.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i38.i.i) #9
  %add94.i.i = add i32 %eptr.0.in71.i.i, 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i44.i.i) #9
  %91 = ptrtoint ptr %word.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %word.i44.i.i, align 4, !annotation !377
  %call.i45.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef %add94.i.i, ptr noundef nonnull %word.i44.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i45.i.i)
  %cmp.i46.i.i = icmp eq i32 %call.i45.i.i, 4
  br i1 %cmp.i46.i.i, label %if.then.i47.i.i, label %rr_read_eeprom_word.exit43.i.i.rr_read_eeprom_word.exit49.i.i_crit_edge

rr_read_eeprom_word.exit43.i.i.rr_read_eeprom_word.exit49.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit49.i.i

if.then.i47.i.i:                                  ; preds = %rr_read_eeprom_word.exit43.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %word.i44.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %word.i44.i.i, align 4
  br label %rr_read_eeprom_word.exit49.i.i

rr_read_eeprom_word.exit49.i.i:                   ; preds = %if.then.i47.i.i, %rr_read_eeprom_word.exit43.i.i.rr_read_eeprom_word.exit49.i.i_crit_edge
  %retval.0.i48.i.i = phi i32 [ %93, %if.then.i47.i.i ], [ 0, %rr_read_eeprom_word.exit43.i.i.rr_read_eeprom_word.exit49.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i44.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i42.i.i)
  %cmp10065.not.i.i = icmp eq i32 %retval.0.i42.i.i, 0
  br i1 %cmp10065.not.i.i, label %rr_read_eeprom_word.exit49.i.i.for.inc122.i.i_crit_edge, label %for.body101.preheader.i.i

rr_read_eeprom_word.exit49.i.i.for.inc122.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit49.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc122.i.i

for.body101.preheader.i.i:                        ; preds = %rr_read_eeprom_word.exit49.i.i
  %and96.i.i = lshr i32 %retval.0.i48.i.i, 3
  %shr97.i.i = and i32 %and96.i.i, 262143
  br label %for.body101.i.i

for.body101.i.i:                                  ; preds = %rr_read_eeprom_word.exit55.i.i.for.body101.i.i_crit_edge, %for.body101.preheader.i.i
  %segptr.068.i.i = phi i32 [ %add117.i.i, %rr_read_eeprom_word.exit55.i.i.for.body101.i.i_crit_edge ], [ %shr97.i.i, %for.body101.preheader.i.i ]
  %j.067.i.i = phi i32 [ %inc120.i.i, %rr_read_eeprom_word.exit55.i.i.for.body101.i.i_crit_edge ], [ 0, %for.body101.preheader.i.i ]
  %sptr.066.i.i = phi i32 [ %add118.i.i, %rr_read_eeprom_word.exit55.i.i.for.body101.i.i_crit_edge ], [ %retval.0.i36.i.i, %for.body101.preheader.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i50.i.i) #9
  %94 = ptrtoint ptr %word.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %word.i50.i.i, align 4, !annotation !377
  %call.i51.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef %segptr.068.i.i, ptr noundef nonnull %word.i50.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i51.i.i)
  %cmp.i52.i.i = icmp eq i32 %call.i51.i.i, 4
  br i1 %cmp.i52.i.i, label %if.then.i53.i.i, label %for.body101.i.i.rr_read_eeprom_word.exit55.i.i_crit_edge

for.body101.i.i.rr_read_eeprom_word.exit55.i.i_crit_edge: ; preds = %for.body101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_read_eeprom_word.exit55.i.i

if.then.i53.i.i:                                  ; preds = %for.body101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %95 = ptrtoint ptr %word.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %word.i50.i.i, align 4
  br label %rr_read_eeprom_word.exit55.i.i

rr_read_eeprom_word.exit55.i.i:                   ; preds = %if.then.i53.i.i, %for.body101.i.i.rr_read_eeprom_word.exit55.i.i_crit_edge
  %retval.0.i54.i.i = phi i32 [ %96, %if.then.i53.i.i ], [ 0, %for.body101.i.i.rr_read_eeprom_word.exit55.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i50.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !482
  tail call void @arm_heavy_mb() #9
  %97 = tail call i32 @llvm.bswap.i32(i32 %sptr.066.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinBase106.i.i, i32 %97) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !483
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !484
  tail call void @arm_heavy_mb() #9
  %98 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i54.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinData113.i.i, i32 %98) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !485
  tail call void @arm_heavy_mb() #9
  %add117.i.i = add i32 %segptr.068.i.i, 4
  %add118.i.i = add i32 %sptr.066.i.i, 4
  %inc120.i.i = add nuw i32 %j.067.i.i, 1
  %exitcond72.not.i.i = icmp eq i32 %inc120.i.i, %retval.0.i42.i.i
  br i1 %exitcond72.not.i.i, label %rr_read_eeprom_word.exit55.i.i.for.inc122.i.i_crit_edge, label %rr_read_eeprom_word.exit55.i.i.for.body101.i.i_crit_edge

rr_read_eeprom_word.exit55.i.i.for.body101.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body101.i.i

rr_read_eeprom_word.exit55.i.i.for.inc122.i.i_crit_edge: ; preds = %rr_read_eeprom_word.exit55.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc122.i.i

for.inc122.i.i:                                   ; preds = %rr_read_eeprom_word.exit55.i.i.for.inc122.i.i_crit_edge, %rr_read_eeprom_word.exit49.i.i.for.inc122.i.i_crit_edge
  %inc123.i.i = add nuw i32 %i.170.i.i, 1
  %exitcond73.not.i.i = icmp eq i32 %inc123.i.i, %84
  br i1 %exitcond73.not.i.i, label %for.inc122.i.i.do.body125.i.i_crit_edge, label %for.inc122.i.i.for.body90.i.i_crit_edge

for.inc122.i.i.for.body90.i.i_crit_edge:          ; preds = %for.inc122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body90.i.i

for.inc122.i.i.do.body125.i.i_crit_edge:          ; preds = %for.inc122.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body125.i.i

do.body125.i.i:                                   ; preds = %for.inc122.i.i.do.body125.i.i_crit_edge, %rr_read_eeprom_word.exit31.i.i.do.body125.i.i_crit_edge, %rr_read_eeprom_word.exit31.thread.i.i, %do.end80.i.i, %do.end69.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !486
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl.i.i, i32 %64) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !487
  tail call void @arm_heavy_mb() #9
  br label %rr_load_firmware.exit.i

rr_load_firmware.exit.i:                          ; preds = %do.body125.i.i, %do.end.i.i, %for.end63.rr_load_firmware.exit.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !488
  tail call void @arm_heavy_mb() #9
  %TX_state.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TX_state.i, i32 1) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !489
  tail call void @arm_heavy_mb() #9
  %RX_state.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RX_state.i, i32 33023) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !490
  tail call void @arm_heavy_mb() #9
  %AssistState.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %AssistState.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !491
  tail call void @arm_heavy_mb() #9
  %LocalCtrl.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl.i, i32 33554432) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !492
  tail call void @arm_heavy_mb() #9
  %BrkPt.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %BrkPt.i, i32 16777216) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !493
  tail call void @arm_heavy_mb() #9
  %Timer.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Timer.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !494
  tail call void @arm_heavy_mb() #9
  %TimerRef.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TimerRef.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !495
  tail call void @arm_heavy_mb() #9
  %DmaReadState.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaReadState.i, i32 16777216) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !496
  tail call void @arm_heavy_mb() #9
  %DmaWriteState.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaWriteState.i, i32 16777216) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !497
  tail call void @arm_heavy_mb() #9
  %DmaWriteHostHi.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaWriteHostHi.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !498
  tail call void @arm_heavy_mb() #9
  %DmaWriteHostLo.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaWriteHostLo.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !499
  tail call void @arm_heavy_mb() #9
  %DmaReadHostHi.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaReadHostHi.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !500
  tail call void @arm_heavy_mb() #9
  %DmaReadHostLo.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaReadHostLo.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !501
  tail call void @arm_heavy_mb() #9
  %DmaReadLen.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaReadLen.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !502
  tail call void @arm_heavy_mb() #9
  %DmaWriteLen.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaWriteLen.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !503
  tail call void @arm_heavy_mb() #9
  %DmaWriteLcl.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaWriteLcl.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !504
  tail call void @arm_heavy_mb() #9
  %DmaWriteIPchecksum.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaWriteIPchecksum.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !505
  tail call void @arm_heavy_mb() #9
  %DmaReadLcl.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaReadLcl.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !506
  tail call void @arm_heavy_mb() #9
  %DmaReadIPchecksum.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %DmaReadIPchecksum.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !507
  tail call void @arm_heavy_mb() #9
  %PciState.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PciState.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !508
  tail call void @arm_heavy_mb() #9
  %Mode.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Mode.i, i32 65536) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !509
  tail call void @arm_heavy_mb() #9
  %MbEvent.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MbEvent.i, i32 -1) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !510
  tail call void @arm_heavy_mb() #9
  %Event.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Event.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !511
  tail call void @arm_heavy_mb() #9
  %TxPi.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxPi.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !512
  tail call void @arm_heavy_mb() #9
  %IpRxPi.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IpRxPi.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !513
  tail call void @arm_heavy_mb() #9
  %EvtCon.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtCon.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !514
  tail call void @arm_heavy_mb() #9
  %EvtPrd.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %EvtPrd.i, i32 0) #9, !srcloc !381
  %99 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %info, align 4
  %pi.i = getelementptr inbounds %struct.rr_info, ptr %100, i32 0, i32 1, i32 5
  %101 = ptrtoint ptr %pi.i to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 0, ptr %pi.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 0
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.1.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.1.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.2.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.2.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.3.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.3.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.4.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.4.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.5.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.5.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.6.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.6.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.7.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.7.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.8.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.8.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.9.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.9.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.10.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.10.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.11.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.11.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.12.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.12.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.13.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.13.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.14.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.14.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !515
  tail call void @arm_heavy_mb() #9
  %arrayidx.15.i = getelementptr %struct.rr_regs, ptr %59, i32 0, i32 69, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.15.i, i32 0) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !516
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %PciState.i, i32 -1879048192) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !517
  tail call void @arm_heavy_mb() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i.i) #9
  %102 = ptrtoint ptr %word.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %word.i.i, align 4, !annotation !377
  %call.i.i = call fastcc i32 @rr_read_eeprom(ptr noundef %add.ptr.i, i32 noundef 320, ptr noundef nonnull %word.i.i, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %rr_load_firmware.exit.i.rr_reset.exit_crit_edge

rr_load_firmware.exit.i.rr_reset.exit_crit_edge:  ; preds = %rr_load_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_reset.exit

if.then.i.i:                                      ; preds = %rr_load_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %word.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %word.i.i, align 4
  br label %rr_reset.exit

rr_reset.exit:                                    ; preds = %if.then.i.i, %rr_load_firmware.exit.i.rr_reset.exit_crit_edge
  %retval.0.i.i = phi i32 [ %104, %if.then.i.i ], [ 0, %rr_load_firmware.exit.i.rr_reset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !518
  tail call void @arm_heavy_mb() #9
  %add.i = add i32 %retval.0.i.i, 2048
  %105 = tail call i32 @llvm.bswap.i32(i32 %add.i) #9
  %Pc.i = getelementptr inbounds %struct.rr_regs, ptr %59, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Pc.i, i32 %105) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !519
  tail call void @arm_heavy_mb() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 1073740) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !520
  tail call void @arm_heavy_mb() #9
  %107 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %Pc.i, i32 %107) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !521
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !522
  tail call void @arm_heavy_mb() #9
  %ConRetry = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ConRetry, i32 5242880) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !523
  tail call void @arm_heavy_mb() #9
  %ConRetryTmr = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ConRetryTmr, i32 65536) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !524
  tail call void @arm_heavy_mb() #9
  %ConTmout = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ConTmout, i32 20480) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !525
  tail call void @arm_heavy_mb() #9
  %IntrTmr = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IntrTmr, i32 1610612736) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !526
  tail call void @arm_heavy_mb() #9
  %TxDataMvTimeout = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %TxDataMvTimeout, i32 20480) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !527
  tail call void @arm_heavy_mb() #9
  %RxDataMvTimeout = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RxDataMvTimeout, i32 8192) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !528
  tail call void @arm_heavy_mb() #9
  %WriteDmaThresh = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WriteDmaThresh, i32 -2147483648) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !529
  tail call void @arm_heavy_mb() #9
  %ReadDmaThresh = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ReadDmaThresh, i32 -2147483648) #9, !srcloc !381
  %fw_running = getelementptr i8, ptr %dev, i32 2724
  %108 = ptrtoint ptr %fw_running to i32
  call void @__asan_store2_noabort(i32 %108)
  store volatile i16 0, ptr %fw_running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !530
  tail call void @arm_heavy_mb() #9
  %and106 = and i32 %3, -3089
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !531
  tail call void @arm_heavy_mb() #9
  %109 = tail call i32 @llvm.bswap.i32(i32 %and106)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 %109) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !532
  tail call void @arm_heavy_mb() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %pci_dev = getelementptr i8, ptr %dev, i32 2728
  br label %for.body119

for.body119:                                      ; preds = %for.inc164.for.body119_crit_edge, %rr_reset.exit
  %indvars.iv368 = phi i32 [ 0, %rr_reset.exit ], [ %indvars.iv.next369, %for.inc164.for.body119_crit_edge ]
  %110 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr.i, align 4
  %mode123 = getelementptr %struct.rx_desc, ptr %111, i32 %indvars.iv368, i32 2
  %112 = ptrtoint ptr %mode123 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %mode123, align 4
  %113 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mtu, align 4
  %add = add i32 %114, 40
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #9
  %tobool125.not = icmp eq ptr %call.i, null
  br i1 %tobool125.not, label %cleanup, label %if.end134

if.end134:                                        ; preds = %for.body119
  %arrayidx136 = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 6, i32 %indvars.iv368
  %115 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call.i, ptr %arrayidx136, align 4
  %116 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %pci_dev, align 4
  %dev137 = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %118 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data, align 4
  %120 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mtu, align 4
  %call.i342 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %119) #9
  br i1 %call.i342, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end134
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.for.inc164_crit_edge, label %if.then.i, !prof !409

land.rhs.i.for.inc164_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc164

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev137) #9
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 44, i32 3
  %122 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i343 = icmp eq ptr %123, null
  br i1 %tobool.not.i.i343, label %if.end.i.i344, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i344:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev137, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i344, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i345 = phi ptr [ %125, %if.end.i.i344 ], [ %123, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.113, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.114, ptr noundef %call16.i, ptr noundef %retval.0.i.i345) #9
  br label %for.inc164

if.end39.i:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #11
  %add139 = add i32 %121, 40
  tail call void @debug_dma_map_single(ptr noundef %dev137, ptr noundef %119, i32 noundef %add139) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %126 = load ptr, ptr @mem_map, align 4
  %127 = ptrtoint ptr %119 to i32
  %sub.i = add i32 %127, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i346 = getelementptr %struct.page, ptr %126, i32 %shr.i
  %and.i = and i32 %127, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev137, ptr noundef %add.ptr.i346, i32 noundef %and.i, i32 noundef %add139, i32 noundef 2, i32 noundef 0) #9
  br label %for.inc164

cleanup:                                          ; preds = %for.body119
  call void @__sanitizer_cov_trace_pc() #11
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %dev) #12
  br label %error

for.inc164:                                       ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.for.inc164_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.for.inc164_crit_edge ]
  %128 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %add.ptr.i, align 4
  %addrlo.i347 = getelementptr %struct.rx_desc, ptr %129, i32 %indvars.iv368, i32 0, i32 1
  %130 = ptrtoint ptr %addrlo.i347 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %retval.0.i, ptr %addrlo.i347, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  %131 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mtu, align 4
  %133 = trunc i32 %132 to i16
  %conv158 = add i16 %133, 40
  %134 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %add.ptr.i, align 4
  %size162 = getelementptr %struct.rx_desc, ptr %135, i32 %indvars.iv368, i32 4
  %136 = ptrtoint ptr %size162 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv158, ptr %size162, align 2
  %indvars.iv.next369 = add nuw nsw i32 %indvars.iv368, 1
  %exitcond370.not = icmp eq i32 %indvars.iv.next369, 32
  br i1 %exitcond370.not, label %for.end166, label %for.inc164.for.body119_crit_edge

for.inc164.for.body119_crit_edge:                 ; preds = %for.inc164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body119

for.end166:                                       ; preds = %for.inc164
  %rx_ctrl = getelementptr i8, ptr %dev, i32 2588
  %137 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rx_ctrl, align 4
  %entry_size168 = getelementptr %struct.ring_ctrl, ptr %138, i32 4, i32 1
  %139 = ptrtoint ptr %entry_size168 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 16, ptr %entry_size168, align 4
  %140 = load ptr, ptr %rx_ctrl, align 4
  %entries171 = getelementptr %struct.ring_ctrl, ptr %140, i32 4, i32 3
  %141 = ptrtoint ptr %entries171 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 32, ptr %entries171, align 2
  %142 = load ptr, ptr %rx_ctrl, align 4
  %mode174 = getelementptr %struct.ring_ctrl, ptr %142, i32 4, i32 4
  %143 = ptrtoint ptr %mode174 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 8, ptr %mode174, align 4
  %144 = load ptr, ptr %rx_ctrl, align 4
  %pi177 = getelementptr %struct.ring_ctrl, ptr %144, i32 4, i32 5
  %145 = ptrtoint ptr %pi177 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 0, ptr %pi177, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !533
  tail call void @arm_heavy_mb() #9
  %146 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rx_ctrl, align 4
  %rx_ring_dma = getelementptr i8, ptr %dev, i32 2320
  %148 = ptrtoint ptr %rx_ring_dma to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rx_ring_dma, align 4
  %addrlo.i348 = getelementptr %struct.ring_ctrl, ptr %147, i32 4, i32 0, i32 1
  %150 = ptrtoint ptr %addrlo.i348 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %addrlo.i348, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #9
  %152 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs1, align 4
  %HostCtrl.i = getelementptr inbounds %struct.rr_regs, ptr %153, i32 0, i32 1
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !534
  %155 = and i32 %154, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.not.i = icmp eq i32 %155, 0
  br i1 %tobool.not.i, label %for.end166.if.end34.i_crit_edge, label %do.end.i

for.end166.if.end34.i_crit_edge:                  ; preds = %for.end166
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

do.end.i:                                         ; preds = %for.end166
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl.i) #9, !srcloc !379
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !535
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, i32 noundef 1, i32 noundef %157) #12
  %Mode.i350 = getelementptr inbounds %struct.rr_regs, ptr %153, i32 0, i32 76
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Mode.i350) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !536
  %159 = and i32 %158, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool17.not.i = icmp eq i32 %159, 0
  br i1 %tobool17.not.i, label %do.end.i.if.end34.i_crit_edge, label %do.end21.i

do.end.i.if.end34.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

do.end21.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %Fail1.i = getelementptr inbounds %struct.rr_regs, ptr %153, i32 0, i32 87
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Fail1.i) #9, !srcloc !379
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !537
  %Fail2.i = getelementptr inbounds %struct.rr_regs, ptr %153, i32 0, i32 88
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Fail2.i) #9, !srcloc !379
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !538
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.134, i32 noundef %161, i32 noundef %163) #12
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end21.i, %do.end.i.if.end34.i_crit_edge, %for.end166.if.end34.i_crit_edge
  %164 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %info, align 4
  %pi.i352 = getelementptr inbounds %struct.rr_info, ptr %165, i32 0, i32 2, i32 5
  %166 = ptrtoint ptr %pi.i352 to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %pi.i352, align 2
  %conv35.i = zext i16 %167 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !539
  tail call void @arm_heavy_mb() #9
  %arrayidx.i353 = getelementptr %struct.rr_regs, ptr %153, i32 0, i32 69, i32 %conv35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx.i353, i32 1) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !540
  tail call void @arm_heavy_mb() #9
  %sub.i354 = add i16 %167, 15
  %rem.i = and i16 %sub.i354, 15
  %168 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %info, align 4
  %pi45.i = getelementptr inbounds %struct.rr_info, ptr %169, i32 0, i32 2, i32 5
  %170 = ptrtoint ptr %pi45.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %rem.i, ptr %pi45.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !541
  tail call void @arm_heavy_mb() #9
  %Mode51.i = getelementptr inbounds %struct.rr_regs, ptr %153, i32 0, i32 76
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Mode51.i) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !542
  %172 = and i32 %171, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool56.not.i = icmp eq i32 %172, 0
  br i1 %tobool56.not.i, label %if.end34.i.rr_issue_cmd.exit_crit_edge, label %do.end60.i

if.end34.i.rr_issue_cmd.exit_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rr_issue_cmd.exit

do.end60.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  %Fail164.i = getelementptr inbounds %struct.rr_regs, ptr %153, i32 0, i32 87
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %Fail164.i) #9, !srcloc !379
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !543
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %174) #12
  br label %rr_issue_cmd.exit

rr_issue_cmd.exit:                                ; preds = %do.end60.i, %if.end34.i.rr_issue_cmd.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %175 = load volatile i32, ptr @jiffies, align 128
  %add184.neg = sub i32 -500, %175
  %176 = load volatile i32, ptr @jiffies, align 128
  %sub364 = add i32 %add184.neg, %176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub364)
  %cmp185365 = icmp slt i32 %sub364, 0
  br i1 %cmp185365, label %rr_issue_cmd.exit.land.rhs_crit_edge, label %rr_issue_cmd.exit.while.end_crit_edge

rr_issue_cmd.exit.while.end_crit_edge:            ; preds = %rr_issue_cmd.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

rr_issue_cmd.exit.land.rhs_crit_edge:             ; preds = %rr_issue_cmd.exit
  br label %land.rhs

land.rhs:                                         ; preds = %do.end193.land.rhs_crit_edge, %rr_issue_cmd.exit.land.rhs_crit_edge
  %177 = ptrtoint ptr %fw_running to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load volatile i16, ptr %fw_running, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %178)
  %tobool188.not = icmp eq i16 %178, 0
  br i1 %tobool188.not, label %do.end193, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end193:                                        ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !544
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !545
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %179 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add184.neg, %179
  %cmp185 = icmp slt i32 %sub, 0
  br i1 %cmp185, label %do.end193.land.rhs_crit_edge, label %do.end193.while.end_crit_edge

do.end193.while.end_crit_edge:                    ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end193.land.rhs_crit_edge:                     ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %do.end193.while.end_crit_edge, %land.rhs.while.end_crit_edge, %rr_issue_cmd.exit.while.end_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %180 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %181, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  br label %cleanup232

error:                                            ; preds = %cleanup, %do.end20
  %ecode.2 = phi i32 [ -14, %do.end20 ], [ -12, %cleanup ]
  %pci_dev209 = getelementptr i8, ptr %dev, i32 2728
  %mtu215 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  br label %for.body202

for.body202:                                      ; preds = %if.end228.for.body202_crit_edge, %error
  %indvars.iv371 = phi i32 [ 0, %error ], [ %indvars.iv.next372, %if.end228.for.body202_crit_edge ]
  %arrayidx206 = getelementptr %struct.rr_private, ptr %add.ptr.i, i32 0, i32 6, i32 %indvars.iv371
  %182 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx206, align 4
  %tobool207.not = icmp eq ptr %183, null
  br i1 %tobool207.not, label %for.body202.if.end228_crit_edge, label %if.then208

for.body202.if.end228_crit_edge:                  ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end228

if.then208:                                       ; preds = %for.body202
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %pci_dev209 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pci_dev209, align 4
  %dev210 = getelementptr inbounds %struct.pci_dev, ptr %185, i32 0, i32 44
  %186 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %add.ptr.i, align 4
  %addrlo = getelementptr %struct.rx_desc, ptr %187, i32 %indvars.iv371, i32 0, i32 1
  %188 = ptrtoint ptr %addrlo to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %addrlo, align 4
  %190 = ptrtoint ptr %mtu215 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %mtu215, align 4
  %add216 = add i32 %191, 40
  tail call void @dma_unmap_page_attrs(ptr noundef %dev210, i32 noundef %189, i32 noundef %add216, i32 noundef 2, i32 noundef 0) #9
  %192 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %add.ptr.i, align 4
  %size220 = getelementptr %struct.rx_desc, ptr %193, i32 %indvars.iv371, i32 4
  %194 = ptrtoint ptr %size220 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %size220, align 2
  %195 = load ptr, ptr %add.ptr.i, align 4
  %addrlo.i355 = getelementptr %struct.rx_desc, ptr %195, i32 %indvars.iv371, i32 0, i32 1
  %196 = ptrtoint ptr %addrlo.i355 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %addrlo.i355, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  tail call void @consume_skb(ptr noundef nonnull %183) #9
  %197 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr null, ptr %arrayidx206, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then208, %for.body202.if.end228_crit_edge
  %indvars.iv.next372 = add nuw nsw i32 %indvars.iv371, 1
  %exitcond373.not = icmp eq i32 %indvars.iv.next372, 32
  br i1 %exitcond373.not, label %if.end228.cleanup232_crit_edge, label %if.end228.for.body202_crit_edge

if.end228.for.body202_crit_edge:                  ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body202

if.end228.cleanup232_crit_edge:                   ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup232

cleanup232:                                       ; preds = %if.end228.cleanup232_crit_edge, %while.end
  %retval.0 = phi i32 [ 0, %while.end ], [ %ecode.2, %if.end228.cleanup232_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rr_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev = getelementptr i8, ptr %t, i32 80
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regs1 = getelementptr i8, ptr %t, i32 -64
  %4 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs1, align 4
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %5, i32 0, i32 1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !546
  %7 = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end34_crit_edge, label %do.end

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %t, i32 -344
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %3) #12
  %rx_ctrl = getelementptr i8, ptr %t, i32 -60
  %8 = ptrtoint ptr %rx_ctrl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_ctrl, align 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 4096)
  %info = getelementptr i8, ptr %t, i32 -56
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %13 = call ptr @memset(ptr %12, i32 0, i32 4096)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !547
  tail call void @arm_heavy_mb() #9
  %tx_ring.i = getelementptr i8, ptr %t, i32 -340
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %do.end
  %i.01.i = phi i32 [ 0, %do.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rr_private, ptr %add.ptr, i32 0, i32 7, i32 %i.01.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_ring.i, align 4
  %18 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pci_dev, align 4
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %addrlo.i = getelementptr %struct.tx_desc, ptr %17, i32 %i.01.i, i32 0, i32 1
  %20 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %addrlo.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i, i32 noundef %21, i32 noundef %23, i32 noundef 1, i32 noundef 0) #9
  %size.i = getelementptr %struct.tx_desc, ptr %17, i32 %i.01.i, i32 4
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %size.i, align 2
  %25 = ptrtoint ptr %addrlo.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %addrlo.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  tail call void @consume_skb(ptr noundef nonnull %15) #9
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %rr_raz_tx.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

rr_raz_tx.exit:                                   ; preds = %if.end.i
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 20
  br label %for.body.i53

for.body.i53:                                     ; preds = %if.end.i60.for.body.i53_crit_edge, %rr_raz_tx.exit
  %i.016.i = phi i32 [ 0, %rr_raz_tx.exit ], [ %inc.i58, %if.end.i60.for.body.i53_crit_edge ]
  %arrayidx.i51 = getelementptr %struct.rr_private, ptr %add.ptr, i32 0, i32 6, i32 %i.016.i
  %27 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i51, align 4
  %tobool.not.i52 = icmp eq ptr %28, null
  br i1 %tobool.not.i52, label %for.body.i53.if.end.i60_crit_edge, label %if.then.i57

for.body.i53.if.end.i60_crit_edge:                ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i60

if.then.i57:                                      ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 4
  %31 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pci_dev, align 4
  %dev2.i54 = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  %addrlo.i55 = getelementptr %struct.rx_desc, ptr %30, i32 %i.016.i, i32 0, i32 1
  %33 = ptrtoint ptr %addrlo.i55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %addrlo.i55, align 4
  %35 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mtu.i, align 4
  %add.i = add i32 %36, 40
  tail call void @dma_unmap_page_attrs(ptr noundef %dev2.i54, i32 noundef %34, i32 noundef %add.i, i32 noundef 2, i32 noundef 0) #9
  %size.i56 = getelementptr %struct.rx_desc, ptr %30, i32 %i.016.i, i32 4
  %37 = ptrtoint ptr %size.i56 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %size.i56, align 2
  %38 = ptrtoint ptr %addrlo.i55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %addrlo.i55, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !405
  tail call void @arm_heavy_mb() #9
  tail call void @consume_skb(ptr noundef nonnull %28) #9
  %39 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i51, align 4
  br label %if.end.i60

if.end.i60:                                       ; preds = %if.then.i57, %for.body.i53.if.end.i60_crit_edge
  %inc.i58 = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i59 = icmp eq i32 %inc.i58, 32
  br i1 %exitcond.not.i59, label %rr_raz_rx.exit, label %if.end.i60.for.body.i53_crit_edge

if.end.i60.for.body.i53_crit_edge:                ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i53

rr_raz_rx.exit:                                   ; preds = %if.end.i60
  %call10 = tail call fastcc i32 @rr_init1(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %rr_raz_rx.exit.if.end34_crit_edge, label %do.body14

rr_raz_rx.exit.if.end34_crit_edge:                ; preds = %rr_raz_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body14:                                        ; preds = %rr_raz_rx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr i8, ptr %t, i32 -44
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !548
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !549
  %41 = or i32 %40, 301989888
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 %41) #9, !srcloc !381
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #9
  br label %if.end34

if.end34:                                         ; preds = %do.body14, %rr_raz_rx.exit.if.end34_crit_edge, %entry.if.end34_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %42, 500
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %43 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @hippi_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rr_read_eeprom(ptr nocapture noundef readonly %rrpriv, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.rr_private, ptr %rrpriv, i32 0, i32 8
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %ExtIo = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ExtIo) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !550
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !551
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ExtIo, i32 0) #9, !srcloc !381
  %LocalCtrl = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !553
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 0) #9, !srcloc !381
  %HostCtrl = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %HostCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !555
  tail call void @arm_heavy_mb() #9
  %5 = or i32 %4, 268435456
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 %5) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !556
  tail call void @arm_heavy_mb() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp70.not = icmp eq i32 %length, 0
  br i1 %cmp70.not, label %entry.do.body40_crit_edge, label %do.body25.lr.ph

entry.do.body40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

do.body25.lr.ph:                                  ; preds = %entry
  %WinBase = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 11
  %WinData = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 12
  br label %do.body25

do.body25:                                        ; preds = %do.body25.do.body25_crit_edge, %do.body25.lr.ph
  %i.071 = phi i32 [ 0, %do.body25.lr.ph ], [ %inc, %do.body25.do.body25_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !557
  tail call void @arm_heavy_mb() #9
  %add = add i32 %i.071, %offset
  %shl = shl i32 %add, 3
  %add28 = xor i32 %shl, -2147483648
  %6 = tail call i32 @llvm.bswap.i32(i32 %add28)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinBase, i32 %6) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !558
  tail call void @arm_heavy_mb() #9
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WinData) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !559
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.071
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !560
  tail call void @arm_heavy_mb() #9
  %inc = add nuw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, %length
  br i1 %exitcond.not, label %do.body25.do.body40_crit_edge, label %do.body25.do.body25_crit_edge

do.body25.do.body25_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

do.body25.do.body40_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

do.body40:                                        ; preds = %do.body25.do.body40_crit_edge, %entry.do.body40_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !561
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %HostCtrl, i32 %4) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !562
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %3) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !563
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ExtIo, i32 %2) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !564
  tail call void @arm_heavy_mb() #9
  ret i32 %length
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_eeprom(ptr nocapture noundef readonly %rrpriv, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs1 = getelementptr inbounds %struct.rr_private, ptr %rrpriv, i32 0, i32 8
  %0 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs1, align 4
  %ExtIo = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ExtIo) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !565
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !566
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ExtIo, i32 0) #9, !srcloc !381
  %LocalCtrl = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 2
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %LocalCtrl) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !567
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !568
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 1048576) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !569
  tail call void @arm_heavy_mb() #9
  %WinBase = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 11
  %WinData = getelementptr inbounds %struct.rr_regs, ptr %1, i32 0, i32 12
  br label %do.body16

do.body16:                                        ; preds = %for.inc.do.body16_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc67, %for.inc.do.body16_crit_edge ]
  %error.04 = phi i32 [ 0, %entry ], [ %error.3, %for.inc.do.body16_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !570
  tail call void @arm_heavy_mb() #9
  %shl = shl nuw nsw i32 %i.05, 3
  %add196 = or i32 %shl, -2147483648
  %4 = tail call i32 @llvm.bswap.i32(i32 %add196)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinBase, i32 %4) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !571
  tail call void @arm_heavy_mb() #9
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.05
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %shl23 = shl nuw i32 %conv, 24
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WinData) #9, !srcloc !379
  %8 = shl i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !572
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %shl23)
  %cmp29.not = icmp eq i32 %8, %shl23
  br i1 %cmp29.not, label %do.body16.for.inc_crit_edge, label %do.body31

do.body16.for.inc_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body31:                                        ; preds = %do.body16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !573
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %WinData, i32 %conv) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !574
  tail call void @arm_heavy_mb() #9
  br label %while.body

while.body:                                       ; preds = %if.end65.while.body_crit_edge, %do.body31
  %j.03 = phi i32 [ 0, %do.body31 ], [ %inc, %if.end65.while.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 4294960) #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WinData) #9, !srcloc !379
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !575
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !576
  tail call void @arm_heavy_mb() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %j.03)
  %cmp51 = icmp ugt i32 %j.03, 5000
  br i1 %cmp51, label %if.end65.thread, label %if.end65

if.end65.thread:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %WinData) #9, !srcloc !379
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !577
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %shl23, i32 noundef %12) #12
  br label %for.inc

if.end65:                                         ; preds = %while.body
  %inc = add i32 %j.03, 1
  %13 = shl i32 %10, 24
  %cmp45.not = icmp eq i32 %13, %shl23
  br i1 %cmp45.not, label %if.end65.for.inc_crit_edge, label %if.end65.while.body_crit_edge

if.end65.while.body_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end65.for.inc_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end65.for.inc_crit_edge, %if.end65.thread, %do.body16.for.inc_crit_edge
  %error.3 = phi i32 [ %error.04, %do.body16.for.inc_crit_edge ], [ 1, %if.end65.thread ], [ %error.04, %if.end65.for.inc_crit_edge ]
  %inc67 = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc67, 32768
  br i1 %exitcond.not, label %do.body68, label %for.inc.do.body16_crit_edge

for.inc.do.body16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

do.body68:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !578
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %LocalCtrl, i32 %3) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !579
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ExtIo, i32 %2) #9, !srcloc !381
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !580
  tail call void @arm_heavy_mb() #9
  ret i32 %error.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind readnone }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !304, !306, !307, !308, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !332, !334, !336, !337, !338, !339, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366}
!llvm.named.register.sp = !{!367}
!llvm.module.flags = !{!368, !369, !370, !371, !372, !373, !374, !375}
!llvm.ident = !{!376}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/net/hippi/rrunner.c", i32 55, i32 1}
!2 = !{ptr @__UNIQUE_ID_description460, !3, !"__UNIQUE_ID_description460", i1 false, i1 false}
!3 = !{!"../drivers/net/hippi/rrunner.c", i32 56, i32 1}
!4 = !{ptr @__UNIQUE_ID_file461, !5, !"__UNIQUE_ID_file461", i1 false, i1 false}
!5 = !{!"../drivers/net/hippi/rrunner.c", i32 57, i32 1}
!6 = !{ptr @__UNIQUE_ID_license462, !5, !"__UNIQUE_ID_license462", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_rrunner__467_1684_rr_driver_init6, !8, !"__initcall__kmod_rrunner__467_1684_rr_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/hippi/rrunner.c", i32 1684, i32 1}
!9 = !{ptr @__exitcall_rr_driver_exit, !8, !"__exitcall_rr_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @rr_driver, !12, !"rr_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/hippi/rrunner.c", i32 1677, i32 26}
!13 = !{ptr @rr_pci_tbl, !14, !"rr_pci_tbl", i1 false, i1 false}
!14 = !{!"../drivers/net/hippi/rrunner.c", i32 1670, i32 35}
!15 = distinct !{null, !16, !"version_disp", i1 false, i1 false}
!16 = !{!"../drivers/net/hippi/rrunner.c", i32 89, i32 13}
!17 = !{ptr @rr_init_one.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/hippi/rrunner.c", i32 118, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/hippi/rrunner.c", i32 127, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @rr_init_one._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @rr_init_one._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/hippi/rrunner.c", i32 138, i32 2}
!27 = !{ptr @rr_init_one._entry.4, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @rr_init_one._entry_ptr.6, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/hippi/rrunner.c", i32 148, i32 3}
!31 = !{ptr @rr_init_one._entry.7, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rr_init_one._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @rr_netdev_ops, !34, !"rr_netdev_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/hippi/rrunner.c", i32 63, i32 36}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/hippi/rrunner.c", i32 1194, i32 3}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @rr_open._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @rr_open._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/hippi/rrunner.c", i32 1224, i32 3}
!42 = !{ptr @rr_open._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rr_open._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @rr_open.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/net/hippi/rrunner.c", i32 1235, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/hippi/rrunner.c", i32 739, i32 4}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @rr_handle_event._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @rr_handle_event._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/hippi/rrunner.c", i32 747, i32 4}
!54 = !{ptr @rr_handle_event._entry.18, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @rr_handle_event._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/hippi/rrunner.c", i32 750, i32 4}
!58 = !{ptr @rr_handle_event._entry.21, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rr_handle_event._entry_ptr.23, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/hippi/rrunner.c", i32 753, i32 4}
!62 = !{ptr @rr_handle_event._entry.24, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @rr_handle_event._entry_ptr.26, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/hippi/rrunner.c", i32 757, i32 4}
!66 = !{ptr @rr_handle_event._entry.27, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rr_handle_event._entry_ptr.29, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/hippi/rrunner.c", i32 761, i32 4}
!70 = !{ptr @rr_handle_event._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @rr_handle_event._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/hippi/rrunner.c", i32 768, i32 4}
!74 = !{ptr @rr_handle_event._entry.33, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rr_handle_event._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/hippi/rrunner.c", i32 778, i32 4}
!78 = !{ptr @rr_handle_event._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @rr_handle_event._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/hippi/rrunner.c", i32 783, i32 4}
!82 = !{ptr @rr_handle_event._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @rr_handle_event._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/hippi/rrunner.c", i32 787, i32 4}
!86 = !{ptr @rr_handle_event._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @rr_handle_event._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/hippi/rrunner.c", i32 792, i32 4}
!90 = !{ptr @rr_handle_event._entry.45, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @rr_handle_event._entry_ptr.47, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/hippi/rrunner.c", i32 799, i32 4}
!94 = !{ptr @rr_handle_event._entry.48, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @rr_handle_event._entry_ptr.50, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/hippi/rrunner.c", i32 803, i32 4}
!98 = !{ptr @rr_handle_event._entry.51, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @rr_handle_event._entry_ptr.53, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/hippi/rrunner.c", i32 811, i32 4}
!102 = !{ptr @rr_handle_event._entry.54, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @rr_handle_event._entry_ptr.56, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/hippi/rrunner.c", i32 818, i32 4}
!106 = !{ptr @rr_handle_event._entry.57, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @rr_handle_event._entry_ptr.59, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/hippi/rrunner.c", i32 825, i32 4}
!110 = !{ptr @rr_handle_event._entry.60, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @rr_handle_event._entry_ptr.62, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/hippi/rrunner.c", i32 835, i32 4}
!114 = !{ptr @rr_handle_event._entry.63, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @rr_handle_event._entry_ptr.65, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.67, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/hippi/rrunner.c", i32 839, i32 4}
!118 = !{ptr @rr_handle_event._entry.66, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @rr_handle_event._entry_ptr.68, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.70, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/hippi/rrunner.c", i32 843, i32 4}
!122 = !{ptr @rr_handle_event._entry.69, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @rr_handle_event._entry_ptr.71, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/hippi/rrunner.c", i32 847, i32 4}
!126 = !{ptr @rr_handle_event._entry.72, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @rr_handle_event._entry_ptr.74, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.76, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/hippi/rrunner.c", i32 851, i32 4}
!130 = !{ptr @rr_handle_event._entry.75, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @rr_handle_event._entry_ptr.77, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.79, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/hippi/rrunner.c", i32 855, i32 4}
!134 = !{ptr @rr_handle_event._entry.78, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @rr_handle_event._entry_ptr.80, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.82, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/hippi/rrunner.c", i32 859, i32 4}
!138 = !{ptr @rr_handle_event._entry.81, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @rr_handle_event._entry_ptr.83, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.85, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/hippi/rrunner.c", i32 863, i32 4}
!142 = !{ptr @rr_handle_event._entry.84, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @rr_handle_event._entry_ptr.86, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.88, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/hippi/rrunner.c", i32 867, i32 4}
!146 = !{ptr @rr_handle_event._entry.87, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @rr_handle_event._entry_ptr.89, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.91, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/hippi/rrunner.c", i32 871, i32 4}
!150 = !{ptr @rr_handle_event._entry.90, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @rr_handle_event._entry_ptr.92, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.94, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/hippi/rrunner.c", i32 875, i32 4}
!154 = !{ptr @rr_handle_event._entry.93, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @rr_handle_event._entry_ptr.95, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.97, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/hippi/rrunner.c", i32 879, i32 4}
!158 = !{ptr @rr_handle_event._entry.96, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @rr_handle_event._entry_ptr.98, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.100, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/hippi/rrunner.c", i32 886, i32 4}
!162 = !{ptr @rr_handle_event._entry.99, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @rr_handle_event._entry_ptr.101, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.103, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/hippi/rrunner.c", i32 893, i32 4}
!166 = !{ptr @rr_handle_event._entry.102, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @rr_handle_event._entry_ptr.104, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.106, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/hippi/rrunner.c", i32 917, i32 4}
!170 = !{ptr @rr_handle_event._entry.105, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @rr_handle_event._entry_ptr.107, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.108, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/hippi/rrunner.c", i32 957, i32 6}
!174 = !{ptr @.str.109, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @rx_int._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @rx_int._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.111, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/hippi/rrunner.c", i32 995, i32 6}
!179 = !{ptr @rx_int._entry.110, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @rx_int._entry_ptr.112, !178, !"_entry_ptr", i1 false, i1 false}
!181 = distinct !{null, !182, !"__already_done", i1 false, i1 false}
!182 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!183 = !{ptr @.str.113, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.114, !182, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.115, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/hippi/rrunner.c", i32 576, i32 3}
!187 = !{ptr @.str.116, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @rr_init1._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @rr_init1._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.118, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/hippi/rrunner.c", i32 650, i32 4}
!192 = !{ptr @rr_init1._entry.117, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @rr_init1._entry_ptr.119, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.121, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/hippi/rrunner.c", i32 663, i32 4}
!196 = !{ptr @rr_init1._entry.120, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @rr_init1._entry_ptr.122, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.123, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/hippi/rrunner.c", i32 1484, i32 3}
!200 = !{ptr @.str.124, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @rr_load_firmware._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @rr_load_firmware._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.126, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/hippi/rrunner.c", i32 1524, i32 3}
!205 = !{ptr @rr_load_firmware._entry.125, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @rr_load_firmware._entry_ptr.127, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.129, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/hippi/rrunner.c", i32 1532, i32 3}
!209 = !{ptr @rr_load_firmware._entry.128, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @rr_load_firmware._entry_ptr.130, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.131, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/hippi/rrunner.c", i32 262, i32 3}
!213 = !{ptr @.str.132, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @rr_issue_cmd._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @rr_issue_cmd._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.134, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/hippi/rrunner.c", i32 265, i32 4}
!218 = !{ptr @rr_issue_cmd._entry.133, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @rr_issue_cmd._entry_ptr.135, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.137, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/hippi/rrunner.c", i32 279, i32 3}
!222 = !{ptr @rr_issue_cmd._entry.136, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @rr_issue_cmd._entry_ptr.138, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.139, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/hippi/rrunner.c", i32 1162, i32 3}
!226 = !{ptr @.str.140, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @rr_timer._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @rr_timer._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.141, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/hippi/rrunner.c", i32 1348, i32 3}
!231 = !{ptr @.str.142, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @rr_close._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @rr_close._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.143, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/hippi/rrunner.c", i32 1276, i32 2}
!236 = !{ptr @.str.144, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @rr_dump._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @rr_dump._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.146, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/hippi/rrunner.c", i32 1278, i32 2}
!241 = !{ptr @rr_dump._entry.145, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @rr_dump._entry_ptr.147, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.149, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/hippi/rrunner.c", i32 1283, i32 2}
!245 = !{ptr @rr_dump._entry.148, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @rr_dump._entry_ptr.150, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.152, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/hippi/rrunner.c", i32 1287, i32 2}
!249 = !{ptr @rr_dump._entry.151, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @rr_dump._entry_ptr.153, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.155, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/hippi/rrunner.c", i32 1292, i32 3}
!253 = !{ptr @rr_dump._entry.154, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @rr_dump._entry_ptr.156, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.158, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/hippi/rrunner.c", i32 1295, i32 5}
!257 = !{ptr @rr_dump._entry.157, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @rr_dump._entry_ptr.159, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.161, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/hippi/rrunner.c", i32 1296, i32 4}
!261 = !{ptr @rr_dump._entry.160, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @rr_dump._entry_ptr.162, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @rr_dump._entry.163, !264, !"_entry", i1 false, i1 false}
!264 = !{!"../drivers/net/hippi/rrunner.c", i32 1298, i32 3}
!265 = !{ptr @rr_dump._entry_ptr.164, !264, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.166, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/net/hippi/rrunner.c", i32 1303, i32 3}
!268 = !{ptr @rr_dump._entry.165, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @rr_dump._entry_ptr.167, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.169, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/hippi/rrunner.c", i32 1304, i32 3}
!272 = !{ptr @rr_dump._entry.168, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @rr_dump._entry_ptr.170, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @rr_dump._entry.171, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/net/hippi/rrunner.c", i32 1312, i32 5}
!276 = !{ptr @rr_dump._entry_ptr.172, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @rr_dump._entry.173, !278, !"_entry", i1 false, i1 false}
!278 = !{!"../drivers/net/hippi/rrunner.c", i32 1313, i32 4}
!279 = !{ptr @rr_dump._entry_ptr.174, !278, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @rr_dump._entry.175, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/net/hippi/rrunner.c", i32 1315, i32 3}
!282 = !{ptr @rr_dump._entry_ptr.176, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.178, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/hippi/rrunner.c", i32 1318, i32 2}
!285 = !{ptr @rr_dump._entry.177, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @rr_dump._entry_ptr.179, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.181, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/hippi/rrunner.c", i32 1320, i32 3}
!289 = !{ptr @rr_dump._entry.180, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @rr_dump._entry_ptr.182, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.183, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/hippi/rrunner.c", i32 1405, i32 3}
!293 = !{ptr @rr_start_xmit._entry, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @rr_start_xmit._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.185, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/hippi/rrunner.c", i32 1413, i32 3}
!297 = !{ptr @rr_start_xmit._entry.184, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @rr_start_xmit._entry_ptr.186, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.187, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/hippi/rrunner.c", i32 1595, i32 4}
!301 = !{ptr @.str.188, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @rr_siocdevprivate._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @rr_siocdevprivate._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.190, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/net/hippi/rrunner.c", i32 1604, i32 4}
!306 = !{ptr @rr_siocdevprivate._entry.189, !305, !"_entry", i1 false, i1 false}
!307 = !{ptr @rr_siocdevprivate._entry_ptr.191, !305, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @rr_siocdevprivate._entry.192, !309, !"_entry", i1 false, i1 false}
!309 = !{!"../drivers/net/hippi/rrunner.c", i32 1632, i32 4}
!310 = !{ptr @rr_siocdevprivate._entry_ptr.193, !309, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.195, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/net/hippi/rrunner.c", i32 1637, i32 3}
!313 = !{ptr @rr_siocdevprivate._entry.194, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @rr_siocdevprivate._entry_ptr.196, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.198, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/hippi/rrunner.c", i32 1642, i32 4}
!317 = !{ptr @rr_siocdevprivate._entry.197, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @rr_siocdevprivate._entry_ptr.199, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.201, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/hippi/rrunner.c", i32 1649, i32 4}
!321 = !{ptr @rr_siocdevprivate._entry.200, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @rr_siocdevprivate._entry_ptr.202, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.204, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/hippi/rrunner.c", i32 1654, i32 4}
!325 = !{ptr @rr_siocdevprivate._entry.203, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @rr_siocdevprivate._entry_ptr.205, !324, !"_entry_ptr", i1 false, i1 false}
!327 = distinct !{null, !328, !"__already_done", i1 false, i1 false}
!328 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!329 = distinct !{null, !328, !"<string literal>", i1 false, i1 false}
!330 = distinct !{null, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!332 = !{ptr @.str.208, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!334 = !{ptr @.str.209, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/net/hippi/rrunner.c", i32 485, i32 6}
!336 = !{ptr @.str.210, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @write_eeprom._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @write_eeprom._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @version, !340, !"version", i1 false, i1 false}
!340 = !{!"../drivers/net/hippi/rrunner.c", i32 59, i32 19}
!341 = !{ptr @.str.211, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/net/hippi/rrunner.c", i32 516, i32 3}
!343 = !{ptr @.str.212, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @rr_init._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @rr_init._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.214, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/net/hippi/rrunner.c", i32 519, i32 3}
!348 = !{ptr @rr_init._entry.213, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @rr_init._entry_ptr.215, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.217, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/net/hippi/rrunner.c", i32 523, i32 3}
!352 = !{ptr @rr_init._entry.216, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @rr_init._entry_ptr.218, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.220, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/net/hippi/rrunner.c", i32 547, i32 2}
!356 = !{ptr @rr_init._entry.219, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @rr_init._entry_ptr.221, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.223, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/net/hippi/rrunner.c", i32 550, i32 2}
!360 = !{ptr @rr_init._entry.222, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @rr_init._entry_ptr.224, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.225, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/net/hippi/rrunner.c", i32 228, i32 3}
!364 = !{ptr @.str.226, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @rr_remove_one._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @rr_remove_one._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{!"sp"}
!368 = !{i32 1, !"wchar_size", i32 2}
!369 = !{i32 1, !"min_enum_size", i32 4}
!370 = !{i32 8, !"branch-target-enforcement", i32 0}
!371 = !{i32 8, !"sign-return-address", i32 0}
!372 = !{i32 8, !"sign-return-address-all", i32 0}
!373 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!374 = !{i32 7, !"uwtable", i32 1}
!375 = !{i32 7, !"frame-pointer", i32 2}
!376 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!377 = !{!"auto-init"}
!378 = !{i64 2157218324}
!379 = !{i64 5020191}
!380 = !{i64 2157219269}
!381 = !{i64 5019773}
!382 = !{i64 2157219937}
!383 = !{i64 2157221657}
!384 = !{i64 2157257194}
!385 = !{i64 2157364278}
!386 = !{i64 2157365592}
!387 = !{i64 2157366507}
!388 = !{i64 2157367011}
!389 = !{i64 2157370125}
!390 = !{i64 2157371040}
!391 = !{i64 2157400232}
!392 = !{i64 2157374726}
!393 = !{i64 2157375192}
!394 = !{i64 2157375662}
!395 = !{i64 2157376124}
!396 = !{i64 2157377915}
!397 = !{i64 2157378385}
!398 = !{i64 2157401807}
!399 = !{i64 2157402458}
!400 = !{i64 2157402664}
!401 = !{i64 2157403035}
!402 = !{i64 2157403408}
!403 = !{i64 2157403781}
!404 = !{i64 2157404161}
!405 = !{i64 2157205977}
!406 = !{i64 2157404816}
!407 = !{i64 2157406774}
!408 = !{i64 2157407240}
!409 = !{!"branch_weights", i32 2000, i32 1}
!410 = !{i64 2157409304}
!411 = !{i64 2157409519}
!412 = !{i64 2153916818, i64 2153916843}
!413 = !{i64 6411692}
!414 = !{i64 6411889}
!415 = !{i64 2153897122}
!416 = !{i64 2157438276, i64 2157438556, i64 2157438890, i64 2157439224}
!417 = !{i64 2157354648}
!418 = !{i64 2157355123}
!419 = !{i64 2157282377}
!420 = !{i64 2157284357}
!421 = !{i64 2157284685}
!422 = !{i64 2157292982}
!423 = !{i64 2157293897}
!424 = !{i64 2157294071}
!425 = !{i64 2157296470}
!426 = !{i64 2157297385}
!427 = !{i64 2157297559}
!428 = !{i64 2157304347}
!429 = !{i64 2157305262}
!430 = !{i64 2157305436}
!431 = !{i64 2157309296}
!432 = !{i64 2157310211}
!433 = !{i64 2157310385}
!434 = !{i64 2157312808}
!435 = !{i64 2157313723}
!436 = !{i64 2157313897}
!437 = !{i64 2157316344}
!438 = !{i64 2157317259}
!439 = !{i64 2157317433}
!440 = !{i64 2157319874}
!441 = !{i64 2157320789}
!442 = !{i64 2157320963}
!443 = !{i64 2157339847}
!444 = !{i64 2157340762}
!445 = !{i64 2157340936}
!446 = !{i64 2157343503}
!447 = !{i64 2157344418}
!448 = !{i64 2157344592}
!449 = !{i64 2157346985}
!450 = !{i64 2157347900}
!451 = !{i64 2157348074}
!452 = !{i64 2157349755}
!453 = !{i64 2157353842}
!454 = !{i64 2157354170}
!455 = !{i64 2157355389}
!456 = !{i64 2157355632}
!457 = !{i64 2157355954}
!458 = !{i64 2157266409}
!459 = !{i64 2157266650}
!460 = !{i64 2157267028}
!461 = !{i64 2157206362}
!462 = !{i64 2157206743}
!463 = !{i64 2157207065}
!464 = !{i64 2157207451}
!465 = !{i64 2157207834}
!466 = !{i64 2157208157}
!467 = !{i64 2157268754}
!468 = !{i64 2157410197}
!469 = !{i64 2157412173}
!470 = !{i64 2157412384}
!471 = !{i64 2157412760}
!472 = !{i64 2157413132}
!473 = !{i64 2157413503}
!474 = !{i64 2157414133}
!475 = !{i64 2157414340}
!476 = !{i64 2157414717}
!477 = !{i64 2157415038}
!478 = !{i64 2157415247}
!479 = !{i64 2157415556}
!480 = !{i64 2157415764}
!481 = !{i64 2157416074}
!482 = !{i64 2157419302}
!483 = !{i64 2157419620}
!484 = !{i64 2157419831}
!485 = !{i64 2157420146}
!486 = !{i64 2157420365}
!487 = !{i64 2157420700}
!488 = !{i64 2157230659}
!489 = !{i64 2157231072}
!490 = !{i64 2157231479}
!491 = !{i64 2157231868}
!492 = !{i64 2157232255}
!493 = !{i64 2157232635}
!494 = !{i64 2157233009}
!495 = !{i64 2157233398}
!496 = !{i64 2157233801}
!497 = !{i64 2157234198}
!498 = !{i64 2157234587}
!499 = !{i64 2157234975}
!500 = !{i64 2157235362}
!501 = !{i64 2157235746}
!502 = !{i64 2157236128}
!503 = !{i64 2157236511}
!504 = !{i64 2157236901}
!505 = !{i64 2157237290}
!506 = !{i64 2157237678}
!507 = !{i64 2157238064}
!508 = !{i64 2157238477}
!509 = !{i64 2157238912}
!510 = !{i64 2157239312}
!511 = !{i64 2157239682}
!512 = !{i64 2157240053}
!513 = !{i64 2157240426}
!514 = !{i64 2157240799}
!515 = !{i64 2157241179}
!516 = !{i64 2157241578}
!517 = !{i64 2157241923}
!518 = !{i64 2157242267}
!519 = !{i64 2157242621}
!520 = !{i64 2157243368}
!521 = !{i64 2157243698}
!522 = !{i64 2157269156}
!523 = !{i64 2157269555}
!524 = !{i64 2157269954}
!525 = !{i64 2157270354}
!526 = !{i64 2157270753}
!527 = !{i64 2157271172}
!528 = !{i64 2157271586}
!529 = !{i64 2157271986}
!530 = !{i64 2157272315}
!531 = !{i64 2157272549}
!532 = !{i64 2157272885}
!533 = !{i64 2157280486}
!534 = !{i64 2157222464}
!535 = !{i64 2157224564}
!536 = !{i64 2157225026}
!537 = !{i64 2157226983}
!538 = !{i64 2157227449}
!539 = !{i64 2157227674}
!540 = !{i64 2157228026}
!541 = !{i64 2157228177}
!542 = !{i64 2157228639}
!543 = !{i64 2157230440}
!544 = !{i64 2157281704}
!545 = !{i64 2157281546}
!546 = !{i64 2157358299}
!547 = !{i64 2157359776}
!548 = !{i64 2157361090}
!549 = !{i64 2157362005}
!550 = !{i64 2157244164}
!551 = !{i64 2157244371}
!552 = !{i64 2157245017}
!553 = !{i64 2157245228}
!554 = !{i64 2157245874}
!555 = !{i64 2157246099}
!556 = !{i64 2157246439}
!557 = !{i64 2157246691}
!558 = !{i64 2157247096}
!559 = !{i64 2157247570}
!560 = !{i64 2157247713}
!561 = !{i64 2157247926}
!562 = !{i64 2157248316}
!563 = !{i64 2157248701}
!564 = !{i64 2157249011}
!565 = !{i64 2157249525}
!566 = !{i64 2157249732}
!567 = !{i64 2157250378}
!568 = !{i64 2157250601}
!569 = !{i64 2157250927}
!570 = !{i64 2157251179}
!571 = !{i64 2157251584}
!572 = !{i64 2157252058}
!573 = !{i64 2157252270}
!574 = !{i64 2157252588}
!575 = !{i64 2157253604}
!576 = !{i64 2157253747}
!577 = !{i64 2157255783}
!578 = !{i64 2157255997}
!579 = !{i64 2157256382}
!580 = !{i64 2157256692}
