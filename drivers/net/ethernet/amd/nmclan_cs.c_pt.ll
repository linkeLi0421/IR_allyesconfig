; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/nmclan_cs.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/nmclan_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct._mace_private = type { ptr, %struct._mace_statistics, [8 x i32], i32, i8, i8, %struct.spinlock }
%struct._mace_statistics = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_description345 = internal constant [55 x i8] c"nmclan_cs.description=New Media PCMCIA ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file346 = internal constant [50 x i8] c"nmclan_cs.file=drivers/net/ethernet/amd/nmclan_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license347 = internal constant [22 x i8] c"nmclan_cs.license=GPL\00", section ".modinfo", align 1
@__param_str_if_port = internal constant [18 x i8] c"nmclan_cs.if_port\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@if_port = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_if_port = internal constant %struct.kernel_param { ptr @__param_str_if_port, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @if_port } }, section "__param", align 4
@__UNIQUE_ID_if_porttype348 = internal constant [31 x i8] c"nmclan_cs.parmtype=if_port:int\00", section ".modinfo", align 1
@__initcall__kmod_nmclan_cs__390_1508_nmclan_cs_driver_init6 = internal global ptr @nmclan_cs_driver_init, section ".initcall6.init", align 4
@nmclan_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @nmclan_probe, ptr @nmclan_detach, ptr @nmclan_suspend, ptr @nmclan_resume, ptr null, ptr @nmclan_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_nmclan_cs_driver_exit = internal global ptr @nmclan_cs_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nmclan_cs\00", [22 x i8] zeroinitializer }, align 32
@nmclan_ids = internal constant { [3 x %struct.pcmcia_device_id], [36 x i8] } { [3 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 140150027, i32 11725121, i32 0, i32 0], [4 x ptr] [ptr @.str.114, ptr @.str.115, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 247405920, i32 -1385743697, i32 0, i32 0], [4 x ptr] [ptr @.str.116, ptr @.str.117, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@nmclan_probe.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nmclan_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/amd/nmclan_cs.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nmclan_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@nmclan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&lp->bank_lock\00", [17 x i8] zeroinitializer }, align 32
@mace_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @mace_open, ptr @mace_close, ptr @mace_start_xmit, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mace_config, ptr null, ptr null, ptr @mace_tx_timeout, ptr null, ptr null, ptr null, ptr @mace_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netdev_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @netdev_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@mace_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013nmclan_cs: reset failed, card removed?\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mace_init\00", [22 x i8] zeroinitializer }, align 32
@mace_init._entry_ptr = internal global ptr @mace_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mace_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013nmclan_cs: ADDRCHG timeout, card removed?\0A\00", [51 x i8] zeroinitializer }, align 32
@mace_init._entry_ptr.9 = internal global ptr @mace_init._entry.7, section ".printk_index", align 4
@restore_multicast_list.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 1, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"restore_multicast_list\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: restoring Rx mode to %d addresses.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nmclan_cs: %s: restoring Rx mode to %d addresses.\0A\00", [45 x i8] zeroinitializer }, align 32
@mace_close.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mace_close\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: shutting down ethercard.\0A\00", [34 x i8] zeroinitializer }, align 32
@mace_start_xmit.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mace_start_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: mace_start_xmit(length = %ld) called.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"nmclan_cs: %s: mace_start_xmit(length = %ld) called.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"switched to %s port\0A\00", [43 x i8] zeroinitializer }, align 32
@if_names = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Auto\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10baseT\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"BNC\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"transmit timed out -- \00", [41 x i8] zeroinitializer }, align 32
@mace_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\01cresetting card\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mace_tx_timeout\00", [16 x i8] zeroinitializer }, align 32
@mace_tx_timeout._entry_ptr = internal global ptr @mace_tx_timeout._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mace_get_stats.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 1, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mace_get_stats\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: updating the statistics.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nmclan_cs: %s: updating the statistics.\0A\00", [55 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pr_linux_stats\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pr_linux_stats\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nmclan_cs: pr_linux_stats\0A\00", [37 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.31, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" rx_packets=%-7ld        tx_packets=%ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nmclan_cs:  rx_packets=%-7ld        tx_packets=%ld\0A\00", [44 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.33, i8 1, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" rx_errors=%-7ld         tx_errors=%ld\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"nmclan_cs:  rx_errors=%-7ld         tx_errors=%ld\0A\00", [45 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.35, i8 1, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" rx_dropped=%-7ld        tx_dropped=%ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nmclan_cs:  rx_dropped=%-7ld        tx_dropped=%ld\0A\00", [44 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.37, i8 1, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" multicast=%-7ld         collisions=%ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"nmclan_cs:  multicast=%-7ld         collisions=%ld\0A\00", [44 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.39, i8 1, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c" rx_length_errors=%-7ld  rx_over_errors=%ld\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nmclan_cs:  rx_length_errors=%-7ld  rx_over_errors=%ld\0A\00", [40 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.41, i8 1, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c" rx_crc_errors=%-7ld     rx_frame_errors=%ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"nmclan_cs:  rx_crc_errors=%-7ld     rx_frame_errors=%ld\0A\00", [39 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.43, i8 1, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c" rx_fifo_errors=%-7ld    rx_missed_errors=%ld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"nmclan_cs:  rx_fifo_errors=%-7ld    rx_missed_errors=%ld\0A\00", [38 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.45, i8 1, i8 32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c" tx_aborted_errors=%-7ld tx_carrier_errors=%ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nmclan_cs:  tx_aborted_errors=%-7ld tx_carrier_errors=%ld\0A\00", [37 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.47, i8 1, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" tx_fifo_errors=%-7ld    tx_heartbeat_errors=%ld\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"nmclan_cs:  tx_fifo_errors=%-7ld    tx_heartbeat_errors=%ld\0A\00", [35 x i8] zeroinitializer }, align 32
@pr_linux_stats.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.49, i8 1, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c" tx_window_errors=%ld\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nmclan_cs:  tx_window_errors=%ld\0A\00", [62 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pr_mace_stats\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pr_mace_stats\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nmclan_cs: pr_mace_stats\0A\00", [38 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.54, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" xmtsv=%-7d             uflo=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nmclan_cs:  xmtsv=%-7d             uflo=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.56, i8 1, i8 36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" lcol=%-7d              more=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nmclan_cs:  lcol=%-7d              more=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.58, i8 1, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" one=%-7d               defer=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nmclan_cs:  one=%-7d               defer=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.60, i8 1, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" lcar=%-7d              rtry=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nmclan_cs:  lcar=%-7d              rtry=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.62, i8 1, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" exdef=%-7d             xmtrc=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"nmclan_cs:  exdef=%-7d             xmtrc=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.64, i8 1, i8 39, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" oflo=%-7d              clsn=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nmclan_cs:  oflo=%-7d              clsn=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.66, i8 1, i8 40, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" fram=%-7d              fcs=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nmclan_cs:  fram=%-7d              fcs=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug381 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.68, i8 1, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c" rfs_rntpc=%-7d         rfs_rcvcc=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"nmclan_cs:  rfs_rntpc=%-7d         rfs_rcvcc=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug382 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.70, i8 1, i8 42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" jab=%-7d               babl=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nmclan_cs:  jab=%-7d               babl=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.72, i8 1, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c" cerr=%-7d              rcvcco=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"nmclan_cs:  cerr=%-7d              rcvcco=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.74, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" rntpco=%-7d            mpco=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nmclan_cs:  rntpco=%-7d            mpco=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.76, i8 1, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" mpc=%d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nmclan_cs:  mpc=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.78, i8 1, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" rntpc=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nmclan_cs:  rntpc=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@pr_mace_stats.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.2, ptr @.str.80, i8 1, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" rcvcc=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nmclan_cs:  rcvcc=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PCMCIA 0x%lx\00", [19 x i8] zeroinitializer }, align 32
@nmclan_config.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 0, i8 -103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nmclan_config\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nmclan_config\0A\00", [17 x i8] zeroinitializer }, align 32
@nmclan_config.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.2, ptr @.str.85, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nmclan_cs configured: mace id=%x %x\0A\00", [59 x i8] zeroinitializer }, align 32
@nmclan_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.83, ptr @.str.2, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\015nmclan_cs: mace id not found: %x %x should be 0x40 0x?9\0A\00", [37 x i8] zeroinitializer }, align 32
@nmclan_config._entry_ptr = internal global ptr @nmclan_config._entry, section ".printk_index", align 4
@nmclan_config._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.83, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\015nmclan_cs: invalid if_port requested\0A\00", [56 x i8] zeroinitializer }, align 32
@nmclan_config._entry_ptr.89 = internal global ptr @nmclan_config._entry.87, section ".printk_index", align 4
@nmclan_config._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.83, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015nmclan_cs: register_netdev() failed\0A\00", [57 x i8] zeroinitializer }, align 32
@nmclan_config._entry_ptr.92 = internal global ptr @nmclan_config._entry.90, section ".printk_index", align 4
@.str.93 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nmclan: port %#3lx, irq %d, %s port, hw_addr %pM\0A\00", [46 x i8] zeroinitializer }, align 32
@mace_interrupt.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mace_interrupt\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"mace_interrupt(): irq 0x%X for unknown device.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nmclan_cs: mace_interrupt(): irq 0x%X for unknown device.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Interrupt with tx_irq_disabled\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s [isr=%02X, imr=%02X]\0A\00", [39 x i8] zeroinitializer }, align 32
@mace_interrupt.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.100, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"interrupt from dead card\0A\00", [38 x i8] zeroinitializer }, align 32
@mace_interrupt.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.101, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mace_interrupt: irq 0x%X status 0x%X.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"nmclan_cs: mace_interrupt: irq 0x%X status 0x%X.\0A\00", [46 x i8] zeroinitializer }, align 32
@mace_rx.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mace_rx\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: in mace_rx(), framecnt 0x%X, rx_status 0x%X.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"nmclan_cs: %s: in mace_rx(), framecnt 0x%X, rx_status 0x%X.\0A\00", [35 x i8] zeroinitializer }, align 32
@mace_rx.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.106, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"    receiving packet size 0x%X rx_status 0x%X.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"nmclan_cs:     receiving packet size 0x%X rx_status 0x%X.\0A\00", [37 x i8] zeroinitializer }, align 32
@mace_rx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.103, ptr @.str.2, ptr @.str.108, i8 1, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: couldn't allocate a sk_buff of size %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nmclan_cs: %s: couldn't allocate a sk_buff of size %d.\0A\00", [40 x i8] zeroinitializer }, align 32
@nmclan_release.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.111, i8 0, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nmclan_release\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nmclan_release\0A\00", [16 x i8] zeroinitializer }, align 32
@nmclan_detach.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 0, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nmclan_detach\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nmclan_detach\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"New Media Corporation\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Portable Add-ons\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Ethernet+\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.118 = private unnamed_addr constant [8 x i8] c"if_port\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 392, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"nmclan_cs_driver\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1499, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1501, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant [11 x i8] c"nmclan_ids\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1492, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 436, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 446, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant [16 x i8] c"mace_netdev_ops\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 419, i32 36 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"netdev_ethtool_ops\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 823, i32 33 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 544, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 591, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1456, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 804, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 862, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 764, i32 24 }
@___asan_gen_.193 = private unnamed_addr constant [9 x i8] c"if_names\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 376, i32 20 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 377, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 377, i32 13 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 377, i32 24 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 843, i32 22 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 845, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1273, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1135, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1136, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1138, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1140, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1142, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1145, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1147, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1149, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1152, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1154, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1156, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1165, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1167, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1169, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1171, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1173, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1177, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1181, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1183, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1188, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1192, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1194, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1196, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1200, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1203, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1206, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 820, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 615, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 649, i32 7 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 652, i32 7 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 665, i32 5 }
@___asan_gen_.412 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 671, i32 5 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 675, i32 20 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 922, i32 5 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 932, i32 13 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 935, i32 24 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 944, i32 5 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 954, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1073, i32 5 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1100, i32 7 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1119, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 686, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 466, i32 5 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1493, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.488 = private constant [40 x i8] c"../drivers/net/ethernet/amd/nmclan_cs.c\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.488, i32 1494, i32 2 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_description345, ptr @__UNIQUE_ID_file346, ptr @__UNIQUE_ID_if_porttype348, ptr @__UNIQUE_ID_license347, ptr @__exitcall_nmclan_cs_driver_exit, ptr @__initcall__kmod_nmclan_cs__390_1508_nmclan_cs_driver_init6, ptr @__param_if_port, ptr @mace_init._entry, ptr @mace_init._entry.7, ptr @mace_init._entry_ptr, ptr @mace_init._entry_ptr.9, ptr @mace_tx_timeout._entry, ptr @mace_tx_timeout._entry_ptr, ptr @nmclan_config._entry, ptr @nmclan_config._entry.87, ptr @nmclan_config._entry.90, ptr @nmclan_config._entry_ptr, ptr @nmclan_config._entry_ptr.89, ptr @nmclan_config._entry_ptr.92, ptr @nmclan_cs_driver_exit, ptr @if_port, ptr @nmclan_cs_driver, ptr @.str, ptr @nmclan_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @nmclan_probe.__key, ptr @.str.4, ptr @mace_netdev_ops, ptr @netdev_ethtool_ops, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @if_names, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.91, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_port to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmclan_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmclan_ids to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmclan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mace_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mace_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mace_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @if_names to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mace_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmclan_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmclan_config._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nmclan_config._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nmclan_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @nmclan_cs_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nmclan_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @nmclan_cs_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmclan_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmclan_probe.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nmclan_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmclan_probe.__UNIQUE_ID_ddebug349, ptr noundef %dev3, ptr noundef nonnull @.str.3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @alloc_etherdev_mqs(i32 noundef 188, i32 noundef 1, i32 noundef 1) #9
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %call4, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %link, ptr %add.ptr.i, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call4, ptr %priv, align 8
  %bank_lock = getelementptr i8, ptr %call4, i32 2448
  tail call void @__raw_spin_lock_init(ptr noundef %bank_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @nmclan_probe.__key, i16 noundef signext 3) #9
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %end = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 32, ptr %end, align 4
  %5 = load ptr, ptr %resource, align 4
  %flags = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %flags, align 4
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %8 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_flags, align 4
  %or15 = or i32 %9, 1
  store i32 %or15, ptr %config_flags, align 4
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 12
  %10 = ptrtoint ptr %config_index to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %config_index, align 4
  %config_regs = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 13
  %11 = ptrtoint ptr %config_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %config_regs, align 8
  %tx_free_frames = getelementptr i8, ptr %call4, i32 2444
  %12 = ptrtoint ptr %tx_free_frames to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %tx_free_frames, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 16
  %13 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mace_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 44
  %14 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @netdev_ethtool_ops, ptr %ethtool_ops, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 115
  %15 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 40, ptr %watchdog_timeo, align 4
  %call16 = tail call fastcc i32 @nmclan_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end7 ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nmclan_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmclan_detach.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nmclan_detach, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmclan_detach.__UNIQUE_ID_ddebug350, ptr noundef %dev3, ptr noundef nonnull @.str.113) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @unregister_netdev(ptr noundef %1) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmclan_release.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nmclan_detach, %if.then.i)) #9
          to label %nmclan_release.exit [label %if.then.i], !srcloc !259

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmclan_release.__UNIQUE_ID_ddebug353, ptr noundef %dev.i, ptr noundef nonnull @.str.111) #9
  br label %nmclan_release.exit

nmclan_release.exit:                              ; preds = %if.then.i, %do.end
  tail call void @pcmcia_disable_device(ptr noundef %link) #9
  tail call void @free_netdev(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmclan_suspend(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  tail call void @netif_device_detach(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nmclan_resume(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 23
  %0 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  %tx_free_frames.i = getelementptr i8, ptr %3, i32 2444
  %4 = ptrtoint ptr %tx_free_frames.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %tx_free_frames.i, align 4
  %base_addr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %base_addr.i, align 32
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr.i, align 64
  %call1.i = tail call fastcc i32 @mace_init(ptr noundef %add.ptr.i.i, i32 noundef %6, ptr noundef %8) #9
  %9 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base_addr.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i.i = add i32 %10, 25
  %and2.i.i = and i32 %add1.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %11 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #9, !srcloc !261
  tail call fastcc void @restore_multicast_list(ptr noundef %3) #9
  tail call void @netif_device_attach(ptr noundef %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nmclan_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  %buf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #9
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf, align 4, !annotation !262
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmclan_config.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nmclan_config, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmclan_config.__UNIQUE_ID_ddebug351, ptr noundef %dev4, ptr noundef nonnull @.str.84) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %io_lines = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 14
  %3 = ptrtoint ptr %io_lines to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %io_lines, align 4
  %call5 = tail call i32 @pcmcia_request_io(ptr noundef %link) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.failed_crit_edge

do.end.failed_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end8:                                          ; preds = %do.end
  %call9 = tail call i32 @pcmcia_request_irq(ptr noundef %link, ptr noundef nonnull @mace_interrupt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.failed_crit_edge

if.end8.failed_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end12.failed_crit_edge

if.end12.failed_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end16:                                         ; preds = %if.end12
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 8
  %irq17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %6 = ptrtoint ptr %irq17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq17, align 4
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %resource, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %base_addr, align 32
  %call19 = call i32 @pcmcia_get_tuple(ptr noundef %link, i8 noundef zeroext -128, ptr noundef nonnull %buf) #9
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %tobool20.not = icmp eq ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call19)
  %cmp = icmp ult i32 %call19, 6
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef %13) #9
  br label %failed

if.end22:                                         ; preds = %if.end16
  call void @dev_addr_mod(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %13, i32 noundef 6) #9
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  call void @kfree(ptr noundef %15) #9
  %bank_lock.i = getelementptr i8, ptr %1, i32 2448
  %call9.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  call void @arm_heavy_mb() #9
  %add15.i = add i32 %10, 12
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %16 = inttoptr i32 %add17.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 1) #9, !srcloc !261
  %add20.i = add i32 %10, 16
  %and23.i = and i32 %add20.i, 1048575
  %add24.i = or i32 %and23.i, -18874368
  %17 = inttoptr i32 %add24.i to ptr
  %18 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %17) #9, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #9, !srcloc !261
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i, i32 noundef %call9.i) #9
  %call9.i147 = call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 1) #9, !srcloc !261
  %add22.i = add i32 %10, 17
  %and23.i152 = and i32 %add22.i, 1048575
  %add24.i153 = or i32 %and23.i152, -18874368
  %19 = inttoptr i32 %add24.i153 to ptr
  %20 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #9, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  call void @arm_heavy_mb() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #9, !srcloc !261
  call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i, i32 noundef %call9.i147) #9
  %data.0.i154 = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %18)
  %cmp30 = icmp eq i8 %18, 64
  %and = and i32 %data.0.i154, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and)
  %cmp34 = icmp eq i32 %and, 9
  %or.cond157 = select i1 %cmp30, i1 %cmp34, i1 false
  br i1 %or.cond157, label %do.body37, label %do.end60

do.body37:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmclan_config.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nmclan_config, %if.then49)) #9
          to label %cleanup.cont [label %if.then49], !srcloc !259

if.then49:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmclan_config.__UNIQUE_ID_ddebug352, ptr noundef %dev50, ptr noundef nonnull @.str.85, i32 noundef 64, i32 noundef %data.0.i154) #9
  br label %cleanup.cont

do.end60:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %data.0.i = zext i8 %18 to i32
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %data.0.i, i32 noundef %data.0.i154) #12
  br label %cleanup101

cleanup.cont:                                     ; preds = %if.then49, %do.body37
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  %call68 = call fastcc i32 @mace_init(ptr noundef %add.ptr.i, i32 noundef %10, ptr noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call68)
  %cmp69 = icmp eq i32 %call68, -1
  br i1 %cmp69, label %cleanup.cont.failed_crit_edge, label %if.end72

cleanup.cont.failed_crit_edge:                    ; preds = %cleanup.cont
  call void @__sanitizer_cov_trace_pc() #11
  br label %failed

if.end72:                                         ; preds = %cleanup.cont
  %23 = load i32, ptr @if_port, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp73 = icmp slt i32 %23, 3
  br i1 %cmp73, label %if.then75, label %do.end80

if.then75:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %conv76 = trunc i32 %23 to i8
  %if_port = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %24 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv76, ptr %if_port, align 2
  br label %if.end83

do.end80:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #12
  br label %if.end83

if.end83:                                         ; preds = %do.end80, %if.then75
  %dev84 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %parent = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev84, ptr %parent, align 8
  %call86 = call i32 @register_netdev(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87.not = icmp eq i32 %call86, 0
  br i1 %cmp87.not, label %if.end95, label %do.end92

do.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91) #12
  br label %failed

if.end95:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %base_addr, align 32
  %28 = ptrtoint ptr %irq17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq17, align 4
  %if_port98 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 52
  %30 = ptrtoint ptr %if_port98 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %if_port98, align 2
  %idxprom = zext i8 %31 to i32
  %arrayidx99 = getelementptr [3 x ptr], ptr @if_names, i32 0, i32 %idxprom
  %32 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx99, align 4
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.93, i32 noundef %27, i32 noundef %29, ptr noundef %33, ptr noundef %35) #12
  br label %cleanup101

failed:                                           ; preds = %do.end92, %cleanup.cont.failed_crit_edge, %if.then21, %if.end12.failed_crit_edge, %if.end8.failed_crit_edge, %do.end.failed_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nmclan_release.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nmclan_config, %if.then.i)) #9
          to label %nmclan_release.exit [label %if.then.i], !srcloc !259

if.then.i:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nmclan_release.__UNIQUE_ID_ddebug353, ptr noundef %dev.i, ptr noundef nonnull @.str.111) #9
  br label %nmclan_release.exit

nmclan_release.exit:                              ; preds = %if.then.i, %failed
  call void @pcmcia_disable_device(ptr noundef %link) #9
  br label %cleanup101

cleanup101:                                       ; preds = %nmclan_release.exit, %if.end95, %do.end60
  %retval.1 = phi i32 [ -19, %nmclan_release.exit ], [ 0, %if.end95 ], [ -19, %do.end60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mace_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %call1 = tail call ptr @pcmcia_dev_present(ptr noundef %3) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %open, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !267
  tail call void @arm_heavy_mb() #9
  %add = add i32 %1, 12
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #9, !srcloc !261
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  %tx_free_frames.i = getelementptr i8, ptr %dev, i32 2444
  %9 = ptrtoint ptr %tx_free_frames.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 4, ptr %tx_free_frames.i, align 4
  %10 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr, align 32
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr.i, align 64
  %call1.i = tail call fastcc i32 @mace_init(ptr noundef %add.ptr.i, i32 noundef %11, ptr noundef %13) #9
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base_addr, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i.i = add i32 %15, 25
  %and2.i.i = and i32 %add1.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %16 = inttoptr i32 %add3.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #9, !srcloc !261
  tail call fastcc void @restore_multicast_list(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mace_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_close.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_close, %if.then)) #9
          to label %do.body5 [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mace_close.__UNIQUE_ID_ddebug354, ptr noundef %dev4, ptr noundef nonnull @.str.14, ptr noundef %dev) #9
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !268
  tail call void @arm_heavy_mb() #9
  %add8 = add i32 %1, 25
  %and = and i32 %add8, 1048575
  %add9 = or i32 %and, -18874368
  %4 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -1) #9, !srcloc !261
  %open = getelementptr inbounds %struct.pcmcia_device, ptr %3, i32 0, i32 23
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %open, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mace_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_start_xmit.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_start_xmit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mace_start_xmit.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.17, ptr noundef %dev, i32 noundef %5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len4, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %tx_bytes, align 4
  %tx_free_frames = getelementptr i8, ptr %dev, i32 2444
  %10 = ptrtoint ptr %tx_free_frames to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tx_free_frames, align 4
  %dec = add i8 %11, -1
  store i8 %dec, ptr %tx_free_frames, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !269
  tail call void @arm_heavy_mb() #9
  %12 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len4, align 4
  %conv = trunc i32 %13 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %add9 = add i32 %1, 4
  %and = and i32 %add9, 1048575
  %add10 = or i32 %and, -18874368
  %15 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %14) #9, !srcloc !270
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %18 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len4, align 4
  %shr = lshr i32 %19, 1
  tail call void @__raw_writesw(ptr noundef nonnull %15, ptr noundef %17, i32 noundef %shr) #9
  %20 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len4, align 4
  %and18 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %do.end.if.end30_crit_edge, label %do.body21

do.end.if.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.body21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !271
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %24 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len4, align 4
  %sub = add i32 %25, -1
  %arrayidx = getelementptr i8, ptr %23, i32 %sub
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %27) #9, !srcloc !261
  br label %if.end30

if.end30:                                         ; preds = %do.body21, %do.end.if.end30_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 8
  %multicast_num_addrs = getelementptr i8, ptr %dev, i32 2440
  %2 = ptrtoint ptr %multicast_num_addrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %multicast_num_addrs, align 4
  tail call fastcc void @restore_multicast_list(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mace_config(ptr noundef %dev, ptr nocapture noundef readonly %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.ifmap, ptr %map, i32 0, i32 5
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp.not = icmp eq i8 %1, -1
  br i1 %cmp.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true:                                    ; preds = %entry
  %if_port = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 52
  %2 = ptrtoint ptr %if_port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %if_port, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp5.not = icmp eq i8 %1, %3
  br i1 %cmp5.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp9 = icmp ult i8 %1, 3
  br i1 %cmp9, label %if.then11, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then11:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %1, ptr %if_port, align 2
  %arrayidx = getelementptr [3 x ptr], ptr @if_names, i32 0, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %6) #12
  br label %return

return:                                           ; preds = %if.then11, %if.then.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then.return_crit_edge ], [ 0, %if.then11 ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mace_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #12
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @pcmcia_reset_card(ptr noundef %3) #9
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 12
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp.not.i.i = icmp eq i32 %8, %6
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 %6, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %11) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mace_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %bank_lock.i.i = getelementptr i8, ptr %dev, i32 2448
  %call9.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  %add15.i.i = add i32 %1, 12
  %and16.i.i = and i32 %add15.i.i, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %2 = inttoptr i32 %add17.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !261
  %add22.i.i = add i32 %1, 27
  %and23.i.i = and i32 %add22.i.i, 1048575
  %add24.i.i = or i32 %and23.i.i, -18874368
  %3 = inttoptr i32 %add24.i.i to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i.i, i32 noundef %call9.i.i) #9
  %data.0.i.i = zext i8 %4 to i32
  %rcvcc.i = getelementptr i8, ptr %dev, i32 2404
  %5 = ptrtoint ptr %rcvcc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rcvcc.i, align 4
  %add.i = add i32 %6, %data.0.i.i
  store i32 %add.i, ptr %rcvcc.i, align 4
  %call9.i69.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !261
  %add22.i74.i = add i32 %1, 26
  %and23.i75.i = and i32 %add22.i74.i, 1048575
  %add24.i76.i = or i32 %and23.i75.i, -18874368
  %7 = inttoptr i32 %add24.i76.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i.i, i32 noundef %call9.i69.i) #9
  %data.0.i77.i = zext i8 %8 to i32
  %rntpc.i = getelementptr i8, ptr %dev, i32 2400
  %9 = ptrtoint ptr %rntpc.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rntpc.i, align 4
  %add4.i = add i32 %10, %data.0.i77.i
  store i32 %add4.i, ptr %rntpc.i, align 4
  %call9.i79.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !261
  %add22.i84.i = add i32 %1, 24
  %and23.i85.i = and i32 %add22.i84.i, 1048575
  %add24.i86.i = or i32 %and23.i85.i, -18874368
  %11 = inttoptr i32 %add24.i86.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i.i, i32 noundef %call9.i79.i) #9
  %data.0.i87.i = zext i8 %12 to i32
  %mpc.i = getelementptr i8, ptr %dev, i32 2396
  %13 = ptrtoint ptr %mpc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mpc.i, align 4
  %add7.i = add i32 %14, %data.0.i87.i
  store i32 %add7.i, ptr %mpc.i, align 4
  %rcvcco.i = getelementptr i8, ptr %dev, i32 2384
  %15 = ptrtoint ptr %rcvcco.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rcvcco.i, align 4
  %mul.i = shl i32 %16, 8
  %17 = ptrtoint ptr %rcvcc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rcvcc.i, align 4
  %add11.i = add i32 %mul.i, %18
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %19 = ptrtoint ptr %collisions.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add11.i, ptr %collisions.i, align 4
  %rntpco.i = getelementptr i8, ptr %dev, i32 2388
  %20 = ptrtoint ptr %rntpco.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rntpco.i, align 4
  %mul13.i = shl i32 %21, 8
  %22 = ptrtoint ptr %rntpc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rntpc.i, align 4
  %add16.i = add i32 %mul13.i, %23
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %24 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add16.i, ptr %rx_length_errors.i, align 8
  %fcs.i = getelementptr i8, ptr %dev, i32 2360
  %25 = ptrtoint ptr %fcs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fcs.i, align 4
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %27 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rx_crc_errors.i, align 8
  %fram.i = getelementptr i8, ptr %dev, i32 2356
  %28 = ptrtoint ptr %fram.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fram.i, align 4
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 13
  %30 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rx_frame_errors.i, align 4
  %oflo.i = getelementptr i8, ptr %dev, i32 2348
  %31 = ptrtoint ptr %oflo.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %oflo.i, align 4
  %rx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 14
  %33 = ptrtoint ptr %rx_fifo_errors.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rx_fifo_errors.i, align 8
  %mpco.i = getelementptr i8, ptr %dev, i32 2392
  %34 = ptrtoint ptr %mpco.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mpco.i, align 4
  %mul25.i = shl i32 %35, 8
  %add28.i = add i32 %mul25.i, %add7.i
  %rx_missed_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %36 = ptrtoint ptr %rx_missed_errors.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %add28.i, ptr %rx_missed_errors.i, align 4
  %rtry.i = getelementptr i8, ptr %dev, i32 2336
  %37 = ptrtoint ptr %rtry.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rtry.i, align 4
  %tx_aborted_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 16
  %39 = ptrtoint ptr %tx_aborted_errors.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %tx_aborted_errors.i, align 8
  %lcar.i = getelementptr i8, ptr %dev, i32 2332
  %40 = ptrtoint ptr %lcar.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lcar.i, align 4
  %tx_carrier_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %42 = ptrtoint ptr %tx_carrier_errors.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tx_carrier_errors.i, align 4
  %uflo.i = getelementptr i8, ptr %dev, i32 2312
  %43 = ptrtoint ptr %uflo.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %uflo.i, align 4
  %tx_fifo_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %45 = ptrtoint ptr %tx_fifo_errors.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %tx_fifo_errors.i, align 8
  %cerr.i = getelementptr i8, ptr %dev, i32 2380
  %46 = ptrtoint ptr %cerr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cerr.i, align 4
  %tx_heartbeat_errors.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 19
  %48 = ptrtoint ptr %tx_heartbeat_errors.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tx_heartbeat_errors.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_get_stats.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_get_stats, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mace_get_stats.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.27, ptr noundef %dev) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  tail call fastcc void @pr_linux_stats(ptr noundef %stats)
  %mace_stats = getelementptr i8, ptr %dev, i32 2308
  tail call fastcc void @pr_mace_stats(ptr noundef %mace_stats)
  ret ptr %stats
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_dev_present(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mace_init(ptr noundef %lp, i32 noundef %ioaddr, ptr nocapture noundef readonly %enet_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i = add i32 %ioaddr, 27
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %0 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 1) #9, !srcloc !261
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  %2 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not95 = icmp eq i8 %2, 0
  br i1 %tobool.not95, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %ct.096 = phi i32 [ %inc, %if.end.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %ct.096)
  %exitcond = icmp eq i32 %ct.096, 500
  br i1 %exitcond, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end:                                           ; preds = %while.body
  %inc = add nuw nsw i32 %ct.096, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748) #9
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !272
  %5 = and i8 %4, 1
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 0) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i55 = add i32 %ioaddr, 28
  %and2.i56 = and i32 %add1.i55, 1048575
  %add3.i57 = or i32 %and2.i56, -18874368
  %6 = inttoptr i32 %add3.i57 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 15) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i59 = add i32 %ioaddr, 21
  %and2.i60 = and i32 %add1.i59, 1048575
  %add3.i61 = or i32 %and2.i60, -18874368
  %7 = inttoptr i32 %add3.i61 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 0) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i63 = add i32 %ioaddr, 25
  %and2.i64 = and i32 %add1.i63, 1048575
  %add3.i65 = or i32 %and2.i64, -18874368
  %8 = inttoptr i32 %add3.i65 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 -1) #9, !srcloc !261
  %9 = load i32, ptr @if_port, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i67 = add i32 %ioaddr, 30
  %and2.i68 = and i32 %add1.i67, 1048575
  %add3.i69 = or i32 %and2.i68, -18874368
  %11 = inttoptr i32 %add3.i69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 2) #9, !srcloc !261
  br label %sw.epilog

sw.bb2:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i71 = add i32 %ioaddr, 30
  %and2.i72 = and i32 %add1.i71, 1048575
  %add3.i73 = or i32 %and2.i72, -18874368
  %12 = inttoptr i32 %add3.i73 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #9, !srcloc !261
  br label %sw.epilog

sw.default:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i75 = add i32 %ioaddr, 31
  %and2.i76 = and i32 %add1.i75, 1048575
  %add3.i77 = or i32 %and2.i76, -18874368
  %13 = inttoptr i32 %add3.i77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 4) #9, !srcloc !261
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %bank_lock.i = getelementptr inbounds %struct._mace_private, ptr %lp, i32 0, i32 6
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  %add17.i = add i32 %ioaddr, 12
  %and18.i = and i32 %add17.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %14 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  %add28.i = add i32 %ioaddr, 18
  %and29.i = and i32 %add28.i, 1048575
  %add30.i = or i32 %and29.i, -18874368
  %15 = inttoptr i32 %add30.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -124) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i, i32 noundef %call9.i) #9
  br label %while.cond3

while.cond3:                                      ; preds = %while.body7.while.cond3_crit_edge, %sw.epilog
  %ct.1 = phi i32 [ 0, %sw.epilog ], [ %inc8, %while.body7.while.cond3_crit_edge ]
  %call9.i79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !263
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #9, !srcloc !261
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !265
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !266
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i, i32 noundef %call9.i79) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool6.not = icmp sgt i8 %16, -1
  br i1 %tobool6.not, label %while.cond3.for.body_crit_edge, label %while.body7

while.cond3.for.body_crit_edge:                   ; preds = %while.cond3
  br label %for.body

while.body7:                                      ; preds = %while.cond3
  %inc8 = add nuw nsw i32 %ct.1, 1
  %exitcond98 = icmp eq i32 %inc8, 501
  br i1 %exitcond98, label %do.end13, label %while.body7.while.cond3_crit_edge

while.body7.while.cond3_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond3

do.end13:                                         ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %while.cond3.for.body_crit_edge
  %i.097 = phi i32 [ %inc19, %for.body.for.body_crit_edge ], [ 0, %while.cond3.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %enet_addr, i32 %i.097
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %call9.i83 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !273
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 1) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !274
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %18) #9, !srcloc !261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !275
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !261
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i, i32 noundef %call9.i83) #9
  %inc19 = add nuw nsw i32 %i.097, 1
  %exitcond99.not = icmp eq i32 %inc19, 6
  br i1 %exitcond99.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !260
  tail call void @arm_heavy_mb() #9
  %add1.i92 = add i32 %ioaddr, 29
  %and2.i93 = and i32 %add1.i92, 1048575
  %add3.i94 = or i32 %and2.i93, -18874368
  %19 = inttoptr i32 %add3.i94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 0) #9, !srcloc !261
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end13, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end13 ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @restore_multicast_list(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @restore_multicast_list.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@restore_multicast_list, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %multicast_num_addrs = getelementptr i8, ptr %dev, i32 2440
  %2 = ptrtoint ptr %multicast_num_addrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %multicast_num_addrs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @restore_multicast_list.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.12, ptr noundef %dev, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %bank_lock.i17 = getelementptr i8, ptr %dev, i32 2448
  %call9.i18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bank_lock.i17) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %add17.i19 = add i32 %1, 12
  %and18.i20 = and i32 %add17.i19, 1048575
  %add19.i21 = or i32 %and18.i20, -18874368
  %6 = inttoptr i32 %add19.i21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %add28.i23 = add i32 %1, 29
  %and29.i24 = and i32 %add28.i23, 1048575
  %add30.i25 = or i32 %and29.i24, -18874368
  %7 = inttoptr i32 %add30.i25 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bank_lock.i17, i32 noundef %call9.i18) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -125) #9, !srcloc !261
  br label %if.end6

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 3) #9, !srcloc !261
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_reset_card(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pr_linux_stats(ptr nocapture noundef readonly %pstats) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then)) #9
          to label %do.body3 [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.30) #9
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then15)) #9
          to label %do.body18 [label %if.then15], !srcloc !259

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %pstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pstats, align 4
  %tx_packets = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 1
  %2 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_packets, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug363, ptr noundef nonnull @.str.32, i32 noundef %1, i32 noundef %3) #9
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then30)) #9
          to label %do.body33 [label %if.then30], !srcloc !259

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %rx_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 4
  %4 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_errors, align 4
  %tx_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 5
  %6 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_errors, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug364, ptr noundef nonnull @.str.34, i32 noundef %5, i32 noundef %7) #9
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then45)) #9
          to label %do.body48 [label %if.then45], !srcloc !259

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %rx_dropped = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 6
  %8 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_dropped, align 4
  %tx_dropped = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 7
  %10 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_dropped, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug365, ptr noundef nonnull @.str.36, i32 noundef %9, i32 noundef %11) #9
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then60)) #9
          to label %do.body63 [label %if.then60], !srcloc !259

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %multicast = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 8
  %12 = ptrtoint ptr %multicast to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %multicast, align 4
  %collisions = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 9
  %14 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %collisions, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug366, ptr noundef nonnull @.str.38, i32 noundef %13, i32 noundef %15) #9
  br label %do.body63

do.body63:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then75)) #9
          to label %do.body78 [label %if.then75], !srcloc !259

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %rx_length_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 10
  %16 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_length_errors, align 4
  %rx_over_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 11
  %18 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_over_errors, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug367, ptr noundef nonnull @.str.40, i32 noundef %17, i32 noundef %19) #9
  br label %do.body78

do.body78:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then90)) #9
          to label %do.body93 [label %if.then90], !srcloc !259

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %rx_crc_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 12
  %20 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_crc_errors, align 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 13
  %22 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_frame_errors, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug368, ptr noundef nonnull @.str.42, i32 noundef %21, i32 noundef %23) #9
  br label %do.body93

do.body93:                                        ; preds = %if.then90, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then105)) #9
          to label %do.body108 [label %if.then105], !srcloc !259

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %rx_fifo_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 14
  %24 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_fifo_errors, align 4
  %rx_missed_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 15
  %26 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rx_missed_errors, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug369, ptr noundef nonnull @.str.44, i32 noundef %25, i32 noundef %27) #9
  br label %do.body108

do.body108:                                       ; preds = %if.then105, %do.body93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then120)) #9
          to label %do.body123 [label %if.then120], !srcloc !259

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %tx_aborted_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 16
  %28 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tx_aborted_errors, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 17
  %30 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_carrier_errors, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug370, ptr noundef nonnull @.str.46, i32 noundef %29, i32 noundef %31) #9
  br label %do.body123

do.body123:                                       ; preds = %if.then120, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then135)) #9
          to label %do.body138 [label %if.then135], !srcloc !259

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #11
  %tx_fifo_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 18
  %32 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_fifo_errors, align 4
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 19
  %34 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_heartbeat_errors, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug371, ptr noundef nonnull @.str.48, i32 noundef %33, i32 noundef %35) #9
  br label %do.body138

do.body138:                                       ; preds = %if.then135, %do.body123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_linux_stats.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_linux_stats, %if.then150)) #9
          to label %do.end152 [label %if.then150], !srcloc !259

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  %tx_window_errors = getelementptr inbounds %struct.net_device_stats, ptr %pstats, i32 0, i32 20
  %36 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_window_errors, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_linux_stats.__UNIQUE_ID_ddebug372, ptr noundef nonnull @.str.50, i32 noundef %37) #9
  br label %do.end152

do.end152:                                        ; preds = %if.then150, %do.body138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pr_mace_stats(ptr noundef readonly %pstats) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then)) #9
          to label %do.body3 [label %if.then], !srcloc !259

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug373, ptr noundef nonnull @.str.53) #9
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then15)) #9
          to label %do.body18 [label %if.then15], !srcloc !259

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %pstats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pstats, align 4
  %uflo = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 1
  %2 = ptrtoint ptr %uflo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uflo, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug374, ptr noundef nonnull @.str.55, i32 noundef %1, i32 noundef %3) #9
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then30)) #9
          to label %do.body33 [label %if.then30], !srcloc !259

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %lcol = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 2
  %4 = ptrtoint ptr %lcol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lcol, align 4
  %more = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 3
  %6 = ptrtoint ptr %more to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %more, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug375, ptr noundef nonnull @.str.57, i32 noundef %5, i32 noundef %7) #9
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then45)) #9
          to label %do.body48 [label %if.then45], !srcloc !259

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %one = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 4
  %8 = ptrtoint ptr %one to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %one, align 4
  %defer = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 5
  %10 = ptrtoint ptr %defer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %defer, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug376, ptr noundef nonnull @.str.59, i32 noundef %9, i32 noundef %11) #9
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then60)) #9
          to label %do.body63 [label %if.then60], !srcloc !259

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %lcar = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 6
  %12 = ptrtoint ptr %lcar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lcar, align 4
  %rtry = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 7
  %14 = ptrtoint ptr %rtry to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rtry, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug377, ptr noundef nonnull @.str.61, i32 noundef %13, i32 noundef %15) #9
  br label %do.body63

do.body63:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then75)) #9
          to label %do.body78 [label %if.then75], !srcloc !259

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %exdef = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 8
  %16 = ptrtoint ptr %exdef to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exdef, align 4
  %xmtrc = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 9
  %18 = ptrtoint ptr %xmtrc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xmtrc, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug378, ptr noundef nonnull @.str.63, i32 noundef %17, i32 noundef %19) #9
  br label %do.body78

do.body78:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then90)) #9
          to label %do.body93 [label %if.then90], !srcloc !259

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %oflo = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 10
  %20 = ptrtoint ptr %oflo to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %oflo, align 4
  %clsn = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 11
  %22 = ptrtoint ptr %clsn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clsn, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug379, ptr noundef nonnull @.str.65, i32 noundef %21, i32 noundef %23) #9
  br label %do.body93

do.body93:                                        ; preds = %if.then90, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then105)) #9
          to label %do.body108 [label %if.then105], !srcloc !259

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #11
  %fram = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 12
  %24 = ptrtoint ptr %fram to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fram, align 4
  %fcs = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 13
  %26 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fcs, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug380, ptr noundef nonnull @.str.67, i32 noundef %25, i32 noundef %27) #9
  br label %do.body108

do.body108:                                       ; preds = %if.then105, %do.body93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug381, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then120)) #9
          to label %do.body123 [label %if.then120], !srcloc !259

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #11
  %rfs_rntpc = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 14
  %28 = ptrtoint ptr %rfs_rntpc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rfs_rntpc, align 4
  %rfs_rcvcc = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 15
  %30 = ptrtoint ptr %rfs_rcvcc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rfs_rcvcc, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug381, ptr noundef nonnull @.str.69, i32 noundef %29, i32 noundef %31) #9
  br label %do.body123

do.body123:                                       ; preds = %if.then120, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug382, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then135)) #9
          to label %do.body138 [label %if.then135], !srcloc !259

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #11
  %jab = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 16
  %32 = ptrtoint ptr %jab to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %jab, align 4
  %babl = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 17
  %34 = ptrtoint ptr %babl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %babl, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug382, ptr noundef nonnull @.str.71, i32 noundef %33, i32 noundef %35) #9
  br label %do.body138

do.body138:                                       ; preds = %if.then135, %do.body123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then150)) #9
          to label %do.body153 [label %if.then150], !srcloc !259

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  %cerr = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 18
  %36 = ptrtoint ptr %cerr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cerr, align 4
  %rcvcco = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 19
  %38 = ptrtoint ptr %rcvcco to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rcvcco, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug383, ptr noundef nonnull @.str.73, i32 noundef %37, i32 noundef %39) #9
  br label %do.body153

do.body153:                                       ; preds = %if.then150, %do.body138
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then165)) #9
          to label %do.body168 [label %if.then165], !srcloc !259

if.then165:                                       ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #11
  %rntpco = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 20
  %40 = ptrtoint ptr %rntpco to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rntpco, align 4
  %mpco = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 21
  %42 = ptrtoint ptr %mpco to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mpco, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug384, ptr noundef nonnull @.str.75, i32 noundef %41, i32 noundef %43) #9
  br label %do.body168

do.body168:                                       ; preds = %if.then165, %do.body153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then180)) #9
          to label %do.body183 [label %if.then180], !srcloc !259

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #11
  %mpc = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 22
  %44 = ptrtoint ptr %mpc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mpc, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug385, ptr noundef nonnull @.str.77, i32 noundef %45) #9
  br label %do.body183

do.body183:                                       ; preds = %if.then180, %do.body168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then195)) #9
          to label %do.body198 [label %if.then195], !srcloc !259

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #11
  %rntpc = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 23
  %46 = ptrtoint ptr %rntpc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rntpc, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug386, ptr noundef nonnull @.str.79, i32 noundef %47) #9
  br label %do.body198

do.body198:                                       ; preds = %if.then195, %do.body183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pr_mace_stats.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pr_mace_stats, %if.then210)) #9
          to label %do.end212 [label %if.then210], !srcloc !259

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #11
  %rcvcc = getelementptr inbounds %struct._mace_statistics, ptr %pstats, i32 0, i32 24
  %48 = ptrtoint ptr %rcvcc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rcvcc, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pr_mace_stats.__UNIQUE_ID_ddebug387, ptr noundef nonnull @.str.81, i32 noundef %49) #9
  br label %do.end212

do.end212:                                        ; preds = %if.then210, %do.body198
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netdev_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #9
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.82, i32 noundef %1)
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_irq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mace_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %dev_id, null
  br i1 %cmp, label %do.body, label %if.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_interrupt.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_interrupt, %if.then4)) #9
          to label %cleanup [label %if.then4], !srcloc !259

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mace_interrupt.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.96, i32 noundef %irq) #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %tx_irq_disabled = getelementptr i8, ptr %dev_id, i32 2445
  %2 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_irq_disabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool6.not = icmp eq i8 %3, 0
  br i1 %tobool6.not, label %if.end26, label %if.end11

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %add12 = add i32 %1, 24
  %and = and i32 %add12, 1048575
  %add13 = or i32 %and, -18874368
  %4 = inttoptr i32 %add13 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !276
  %conv = zext i8 %5 to i32
  %add19 = add i32 %1, 25
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %6 = inttoptr i32 %add21 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !277
  %conv25 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef nonnull %dev_id, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.97, i32 noundef %conv, i32 noundef %conv25) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end5
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %10 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %do.body30, label %do.body49.preheader

do.body49.preheader:                              ; preds = %if.end26
  %add52 = add i32 %1, 24
  %and53 = and i32 %add52, 1048575
  %add54 = or i32 %and53, -18874368
  %11 = inttoptr i32 %add54 to ptr
  %add91 = add i32 %1, 23
  %and92 = and i32 %add91, 1048575
  %add93 = or i32 %and92, -18874368
  %12 = inttoptr i32 %add93 to ptr
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %add105 = add i32 %1, 9
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %13 = inttoptr i32 %add107 to ptr
  %add112 = add i32 %1, 20
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %14 = inttoptr i32 %add114 to ptr
  %exdef = getelementptr i8, ptr %dev_id, i32 2340
  %xmtrc127 = getelementptr i8, ptr %dev_id, i32 2344
  %add131 = add i32 %1, 19
  %and132 = and i32 %add131, 1048575
  %add133 = or i32 %and132, -18874368
  %15 = inttoptr i32 %add133 to ptr
  %mace_stats126 = getelementptr i8, ptr %dev_id, i32 2308
  %uflo = getelementptr i8, ptr %dev_id, i32 2312
  %lcol = getelementptr i8, ptr %dev_id, i32 2316
  %more = getelementptr i8, ptr %dev_id, i32 2320
  %one = getelementptr i8, ptr %dev_id, i32 2324
  %defer = getelementptr i8, ptr %dev_id, i32 2328
  %lcar = getelementptr i8, ptr %dev_id, i32 2332
  %rtry = getelementptr i8, ptr %dev_id, i32 2336
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_free_frames = getelementptr i8, ptr %dev_id, i32 2444
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %jab = getelementptr i8, ptr %dev_id, i32 2372
  %babl = getelementptr i8, ptr %dev_id, i32 2376
  %cerr = getelementptr i8, ptr %dev_id, i32 2380
  %rcvcco = getelementptr i8, ptr %dev_id, i32 2384
  %rntpco = getelementptr i8, ptr %dev_id, i32 2388
  %mpco = getelementptr i8, ptr %dev_id, i32 2392
  br label %do.body49

do.body30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_interrupt.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_interrupt, %if.then42)) #9
          to label %cleanup [label %if.then42], !srcloc !259

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @mace_interrupt.__UNIQUE_ID_ddebug357, ptr noundef nonnull %dev_id, ptr noundef nonnull @.str.100) #9
  br label %cleanup

do.body49:                                        ; preds = %do.cond244.do.body49_crit_edge, %do.body49.preheader
  %IntrCnt.0 = phi i32 [ %dec, %do.cond244.do.body49_crit_edge ], [ 10, %do.body49.preheader ]
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !278
  %conv58 = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool60.not = icmp eq i8 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %IntrCnt.0)
  %cmp61 = icmp eq i32 %IntrCnt.0, 10
  %or.cond = select i1 %tobool60.not, i1 %cmp61, i1 false
  br i1 %or.cond, label %do.body49.cleanup_crit_edge, label %do.body65

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body65:                                        ; preds = %do.body49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_interrupt.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_interrupt, %if.then77)) #9
          to label %do.end80 [label %if.then77], !srcloc !259

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mace_interrupt.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.102, i32 noundef %irq, i32 noundef %conv58) #9
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %do.body65
  %and81 = and i32 %conv58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %do.end80.if.end85_crit_edge, label %if.then83

do.end80.if.end85_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

if.then83:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mace_rx(ptr noundef nonnull %dev_id)
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %do.end80.if.end85_crit_edge
  %and86 = and i32 %conv58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end85.if.end201_crit_edge, label %if.then88

if.end85.if.end201_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end201

if.then88:                                        ; preds = %if.end85
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !279
  %18 = and i8 %17, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp99 = icmp eq i8 %18, 0
  br i1 %cmp99, label %if.then101, label %if.then88.if.end109_crit_edge

if.then88.if.end109_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then101:                                       ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !280
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 -1) #9, !srcloc !261
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.then88.if.end109_crit_edge
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !281
  %conv118 = zext i8 %21 to i32
  %and119 = and i32 %conv118, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end109.if.end123_crit_edge, label %if.then121

if.end109.if.end123_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then121:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %exdef to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %exdef, align 4
  %inc122 = add i32 %23, 1
  store i32 %inc122, ptr %exdef, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end109.if.end123_crit_edge
  %and125 = and i32 %conv118, 15
  %24 = ptrtoint ptr %xmtrc127 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xmtrc127, align 4
  %add128 = add i32 %25, %and125
  store i32 %add128, ptr %xmtrc127, align 4
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !282
  %conv137 = zext i8 %26 to i32
  %and138 = and i32 %conv137, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  br i1 %tobool139.not, label %if.end123.if.end197_crit_edge, label %if.then140

if.end123.if.end197_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end197

if.then140:                                       ; preds = %if.end123
  %27 = ptrtoint ptr %mace_stats126 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mace_stats126, align 4
  %inc142 = add i32 %28, 1
  store i32 %inc142, ptr %mace_stats126, align 4
  %and144 = and i32 %conv137, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.then140.if.end197_crit_edge, label %if.then146

if.then140.if.end197_crit_edge:                   ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end197

if.then146:                                       ; preds = %if.then140
  %and148 = and i32 %conv137, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.then146.if.end153_crit_edge, label %if.then150

if.then146.if.end153_crit_edge:                   ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end153

if.then150:                                       ; preds = %if.then146
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %uflo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uflo, align 4
  %inc152 = add i32 %30, 1
  store i32 %inc152, ptr %uflo, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %if.then146.if.end153_crit_edge
  %and155 = and i32 %conv137, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end153.if.end160_crit_edge, label %if.then157

if.end153.if.end160_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

if.then157:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %lcol to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %lcol, align 4
  %inc159 = add i32 %32, 1
  store i32 %inc159, ptr %lcol, align 4
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.end153.if.end160_crit_edge
  %and162 = and i32 %conv137, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end160.if.end167_crit_edge, label %if.then164

if.end160.if.end167_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

if.then164:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %more to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %more, align 4
  %inc166 = add i32 %34, 1
  store i32 %inc166, ptr %more, align 4
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %if.end160.if.end167_crit_edge
  %and169 = and i32 %conv137, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end167.if.end174_crit_edge, label %if.then171

if.end167.if.end174_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174

if.then171:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %one to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %one, align 4
  %inc173 = add i32 %36, 1
  store i32 %inc173, ptr %one, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then171, %if.end167.if.end174_crit_edge
  %and176 = and i32 %conv137, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end174.if.end181_crit_edge, label %if.then178

if.end174.if.end181_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end181

if.then178:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %defer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %defer, align 4
  %inc180 = add i32 %38, 1
  store i32 %inc180, ptr %defer, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.then178, %if.end174.if.end181_crit_edge
  %and183 = and i32 %conv137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.end181.if.end188_crit_edge, label %if.then185

if.end181.if.end188_crit_edge:                    ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.then185:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %lcar to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lcar, align 4
  %inc187 = add i32 %40, 1
  store i32 %inc187, ptr %lcar, align 4
  br label %if.end188

if.end188:                                        ; preds = %if.then185, %if.end181.if.end188_crit_edge
  %and190 = and i32 %conv137, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end188.if.end197_crit_edge, label %if.then192

if.end188.if.end197_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end197

if.then192:                                       ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %rtry to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rtry, align 4
  %inc194 = add i32 %42, 1
  store i32 %inc194, ptr %rtry, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %if.end188.if.end197_crit_edge, %if.then140.if.end197_crit_edge, %if.end123.if.end197_crit_edge
  %43 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_packets, align 4
  %inc199 = add i32 %44, 1
  store i32 %inc199, ptr %tx_packets, align 4
  %45 = ptrtoint ptr %tx_free_frames to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %tx_free_frames, align 4
  %inc200 = add i8 %46, 1
  store i8 %inc200, ptr %tx_free_frames, align 4
  %47 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %48) #9
  br label %if.end201

if.end201:                                        ; preds = %if.end197, %if.end85.if.end201_crit_edge
  %and204 = and i32 %conv58, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end201.do.cond244_crit_edge, label %if.then206

if.end201.do.cond244_crit_edge:                   ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond244

if.then206:                                       ; preds = %if.end201
  %and207 = and i32 %conv58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.then206.if.end212_crit_edge, label %if.then209

if.then206.if.end212_crit_edge:                   ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

if.then209:                                       ; preds = %if.then206
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %jab to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %jab, align 4
  %inc211 = add i32 %50, 1
  store i32 %inc211, ptr %jab, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %if.then206.if.end212_crit_edge
  %and213 = and i32 %conv58, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and213)
  %tobool214.not = icmp eq i32 %and213, 0
  br i1 %tobool214.not, label %if.end212.if.end218_crit_edge, label %if.then215

if.end212.if.end218_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end218

if.then215:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %babl to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %babl, align 4
  %inc217 = add i32 %52, 1
  store i32 %inc217, ptr %babl, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %if.end212.if.end218_crit_edge
  %and219 = and i32 %conv58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and219)
  %tobool220.not = icmp eq i32 %and219, 0
  br i1 %tobool220.not, label %if.end218.if.end224_crit_edge, label %if.then221

if.end218.if.end224_crit_edge:                    ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end224

if.then221:                                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %cerr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %cerr, align 4
  %inc223 = add i32 %54, 1
  store i32 %inc223, ptr %cerr, align 4
  br label %if.end224

if.end224:                                        ; preds = %if.then221, %if.end218.if.end224_crit_edge
  %and225 = and i32 %conv58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.if.end230_crit_edge, label %if.then227

if.end224.if.end230_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then227:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %rcvcco to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rcvcco, align 4
  %inc229 = add i32 %56, 1
  store i32 %inc229, ptr %rcvcco, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.then227, %if.end224.if.end230_crit_edge
  %and231 = and i32 %conv58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool232.not = icmp eq i32 %and231, 0
  br i1 %tobool232.not, label %if.end230.if.end236_crit_edge, label %if.then233

if.end230.if.end236_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end236

if.then233:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %rntpco to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rntpco, align 4
  %inc235 = add i32 %58, 1
  store i32 %inc235, ptr %rntpco, align 4
  br label %if.end236

if.end236:                                        ; preds = %if.then233, %if.end230.if.end236_crit_edge
  %and237 = and i32 %conv58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and237)
  %tobool238.not = icmp eq i32 %and237, 0
  br i1 %tobool238.not, label %if.end236.do.cond244_crit_edge, label %if.then239

if.end236.do.cond244_crit_edge:                   ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond244

if.then239:                                       ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %mpco to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mpco, align 4
  %inc241 = add i32 %60, 1
  store i32 %inc241, ptr %mpco, align 4
  br label %do.cond244

do.cond244:                                       ; preds = %if.then239, %if.end236.do.cond244_crit_edge, %if.end201.do.cond244_crit_edge
  %dec = add nsw i32 %IntrCnt.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool247.not = icmp eq i32 %dec, 0
  %or.cond307 = select i1 %tobool60.not, i1 true, i1 %tobool247.not
  br i1 %or.cond307, label %do.cond244.cleanup_crit_edge, label %do.cond244.do.body49_crit_edge

do.cond244.do.body49_crit_edge:                   ; preds = %do.cond244
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body49

do.cond244.cleanup_crit_edge:                     ; preds = %do.cond244
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.cond244.cleanup_crit_edge, %do.body49.cleanup_crit_edge, %if.then42, %do.body30, %if.end11, %if.then4, %do.body
  %retval.0 = phi i32 [ 0, %if.end11 ], [ 0, %if.then4 ], [ 0, %if.then42 ], [ 0, %do.body ], [ 0, %do.body30 ], [ 1, %do.cond244.cleanup_crit_edge ], [ 0, %do.body49.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_get_tuple(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mace_rx(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base_addr, align 32
  %add = add i32 %1, 11
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  %4 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %5 = icmp ult i8 %4, 12
  br i1 %5, label %land.rhs.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs.lr.ph:                                   ; preds = %entry
  %and11 = and i32 %1, 1048575
  %add12 = or i32 %and11, -18874368
  %6 = inttoptr i32 %add12 to ptr
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %oflo = getelementptr i8, ptr %dev, i32 2348
  %clsn = getelementptr i8, ptr %dev, i32 2352
  %fram = getelementptr i8, ptr %dev, i32 2356
  %fcs = getelementptr i8, ptr %dev, i32 2360
  %rfs_rntpc = getelementptr i8, ptr %dev, i32 2364
  %rfs_rcvcc = getelementptr i8, ptr %dev, i32 2368
  %stats123 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  %add131 = add i32 %1, 10
  %and132 = and i32 %add131, 1048575
  %add133 = or i32 %and132, -18874368
  %7 = inttoptr i32 %add133 to ptr
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  br label %land.rhs

land.rhs:                                         ; preds = %while.cond.backedge.land.rhs_crit_edge, %land.rhs.lr.ph
  %conv16.in = phi i8 [ %3, %land.rhs.lr.ph ], [ %41, %while.cond.backedge.land.rhs_crit_edge ]
  %RxCnt.addr.015 = phi i8 [ 12, %land.rhs.lr.ph ], [ %dec, %while.cond.backedge.land.rhs_crit_edge ]
  %conv16 = zext i8 %conv16.in to i32
  %dec = add nsw i8 %RxCnt.addr.015, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %RxCnt.addr.015)
  %tobool.not = icmp eq i8 %RxCnt.addr.015, 0
  br i1 %tobool.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %6) #9, !srcloc !284
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !285
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_rx.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_rx, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !259

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv22 = zext i16 %9 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mace_rx.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.105, ptr noundef %dev, i32 noundef %conv16, i32 noundef %conv22) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %while.body
  %conv23 = zext i16 %9 to i32
  %and24 = and i32 %conv23, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %do.end
  %10 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %rx_errors, align 8
  %and28 = and i32 %conv23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then26.if.end32_crit_edge, label %if.then30

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %oflo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oflo, align 4
  %inc31 = add i32 %13, 1
  store i32 %inc31, ptr %oflo, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then26.if.end32_crit_edge
  %and34 = and i32 %conv23, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end39_crit_edge, label %if.then36

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %clsn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clsn, align 4
  %inc38 = add i32 %15, 1
  store i32 %inc38, ptr %clsn, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %and41 = and i32 %conv23, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %fram to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fram, align 4
  %inc45 = add i32 %17, 1
  store i32 %inc45, ptr %fram, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %and48 = and i32 %conv23, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.do.body160_crit_edge, label %if.then50

if.end46.do.body160_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body160

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %fcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fcs, align 4
  %inc52 = add i32 %19, 1
  store i32 %inc52, ptr %fcs, align 4
  br label %do.body160

if.else:                                          ; preds = %do.end
  %and55 = and i16 %9, 4095
  %sub = add nsw i16 %and55, -4
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !286
  %conv64 = zext i8 %20 to i32
  %21 = ptrtoint ptr %rfs_rntpc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rfs_rntpc, align 4
  %add66 = add i32 %22, %conv64
  store i32 %add66, ptr %rfs_rntpc, align 4
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !287
  %conv74 = zext i8 %23 to i32
  %24 = ptrtoint ptr %rfs_rcvcc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rfs_rcvcc, align 4
  %add76 = add i32 %25, %conv74
  store i32 %add76, ptr %rfs_rcvcc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_rx.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_rx, %if.then89)) #9
          to label %do.end94 [label %if.then89], !srcloc !259

if.then89:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv90 = sext i16 %sub to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mace_rx.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.107, i32 noundef %conv90, i32 noundef %conv23) #9
  br label %do.end94

do.end94:                                         ; preds = %if.then89, %if.else
  %conv95 = sext i16 %sub to i32
  %add96 = add nsw i32 %conv95, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add96, i32 noundef 2592) #9
  %cmp98.not = icmp eq ptr %call.i, null
  br i1 %cmp98.not, label %do.body136, label %if.then100

if.then100:                                       ; preds = %do.end94
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %27, i32 2
  store ptr %add.ptr.i7, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %29, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call106 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv95) #9
  %shr = ashr i32 %conv95, 1
  tail call void @__raw_readsw(ptr noundef nonnull %6, ptr noundef %call106, i32 noundef %shr) #9
  %and109 = and i32 %conv95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.then100.cleanup_crit_edge, label %if.then111

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then111:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #11
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !288
  %31 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i, align 8
  %add.ptr = getelementptr i8, ptr %32, i32 -1
  %33 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %add.ptr, align 1
  br label %cleanup

do.body136:                                       ; preds = %do.end94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mace_rx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mace_rx, %if.then148)) #9
          to label %cleanup.thread [label %if.then148], !srcloc !259

if.then148:                                       ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mace_rx.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.109, ptr noundef %dev, i32 noundef %conv95) #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then148, %do.body136
  %34 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_dropped, align 8
  %inc156 = add i32 %35, 1
  store i32 %inc156, ptr %rx_dropped, align 8
  br label %do.body160

cleanup:                                          ; preds = %if.then111, %if.then100.cleanup_crit_edge
  %call121 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #9
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %36 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %call121, ptr %protocol, align 8
  %call122 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #9
  %37 = ptrtoint ptr %stats123 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stats123, align 8
  %inc124 = add i32 %38, 1
  store i32 %inc124, ptr %stats123, align 8
  %39 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_bytes, align 8
  %add127 = add i32 %40, %conv95
  store i32 %add127, ptr %rx_bytes, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !289
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #9, !srcloc !261
  br label %while.cond.backedge

do.body160:                                       ; preds = %cleanup.thread, %if.then50, %if.end46.do.body160_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !290
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #9, !srcloc !261
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.body160, %cleanup
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #9, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !283
  %42 = add i8 %41, -1
  %43 = icmp ult i8 %42, 12
  br i1 %43, label %while.cond.backedge.land.rhs_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.cond.backedge.land.rhs_crit_edge:           ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %land.rhs.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !182, !184, !185, !186, !188, !189, !191, !192, !193, !195, !196, !197, !199, !200, !201, !203, !205, !206, !207, !208, !210, !212, !214, !216, !217, !219, !220, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !247, !248}
!llvm.module.flags = !{!250, !251, !252, !253, !254, !255, !256, !257}
!llvm.ident = !{!258}

!0 = !{ptr @__UNIQUE_ID_description345, !1, !"__UNIQUE_ID_description345", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 386, i32 1}
!2 = !{ptr @__UNIQUE_ID_file346, !3, !"__UNIQUE_ID_file346", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 387, i32 1}
!4 = !{ptr @__UNIQUE_ID_license347, !3, !"__UNIQUE_ID_license347", i1 false, i1 false}
!5 = !{ptr @__param_if_port, !6, !"__param_if_port", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 392, i32 1}
!7 = !{ptr @__UNIQUE_ID_if_porttype348, !6, !"__UNIQUE_ID_if_porttype348", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_nmclan_cs__390_1508_nmclan_cs_driver_init6, !9, !"__initcall__kmod_nmclan_cs__390_1508_nmclan_cs_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1508, i32 1}
!10 = !{ptr @__exitcall_nmclan_cs_driver_exit, !9, !"__exitcall_nmclan_cs_driver_exit", i1 false, i1 false}
!11 = !{ptr @__param_str_if_port, !6, !"__param_str_if_port", i1 false, i1 false}
!12 = !{ptr @if_port, !6, !"if_port", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1501, i32 11}
!15 = !{ptr @nmclan_cs_driver, !16, !"nmclan_cs_driver", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1499, i32 29}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 436, i32 5}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @nmclan_probe.__UNIQUE_ID_ddebug349, !18, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!22 = !{ptr @nmclan_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 446, i32 5}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mace_netdev_ops, !26, !"mace_netdev_ops", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 419, i32 36}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 544, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mace_init._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mace_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 591, i32 3}
!34 = !{ptr @mace_init._entry.7, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mace_init._entry_ptr.9, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1456, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @restore_multicast_list.__UNIQUE_ID_ddebug389, !37, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!40 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 804, i32 3}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mace_close.__UNIQUE_ID_ddebug354, !42, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 862, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mace_start_xmit.__UNIQUE_ID_ddebug355, !46, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!49 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 764, i32 24}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 377, i32 5}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 377, i32 13}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 377, i32 24}
!58 = !{ptr @if_names, !59, !"if_names", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 376, i32 20}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 843, i32 22}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 845, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mace_tx_timeout._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mace_tx_timeout._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1273, i32 3}
!69 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mace_get_stats.__UNIQUE_ID_ddebug388, !68, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!71 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1135, i32 3}
!74 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug362, !73, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!76 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1136, i32 3}
!79 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug363, !78, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!80 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1138, i32 3}
!83 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug364, !82, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!84 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1140, i32 3}
!87 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug365, !86, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!88 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1142, i32 3}
!91 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug366, !90, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!92 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1145, i32 3}
!95 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug367, !94, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!96 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1147, i32 3}
!99 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug368, !98, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!100 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1149, i32 3}
!103 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug369, !102, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!104 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1152, i32 3}
!107 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug370, !106, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!108 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1154, i32 3}
!111 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug371, !110, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!112 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1156, i32 3}
!115 = !{ptr @pr_linux_stats.__UNIQUE_ID_ddebug372, !114, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!116 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1165, i32 3}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug373, !118, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!121 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1167, i32 3}
!124 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug374, !123, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!125 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1169, i32 3}
!128 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug375, !127, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!129 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1171, i32 3}
!132 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug376, !131, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!133 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1173, i32 3}
!136 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug377, !135, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!137 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1177, i32 3}
!140 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug378, !139, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!141 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1181, i32 3}
!144 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug379, !143, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!145 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1183, i32 3}
!148 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug380, !147, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!149 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1188, i32 3}
!152 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug381, !151, !"__UNIQUE_ID_ddebug381", i1 false, i1 false}
!153 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1192, i32 3}
!156 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug382, !155, !"__UNIQUE_ID_ddebug382", i1 false, i1 false}
!157 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1194, i32 3}
!160 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug383, !159, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!161 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1196, i32 3}
!164 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug384, !163, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!165 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1200, i32 3}
!168 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug385, !167, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!169 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1203, i32 3}
!172 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug386, !171, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!173 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1206, i32 3}
!176 = !{ptr @pr_mace_stats.__UNIQUE_ID_ddebug387, !175, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!177 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @netdev_ethtool_ops, !179, !"netdev_ethtool_ops", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 823, i32 33}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 820, i32 3}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 615, i32 3}
!184 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @nmclan_config.__UNIQUE_ID_ddebug351, !183, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 649, i32 7}
!188 = !{ptr @nmclan_config.__UNIQUE_ID_ddebug352, !187, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!189 = !{ptr @.str.86, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 652, i32 7}
!191 = !{ptr @nmclan_config._entry, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @nmclan_config._entry_ptr, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.88, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 665, i32 5}
!195 = !{ptr @nmclan_config._entry.87, !194, !"_entry", i1 false, i1 false}
!196 = !{ptr @nmclan_config._entry_ptr.89, !194, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 671, i32 5}
!199 = !{ptr @nmclan_config._entry.90, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @nmclan_config._entry_ptr.92, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 675, i32 20}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 922, i32 5}
!205 = !{ptr @.str.95, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mace_interrupt.__UNIQUE_ID_ddebug356, !204, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!207 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 932, i32 13}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 934, i32 13}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 935, i32 24}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 944, i32 5}
!216 = !{ptr @mace_interrupt.__UNIQUE_ID_ddebug357, !215, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!217 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 954, i32 5}
!219 = !{ptr @mace_interrupt.__UNIQUE_ID_ddebug358, !218, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!220 = !{ptr @.str.102, !218, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.103, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1073, i32 5}
!223 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @mace_rx.__UNIQUE_ID_ddebug359, !222, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!225 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1100, i32 7}
!228 = !{ptr @mace_rx.__UNIQUE_ID_ddebug360, !227, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!229 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1119, i32 2}
!232 = !{ptr @mace_rx.__UNIQUE_ID_ddebug361, !231, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!233 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 686, i32 2}
!236 = !{ptr @.str.111, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @nmclan_release.__UNIQUE_ID_ddebug353, !235, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 466, i32 5}
!240 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @nmclan_detach.__UNIQUE_ID_ddebug350, !239, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1493, i32 2}
!244 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.116, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1494, i32 2}
!247 = !{ptr @.str.117, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @nmclan_ids, !249, !"nmclan_ids", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/amd/nmclan_cs.c", i32 1492, i32 38}
!250 = !{i32 1, !"wchar_size", i32 2}
!251 = !{i32 1, !"min_enum_size", i32 4}
!252 = !{i32 8, !"branch-target-enforcement", i32 0}
!253 = !{i32 8, !"sign-return-address", i32 0}
!254 = !{i32 8, !"sign-return-address-all", i32 0}
!255 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!256 = !{i32 7, !"uwtable", i32 1}
!257 = !{i32 7, !"frame-pointer", i32 2}
!258 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!259 = !{i64 2148996886, i64 2148996891, i64 2148996904, i64 2148996948, i64 2148996982, i64 2148997003}
!260 = !{i64 2156596233}
!261 = !{i64 6194141}
!262 = !{!"auto-init"}
!263 = !{i64 2156595168}
!264 = !{i64 6194536}
!265 = !{i64 2156595612}
!266 = !{i64 2156595878}
!267 = !{i64 2156614289}
!268 = !{i64 2156617000}
!269 = !{i64 2156621370}
!270 = !{i64 6193718}
!271 = !{i64 2156622013}
!272 = !{i64 2156594542}
!273 = !{i64 2156596987}
!274 = !{i64 2156597351}
!275 = !{i64 2156597754}
!276 = !{i64 2156624971}
!277 = !{i64 2156625273}
!278 = !{i64 2156627831}
!279 = !{i64 2156630601}
!280 = !{i64 2156630826}
!281 = !{i64 2156631250}
!282 = !{i64 2156631562}
!283 = !{i64 2156631949}
!284 = !{i64 6193918}
!285 = !{i64 2156632616}
!286 = !{i64 2156639700}
!287 = !{i64 2156639992}
!288 = !{i64 2156643112}
!289 = !{i64 2156643332}
!290 = !{i64 2156646294}
