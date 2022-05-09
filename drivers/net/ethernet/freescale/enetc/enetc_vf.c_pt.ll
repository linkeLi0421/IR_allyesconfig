; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/freescale/enetc/enetc_vf.c_pt.bc'
source_filename = "../drivers/net/ethernet/freescale/enetc/enetc_vf.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.121, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.121 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.enetc_si = type { ptr, %struct.enetc_hw, i32, ptr, %struct.enetc_cbdr, i32, i32, i32, i32, i16, i32 }
%struct.enetc_hw = type { ptr, ptr, ptr }
%struct.enetc_cbdr = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.enetc_msg_swbd = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.enetc_msg_cmd_header = type { i16, i16 }
%struct.enetc_msg_cmd_set_primary_mac = type { %struct.enetc_msg_cmd_header, %struct.sockaddr }

@__initcall__kmod_fsl_enetc_vf__353_247_enetc_vf_driver_init6 = internal global ptr @enetc_vf_driver_init, section ".initcall6.init", align 4
@enetc_vf_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @enetc_vf_id_table, ptr @enetc_vf_probe, ptr @enetc_vf_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_enetc_vf_driver_exit = internal global ptr @enetc_vf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description354 = internal constant [41 x i8] c"fsl_enetc_vf.description=ENETC VF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [68 x i8] c"fsl_enetc_vf.file=drivers/net/ethernet/freescale/enetc/fsl-enetc-vf\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [34 x i8] c"fsl_enetc_vf.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl_enetc_vf\00", [19 x i8] zeroinitializer }, align 32
@enetc_vf_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6487, i32 61184, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCI probing failed\0A\00", [44 x i8] zeroinitializer }, align 32
@enetc_vf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 160, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netdev creation failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enetc_vf_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/freescale/enetc/enetc_vf.c\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enetc_vf_probe._entry_ptr = internal global ptr @enetc_vf_probe._entry, section ".printk_index", align 4
@enetc_ndev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @enetc_open, ptr @enetc_close, ptr @enetc_xmit, ptr null, ptr null, ptr null, ptr null, ptr @enetc_vf_set_mac_addr, ptr null, ptr null, ptr @enetc_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enetc_vf_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@enetc_vf_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 177, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SI resource alloc failed\0A\00", [38 x i8] zeroinitializer }, align 32
@enetc_vf_probe._entry_ptr.9 = internal global ptr @enetc_vf_probe._entry.7, section ".printk_index", align 4
@enetc_vf_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to configure SI\0A\00", [40 x i8] zeroinitializer }, align 32
@enetc_vf_probe._entry_ptr.12 = internal global ptr @enetc_vf_probe._entry.10, section ".printk_index", align 4
@enetc_vf_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSIX alloc failed\0A\00", [45 x i8] zeroinitializer }, align 32
@enetc_vf_probe._entry_ptr.15 = internal global ptr @enetc_vf_probe._entry.13, section ".printk_index", align 4
@enetc_msg_vsi_set_primary_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 60, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to alloc Tx msg (size: %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"enetc_msg_vsi_set_primary_mac_addr\00", [61 x i8] zeroinitializer }, align 32
@enetc_msg_vsi_set_primary_mac_addr._entry_ptr = internal global ptr @enetc_msg_vsi_set_primary_mac_addr._entry, section ".printk_index", align 4
@enetc_msg_vsi_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 41, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VSI command execute error: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enetc_msg_vsi_send\00", [45 x i8] zeroinitializer }, align 32
@enetc_msg_vsi_send._entry_ptr = internal global ptr @enetc_msg_vsi_send._entry, section ".printk_index", align 4
@enetc_mdio_lock = external dso_local global %struct.rwlock_t, align 4
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"enetc_vf_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 241, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 247, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"enetc_vf_id_table\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 235, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 151, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 160, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"enetc_ndev_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 95, i32 36 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 177, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 183, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 189, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 59, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [51 x i8] c"../drivers/net/ethernet/freescale/enetc/enetc_vf.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 40, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_license356, ptr @__exitcall_enetc_vf_driver_exit, ptr @__initcall__kmod_fsl_enetc_vf__353_247_enetc_vf_driver_init6, ptr @enetc_msg_vsi_send._entry, ptr @enetc_msg_vsi_send._entry_ptr, ptr @enetc_msg_vsi_set_primary_mac_addr._entry, ptr @enetc_msg_vsi_set_primary_mac_addr._entry_ptr, ptr @enetc_vf_driver_exit, ptr @enetc_vf_probe._entry, ptr @enetc_vf_probe._entry.10, ptr @enetc_vf_probe._entry.13, ptr @enetc_vf_probe._entry.7, ptr @enetc_vf_probe._entry_ptr, ptr @enetc_vf_probe._entry_ptr.12, ptr @enetc_vf_probe._entry_ptr.15, ptr @enetc_vf_probe._entry_ptr.9, ptr @enetc_vf_driver, ptr @.str, ptr @enetc_vf_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @enetc_ndev_ops, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_vf_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_vf_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_vf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_ndev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_vf_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_vf_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_vf_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_msg_vsi_set_primary_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enetc_msg_vsi_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_vf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @enetc_vf_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @enetc_vf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @enetc_vf_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_vf_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @enetc_pci_probe(ptr noundef %pdev, ptr noundef nonnull @.str, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call1 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @enetc_get_si_caps(ptr noundef %1) #6
  %call3 = tail call ptr @alloc_etherdev_mqs(i32 noundef 320, i32 noundef 8, i32 noundef 8) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.2) #9
  br label %err_alloc_netdev

if.end7:                                          ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %call3, i32 2304
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %parent.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev.i, ptr %parent.i, align 8
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %add.ptr.i.i, align 4
  %si3.i = getelementptr i8, ptr %call3, i32 2312
  %6 = ptrtoint ptr %si3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %si3.i, align 4
  %7 = load ptr, ptr %1, align 4
  %dev5.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %dev6.i = getelementptr i8, ptr %call3, i32 2308
  %8 = ptrtoint ptr %dev6.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev5.i, ptr %dev6.i, align 4
  %ndev7.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %ndev7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3, ptr %ndev7.i, align 4
  %msg_enable.i = getelementptr i8, ptr %call3, i32 2336
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 63, ptr %msg_enable.i, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 16
  %11 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @enetc_ndev_ops, ptr %netdev_ops.i, align 8
  tail call void @enetc_set_ethtool_ops(ptr noundef nonnull %call3) #6
  %watchdog_timeo.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 115
  %12 = ptrtoint ptr %watchdog_timeo.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 500, ptr %watchdog_timeo.i, align 4
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 31
  %13 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9578, ptr %max_mtu.i, align 4
  %hw_features.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 24
  %14 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 1099512742281, ptr %hw_features.i, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 23
  %15 = ptrtoint ptr %features.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1099512742313, ptr %features.i, align 16
  %vlan_features.i = getelementptr inbounds %struct.net_device, ptr %call3, i32 0, i32 26
  %16 = ptrtoint ptr %vlan_features.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 1114121, ptr %vlan_features.i, align 8
  %num_rss.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %num_rss.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_rss.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %if.end7.enetc_vf_netdev_setup.exit_crit_edge, label %if.then.i

if.end7.enetc_vf_netdev_setup.exit_crit_edge:     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %enetc_vf_netdev_setup.exit

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %hw_features.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 1649268556169, ptr %hw_features.i, align 8
  br label %enetc_vf_netdev_setup.exit

enetc_vf_netdev_setup.exit:                       ; preds = %if.then.i, %if.end7.enetc_vf_netdev_setup.exit_crit_edge
  %hw.i = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #6
  %20 = getelementptr inbounds [6 x i8], ptr %addr.i.i, i32 0, i32 4
  %21 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw.i, align 4
  %add.ptr.i1.i = getelementptr i8, ptr %22, i32 128
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #6, !srcloc !56
  %24 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %addr.i.i, align 4
  %25 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %26, i32 132
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i) #6, !srcloc !57
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %20, align 4
  call void @dev_addr_mod(ptr noundef nonnull %call3, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #6
  call void @enetc_init_si_rings_params(ptr noundef %add.ptr.i.i) #6
  %29 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6.i, align 4
  %cbd_ring = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 4
  %call10 = call i32 @enetc_setup_cbdr(ptr noundef %30, ptr noundef %hw.i, i32 noundef 64, ptr noundef %cbd_ring) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %enetc_vf_netdev_setup.exit.err_setup_cbdr_crit_edge

enetc_vf_netdev_setup.exit.err_setup_cbdr_crit_edge: ; preds = %enetc_vf_netdev_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_setup_cbdr

if.end13:                                         ; preds = %enetc_vf_netdev_setup.exit
  %call14 = call i32 @enetc_alloc_si_resources(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20, ptr noundef nonnull @.str.8) #9
  br label %err_alloc_si_res

if.end21:                                         ; preds = %if.end13
  %call22 = call i32 @enetc_configure_si(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.11) #9
  br label %err_alloc_msix

if.end29:                                         ; preds = %if.end21
  %call30 = call i32 @enetc_alloc_msix(ptr noundef %add.ptr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.14) #9
  br label %err_alloc_msix

if.end37:                                         ; preds = %if.end29
  %call38 = call i32 @register_netdev(ptr noundef nonnull %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %err_reg_netdev

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void @netif_carrier_off(ptr noundef nonnull %call3) #6
  br label %cleanup

err_reg_netdev:                                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void @enetc_free_msix(ptr noundef %add.ptr.i.i) #6
  br label %err_alloc_msix

err_alloc_msix:                                   ; preds = %err_reg_netdev, %do.end35, %do.end27
  %err.0 = phi i32 [ %call22, %do.end27 ], [ %call30, %do.end35 ], [ %call38, %err_reg_netdev ]
  call void @enetc_free_si_resources(ptr noundef %add.ptr.i.i) #6
  br label %err_alloc_si_res

err_alloc_si_res:                                 ; preds = %err_alloc_msix, %do.end19
  %err.1 = phi i32 [ %call14, %do.end19 ], [ %err.0, %err_alloc_msix ]
  call void @enetc_teardown_cbdr(ptr noundef %cbd_ring) #6
  br label %err_setup_cbdr

err_setup_cbdr:                                   ; preds = %err_alloc_si_res, %enetc_vf_netdev_setup.exit.err_setup_cbdr_crit_edge
  %err.2 = phi i32 [ %call10, %enetc_vf_netdev_setup.exit.err_setup_cbdr_crit_edge ], [ %err.1, %err_alloc_si_res ]
  %31 = ptrtoint ptr %ndev7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ndev7.i, align 4
  call void @free_netdev(ptr noundef nonnull %call3) #6
  br label %err_alloc_netdev

err_alloc_netdev:                                 ; preds = %err_setup_cbdr, %if.then5
  %err.3 = phi i32 [ %err.2, %err_setup_cbdr ], [ -12, %if.then5 ]
  call void @enetc_pci_remove(ptr noundef %pdev) #6
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_netdev, %if.end41, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %err.3, %err_alloc_netdev ], [ 0, %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enetc_vf_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call void @unregister_netdev(ptr noundef %3) #6
  tail call void @enetc_free_msix(ptr noundef %add.ptr.i) #6
  tail call void @enetc_free_si_resources(ptr noundef %add.ptr.i) #6
  %cbd_ring = getelementptr inbounds %struct.enetc_si, ptr %1, i32 0, i32 4
  tail call void @enetc_teardown_cbdr(ptr noundef %cbd_ring) #6
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  tail call void @free_netdev(ptr noundef %5) #6
  tail call void @enetc_pci_remove(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_pci_probe(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_get_si_caps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_init_si_rings_params(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_cbdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_alloc_si_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_configure_si(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_alloc_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_free_msix(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_free_si_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_teardown_cbdr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_pci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enetc_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_close(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_xmit(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_vf_set_mac_addr(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %addr) #2 align 64 {
entry:
  %msg.i = alloca %struct.enetc_msg_swbd, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %msg.i, align 4, !annotation !58
  %6 = getelementptr inbounds %struct.enetc_msg_swbd, ptr %msg.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4, !annotation !58
  %8 = getelementptr inbounds %struct.enetc_msg_swbd, ptr %msg.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 64, ptr %8, align 4
  %dev.i = getelementptr i8, ptr %ndev, i32 2308
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %11, i32 noundef 64, ptr noundef %6, i32 noundef 3264, i32 noundef 0) #6
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %msg.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.16, i32 noundef %16) #9
  br label %enetc_msg_vsi_set_primary_mac_addr.exit

if.end.i:                                         ; preds = %if.end
  %17 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %call.i.i, align 2
  %id.i = getelementptr inbounds %struct.enetc_msg_cmd_header, ptr %call.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %id.i, align 2
  %mac.i = getelementptr inbounds %struct.enetc_msg_cmd_set_primary_mac, ptr %call.i.i, i32 0, i32 1
  %19 = call ptr @memcpy(ptr %mac.i, ptr %addr, i32 16)
  %si.i = getelementptr i8, ptr %ndev, i32 2312
  %20 = ptrtoint ptr %si.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %si.i, align 4
  %hw.i.i = getelementptr inbounds %struct.enetc_si, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %23)
  %cmp.i.i.i.i = icmp ult i32 %23, 1024
  %shr.i.i.i.i = lshr i32 %23, 5
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 %shr.i.i.i.i, i32 0
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %6, align 4
  %or.i.i.i = or i32 %spec.select.i.i.i.i, %25
  %26 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 532
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #6, !srcloc !60
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %28 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %29, i32 528
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  call void @arm_heavy_mb() #6
  %30 = call i32 @llvm.bswap.i32(i32 %or.i.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %30) #6, !srcloc !60
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end.i.i.do.body.i.i_crit_edge, %if.end.i
  %timeout.0.i.i = phi i32 [ 100, %if.end.i ], [ %dec.i.i, %if.end.i.i.do.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %32, i32 516
  call void @_raw_read_lock(ptr noundef nonnull @enetc_mdio_lock) #6
  %33 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #6, !srcloc !56
  %34 = call i32 @llvm.bswap.i32(i32 %33) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  call void @_raw_read_unlock(ptr noundef nonnull @enetc_mdio_lock) #6
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end5.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body.i.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool2.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.enetc_msg_vsi_send.exit.i_crit_edge, label %if.end.i.i.do.body.i.i_crit_edge

if.end.i.i.do.body.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

if.end.i.i.enetc_msg_vsi_send.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %enetc_msg_vsi_send.exit.i

if.end5.i.i:                                      ; preds = %do.body.i.i
  %and6.i.i = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end5.i.i.enetc_msg_vsi_send.exit.i_crit_edge, label %do.end11.i.i

if.end5.i.i.enetc_msg_vsi_send.exit.i_crit_edge:  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %enetc_msg_vsi_send.exit.i

do.end11.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %21, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %shr.i.i = lshr i32 %34, 16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.18, i32 noundef %shr.i.i) #9
  br label %enetc_msg_vsi_send.exit.i

enetc_msg_vsi_send.exit.i:                        ; preds = %do.end11.i.i, %if.end5.i.i.enetc_msg_vsi_send.exit.i_crit_edge, %if.end.i.i.enetc_msg_vsi_send.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -5, %do.end11.i.i ], [ 0, %if.end5.i.i.enetc_msg_vsi_send.exit.i_crit_edge ], [ -110, %if.end.i.i.enetc_msg_vsi_send.exit.i_crit_edge ]
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %8, align 4
  %41 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %msg.i, align 4
  %43 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %6, align 4
  call void @dma_free_attrs(ptr noundef %38, i32 noundef %40, ptr noundef %42, i32 noundef %44, i32 noundef 0) #6
  br label %enetc_msg_vsi_set_primary_mac_addr.exit

enetc_msg_vsi_set_primary_mac_addr.exit:          ; preds = %enetc_msg_vsi_send.exit.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i.i, %enetc_msg_vsi_send.exit.i ], [ -12, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %cleanup

cleanup:                                          ; preds = %enetc_msg_vsi_set_primary_mac_addr.exit, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %enetc_msg_vsi_set_primary_mac_addr.exit ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @enetc_get_stats(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_setup_tc(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enetc_vf_set_features(ptr noundef %ndev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @enetc_set_features(ptr noundef %ndev, i64 noundef %features) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @enetc_set_features(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_fsl_enetc_vf__353_247_enetc_vf_driver_init6, !1, !"__initcall__kmod_fsl_enetc_vf__353_247_enetc_vf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 247, i32 1}
!2 = !{ptr @__exitcall_enetc_vf_driver_exit, !1, !"__exitcall_enetc_vf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description354, !4, !"__UNIQUE_ID_description354", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 249, i32 1}
!5 = !{ptr @__UNIQUE_ID_file355, !6, !"__UNIQUE_ID_file355", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 250, i32 1}
!7 = !{ptr @__UNIQUE_ID_license356, !6, !"__UNIQUE_ID_license356", i1 false, i1 false}
!8 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @enetc_vf_driver, !10, !"enetc_vf_driver", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 241, i32 26}
!11 = !{ptr @enetc_vf_id_table, !12, !"enetc_vf_id_table", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 235, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 151, i32 41}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 160, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @enetc_vf_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @enetc_vf_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 177, i32 3}
!25 = !{ptr @enetc_vf_probe._entry.7, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @enetc_vf_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 183, i32 3}
!29 = !{ptr @enetc_vf_probe._entry.10, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @enetc_vf_probe._entry_ptr.12, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 189, i32 3}
!33 = !{ptr @enetc_vf_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @enetc_vf_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @enetc_ndev_ops, !36, !"enetc_ndev_ops", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 95, i32 36}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 59, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @enetc_msg_vsi_set_primary_mac_addr._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @enetc_msg_vsi_set_primary_mac_addr._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/freescale/enetc/enetc_vf.c", i32 40, i32 3}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @enetc_msg_vsi_send._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @enetc_msg_vsi_send._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 4997624}
!57 = !{i64 4996786}
!58 = !{!"auto-init"}
!59 = !{i64 2152539328}
!60 = !{i64 4997206}
!61 = !{i64 2152537973}
