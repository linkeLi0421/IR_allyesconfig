; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/enc28j60.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/enc28j60.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.anon.148 = type { i32 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.enc28j60_net = type { ptr, ptr, %struct.mutex, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, i16, i16, i16, i8, i8, i32, i32, [1522 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.146, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.146 = type { [3 x i32], [3 x i32], [3 x i32] }

@__initcall__kmod_enc28j60__478_1640_enc28j60_driver_init6 = internal global ptr @enc28j60_driver_init, section ".initcall6.init", align 4
@enc28j60_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @enc28j60_probe, ptr @enc28j60_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @enc28j60_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_enc28j60_driver_exit = internal global ptr @enc28j60_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description479 = internal constant [46 x i8] c"enc28j60.description=enc28j60 ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author480 = internal constant [66 x i8] c"enc28j60.author=Claudio Lanconelli <lanconelli.claudio@eptar.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file481 = internal constant [54 x i8] c"enc28j60.file=drivers/net/ethernet/microchip/enc28j60\00", section ".modinfo", align 1
@__UNIQUE_ID_license482 = internal constant [21 x i8] c"enc28j60.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"enc28j60.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { %struct.anon.148, [28 x i8] } { %struct.anon.148 { i32 -1 }, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype483 = internal constant [28 x i8] c"enc28j60.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug484 = internal constant [86 x i8] c"enc28j60.parm=debug:Debug verbosity level in amount of bits set (0=none, ..., 31=all)\00", section ".modinfo", align 1
@__UNIQUE_ID_alias485 = internal constant [28 x i8] c"enc28j60.alias=spi:enc28j60\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"enc28j60\00", [23 x i8] zeroinitializer }, align 32
@enc28j60_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,enc28j60\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@enc28j60_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Ethernet driver %s loaded\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"enc28j60_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/microchip/enc28j60.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@enc28j60_probe._entry_ptr = internal global ptr @enc28j60_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.02\00", [27 x i8] zeroinitializer }, align 32
@enc28j60_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@enc28j60_probe.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&priv->tx_work)\00", [62 x i8] zeroinitializer }, align 32
@enc28j60_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&priv->setrx_work)\00", [59 x i8] zeroinitializer }, align 32
@enc28j60_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&priv->irq_work)\00", [61 x i8] zeroinitializer }, align 32
@enc28j60_probe.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&priv->restart_work)\00", [57 x i8] zeroinitializer }, align 32
@enc28j60_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chip not found\0A\00", [16 x i8] zeroinitializer }, align 32
@enc28j60_probe._entry_ptr.18 = internal global ptr @enc28j60_probe._entry.16, section ".printk_index", align 4
@enc28j60_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 1585, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request irq %d failed (ret = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@enc28j60_probe._entry_ptr.22 = internal global ptr @enc28j60_probe._entry.19, section ".printk_index", align 4
@enc28j60_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @enc28j60_net_open, ptr @enc28j60_net_close, ptr @enc28j60_send_packet, ptr null, ptr null, ptr null, ptr @enc28j60_set_multicast_list, ptr @enc28j60_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enc28j60_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@enc28j60_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @enc28j60_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @enc28j60_get_msglevel, ptr @enc28j60_set_msglevel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @enc28j60_get_link_ksettings, ptr @enc28j60_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@enc28j60_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1601, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"register netdev failed (ret = %d)\0A\00", [61 x i8] zeroinitializer }, align 32
@enc28j60_probe._entry_ptr.25 = internal global ptr @enc28j60_probe._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Tx Packet Len:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.enc28j60_hw_tx = private unnamed_addr constant [15 x i8] c"enc28j60_hw_tx\00", align 1
@enc28j60_hw_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.enc28j60_hw_tx, ptr @.str.3, i32 1269, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error, %d location differ: 0x%02x-0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@enc28j60_hw_tx._entry_ptr = internal global ptr @enc28j60_hw_tx._entry, section ".printk_index", align 4
@enc28j60_hw_tx._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.enc28j60_hw_tx, ptr @.str.3, i32 1274, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Tx write buffer, verify ERROR!\0A\00", [32 x i8] zeroinitializer }, align 32
@enc28j60_hw_tx._entry_ptr.31 = internal global ptr @enc28j60_hw_tx._entry.29, section ".printk_index", align 4
@dump_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017enc28j60: %s - packet len:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dump_packet\00", [20 x i8] zeroinitializer }, align 32
@dump_packet._entry_ptr = internal global ptr @dump_packet._entry, section ".printk_index", align 4
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pk data: \00", [22 x i8] zeroinitializer }, align 32
@enc28j60_packet_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 390, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s() ERWPT:0x%04x != 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enc28j60_packet_write\00", [42 x i8] zeroinitializer }, align 32
@enc28j60_packet_write._entry_ptr = internal global ptr @enc28j60_packet_write._entry, section ".printk_index", align 4
@enc28j60_packet_write._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 400, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s() after control byte ERWPT:0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@enc28j60_packet_write._entry_ptr.39 = internal global ptr @enc28j60_packet_write._entry.37, section ".printk_index", align 4
@enc28j60_packet_write._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.36, ptr @.str.3, i32 406, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s() after write packet ERWPT:0x%04x, len=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@enc28j60_packet_write._entry_ptr.42 = internal global ptr @enc28j60_packet_write._entry.40, section ".printk_index", align 4
@spi_read_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 160, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() failed: ret = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spi_read_op\00", [20 x i8] zeroinitializer }, align 32
@spi_read_op._entry_ptr = internal global ptr @spi_read_op._entry, section ".printk_index", align 4
@spi_write_op._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.45, ptr @.str.3, i32 180, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_write_op\00", [19 x i8] zeroinitializer }, align 32
@spi_write_op._entry_ptr = internal global ptr @spi_write_op._entry, section ".printk_index", align 4
@spi_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.46, ptr @.str.3, i32 135, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_write_buf\00", [18 x i8] zeroinitializer }, align 32
@spi_write_buf._entry_ptr = internal global ptr @spi_write_buf._entry, section ".printk_index", align 4
@enc28j60_mem_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 365, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s() error writing ERDPT (0x%04x - 0x%04x)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enc28j60_mem_read\00", [46 x i8] zeroinitializer }, align 32
@enc28j60_mem_read._entry_ptr = internal global ptr @enc28j60_mem_read._entry, section ".printk_index", align 4
@spi_read_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.49, ptr @.str.3, i32 114, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spi_read_buf\00", [19 x i8] zeroinitializer }, align 32
@spi_read_buf._entry_ptr = internal global ptr @spi_read_buf._entry, section ".printk_index", align 4
@enc28j60_setrx_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 1429, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"promiscuous mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"enc28j60_setrx_work_handler\00", [36 x i8] zeroinitializer }, align 32
@enc28j60_setrx_work_handler._entry_ptr = internal global ptr @enc28j60_setrx_work_handler._entry, section ".printk_index", align 4
@enc28j60_setrx_work_handler._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 1433, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"multicast mode\0A\00", [16 x i8] zeroinitializer }, align 32
@enc28j60_setrx_work_handler._entry_ptr.54 = internal global ptr @enc28j60_setrx_work_handler._entry.52, section ".printk_index", align 4
@enc28j60_setrx_work_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 1439, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"normal mode\0A\00", [19 x i8] zeroinitializer }, align 32
@enc28j60_setrx_work_handler._entry_ptr.57 = internal global ptr @enc28j60_setrx_work_handler._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"intDMA(%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intLINK(%d)\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intTX(%d)\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tx Error (aborted)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Tx Done\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intTXErr(%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Tx Error\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"LateCollision TXErr (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"intRXErr(%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX Overrun\0A\00", [20 x i8] zeroinitializer }, align 32
@enc28j60_check_link_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 1056, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s() PHSTAT1: %04x, PHSTAT2: %04x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enc28j60_check_link_status\00", [37 x i8] zeroinitializer }, align 32
@enc28j60_check_link_status._entry_ptr = internal global ptr @enc28j60_check_link_status._entry, section ".printk_index", align 4
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"link up - %s\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Full duplex\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Half duplex\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@poll_ready.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"poll_ready\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg %02x ready timeout!\0A\00", [39 x i8] zeroinitializer }, align 32
@enc28j60_read_tsv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 813, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reading TSV at addr:0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enc28j60_read_tsv\00", [46 x i8] zeroinitializer }, align 32
@enc28j60_read_tsv._entry_ptr = internal global ptr @enc28j60_read_tsv._entry, section ".printk_index", align 4
@enc28j60_dump_tsv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 823, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s - TSV:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enc28j60_dump_tsv\00", [46 x i8] zeroinitializer }, align 32
@enc28j60_dump_tsv._entry_ptr = internal global ptr @enc28j60_dump_tsv._entry, section ".printk_index", align 4
@enc28j60_dump_tsv._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 834, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ByteCount: %d, CollisionCount: %d, TotByteOnWire: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@enc28j60_dump_tsv._entry_ptr.82 = internal global ptr @enc28j60_dump_tsv._entry.80, section ".printk_index", align 4
@enc28j60_dump_tsv._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.79, ptr @.str.3, i32 840, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"TxDone: %d, CRCErr:%d, LenChkErr: %d, LenOutOfRange: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@enc28j60_dump_tsv._entry_ptr.85 = internal global ptr @enc28j60_dump_tsv._entry.83, section ".printk_index", align 4
@enc28j60_dump_tsv._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.79, ptr @.str.3, i32 846, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"Multicast: %d, Broadcast: %d, PacketDefer: %d, ExDefer: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@enc28j60_dump_tsv._entry_ptr.88 = internal global ptr @enc28j60_dump_tsv._entry.86, section ".printk_index", align 4
@enc28j60_dump_tsv._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.79, ptr @.str.3, i32 851, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"ExCollision: %d, LateCollision: %d, Giant: %d, Underrun: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@enc28j60_dump_tsv._entry_ptr.91 = internal global ptr @enc28j60_dump_tsv._entry.89, section ".printk_index", align 4
@enc28j60_dump_tsv._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.79, ptr @.str.3, i32 857, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"ControlFrame: %d, PauseFrame: %d, BackPressApp: %d, VLanTagFrame: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@enc28j60_dump_tsv._entry_ptr.94 = internal global ptr @enc28j60_dump_tsv._entry.92, section ".printk_index", align 4
@nolock_txfifo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 614, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(%d, %d) TXFIFO bad parameters!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nolock_txfifo_init\00", [45 x i8] zeroinitializer }, align 32
@nolock_txfifo_init._entry_ptr = internal global ptr @nolock_txfifo_init._entry, section ".printk_index", align 4
@.str.97 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s() free_space = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@__func__.enc28j60_get_free_rxfifo = private unnamed_addr constant [25 x i8] c"enc28j60_get_free_rxfifo\00", align 1
@.str.98 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intRX, pk_cnt: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX max_pk_cnt: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RX pk_addr:0x%04x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s() Invalid packet address!! 0x%04x\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.enc28j60_hw_rx = private unnamed_addr constant [15 x i8] c"enc28j60_hw_rx\00", align 1
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Rx Error (%04x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"out of memory for Rx'd frame\0A\00", [34 x i8] zeroinitializer }, align 32
@enc28j60_hw_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @__func__.enc28j60_hw_rx, ptr @.str.3, i32 989, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s() ERXRDPT:0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@enc28j60_hw_rx._entry_ptr = internal global ptr @enc28j60_hw_rx._entry, section ".printk_index", align 4
@enc28j60_hw_rx._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @__func__.enc28j60_hw_rx, ptr @.str.3, i32 1000, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s() ERXRDPT verify error (0x%04x - 0x%04x)\0A\00", [51 x i8] zeroinitializer }, align 32
@enc28j60_hw_rx._entry_ptr.107 = internal global ptr @enc28j60_hw_rx._entry.105, section ".printk_index", align 4
@nolock_rxfifo_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 596, ptr @.str.21, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(%d, %d) RXFIFO bad parameters!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nolock_rxfifo_init\00", [45 x i8] zeroinitializer }, align 32
@nolock_rxfifo_init._entry_ptr = internal global ptr @nolock_rxfifo_init._entry, section ".printk_index", align 4
@enc28j60_dump_rsv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 868, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - NextPk: 0x%04x - RSV:\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enc28j60_dump_rsv\00", [46 x i8] zeroinitializer }, align 32
@enc28j60_dump_rsv._entry_ptr = internal global ptr @enc28j60_dump_rsv._entry, section ".printk_index", align 4
@enc28j60_dump_rsv._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 870, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ByteCount: %d, DribbleNibble: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@enc28j60_dump_rsv._entry_ptr.114 = internal global ptr @enc28j60_dump_rsv._entry.112, section ".printk_index", align 4
@enc28j60_dump_rsv._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.3, i32 876, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RxOK: %d, CRCErr:%d, LenChkErr: %d, LenOutOfRange: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@enc28j60_dump_rsv._entry_ptr.117 = internal global ptr @enc28j60_dump_rsv._entry.115, section ".printk_index", align 4
@enc28j60_dump_rsv._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.111, ptr @.str.3, i32 882, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Multicast: %d, Broadcast: %d, LongDropEvent: %d, CarrierEvent: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@enc28j60_dump_rsv._entry_ptr.120 = internal global ptr @enc28j60_dump_rsv._entry.118, section ".printk_index", align 4
@enc28j60_dump_rsv._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.111, ptr @.str.3, i32 888, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ControlFrame: %d, PauseFrame: %d, UnknownOp: %d, VLanTagFrame: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@enc28j60_dump_rsv._entry_ptr.123 = internal global ptr @enc28j60_dump_rsv._entry.121, section ".printk_index", align 4
@.str.124 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not restart %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid MAC address %pM\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hw_reset() failed\0A\00", [45 x i8] zeroinitializer }, align 32
@enc28j60_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.128, ptr @.str.3, i32 656, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s() - %s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enc28j60_hw_init\00", [47 x i8] zeroinitializer }, align 32
@enc28j60_hw_init._entry_ptr = internal global ptr @enc28j60_hw_init._entry, section ".printk_index", align 4
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FullDuplex\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HalfDuplex\00", [21 x i8] zeroinitializer }, align 32
@enc28j60_hw_init._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.128, ptr @.str.3, i32 682, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chip RevID: 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@enc28j60_hw_init._entry_ptr.133 = internal global ptr @enc28j60_hw_init._entry.131, section ".printk_index", align 4
@enc28j60_hw_init._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.128, ptr @.str.3, i32 686, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s() Invalid RevId %d\0A\00", [41 x i8] zeroinitializer }, align 32
@enc28j60_hw_init._entry_ptr.136 = internal global ptr @enc28j60_hw_init._entry.134, section ".printk_index", align 4
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Hw initialized.\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@enc28j60_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.3, i32 558, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [383 x i8], [65 x i8] } { [383 x i8] c" %s\0AHwRevID: 0x%02x\0ACntrl: ECON1 ECON2 ESTAT  EIR  EIE\0A       0x%02x  0x%02x  0x%02x  0x%02x  0x%02x\0AMAC  : MACON1 MACON3 MACON4\0A       0x%02x   0x%02x   0x%02x\0ARx   : ERXST  ERXND  ERXWRPT ERXRDPT ERXFCON EPKTCNT MAMXFL\0A       0x%04x 0x%04x 0x%04x  0x%04x  0x%02x    0x%02x    0x%04x\0ATx   : ETXST  ETXND  MACLCON1 MACLCON2 MAPHSUP\0A       0x%04x 0x%04x 0x%02x     0x%02x     0x%02x\0A\00", [65 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enc28j60_dump_regs\00", [45 x i8] zeroinitializer }, align 32
@enc28j60_dump_regs._entry_ptr = internal global ptr @enc28j60_dump_regs._entry, section ".printk_index", align 4
@enc28j60_hw_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.3, i32 751, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s() enabling interrupts.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enc28j60_hw_enable\00", [45 x i8] zeroinitializer }, align 32
@enc28j60_hw_enable._entry_ptr = internal global ptr @enc28j60_hw_enable._entry, section ".printk_index", align 4
@enc28j60_set_hw_macaddr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.3, i32 488, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Setting MAC address to %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enc28j60_set_hw_macaddr\00", [40 x i8] zeroinitializer }, align 32
@enc28j60_set_hw_macaddr._entry_ptr = internal global ptr @enc28j60_set_hw_macaddr._entry, section ".printk_index", align 4
@enc28j60_set_hw_macaddr._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.3, i32 501, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s() Hardware must be disabled to set Mac address\0A\00", [45 x i8] zeroinitializer }, align 32
@enc28j60_set_hw_macaddr._entry_ptr.146 = internal global ptr @enc28j60_set_hw_macaddr._entry.144, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.147 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%smulticast mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"all-\00", [27 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tx timeout\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported link setting\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Warning: hw must be disabled to set link mode\0A\00", [49 x i8] zeroinitializer }, align 32
@enc28j60_lowpower.__UNIQUE_ID_ddebug477 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.153, ptr @.str.3, ptr @.str.154, i8 0, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enc28j60_lowpower\00", [46 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s power...\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"enc28j60_driver\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1632, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 78, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1634, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"enc28j60_dt_ids\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1626, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1547, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1559, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1560, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1561, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1562, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1563, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1569, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1584, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"enc28j60_netdev_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1530, i32 36 }
@___asan_gen_.239 = private unnamed_addr constant [21 x i8] c"enc28j60_ethtool_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1515, i32 33 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1600, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1242, i32 17 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1242, i32 35 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1267, i32 5 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1274, i32 4 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 893, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 894, i32 29 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 388, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 398, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 404, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 159, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 179, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 134, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 363, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 113, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1429, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1433, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1439, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1138, i32 37 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1146, i32 37 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1158, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1163, i32 23 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1169, i32 29 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1180, i32 37 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1185, i32 29 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1196, i32 13 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1211, i32 37 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1216, i32 38 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1054, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1062, i32 22 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1063, i32 18 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1063, i32 34 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1066, i32 22 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 419, i32 5 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 812, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 823, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 832, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 835, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 841, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 847, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 852, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 613, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1037, i32 35 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1105, i32 35 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1111, i32 36 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 913, i32 35 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 918, i32 21 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 952, i32 21 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 964, i32 22 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 988, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 998, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 595, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 868, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 869, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 871, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 877, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 883, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1458, i32 22 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1354, i32 20 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1362, i32 20 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 655, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 682, i32 3 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 685, i32 4 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 739, i32 28 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 532, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 750, i32 3 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 487, i32 4 }
@___asan_gen_.611 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 499, i32 4 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1408, i32 21 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1409, i32 39 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1409, i32 48 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 1333, i32 20 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 791, i32 23 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 796, i32 22 }
@___asan_gen_.644 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.645 = private constant [45 x i8] c"../drivers/net/ethernet/microchip/enc28j60.c\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.645, i32 632, i32 3 }
@llvm.compiler.used = appending global [216 x ptr] [ptr @__UNIQUE_ID_alias485, ptr @__UNIQUE_ID_author480, ptr @__UNIQUE_ID_debug484, ptr @__UNIQUE_ID_debugtype483, ptr @__UNIQUE_ID_description479, ptr @__UNIQUE_ID_file481, ptr @__UNIQUE_ID_license482, ptr @__exitcall_enc28j60_driver_exit, ptr @__initcall__kmod_enc28j60__478_1640_enc28j60_driver_init6, ptr @__param_debug, ptr @dump_packet._entry, ptr @dump_packet._entry_ptr, ptr @enc28j60_check_link_status._entry, ptr @enc28j60_check_link_status._entry_ptr, ptr @enc28j60_driver_exit, ptr @enc28j60_dump_regs._entry, ptr @enc28j60_dump_regs._entry_ptr, ptr @enc28j60_dump_rsv._entry, ptr @enc28j60_dump_rsv._entry.112, ptr @enc28j60_dump_rsv._entry.115, ptr @enc28j60_dump_rsv._entry.118, ptr @enc28j60_dump_rsv._entry.121, ptr @enc28j60_dump_rsv._entry_ptr, ptr @enc28j60_dump_rsv._entry_ptr.114, ptr @enc28j60_dump_rsv._entry_ptr.117, ptr @enc28j60_dump_rsv._entry_ptr.120, ptr @enc28j60_dump_rsv._entry_ptr.123, ptr @enc28j60_dump_tsv._entry, ptr @enc28j60_dump_tsv._entry.80, ptr @enc28j60_dump_tsv._entry.83, ptr @enc28j60_dump_tsv._entry.86, ptr @enc28j60_dump_tsv._entry.89, ptr @enc28j60_dump_tsv._entry.92, ptr @enc28j60_dump_tsv._entry_ptr, ptr @enc28j60_dump_tsv._entry_ptr.82, ptr @enc28j60_dump_tsv._entry_ptr.85, ptr @enc28j60_dump_tsv._entry_ptr.88, ptr @enc28j60_dump_tsv._entry_ptr.91, ptr @enc28j60_dump_tsv._entry_ptr.94, ptr @enc28j60_hw_enable._entry, ptr @enc28j60_hw_enable._entry_ptr, ptr @enc28j60_hw_init._entry, ptr @enc28j60_hw_init._entry.131, ptr @enc28j60_hw_init._entry.134, ptr @enc28j60_hw_init._entry_ptr, ptr @enc28j60_hw_init._entry_ptr.133, ptr @enc28j60_hw_init._entry_ptr.136, ptr @enc28j60_hw_rx._entry, ptr @enc28j60_hw_rx._entry.105, ptr @enc28j60_hw_rx._entry_ptr, ptr @enc28j60_hw_rx._entry_ptr.107, ptr @enc28j60_hw_tx._entry, ptr @enc28j60_hw_tx._entry.29, ptr @enc28j60_hw_tx._entry_ptr, ptr @enc28j60_hw_tx._entry_ptr.31, ptr @enc28j60_mem_read._entry, ptr @enc28j60_mem_read._entry_ptr, ptr @enc28j60_packet_write._entry, ptr @enc28j60_packet_write._entry.37, ptr @enc28j60_packet_write._entry.40, ptr @enc28j60_packet_write._entry_ptr, ptr @enc28j60_packet_write._entry_ptr.39, ptr @enc28j60_packet_write._entry_ptr.42, ptr @enc28j60_probe._entry, ptr @enc28j60_probe._entry.16, ptr @enc28j60_probe._entry.19, ptr @enc28j60_probe._entry.23, ptr @enc28j60_probe._entry_ptr, ptr @enc28j60_probe._entry_ptr.18, ptr @enc28j60_probe._entry_ptr.22, ptr @enc28j60_probe._entry_ptr.25, ptr @enc28j60_read_tsv._entry, ptr @enc28j60_read_tsv._entry_ptr, ptr @enc28j60_set_hw_macaddr._entry, ptr @enc28j60_set_hw_macaddr._entry.144, ptr @enc28j60_set_hw_macaddr._entry_ptr, ptr @enc28j60_set_hw_macaddr._entry_ptr.146, ptr @enc28j60_setrx_work_handler._entry, ptr @enc28j60_setrx_work_handler._entry.52, ptr @enc28j60_setrx_work_handler._entry.55, ptr @enc28j60_setrx_work_handler._entry_ptr, ptr @enc28j60_setrx_work_handler._entry_ptr.54, ptr @enc28j60_setrx_work_handler._entry_ptr.57, ptr @nolock_rxfifo_init._entry, ptr @nolock_rxfifo_init._entry_ptr, ptr @nolock_txfifo_init._entry, ptr @nolock_txfifo_init._entry_ptr, ptr @spi_read_buf._entry, ptr @spi_read_buf._entry_ptr, ptr @spi_read_op._entry, ptr @spi_read_op._entry_ptr, ptr @spi_write_buf._entry, ptr @spi_write_buf._entry_ptr, ptr @spi_write_op._entry, ptr @spi_write_op._entry_ptr, ptr @enc28j60_driver, ptr @debug, ptr @.str, ptr @enc28j60_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @enc28j60_probe.__key, ptr @.str.7, ptr @enc28j60_probe.__key.8, ptr @.str.9, ptr @enc28j60_probe.__key.10, ptr @.str.11, ptr @enc28j60_probe.__key.12, ptr @.str.13, ptr @enc28j60_probe.__key.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @enc28j60_netdev_ops, ptr @enc28j60_ethtool_ops, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], section "llvm.metadata"
@0 = internal global [163 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_tx._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_packet_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_packet_write._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_packet_write._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_read_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_write_op._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_mem_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_read_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_setrx_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_setrx_work_handler._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_setrx_work_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_check_link_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_read_tsv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_tsv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_tsv._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_tsv._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_tsv._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_tsv._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_tsv._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nolock_txfifo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_rx._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nolock_rxfifo_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_rsv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_rsv._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_rsv._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_rsv._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_rsv._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_init._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_init._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 383, i32 448, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_hw_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_set_hw_macaddr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc28j60_set_hw_macaddr._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @enc28j60_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @enc28j60_driver, i32 0, i32 4)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_probe(ptr noundef %spi) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 1824, i32 noundef 1, i32 noundef 1) #11
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %add.ptr.i, align 4
  %spi6 = getelementptr i8, ptr %call, i32 2308
  %2 = ptrtoint ptr %spi6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %spi6, align 4
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %3)
  %cmp1.i = icmp ugt i32 %3, 31
  br i1 %cmp1.i, label %if.end4.netif_msg_init.exit_crit_edge, label %if.end.i

if.end4.netif_msg_init.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp eq i32 %3, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %notmask.i = shl nsw i32 -1, %3
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end4.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 54, %if.end4.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 2600
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %lock = getelementptr i8, ptr %call, i32 2312
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @enc28j60_probe.__key) #11
  %tx_work = getelementptr i8, ptr %call, i32 2408
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #11
  %5 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2424
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @enc28j60_probe.__key.8, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry15 = getelementptr i8, ptr %call, i32 2412
  %6 = ptrtoint ptr %entry15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry15, ptr %entry15, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2416
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry15, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2420
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @enc28j60_tx_work_handler, ptr %func, align 4
  %setrx_work = getelementptr i8, ptr %call, i32 2496
  tail call void @__init_work(ptr noundef %setrx_work, i32 noundef 0) #11
  %9 = ptrtoint ptr %setrx_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %setrx_work, align 4
  %lockdep_map25 = getelementptr i8, ptr %call, i32 2512
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map25, ptr noundef nonnull @.str.11, ptr noundef nonnull @enc28j60_probe.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry27 = getelementptr i8, ptr %call, i32 2500
  %10 = ptrtoint ptr %entry27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry27, ptr %entry27, align 4
  %prev.i170 = getelementptr i8, ptr %call, i32 2504
  %11 = ptrtoint ptr %prev.i170 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry27, ptr %prev.i170, align 4
  %func29 = getelementptr i8, ptr %call, i32 2508
  %12 = ptrtoint ptr %func29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @enc28j60_setrx_work_handler, ptr %func29, align 4
  %irq_work = getelementptr i8, ptr %call, i32 2452
  tail call void @__init_work(ptr noundef %irq_work, i32 noundef 0) #11
  %13 = ptrtoint ptr %irq_work to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -64, ptr %irq_work, align 4
  %lockdep_map38 = getelementptr i8, ptr %call, i32 2468
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map38, ptr noundef nonnull @.str.13, ptr noundef nonnull @enc28j60_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry40 = getelementptr i8, ptr %call, i32 2456
  %14 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i171 = getelementptr i8, ptr %call, i32 2460
  %15 = ptrtoint ptr %prev.i171 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %entry40, ptr %prev.i171, align 4
  %func42 = getelementptr i8, ptr %call, i32 2464
  %16 = ptrtoint ptr %func42 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @enc28j60_irq_work_handler, ptr %func42, align 4
  %restart_work = getelementptr i8, ptr %call, i32 2540
  tail call void @__init_work(ptr noundef %restart_work, i32 noundef 0) #11
  %17 = ptrtoint ptr %restart_work to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %restart_work, align 4
  %lockdep_map51 = getelementptr i8, ptr %call, i32 2556
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map51, ptr noundef nonnull @.str.15, ptr noundef nonnull @enc28j60_probe.__key.14, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry53 = getelementptr i8, ptr %call, i32 2544
  %18 = ptrtoint ptr %entry53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry53, ptr %entry53, align 4
  %prev.i172 = getelementptr i8, ptr %call, i32 2548
  %19 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry53, ptr %prev.i172, align 4
  %func55 = getelementptr i8, ptr %call, i32 2552
  %20 = ptrtoint ptr %func55 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @enc28j60_restart_work_handler, ptr %func55, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %22 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %spi, ptr %parent, align 8
  %call1.i = tail call fastcc i32 @enc28j60_hw_init(ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool61.not = icmp eq i32 %call1.i, 0
  br i1 %tobool61.not, label %if.then62, label %if.end72

if.then62:                                        ; preds = %netif_msg_init.exit
  %23 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable, align 4
  %and64 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then62.error_irq_crit_edge, label %do.end69

if.then62.error_irq_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_irq

do.end69:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.17) #14
  br label %error_irq

if.end72:                                         ; preds = %netif_msg_init.exit
  %call74 = tail call i32 @device_get_ethdev_address(ptr noundef %spi, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end72.if.end77_crit_edge, label %if.then76

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #11
  %25 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %26 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %addr.i, align 1
  %28 = and i8 %27, -4
  %29 = or i8 %28, 2
  store i8 %29, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %30 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end72.if.end77_crit_edge
  %call78 = call fastcc i32 @enc28j60_set_hw_macaddr(ptr noundef nonnull %call)
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call.i = call i32 @request_threaded_irq(i32 noundef %32, ptr noundef nonnull @enc28j60_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %add.ptr.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then80, label %if.end91

if.then80:                                        ; preds = %if.end77
  %33 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable, align 4
  %and82 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.then80.error_irq_crit_edge, label %do.end87

if.then80.error_irq_crit_edge:                    ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_irq

do.end87:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20, i32 noundef %36, i32 noundef %call.i) #14
  br label %error_irq

if.end91:                                         ; preds = %if.end77
  %if_port = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 52
  %37 = ptrtoint ptr %if_port to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %if_port, align 2
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq, align 4
  %irq93 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %40 = ptrtoint ptr %irq93 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %irq93, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %41 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @enc28j60_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %42 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 400, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %43 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @enc28j60_ethtool_ops, ptr %ethtool_ops, align 16
  call fastcc void @enc28j60_lowpower(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %call94 = call i32 @register_netdev(ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end91.cleanup_crit_edge, label %if.then96

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then96:                                        ; preds = %if.end91
  %44 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msg_enable, align 4
  %and98 = and i32 %45, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.then96.error_register_crit_edge, label %do.end103

if.then96.error_register_crit_edge:               ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_register

do.end103:                                        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.24, i32 noundef %call94) #14
  br label %error_register

error_register:                                   ; preds = %do.end103, %if.then96.error_register_crit_edge
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  %call108 = call ptr @free_irq(i32 noundef %47, ptr noundef %add.ptr.i) #11
  br label %error_irq

error_irq:                                        ; preds = %error_register, %do.end87, %if.then80.error_irq_crit_edge, %do.end69, %if.then62.error_irq_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end87 ], [ %call.i, %if.then80.error_irq_crit_edge ], [ %call94, %error_register ], [ -5, %do.end69 ], [ -5, %if.then62.error_irq_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %error_irq, %if.end91.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end91.cleanup_crit_edge ], [ %ret.0, %error_irq ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @unregister_netdev(ptr noundef %3) #11
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @free_netdev(ptr noundef %7) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_tx_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %msg.i.i.i46.i.i = alloca %struct.spi_message, align 4
  %t.i.i47.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i.i = alloca %struct.spi_transfer, align 4
  %test_buf.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %tx_skb.i = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body4.i, label %do.end9.i, !prof !329

do.body4.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/microchip/enc28j60.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1239, 0\0A.popsection", ""() #11, !srcloc !330
  unreachable

do.end9.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr i8, ptr %work, i32 192
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %do.end9.i.if.end13.i_crit_edge, label %if.then11.i

do.end9.i.if.end13.i_crit_edge:                   ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  tail call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %7) #14
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end9.i.if.end13.i_crit_edge
  %8 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable.i, align 4
  %and15.i = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.if.end21.i_crit_edge, label %if.then17.i

if.end13.i.if.end21.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_skb.i, align 4
  %len19.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len19.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.enc28j60_hw_tx, i32 noundef %13) #14
  tail call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.34, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %15, i32 noundef %13, i1 noundef zeroext true) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then17.i, %if.end13.i.if.end21.i_crit_edge
  %16 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_skb.i, align 4
  %len23.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %len23.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len23.i, align 4
  %data25.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 19
  %20 = ptrtoint ptr %data25.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data25.i, align 4
  %spi.i.i = getelementptr i8, ptr %work, i32 -100
  %22 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i.i, align 4
  %lock.i.i = getelementptr i8, ptr %work, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #11
  tail call fastcc void @nolock_regw_write(ptr noundef %add.ptr, i8 noundef zeroext 2, i16 noundef zeroext 6656) #11
  %24 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i, align 4
  %and.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end21.i.if.end6.i.i_crit_edge, label %if.then.i.i

if.end21.i.if.end6.i.i_crit_edge:                 ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

if.then.i.i:                                      ; preds = %if.end21.i
  %call.i85.i = tail call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 2) #11
  %conv2.i.i = and i32 %call.i85.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 6656, i32 %conv2.i.i)
  %cmp.not.i.i = icmp eq i32 %conv2.i.i, 6656
  br i1 %cmp.not.i.i, label %if.then.i.i.if.end6.i.i_crit_edge, label %do.end.i.i

if.then.i.i.if.end6.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %23, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %conv2.i.i, i32 noundef 6656) #14
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %do.end.i.i, %if.then.i.i.if.end6.i.i_crit_edge, %if.end21.i.if.end6.i.i_crit_edge
  %26 = trunc i32 %19 to i16
  %conv7.i.i = add i16 %26, 6656
  tail call fastcc void @nolock_regw_write(ptr noundef %add.ptr, i8 noundef zeroext 6, i16 noundef zeroext %conv7.i.i) #11
  %27 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi.i.i, align 4
  %spi_transfer_buf.i.i.i = getelementptr i8, ptr %work, i32 196
  %29 = ptrtoint ptr %spi_transfer_buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 122, ptr %spi_transfer_buf.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i8, ptr %work, i32 197
  %30 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx5.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i.i) #11
  %31 = getelementptr inbounds i8, ptr %t.i.i.i.i, i32 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 92)
  %33 = ptrtoint ptr %t.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %spi_transfer_buf.i.i.i, ptr %t.i.i.i.i, align 4
  %len1.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len1.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #11
  %35 = getelementptr inbounds i8, ptr %msg.i.i.i.i.i, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %msg.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %resources.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i.i, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i.i, label %if.end6.i.i.spi_write.exit.i.i.i_crit_edge

if.end6.i.i.spi_write.exit.i.i.i_crit_edge:       ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i.i.i

if.end.i.i.i.i.i.i.i.i.i:                         ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %transfer_list.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i.i, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %msg.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i.i.i.i.i.i, ptr %msg.i.i.i.i.i, align 4
  br label %spi_write.exit.i.i.i

spi_write.exit.i.i.i:                             ; preds = %if.end.i.i.i.i.i.i.i.i.i, %if.end6.i.i.spi_write.exit.i.i.i_crit_edge
  %call.i.i.i.i.i = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %spi_write.exit.i.i.i.spi_write_op.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

spi_write.exit.i.i.i.spi_write_op.exit.i.i_crit_edge: ; preds = %spi_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %spi_write.exit.i.i.i
  %45 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable.i, align 4
  %and8.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %land.lhs.true.i.i.i.spi_write_op.exit.i.i_crit_edge, label %do.end.i.i.i

land.lhs.true.i.i.i.spi_write_op.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit.i.i

do.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %28, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i.i.i) #14
  br label %spi_write_op.exit.i.i

spi_write_op.exit.i.i:                            ; preds = %do.end.i.i.i, %land.lhs.true.i.i.i.spi_write_op.exit.i.i_crit_edge, %spi_write.exit.i.i.i.spi_write_op.exit.i.i_crit_edge
  %47 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable.i, align 4
  %and10.i.i = and i32 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %spi_write_op.exit.i.i.if.end17.i.i_crit_edge, label %do.end15.i.i

spi_write_op.exit.i.i.if.end17.i.i_crit_edge:     ; preds = %spi_write_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i.i

do.end15.i.i:                                     ; preds = %spi_write_op.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i.i = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 2) #11
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %23, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.36, i32 noundef %call16.i.i) #14
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %do.end15.i.i, %spi_write_op.exit.i.i.if.end17.i.i_crit_edge
  %49 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %spi.i.i, align 4
  %51 = add i32 %19, -1522
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1521, i32 %51)
  %52 = icmp ult i32 %51, -1521
  br i1 %52, label %if.end17.i.i.spi_write_buf.exit.i.i_crit_edge, label %if.else.i.i.i

if.end17.i.i.spi_write_buf.exit.i.i_crit_edge:    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_buf.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end17.i.i
  %53 = ptrtoint ptr %spi_transfer_buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 122, ptr %spi_transfer_buf.i.i.i, align 4
  %54 = call ptr @memcpy(ptr %arrayidx5.i.i.i, ptr %21, i32 %19)
  %add.i.i.i = add nuw nsw i32 %19, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i47.i.i) #11
  %55 = getelementptr inbounds i8, ptr %t.i.i47.i.i, i32 4
  %56 = call ptr @memset(ptr %55, i32 0, i32 92)
  %57 = ptrtoint ptr %t.i.i47.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %spi_transfer_buf.i.i.i, ptr %t.i.i47.i.i, align 4
  %len1.i.i50.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %len1.i.i50.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %add.i.i.i, ptr %len1.i.i50.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i46.i.i) #11
  %59 = getelementptr inbounds i8, ptr %msg.i.i.i46.i.i, i32 8
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %msg.i.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %msg.i.i.i46.i.i, ptr %msg.i.i.i46.i.i, align 4
  %prev.i.i.i.i.i.i.i51.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i46.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i46.i.i, ptr %prev.i.i.i.i.i.i.i51.i.i, align 4
  %resources.i.i.i.i.i.i52.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i46.i.i, i32 0, i32 10
  %63 = ptrtoint ptr %resources.i.i.i.i.i.i52.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i.i.i.i52.i.i, ptr %resources.i.i.i.i.i.i52.i.i, align 4
  %prev.i2.i.i.i.i.i.i53.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i46.i.i, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i.i.i.i53.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i.i.i.i52.i.i, ptr %prev.i2.i.i.i.i.i.i53.i.i, align 4
  %transfer_list.i.i.i.i.i54.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i55.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i54.i.i, ptr noundef nonnull %msg.i.i.i46.i.i, ptr noundef nonnull %msg.i.i.i46.i.i) #11
  br i1 %call.i.i.i.i.i.i.i55.i.i, label %if.end.i.i.i.i.i.i.i57.i.i, label %if.else.i.i.i.spi_write.exit.i60.i.i_crit_edge

if.else.i.i.i.spi_write.exit.i60.i.i_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i60.i.i

if.end.i.i.i.i.i.i.i57.i.i:                       ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %prev.i.i.i.i.i.i.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %transfer_list.i.i.i.i.i54.i.i, ptr %prev.i.i.i.i.i.i.i51.i.i, align 4
  %66 = ptrtoint ptr %transfer_list.i.i.i.i.i54.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i.i.i46.i.i, ptr %transfer_list.i.i.i.i.i54.i.i, align 4
  %prev3.i.i.i.i.i.i.i56.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i47.i.i, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i.i.i.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i46.i.i, ptr %prev3.i.i.i.i.i.i.i56.i.i, align 4
  %68 = ptrtoint ptr %msg.i.i.i46.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %transfer_list.i.i.i.i.i54.i.i, ptr %msg.i.i.i46.i.i, align 4
  br label %spi_write.exit.i60.i.i

spi_write.exit.i60.i.i:                           ; preds = %if.end.i.i.i.i.i.i.i57.i.i, %if.else.i.i.i.spi_write.exit.i60.i.i_crit_edge
  %call.i.i.i58.i.i = call i32 @spi_sync(ptr noundef %50, ptr noundef nonnull %msg.i.i.i46.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i46.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i47.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i58.i.i)
  %tobool.not.i59.i.i = icmp eq i32 %call.i.i.i58.i.i, 0
  br i1 %tobool.not.i59.i.i, label %spi_write.exit.i60.i.i.spi_write_buf.exit.i.i_crit_edge, label %land.lhs.true.i62.i.i

spi_write.exit.i60.i.i.spi_write_buf.exit.i.i_crit_edge: ; preds = %spi_write.exit.i60.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_buf.exit.i.i

land.lhs.true.i62.i.i:                            ; preds = %spi_write.exit.i60.i.i
  %69 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %msg_enable.i, align 4
  %and.i.i.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %land.lhs.true.i62.i.i.spi_write_buf.exit.i.i_crit_edge, label %do.end.i63.i.i

land.lhs.true.i62.i.i.spi_write_buf.exit.i.i_crit_edge: ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_buf.exit.i.i

do.end.i63.i.i:                                   ; preds = %land.lhs.true.i62.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %50, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46, i32 noundef %call.i.i.i58.i.i) #14
  br label %spi_write_buf.exit.i.i

spi_write_buf.exit.i.i:                           ; preds = %do.end.i63.i.i, %land.lhs.true.i62.i.i.spi_write_buf.exit.i.i_crit_edge, %spi_write.exit.i60.i.i.spi_write_buf.exit.i.i_crit_edge, %if.end17.i.i.spi_write_buf.exit.i.i_crit_edge
  %71 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %msg_enable.i, align 4
  %and20.i.i = and i32 %72, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %spi_write_buf.exit.i.i.enc28j60_packet_write.exit.i_crit_edge, label %do.end25.i.i

spi_write_buf.exit.i.i.enc28j60_packet_write.exit.i_crit_edge: ; preds = %spi_write_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_packet_write.exit.i

do.end25.i.i:                                     ; preds = %spi_write_buf.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call26.i.i = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 2) #11
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %23, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.36, i32 noundef %call26.i.i, i32 noundef %19) #14
  br label %enc28j60_packet_write.exit.i

enc28j60_packet_write.exit.i:                     ; preds = %do.end25.i.i, %spi_write_buf.exit.i.i.enc28j60_packet_write.exit.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i.i) #11
  %73 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %msg_enable.i, align 4
  %and27.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %enc28j60_packet_write.exit.i.enc28j60_hw_tx.exit_crit_edge, label %if.then29.i

enc28j60_packet_write.exit.i.enc28j60_hw_tx.exit_crit_edge: ; preds = %enc28j60_packet_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_hw_tx.exit

if.then29.i:                                      ; preds = %enc28j60_packet_write.exit.i
  %75 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %spi.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %test_buf.i) #11
  %77 = call ptr @memset(ptr %test_buf.i, i32 255, i32 64)
  %78 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tx_skb.i, align 4
  %len32.i = getelementptr inbounds %struct.sk_buff, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %len32.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len32.i, align 4
  %82 = call i32 @llvm.umin.i32(i32 %81, i32 64) #11
  call fastcc void @enc28j60_mem_read(ptr noundef %add.ptr, i16 noundef zeroext 6657, i32 noundef %82, ptr noundef nonnull %test_buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp3587.not.i = icmp eq i32 %82, 0
  br i1 %cmp3587.not.i, label %if.then29.i.if.end58.i_crit_edge, label %if.then29.i.for.body.i.outer_crit_edge

if.then29.i.for.body.i.outer_crit_edge:           ; preds = %if.then29.i
  br label %for.body.i.outer

if.then29.i.if.end58.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

for.body.i.outer:                                 ; preds = %for.inc.i.thread.for.body.i.outer_crit_edge, %if.then29.i.for.body.i.outer_crit_edge
  %tobool53.not.i = phi i1 [ true, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ false, %if.then29.i.for.body.i.outer_crit_edge ]
  %k.088.i.ph = phi i32 [ %inc.i2, %for.inc.i.thread.for.body.i.outer_crit_edge ], [ 0, %if.then29.i.for.body.i.outer_crit_edge ]
  %83 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_skb.i, align 4
  %data37.i = getelementptr inbounds %struct.sk_buff, ptr %84, i32 0, i32 19
  %85 = ptrtoint ptr %data37.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data37.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.outer
  %k.088.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %k.088.i.ph, %for.body.i.outer ]
  %arrayidx.i = getelementptr i8, ptr %86, i32 %k.088.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i, align 1
  %arrayidx38.i = getelementptr [64 x i8], ptr %test_buf.i, i32 0, i32 %k.088.i
  %89 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx38.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %88, i8 %90)
  %cmp40.not.i = icmp eq i8 %88, %90
  br i1 %cmp40.not.i, label %for.inc.i, label %for.inc.i.thread

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %k.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %82
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %for.body.i
  %conv39.i = zext i8 %90 to i32
  %conv.i = zext i8 %88 to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %76, ptr noundef nonnull @.str.28, i32 noundef %k.088.i, i32 noundef %conv.i, i32 noundef %conv39.i) #14
  %inc.i2 = add nuw nsw i32 %k.088.i, 1
  %exitcond.not.i3 = icmp eq i32 %inc.i2, %82
  br i1 %exitcond.not.i3, label %for.inc.i.thread.do.end57.i_crit_edge, label %for.inc.i.thread.for.body.i.outer_crit_edge

for.inc.i.thread.for.body.i.outer_crit_edge:      ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.outer

for.inc.i.thread.do.end57.i_crit_edge:            ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end57.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %tobool53.not.i, label %for.end.i.do.end57.i_crit_edge, label %for.end.i.if.end58.i_crit_edge

for.end.i.if.end58.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

for.end.i.do.end57.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end57.i

do.end57.i:                                       ; preds = %for.end.i.do.end57.i_crit_edge, %for.inc.i.thread.do.end57.i_crit_edge
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %76, ptr noundef nonnull @.str.30) #14
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end57.i, %for.end.i.if.end58.i_crit_edge, %if.then29.i.if.end58.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %test_buf.i) #11
  br label %enc28j60_hw_tx.exit

enc28j60_hw_tx.exit:                              ; preds = %if.end58.i, %enc28j60_packet_write.exit.i.enc28j60_hw_tx.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext 8) #11
  call void @mutex_unlock(ptr noundef %lock.i.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_setrx_work_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr i8, ptr %work, i32 -188
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %rxfilter = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rxfilter, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.else14 [
    i32 2, label %if.then
    i32 1, label %if.then5
  ]

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %work, i32 104
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.if.end24_crit_edge, label %if.then.if.end24.sink.split_crit_edge

if.then.if.end24.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split

if.then.if.end24_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then5:                                         ; preds = %entry
  %msg_enable6 = getelementptr i8, ptr %work, i32 104
  %7 = ptrtoint ptr %msg_enable6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable6, align 4
  %and7 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.then5.if.end24_crit_edge, label %if.then5.if.end24.sink.split_crit_edge

if.then5.if.end24.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split

if.then5.if.end24_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else14:                                        ; preds = %entry
  %msg_enable15 = getelementptr i8, ptr %work, i32 104
  %9 = ptrtoint ptr %msg_enable15 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable15, align 4
  %and16 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.else14.if.end24_crit_edge, label %if.else14.if.end24.sink.split_crit_edge

if.else14.if.end24.sink.split_crit_edge:          ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.sink.split

if.else14.if.end24_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.end24.sink.split:                              ; preds = %if.else14.if.end24.sink.split_crit_edge, %if.then5.if.end24.sink.split_crit_edge, %if.then.if.end24.sink.split_crit_edge
  %.str.56.sink = phi ptr [ @.str.50, %if.then.if.end24.sink.split_crit_edge ], [ @.str.53, %if.then5.if.end24.sink.split_crit_edge ], [ @.str.56, %if.else14.if.end24.sink.split_crit_edge ]
  %.sink.ph = phi i8 [ 0, %if.then.if.end24.sink.split_crit_edge ], [ -93, %if.then5.if.end24.sink.split_crit_edge ], [ -95, %if.else14.if.end24.sink.split_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull %.str.56.sink) #14
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else14.if.end24_crit_edge, %if.then5.if.end24_crit_edge, %if.then.if.end24_crit_edge
  %.sink = phi i8 [ 0, %if.then.if.end24_crit_edge ], [ -93, %if.then5.if.end24_crit_edge ], [ -95, %if.else14.if.end24_crit_edge ], [ %.sink.ph, %if.end24.sink.split ]
  %add.ptr = getelementptr i8, ptr %work, i32 -192
  %lock.i35 = getelementptr i8, ptr %work, i32 -184
  tail call void @mutex_lock_nested(ptr noundef %lock.i35, i32 noundef 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr, i8 noundef zeroext 56, i8 noundef zeroext %.sink) #11
  tail call void @mutex_unlock(ptr noundef %lock.i35) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_irq_work_handler(ptr noundef %work) #2 align 64 {
entry:
  %rsv.i.i = alloca [6 x i8], align 1
  %tx_buf.i.i.i = alloca [2 x i8], align 1
  %rx_buf.i.i.i = alloca [4 x i8], align 4
  %tsv = alloca [7 x i8], align 1
  %tsv47 = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -148
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %lock.i = getelementptr i8, ptr %work, i32 -140
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr, i8 noundef zeroext 27, i8 noundef zeroext -128) #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %msg_enable = getelementptr i8, ptr %work, i32 148
  %tx_retry_count = getelementptr i8, ptr %work, i32 138
  %spi.i = getelementptr i8, ptr %work, i32 -144
  %2 = getelementptr inbounds [7 x i8], ptr %tsv47, i32 0, i32 3
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %tx_skb.i = getelementptr i8, ptr %1, i32 2404
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %lock.i.i190 = getelementptr i8, ptr %1, i32 2312
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %3 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i.i, i32 0, i32 1
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %msg_enable.i210 = getelementptr i8, ptr %1, i32 2600
  %max_pk_counter.i = getelementptr i8, ptr %1, i32 2588
  %spi.i.i = getelementptr i8, ptr %1, i32 2308
  %4 = getelementptr inbounds [6 x i8], ptr %rsv.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i8], ptr %rsv.i.i, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %rsv.i.i, i32 0, i32 3
  %7 = getelementptr inbounds [6 x i8], ptr %rsv.i.i, i32 0, i32 4
  %8 = getelementptr inbounds [6 x i8], ptr %rsv.i.i, i32 0, i32 5
  %next_pk_ptr.i.i = getelementptr i8, ptr %1, i32 2586
  %stats106.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_errors59.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_frame_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_over_errors.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 11
  br label %do.body

do.body:                                          ; preds = %enc28j60_rx_interrupt.exit.do.body_crit_edge, %entry
  %call = call fastcc i32 @locked_regb_read(ptr noundef %add.ptr, i8 noundef zeroext 28)
  %and = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %do.body.if.end3_crit_edge, label %if.then

do.body.if.end3_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then:                                          ; preds = %do.body
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.58, i32 noundef 1) #14
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext 32) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %if.end3

if.end3:                                          ; preds = %if.end, %do.body.if.end3_crit_edge
  %loop.0 = phi i32 [ 1, %if.end ], [ 0, %do.body.if.end3_crit_edge ]
  %and4 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %cmp5.not = icmp eq i32 %and4, 0
  br i1 %cmp5.not, label %if.end3.if.end14_crit_edge, label %if.then6

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then6:                                         ; preds = %if.end3
  %inc7 = add nuw nsw i32 %loop.0, 1
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 4
  %and9 = and i32 %12, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then6.if.end12_crit_edge, label %if.then11

if.then6.if.end12_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.59, i32 noundef %inc7) #14
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.then6.if.end12_crit_edge
  call fastcc void @enc28j60_check_link_status(ptr noundef %1)
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %add.ptr, i8 noundef zeroext -44, i8 noundef zeroext 19) #11
  call fastcc void @nolock_regb_write(ptr noundef %add.ptr, i8 noundef zeroext -46, i8 noundef zeroext 1) #11
  %call.i.i = call fastcc i32 @poll_ready(ptr noundef %add.ptr, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %add.ptr, i8 noundef zeroext -46, i8 noundef zeroext 0) #11
  %call1.i = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext -40) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end3.if.end14_crit_edge
  %loop.1 = phi i32 [ %inc7, %if.end12 ], [ %loop.0, %if.end3.if.end14_crit_edge ]
  %and17 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  %13 = and i32 %call, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %if.then19, label %if.end14.if.end43_crit_edge

if.end14.if.end43_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then19:                                        ; preds = %if.end14
  %inc20 = add nuw nsw i32 %loop.1, 1
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and22 = and i32 %16, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then19.if.end25_crit_edge, label %if.then24

if.then19.if.end25_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

if.then24:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %inc20) #14
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.then19.if.end25_crit_edge
  %17 = ptrtoint ptr %tx_retry_count to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %tx_retry_count, align 2
  %call26 = call fastcc i32 @locked_regb_read(ptr noundef %add.ptr, i8 noundef zeroext 29)
  %and27 = and i32 %call26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end35_crit_edge, label %if.then29

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then29:                                        ; preds = %if.end25
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and31 = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then29.if.end35_crit_edge, label %if.then33

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then33:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.61) #14
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.then29.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %20 = xor i1 %tobool28.not, true
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 4
  %and37 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end35.if.end41_crit_edge, label %if.then39

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then39:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %tsv) #11
  %23 = call ptr @memset(ptr %tsv, i32 255, i32 7)
  %24 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi.i, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %call.i.i175 = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 6) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  %26 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then39.enc28j60_read_tsv.exit_crit_edge, label %do.end.i

if.then39.enc28j60_read_tsv.exit_crit_edge:       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_read_tsv.exit

do.end.i:                                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %call.i.i175, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %25, ptr noundef nonnull @.str.76, i32 noundef %add.i) #14
  br label %enc28j60_read_tsv.exit

enc28j60_read_tsv.exit:                           ; preds = %do.end.i, %if.then39.enc28j60_read_tsv.exit_crit_edge
  %28 = trunc i32 %call.i.i175 to i16
  %conv.i176 = add i16 %28, 1
  call fastcc void @enc28j60_mem_read(ptr noundef %add.ptr, i16 noundef zeroext %conv.i176, i32 noundef 7, ptr noundef nonnull %tsv) #11
  call fastcc void @enc28j60_dump_tsv(ptr noundef %add.ptr, ptr noundef nonnull @.str.62, ptr noundef nonnull %tsv)
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tsv) #11
  br label %if.end41

if.end41:                                         ; preds = %enc28j60_read_tsv.exit, %if.end35.if.end41_crit_edge
  call fastcc void @enc28j60_tx_clear(ptr noundef %1, i1 noundef zeroext %20)
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext 8) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end14.if.end43_crit_edge
  %loop.2 = phi i32 [ %inc20, %if.end41 ], [ %loop.1, %if.end14.if.end43_crit_edge ]
  br i1 %cmp18, label %if.end43.if.end81_crit_edge, label %if.then46

if.end43.if.end81_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81

if.then46:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %tsv47) #11
  %inc48 = add nuw nsw i32 %loop.2, 1
  %29 = call ptr @memset(ptr %tsv47, i32 255, i32 7)
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 4
  %and50 = and i32 %31, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.then46.if.end53_crit_edge, label %if.then52

if.then46.if.end53_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then52:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.63, i32 noundef %inc48) #14
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then46.if.end53_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext 8) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  %32 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi.i, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  %call.i.i181 = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 6) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 4
  %and.i183 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183)
  %tobool.not.i184 = icmp eq i32 %and.i183, 0
  br i1 %tobool.not.i184, label %if.end53.enc28j60_read_tsv.exit188_crit_edge, label %do.end.i186

if.end53.enc28j60_read_tsv.exit188_crit_edge:     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_read_tsv.exit188

do.end.i186:                                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  %add.i185 = add i32 %call.i.i181, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %33, ptr noundef nonnull @.str.76, i32 noundef %add.i185) #14
  br label %enc28j60_read_tsv.exit188

enc28j60_read_tsv.exit188:                        ; preds = %do.end.i186, %if.end53.enc28j60_read_tsv.exit188_crit_edge
  %36 = trunc i32 %call.i.i181 to i16
  %conv.i187 = add i16 %36, 1
  call fastcc void @enc28j60_mem_read(ptr noundef %add.ptr, i16 noundef zeroext %conv.i187, i32 noundef 7, ptr noundef nonnull %tsv47) #11
  %37 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable, align 4
  %and56 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %enc28j60_read_tsv.exit188.if.end60_crit_edge, label %if.then58

enc28j60_read_tsv.exit188.if.end60_crit_edge:     ; preds = %enc28j60_read_tsv.exit188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then58:                                        ; preds = %enc28j60_read_tsv.exit188
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @enc28j60_dump_tsv(ptr noundef %add.ptr, ptr noundef nonnull @.str.64, ptr noundef nonnull %tsv47)
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %enc28j60_read_tsv.exit188.if.end60_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext -128)
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext -128)
  call fastcc void @nolock_regw_write(ptr noundef %add.ptr, i8 noundef zeroext 4, i16 noundef zeroext 6656) #11
  call fastcc void @nolock_regw_write(ptr noundef %add.ptr, i8 noundef zeroext 6, i16 noundef zeroext 8191) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 1
  %41 = and i8 %40, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool63.not = icmp eq i8 %41, 0
  br i1 %tobool63.not, label %if.else79, label %if.then64

if.then64:                                        ; preds = %if.end60
  %42 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable, align 4
  %and66 = and i32 %43, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then64.if.end71_crit_edge, label %if.then68

if.then64.if.end71_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %tx_retry_count to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %tx_retry_count, align 2
  %conv70 = zext i16 %45 to i32
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.65, i32 noundef %conv70) #14
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.then64.if.end71_crit_edge
  %46 = ptrtoint ptr %tx_retry_count to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %tx_retry_count, align 2
  %inc73 = add i16 %47, 1
  store i16 %inc73, ptr %tx_retry_count, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %47)
  %cmp75 = icmp ult i16 %47, 16
  br i1 %cmp75, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr, i8 noundef zeroext 31, i8 noundef zeroext 8) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %if.end80

if.else:                                          ; preds = %if.end71
  %48 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_errors.i, align 4
  %inc.i = add i32 %49, 1
  store i32 %inc.i, ptr %tx_errors.i, align 4
  %50 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_skb.i, align 4
  %tobool3.not.i = icmp eq ptr %51, null
  br i1 %tobool3.not.i, label %if.else.enc28j60_tx_clear.exit_crit_edge, label %if.end9.i

if.else.enc28j60_tx_clear.exit_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_tx_clear.exit

if.end9.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  call void @consume_skb(ptr noundef nonnull %51) #11
  %52 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %tx_skb.i, align 4
  br label %enc28j60_tx_clear.exit

enc28j60_tx_clear.exit:                           ; preds = %if.end9.i, %if.else.enc28j60_tx_clear.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i.i190, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i.i, i8 noundef zeroext 31, i8 noundef zeroext 8) #11
  call void @mutex_unlock(ptr noundef %lock.i.i190) #11
  %53 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %54) #11
  br label %if.end80

if.else79:                                        ; preds = %if.end60
  %55 = ptrtoint ptr %tx_errors.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_errors.i, align 4
  %inc.i192 = add i32 %56, 1
  store i32 %inc.i192, ptr %tx_errors.i, align 4
  %57 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tx_skb.i, align 4
  %tobool3.not.i194 = icmp eq ptr %58, null
  br i1 %tobool3.not.i194, label %if.else79.enc28j60_tx_clear.exit199_crit_edge, label %if.end9.i195

if.else79.enc28j60_tx_clear.exit199_crit_edge:    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_tx_clear.exit199

if.end9.i195:                                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #13
  call void @consume_skb(ptr noundef nonnull %58) #11
  %59 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %tx_skb.i, align 4
  br label %enc28j60_tx_clear.exit199

enc28j60_tx_clear.exit199:                        ; preds = %if.end9.i195, %if.else79.enc28j60_tx_clear.exit199_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i.i190, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i.i, i8 noundef zeroext 31, i8 noundef zeroext 8) #11
  call void @mutex_unlock(ptr noundef %lock.i.i190) #11
  %60 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %61) #11
  br label %if.end80

if.end80:                                         ; preds = %enc28j60_tx_clear.exit199, %enc28j60_tx_clear.exit, %if.then77
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext 10) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tsv47) #11
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end43.if.end81_crit_edge
  %loop.3 = phi i32 [ %inc48, %if.end80 ], [ %loop.2, %if.end43.if.end81_crit_edge ]
  %and82 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %cmp83.not = icmp eq i32 %and82, 0
  br i1 %cmp83.not, label %if.end81.if.end103_crit_edge, label %if.then85

if.end81.if.end103_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then85:                                        ; preds = %if.end81
  %inc86 = add nuw nsw i32 %loop.3, 1
  %62 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %msg_enable, align 4
  %and88 = and i32 %63, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.then85.if.end91_crit_edge, label %if.then90

if.then85.if.end91_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91

if.then90:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.66, i32 noundef %inc86) #14
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.then85.if.end91_crit_edge
  %64 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %add.ptr, i8 noundef zeroext 57) #11
  %66 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i.i) #11
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -1, ptr %3, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i.i) #11
  %69 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 -1, ptr %rx_buf.i.i.i, align 4
  %70 = ptrtoint ptr %tx_buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 25, ptr %tx_buf.i.i.i, align 1
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %67, ptr noundef nonnull %tx_buf.i.i.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool8.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not.i.i.i, label %nolock_regb_read.exit.i, label %nolock_regb_read.exit.thread.i

nolock_regb_read.exit.thread.i:                   ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %67, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i.i) #11
  br label %if.else.i

nolock_regb_read.exit.i:                          ; preds = %if.end91
  %71 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %rx_buf.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp.i = icmp eq i8 %72, -1
  br i1 %cmp.i, label %nolock_regb_read.exit.i.if.end17.i_crit_edge, label %nolock_regb_read.exit.i.if.else.i_crit_edge

nolock_regb_read.exit.i.if.else.i_crit_edge:      ; preds = %nolock_regb_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

nolock_regb_read.exit.i.if.end17.i_crit_edge:     ; preds = %nolock_regb_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17.i

if.else.i:                                        ; preds = %nolock_regb_read.exit.i.if.else.i_crit_edge, %nolock_regb_read.exit.thread.i
  %call1.i202 = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 8) #11
  %call2.i = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 10) #11
  %call3.i = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 14) #11
  %call4.i = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr, i8 noundef zeroext 12) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %call3.i)
  %cmp5.i = icmp slt i32 %call4.i, %call3.i
  br i1 %cmp5.i, label %if.then6.i, label %if.else9.i

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  %73 = add i32 %call1.i202, %call3.i
  %sub.i = sub i32 %call2.i, %73
  %sub8.i = add i32 %sub.i, %call4.i
  br label %if.end17.i

if.else9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i, i32 %call3.i)
  %cmp10.i = icmp eq i32 %call4.i, %call3.i
  br i1 %cmp10.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub12.i = sub i32 %call2.i, %call1.i202
  br label %if.end17.i

if.else13.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = xor i32 %call3.i, -1
  %sub15.i = add i32 %call4.i, %74
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else13.i, %if.then11.i, %if.then6.i, %nolock_regb_read.exit.i.if.end17.i_crit_edge
  %free_space.0.i = phi i32 [ %sub8.i, %if.then6.i ], [ %sub12.i, %if.then11.i ], [ %sub15.i, %if.else13.i ], [ -1, %nolock_regb_read.exit.i.if.end17.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #11
  %75 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %msg_enable, align 4
  %and.i204 = and i32 %76, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool.not.i205 = icmp eq i32 %and.i204, 0
  br i1 %tobool.not.i205, label %if.end17.i.enc28j60_get_free_rxfifo.exit_crit_edge, label %if.then19.i

if.end17.i.enc28j60_get_free_rxfifo.exit_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_get_free_rxfifo.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %65, ptr noundef nonnull @.str.97, ptr noundef nonnull @__func__.enc28j60_get_free_rxfifo, i32 noundef %free_space.0.i) #14
  br label %enc28j60_get_free_rxfifo.exit

enc28j60_get_free_rxfifo.exit:                    ; preds = %if.then19.i, %if.end17.i.enc28j60_get_free_rxfifo.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %free_space.0.i)
  %cmp93 = icmp slt i32 %free_space.0.i, 1
  br i1 %cmp93, label %if.then95, label %enc28j60_get_free_rxfifo.exit.if.end102_crit_edge

enc28j60_get_free_rxfifo.exit.if.end102_crit_edge: ; preds = %enc28j60_get_free_rxfifo.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then95:                                        ; preds = %enc28j60_get_free_rxfifo.exit
  %77 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable, align 4
  %and97 = and i32 %78, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.then95.if.end100_crit_edge, label %if.then99

if.then95.if.end100_crit_edge:                    ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.then99:                                        ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.67) #14
  br label %if.end100

if.end100:                                        ; preds = %if.then99, %if.then95.if.end100_crit_edge
  %79 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rx_dropped, align 8
  %inc101 = add i32 %80, 1
  store i32 %inc101, ptr %rx_dropped, align 8
  br label %if.end102

if.end102:                                        ; preds = %if.end100, %enc28j60_get_free_rxfifo.exit.if.end102_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr, i8 noundef zeroext 28, i8 noundef zeroext 1) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end81.if.end103_crit_edge
  %loop.4 = phi i32 [ %inc86, %if.end102 ], [ %loop.3, %if.end81.if.end103_crit_edge ]
  %call1.i208 = call fastcc i32 @locked_regb_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext 57) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %tobool.not.i209 = icmp eq i32 %call1.i208, 0
  br i1 %tobool.not.i209, label %if.end103.if.end.i_crit_edge, label %land.lhs.true.i

if.end103.if.end.i_crit_edge:                     ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end103
  %81 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %msg_enable.i210, align 4
  %and.i211 = and i32 %82, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i211)
  %tobool2.not.i = icmp eq i32 %and.i211, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.98, i32 noundef %call1.i208) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end.i_crit_edge, %if.end103.if.end.i_crit_edge
  %83 = ptrtoint ptr %max_pk_counter.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %max_pk_counter.i, align 4
  %conv.i212 = zext i16 %84 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i208, i32 %conv.i212)
  %cmp.i213 = icmp sgt i32 %call1.i208, %conv.i212
  br i1 %cmp.i213, label %if.then4.i, label %if.end.i.if.end19.i_crit_edge

if.end.i.if.end19.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then4.i:                                       ; preds = %if.end.i
  %conv5.i = trunc i32 %call1.i208 to i16
  %85 = ptrtoint ptr %max_pk_counter.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv5.i, ptr %max_pk_counter.i, align 4
  %86 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_enable.i210, align 4
  %and8.i = and i32 %87, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.then4.i.if.end19.i_crit_edge, label %land.lhs.true10.i

if.then4.i.if.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

land.lhs.true10.i:                                ; preds = %if.then4.i
  %conv12.i = and i32 %call1.i208, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv12.i)
  %cmp13.i = icmp ugt i32 %conv12.i, 1
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true10.i.if.end19.i_crit_edge

land.lhs.true10.i.if.end19.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i

if.then15.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.99, i32 noundef %conv12.i) #14
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then15.i, %land.lhs.true10.i.if.end19.i_crit_edge, %if.then4.i.if.end19.i_crit_edge, %if.end.i.if.end19.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i208)
  %cmp2036.i = icmp sgt i32 %call1.i208, 0
  br i1 %cmp2036.i, label %if.end19.i.while.body.i_crit_edge, label %if.end19.i.enc28j60_rx_interrupt.exit_crit_edge

if.end19.i.enc28j60_rx_interrupt.exit_crit_edge:  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_rx_interrupt.exit

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  br label %while.body.i

while.body.i:                                     ; preds = %enc28j60_hw_rx.exit.i.while.body.i_crit_edge, %if.end19.i.while.body.i_crit_edge
  %pk_counter.037.i = phi i32 [ %dec.i, %enc28j60_hw_rx.exit.i.while.body.i_crit_edge ], [ %call1.i208, %if.end19.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %pk_counter.037.i, -1
  %88 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %rsv.i.i) #11
  %90 = call ptr @memset(ptr %rsv.i.i, i32 255, i32 6)
  %91 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable.i210, align 4
  %and.i.i = and i32 %92, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.if.end.i.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %next_pk_ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %next_pk_ptr.i.i, align 2
  %conv.i.i = zext i16 %94 to i32
  call void (ptr, ptr, ptr, ...) @netdev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.100, i32 noundef %conv.i.i) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.if.end.i.i_crit_edge
  %95 = ptrtoint ptr %next_pk_ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %next_pk_ptr.i.i, align 2
  %conv3.i.i = zext i16 %96 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 6655, i16 %96)
  %cmp.i.i = icmp ugt i16 %96, 6655
  br i1 %cmp.i.i, label %if.then7.i.i, label %if.end16.i.i, !prof !329

if.then7.i.i:                                     ; preds = %if.end.i.i
  %97 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_enable.i210, align 4
  %and9.i.i = and i32 %98, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i)
  %tobool10.not.i.i = icmp eq i32 %and9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.then7.i.i.if.end14.i.i_crit_edge, label %if.then11.i.i

if.then7.i.i.if.end14.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.101, ptr noundef nonnull @__func__.enc28j60_hw_rx, i32 noundef %conv3.i.i) #14
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.then7.i.i.if.end14.i.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i.i190, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i.i, i8 noundef zeroext 31, i8 noundef zeroext 4) #11
  call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr.i.i, i8 noundef zeroext 31, i8 noundef zeroext 64) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i.i, i8 noundef zeroext 31, i8 noundef zeroext 64) #11
  %99 = ptrtoint ptr %next_pk_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %next_pk_ptr.i.i, align 2
  call fastcc void @nolock_regw_write(ptr noundef %add.ptr.i.i, i8 noundef zeroext 8, i16 noundef zeroext 0) #11
  %100 = ptrtoint ptr %next_pk_ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %next_pk_ptr.i.i, align 2
  %sub.i.i = add i16 %101, -1
  %102 = add i16 %101, -6657
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6656, i16 %102)
  %103 = icmp ult i16 %102, -6656
  %erxrdpt.0.i.i = select i1 %103, i16 6655, i16 %sub.i.i
  call fastcc void @nolock_regw_write(ptr noundef %add.ptr.i.i, i8 noundef zeroext 12, i16 noundef zeroext %erxrdpt.0.i.i) #11
  call fastcc void @nolock_regw_write(ptr noundef %add.ptr.i.i, i8 noundef zeroext 10, i16 noundef zeroext 6655) #11
  call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i.i, i8 noundef zeroext 28, i8 noundef zeroext 1) #11
  call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr.i.i, i8 noundef zeroext 31, i8 noundef zeroext 4) #11
  call void @mutex_unlock(ptr noundef %lock.i.i190) #11
  %104 = ptrtoint ptr %rx_errors59.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %rx_errors59.i.i, align 8
  %inc.i.i = add i32 %105, 1
  store i32 %inc.i.i, ptr %rx_errors59.i.i, align 8
  br label %enc28j60_hw_rx.exit.i

if.end16.i.i:                                     ; preds = %if.end.i.i
  call fastcc void @enc28j60_mem_read(ptr noundef %add.ptr.i.i, i16 noundef zeroext %96, i32 noundef 6, ptr noundef nonnull %rsv.i.i) #11
  %106 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %4, align 1
  %conv19.i.i = zext i8 %107 to i16
  %shl.i.i = shl nuw i16 %conv19.i.i, 8
  %108 = ptrtoint ptr %rsv.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %rsv.i.i, align 1
  %conv22.i.i = zext i8 %109 to i16
  %or.i.i = or i16 %shl.i.i, %conv22.i.i
  %110 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %6, align 1
  %conv26.i.i = zext i8 %111 to i32
  %shl27.i.i = shl nuw nsw i32 %conv26.i.i, 8
  %112 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %5, align 1
  %conv29.i.i = zext i8 %113 to i32
  %or30.i.i = or i32 %shl27.i.i, %conv29.i.i
  %114 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %8, align 1
  %conv33.i.i = zext i8 %115 to i16
  %shl34.i.i = shl nuw i16 %conv33.i.i, 8
  %116 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %7, align 1
  %conv37.i.i = zext i8 %117 to i16
  %or39.i.i = or i16 %shl34.i.i, %conv37.i.i
  %118 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %msg_enable.i210, align 4
  %and42.i.i = and i32 %119, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp eq i32 %and42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end16.if.end45_crit_edge.i.i, label %if.then44.i.i

if.end16.if.end45_crit_edge.i.i:                  ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i.i = zext i16 %or39.i.i to i32
  br label %if.end45.i.i

if.then44.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %120 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %spi.i.i, align 4
  %conv.i.i.i = zext i16 %or.i.i to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %121, ptr noundef nonnull @.str.110, ptr noundef nonnull @__func__.enc28j60_hw_rx, i32 noundef %conv.i.i.i) #14
  %conv5.i.i.i = zext i16 %or39.i.i to i32
  %and.i.i.i = lshr i32 %conv5.i.i.i, 10
  %and.lobit.i.i.i = and i32 %and.i.i.i, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %121, ptr noundef nonnull @.str.113, i32 noundef %or30.i.i, i32 noundef %and.lobit.i.i.i) #14
  %and10.i.i.i = lshr i32 %conv5.i.i.i, 7
  %and10.lobit.i.i.i = and i32 %and10.i.i.i, 1
  %and14.i.i.i = lshr i32 %conv5.i.i.i, 4
  %and14.lobit.i.i.i = and i32 %and14.i.i.i, 1
  %and18.i.i.i = lshr i32 %conv5.i.i.i, 5
  %and18.lobit.i.i.i = and i32 %and18.i.i.i, 1
  %and22.i.i.i = lshr i32 %conv5.i.i.i, 6
  %and22.lobit.i.i.i = and i32 %and22.i.i.i, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %121, ptr noundef nonnull @.str.116, i32 noundef %and10.lobit.i.i.i, i32 noundef %and14.lobit.i.i.i, i32 noundef %and18.lobit.i.i.i, i32 noundef %and22.lobit.i.i.i) #14
  %and29.i.i.i = lshr i32 %conv5.i.i.i, 8
  %and29.lobit.i.i.i = and i32 %and29.i.i.i, 1
  %and33.i.i.i = lshr i32 %conv5.i.i.i, 9
  %and33.lobit.i.i.i = and i32 %and33.i.i.i, 1
  %and37.i.i.i = and i32 %conv5.i.i.i, 1
  %and41.i.i.i = lshr i32 %conv5.i.i.i, 2
  %and41.lobit.i.i.i = and i32 %and41.i.i.i, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %121, ptr noundef nonnull @.str.119, i32 noundef %and29.lobit.i.i.i, i32 noundef %and33.lobit.i.i.i, i32 noundef %and37.i.i.i, i32 noundef %and41.lobit.i.i.i) #14
  %and48.i.i.i = lshr i32 %conv5.i.i.i, 11
  %and48.lobit.i.i.i = and i32 %and48.i.i.i, 1
  %and52.i.i.i = lshr i32 %conv5.i.i.i, 12
  %and52.lobit.i.i.i = and i32 %and52.i.i.i, 1
  %and56.i.i.i = lshr i32 %conv5.i.i.i, 13
  %and56.lobit.i.i.i = and i32 %and56.i.i.i, 1
  %and60.i.i.i = lshr i32 %conv5.i.i.i, 14
  %and60.lobit.i.i.i = and i32 %and60.i.i.i, 1
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %121, ptr noundef nonnull @.str.122, i32 noundef %and48.lobit.i.i.i, i32 noundef %and52.lobit.i.i.i, i32 noundef %and56.lobit.i.i.i, i32 noundef %and60.lobit.i.i.i) #14
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then44.i.i, %if.end16.if.end45_crit_edge.i.i
  %conv46.pre-phi.i.i = phi i32 [ %.pre.i.i, %if.end16.if.end45_crit_edge.i.i ], [ %conv5.i.i.i, %if.then44.i.i ]
  %and47.i.i = and i32 %conv46.pre-phi.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i.i)
  %tobool48.not.i.i = icmp eq i32 %and47.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %or30.i.i)
  %cmp49.i.i = icmp ugt i32 %or30.i.i, 1518
  %or.cond.i.i = select i1 %tobool48.not.i.i, i1 true, i1 %cmp49.i.i
  br i1 %or.cond.i.i, label %if.then51.i.i, label %if.else.i.i

if.then51.i.i:                                    ; preds = %if.end45.i.i
  %122 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %msg_enable.i210, align 4
  %and53.i.i = and i32 %123, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.then51.i.i.if.end57.i.i_crit_edge, label %if.then55.i.i

if.then51.i.i.if.end57.i.i_crit_edge:             ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i.i

if.then55.i.i:                                    ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.102, i32 noundef %conv46.pre-phi.i.i) #14
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.then55.i.i, %if.then51.i.i.if.end57.i.i_crit_edge
  %124 = ptrtoint ptr %rx_errors59.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %rx_errors59.i.i, align 8
  %inc60.i.i = add i32 %125, 1
  store i32 %inc60.i.i, ptr %rx_errors59.i.i, align 8
  %and62.i.i = and i32 %conv46.pre-phi.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i.i)
  %tobool63.not.i.i = icmp eq i32 %and62.i.i, 0
  br i1 %tobool63.not.i.i, label %if.end57.i.i.if.end69.i.i_crit_edge, label %if.then66.i.i

if.end57.i.i.if.end69.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i.i

if.then66.i.i:                                    ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %126 = ptrtoint ptr %rx_crc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %rx_crc_errors.i.i, align 8
  %inc68.i.i = add i32 %127, 1
  store i32 %inc68.i.i, ptr %rx_crc_errors.i.i, align 8
  br label %if.end69.i.i

if.end69.i.i:                                     ; preds = %if.then66.i.i, %if.end57.i.i.if.end69.i.i_crit_edge
  %and71.i.i = and i32 %conv46.pre-phi.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i.i)
  %tobool72.not.i.i = icmp eq i32 %and71.i.i, 0
  br i1 %tobool72.not.i.i, label %if.end69.i.i.if.end78.i.i_crit_edge, label %if.then75.i.i

if.end69.i.i.if.end78.i.i_crit_edge:              ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78.i.i

if.then75.i.i:                                    ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %rx_frame_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %rx_frame_errors.i.i, align 4
  %inc77.i.i = add i32 %129, 1
  store i32 %inc77.i.i, ptr %rx_frame_errors.i.i, align 4
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then75.i.i, %if.end69.i.i.if.end78.i.i_crit_edge
  br i1 %cmp49.i.i, label %if.then81.i.i, label %if.end78.i.i.if.end112.i.i_crit_edge

if.end78.i.i.if.end112.i.i_crit_edge:             ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i.i

if.then81.i.i:                                    ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %130 = ptrtoint ptr %rx_over_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_over_errors.i.i, align 4
  %inc83.i.i = add i32 %131, 1
  store i32 %inc83.i.i, ptr %rx_over_errors.i.i, align 4
  br label %if.end112.i.i

if.else.i.i:                                      ; preds = %if.end45.i.i
  %add.i.i = add nuw nsw i32 %or30.i.i, 2
  %call.i.i.i214 = call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #11
  %tobool86.not.i.i = icmp eq ptr %call.i.i.i214, null
  br i1 %tobool86.not.i.i, label %if.then87.i.i, label %if.else95.i.i

if.then87.i.i:                                    ; preds = %if.else.i.i
  %132 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %msg_enable.i210, align 4
  %and89.i.i = and i32 %133, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i.i)
  %tobool90.not.i.i = icmp eq i32 %and89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.then87.i.i.if.end92.i.i_crit_edge, label %if.then91.i.i

if.then87.i.i.if.end92.i.i_crit_edge:             ; preds = %if.then87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92.i.i

if.then91.i.i:                                    ; preds = %if.then87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.103) #14
  br label %if.end92.i.i

if.end92.i.i:                                     ; preds = %if.then91.i.i, %if.then87.i.i.if.end92.i.i_crit_edge
  %134 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rx_dropped, align 8
  %inc94.i.i = add i32 %135, 1
  store i32 %inc94.i.i, ptr %rx_dropped, align 8
  br label %if.end112.i.i

if.else95.i.i:                                    ; preds = %if.else.i.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i214, i32 0, i32 19
  %136 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i222.i.i = getelementptr i8, ptr %137, i32 2
  store ptr %add.ptr.i222.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i214, i32 0, i32 16
  %138 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %139, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %140 = ptrtoint ptr %next_pk_ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %next_pk_ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6649, i16 %141)
  %cmp.i.i.i = icmp ugt i16 %141, 6649
  %retval.0.in.v.i.i.i = select i1 %cmp.i.i.i, i16 -6650, i16 6
  %retval.0.in.i.i.i = add i16 %retval.0.in.v.i.i.i, %141
  %call98.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i214, i32 noundef %or30.i.i) #11
  call fastcc void @enc28j60_mem_read(ptr noundef %add.ptr.i.i, i16 noundef zeroext %retval.0.in.i.i.i, i32 noundef %or30.i.i, ptr noundef %call98.i.i) #11
  %142 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %msg_enable.i210, align 4
  %and100.i.i = and i32 %143, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i.i)
  %tobool101.not.i.i = icmp eq i32 %and100.i.i, 0
  br i1 %tobool101.not.i.i, label %if.else95.i.i.if.end104.i.i_crit_edge, label %if.then102.i.i

if.else95.i.i.if.end104.i.i_crit_edge:            ; preds = %if.else95.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end104.i.i

if.then102.i.i:                                   ; preds = %if.else95.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %len103.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i214, i32 0, i32 6
  %144 = ptrtoint ptr %len103.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len103.i.i, align 4
  %146 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %data.i.i.i, align 4
  %call.i223.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.enc28j60_hw_rx, i32 noundef %145) #14
  call void @print_hex_dump(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.34, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %147, i32 noundef %145, i1 noundef zeroext true) #11
  br label %if.end104.i.i

if.end104.i.i:                                    ; preds = %if.then102.i.i, %if.else95.i.i.if.end104.i.i_crit_edge
  %call105.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i214, ptr noundef %1) #11
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i214, i32 0, i32 15, i32 0, i32 18
  %148 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %call105.i.i, ptr %protocol.i.i, align 8
  %149 = ptrtoint ptr %stats106.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %stats106.i.i, align 8
  %inc107.i.i = add i32 %150, 1
  store i32 %inc107.i.i, ptr %stats106.i.i, align 8
  %151 = ptrtoint ptr %rx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %rx_bytes.i.i, align 8
  %add109.i.i = add i32 %152, %or30.i.i
  store i32 %add109.i.i, ptr %rx_bytes.i.i, align 8
  %call110.i.i = call i32 @netif_rx_ni(ptr noundef nonnull %call.i.i.i214) #11
  br label %if.end112.i.i

if.end112.i.i:                                    ; preds = %if.end104.i.i, %if.end92.i.i, %if.then81.i.i, %if.end78.i.i.if.end112.i.i_crit_edge
  %sub.i.i.i = add i16 %or.i.i, -1
  %153 = add i16 %or.i.i, -6657
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6656, i16 %153)
  %154 = icmp ult i16 %153, -6656
  %erxrdpt.0.i.i.i = select i1 %154, i16 6655, i16 %sub.i.i.i
  %155 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %msg_enable.i210, align 4
  %and115.i.i = and i32 %156, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115.i.i)
  %tobool116.not.i.i = icmp eq i32 %and115.i.i, 0
  br i1 %tobool116.not.i.i, label %if.end112.i.i.if.end119.i.i_crit_edge, label %do.end.i.i

if.end112.i.i.if.end119.i.i_crit_edge:            ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end119.i.i

do.end.i.i:                                       ; preds = %if.end112.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv118.i.i = zext i16 %erxrdpt.0.i.i.i to i32
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %89, ptr noundef nonnull @.str.104, ptr noundef nonnull @__func__.enc28j60_hw_rx, i32 noundef %conv118.i.i) #14
  br label %if.end119.i.i

if.end119.i.i:                                    ; preds = %do.end.i.i, %if.end112.i.i.if.end119.i.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock.i.i190, i32 noundef 0) #11
  call fastcc void @nolock_regw_write(ptr noundef %add.ptr.i.i, i8 noundef zeroext 12, i16 noundef zeroext %erxrdpt.0.i.i.i) #11
  %157 = ptrtoint ptr %msg_enable.i210 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %msg_enable.i210, align 4
  %and122.i.i = and i32 %158, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and122.i.i)
  %tobool123.not.i.i = icmp eq i32 %and122.i.i, 0
  br i1 %tobool123.not.i.i, label %if.end119.i.i.if.end138.i.i_crit_edge, label %if.then124.i.i

if.end119.i.i.if.end138.i.i_crit_edge:            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138.i.i

if.then124.i.i:                                   ; preds = %if.end119.i.i
  %call125.i.i = call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr.i.i, i8 noundef zeroext 12) #11
  %conv127.i.i = and i32 %call125.i.i, 65535
  %conv128.i.i = zext i16 %erxrdpt.0.i.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv127.i.i, i32 %conv128.i.i)
  %cmp129.not.i.i = icmp eq i32 %conv127.i.i, %conv128.i.i
  br i1 %cmp129.not.i.i, label %if.then124.i.i.if.end138.i.i_crit_edge, label %do.end134.i.i

if.then124.i.i.if.end138.i.i_crit_edge:           ; preds = %if.then124.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end138.i.i

do.end134.i.i:                                    ; preds = %if.then124.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %89, ptr noundef nonnull @.str.106, ptr noundef nonnull @__func__.enc28j60_hw_rx, i32 noundef %conv127.i.i, i32 noundef %conv128.i.i) #14
  br label %if.end138.i.i

if.end138.i.i:                                    ; preds = %do.end134.i.i, %if.then124.i.i.if.end138.i.i_crit_edge, %if.end119.i.i.if.end138.i.i_crit_edge
  %159 = ptrtoint ptr %next_pk_ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %or.i.i, ptr %next_pk_ptr.i.i, align 2
  call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr.i.i, i8 noundef zeroext 30, i8 noundef zeroext 64) #11
  call void @mutex_unlock(ptr noundef %lock.i.i190) #11
  br label %enc28j60_hw_rx.exit.i

enc28j60_hw_rx.exit.i:                            ; preds = %if.end138.i.i, %if.end14.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %rsv.i.i) #11
  %cmp20.i = icmp ugt i32 %pk_counter.037.i, 1
  br i1 %cmp20.i, label %enc28j60_hw_rx.exit.i.while.body.i_crit_edge, label %enc28j60_hw_rx.exit.i.enc28j60_rx_interrupt.exit_crit_edge

enc28j60_hw_rx.exit.i.enc28j60_rx_interrupt.exit_crit_edge: ; preds = %enc28j60_hw_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_rx_interrupt.exit

enc28j60_hw_rx.exit.i.while.body.i_crit_edge:     ; preds = %enc28j60_hw_rx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

enc28j60_rx_interrupt.exit:                       ; preds = %enc28j60_hw_rx.exit.i.enc28j60_rx_interrupt.exit_crit_edge, %if.end19.i.enc28j60_rx_interrupt.exit_crit_edge
  %not.tobool.not.i209 = xor i1 %tobool.not.i209, true
  %inc107.neg = sext i1 %not.tobool.not.i209 to i32
  %tobool109.not = icmp eq i32 %loop.4, %inc107.neg
  br i1 %tobool109.not, label %do.end, label %enc28j60_rx_interrupt.exit.do.body_crit_edge

enc28j60_rx_interrupt.exit.do.body_crit_edge:     ; preds = %enc28j60_rx_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %enc28j60_rx_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr, i8 noundef zeroext 27, i8 noundef zeroext -128) #11
  call void @mutex_unlock(ptr noundef %lock.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_restart_work_handler(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -236
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @rtnl_lock() #11
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  %lock.i.i = getelementptr i8, ptr %1, i32 2312
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i.i, i8 noundef zeroext 27, i8 noundef zeroext 0) #11
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i.i, i8 noundef zeroext 31, i8 noundef zeroext 4) #11
  %hw_enable.i.i = getelementptr i8, ptr %1, i32 2592
  %4 = ptrtoint ptr %hw_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %hw_enable.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #11
  tail call fastcc void @enc28j60_lowpower(ptr noundef %add.ptr.i.i, i1 noundef zeroext true) #11
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %5 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %6, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #11
  %call2 = tail call i32 @enc28j60_net_open(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then.if.end6_crit_edge, label %if.then5, !prof !332

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.124, i32 noundef %call2) #14
  tail call void @dev_close(ptr noundef %1) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  tail call void @rtnl_unlock() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enc28j60_set_hw_macaddr(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %spi = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %lock = getelementptr i8, ptr %ndev, i32 2312
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %hw_enable = getelementptr i8, ptr %ndev, i32 2592
  %2 = ptrtoint ptr %hw_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_enable, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %msg_enable = getelementptr i8, ptr %ndev, i32 2600
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %6 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.142, ptr noundef %ndev, ptr noundef %7) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %dev_addr4 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr4, align 64
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -28, i8 noundef zeroext %11)
  %12 = ptrtoint ptr %dev_addr4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr4, align 64
  %arrayidx6 = getelementptr i8, ptr %13, i32 1
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6, align 1
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -27, i8 noundef zeroext %15)
  %16 = ptrtoint ptr %dev_addr4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_addr4, align 64
  %arrayidx8 = getelementptr i8, ptr %17, i32 2
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx8, align 1
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -30, i8 noundef zeroext %19)
  %20 = ptrtoint ptr %dev_addr4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr4, align 64
  %arrayidx10 = getelementptr i8, ptr %21, i32 3
  %22 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx10, align 1
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -29, i8 noundef zeroext %23)
  %24 = ptrtoint ptr %dev_addr4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_addr4, align 64
  %arrayidx12 = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx12, align 1
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -32, i8 noundef zeroext %27)
  %28 = ptrtoint ptr %dev_addr4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr4, align 64
  %arrayidx14 = getelementptr i8, ptr %29, i32 5
  %30 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx14, align 1
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -31, i8 noundef zeroext %31)
  br label %if.end23

if.else:                                          ; preds = %entry
  br i1 %tobool2.not, label %if.else.if.end23_crit_edge, label %do.end21

if.else.if.end23_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

do.end21:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.143) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %if.else.if.end23_crit_edge, %if.end
  %ret.0 = phi i32 [ 0, %if.end ], [ -16, %do.end21 ], [ -16, %if.else.if.end23_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_work = getelementptr inbounds %struct.enc28j60_net, ptr %dev_id, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %irq_work) #11
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enc28j60_lowpower(ptr noundef %priv, i1 noundef zeroext %is_low) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %msg_enable = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %do.body

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enc28j60_lowpower.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enc28j60_lowpower, %if.then6)) #11
          to label %if.end8 [label %if.then6], !srcloc !334

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %is_low, ptr @.str.155, ptr @.str.156
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enc28j60_lowpower.__UNIQUE_ID_ddebug477, ptr noundef %1, ptr noundef nonnull @.str.154, ptr noundef nonnull %cond) #11
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %do.body, %entry.if.end8_crit_edge
  %lock = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  br i1 %is_low, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %priv, i8 noundef zeroext 31, i8 noundef zeroext 4)
  %call11 = tail call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext 29, i8 noundef zeroext 4, i8 noundef zeroext 0)
  %call12 = tail call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext 31, i8 noundef zeroext 8, i8 noundef zeroext 0)
  tail call fastcc void @nolock_reg_bfset(ptr noundef %priv, i8 noundef zeroext 30, i8 noundef zeroext 32)
  br label %if.end14

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %priv, i8 noundef zeroext 30, i8 noundef zeroext 32)
  %call13 = tail call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext 1)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enc28j60_mem_read(ptr noundef %priv, i16 noundef zeroext %addr, i32 noundef %len, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %tx.i = alloca %struct.spi_transfer, align 4
  %rx.i = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  tail call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext 0, i16 noundef zeroext %addr)
  %msg_enable = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %spi = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call = tail call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext 0)
  %conv2 = and i32 %call, 65535
  %conv3 = zext i16 %addr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3)
  %cmp.not = icmp eq i32 %conv2, %conv3
  br i1 %cmp.not, label %if.then.if.end8_crit_edge, label %do.end

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %conv2, i32 noundef %conv3) #14
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %spi.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi.i, align 4
  %spi_transfer_buf.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  %add.ptr.i = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i) #11
  %6 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spi_transfer_buf.i, ptr %tx.i, align 4
  %len6.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 2
  %9 = ptrtoint ptr %len6.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %len6.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i) #11
  %10 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %rx_buf8.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 1
  %11 = ptrtoint ptr %rx_buf8.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %rx_buf8.i, align 4
  %len9.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 2
  %12 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %len9.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #11
  %13 = ptrtoint ptr %spi_transfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 58, ptr %spi_transfer_buf.i, align 1
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end8.spi_message_add_tail.exit.i_crit_edge

if.end8.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end8.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i1.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i3.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i1.i, ptr noundef %25, ptr noundef nonnull %msg.i) #11
  br i1 %call.i.i.i3.i, label %if.end.i.i.i5.i, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit6.i_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit6.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_message_add_tail.exit6.i

if.end.i.i.i5.i:                                  ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i1.i, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i1.i, align 4
  %prev3.i.i.i4.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i4.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i1.i, ptr %25, align 4
  br label %spi_message_add_tail.exit6.i

spi_message_add_tail.exit6.i:                     ; preds = %if.end.i.i.i5.i, %spi_message_add_tail.exit.i.spi_message_add_tail.exit6.i_crit_edge
  %30 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %31, ptr noundef nonnull %msg.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i, label %spi_message_add_tail.exit6.i.land.lhs.true.i_crit_edge

spi_message_add_tail.exit6.i.land.lhs.true.i_crit_edge: ; preds = %spi_message_add_tail.exit6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end.i:                                         ; preds = %spi_message_add_tail.exit6.i
  %32 = call ptr @memcpy(ptr %data, ptr %add.ptr.i, i32 %len)
  %status.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 7
  %33 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end.i.spi_read_buf.exit_crit_edge, label %if.end.i.land.lhs.true.i_crit_edge

if.end.i.land.lhs.true.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end.i.spi_read_buf.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_read_buf.exit

land.lhs.true.i:                                  ; preds = %if.end.i.land.lhs.true.i_crit_edge, %spi_message_add_tail.exit6.i.land.lhs.true.i_crit_edge
  %ret.09.i = phi i32 [ %34, %if.end.i.land.lhs.true.i_crit_edge ], [ %call.i, %spi_message_add_tail.exit6.i.land.lhs.true.i_crit_edge ]
  %35 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool15.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true.i.spi_read_buf.exit_crit_edge, label %do.end.i

land.lhs.true.i.spi_read_buf.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_read_buf.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.49, i32 noundef %ret.09.i) #14
  br label %spi_read_buf.exit

spi_read_buf.exit:                                ; preds = %do.end.i, %land.lhs.true.i.spi_read_buf.exit_crit_edge, %if.end.i.spi_read_buf.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext %address, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i11 = alloca %struct.spi_message, align 4
  %t.i.i12 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %address)
  %conv = trunc i16 %data to i8
  %spi.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i, align 4
  %2 = and i8 %address, 31
  %or1.i = or i8 %2, 64
  %spi_transfer_buf.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %spi_transfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or1.i, ptr %spi_transfer_buf.i, align 4
  %arrayidx5.i = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi_transfer_buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.spi_write_op.exit_crit_edge, label %land.lhs.true.i

spi_write.exit.i.spi_write_op.exit_crit_edge:     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

land.lhs.true.i:                                  ; preds = %spi_write.exit.i
  %msg_enable.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.spi_write_op.exit_crit_edge, label %do.end.i

land.lhs.true.i.spi_write_op.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i) #14
  br label %spi_write_op.exit

spi_write_op.exit:                                ; preds = %do.end.i, %land.lhs.true.i.spi_write_op.exit_crit_edge, %spi_write.exit.i.spi_write_op.exit_crit_edge
  %add = add i8 %address, 1
  %21 = lshr i16 %data, 8
  %conv4 = trunc i16 %21 to i8
  %22 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %spi.i, align 4
  %24 = and i8 %add, 31
  %or1.i14 = or i8 %24, 64
  %25 = ptrtoint ptr %spi_transfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %or1.i14, ptr %spi_transfer_buf.i, align 4
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv4, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i12) #11
  %27 = getelementptr inbounds i8, ptr %t.i.i12, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 92)
  %29 = ptrtoint ptr %t.i.i12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spi_transfer_buf.i, ptr %t.i.i12, align 4
  %len1.i.i17 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i12, i32 0, i32 2
  %30 = ptrtoint ptr %len1.i.i17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %len1.i.i17, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i11) #11
  %31 = getelementptr inbounds i8, ptr %msg.i.i.i11, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 40)
  %33 = ptrtoint ptr %msg.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg.i.i.i11, ptr %msg.i.i.i11, align 4
  %prev.i.i.i.i.i.i.i18 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i11, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i11, ptr %prev.i.i.i.i.i.i.i18, align 4
  %resources.i.i.i.i.i.i19 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i11, i32 0, i32 10
  %35 = ptrtoint ptr %resources.i.i.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i.i.i.i.i19, ptr %resources.i.i.i.i.i.i19, align 4
  %prev.i2.i.i.i.i.i.i20 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i11, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i.i.i.i.i20 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i.i.i.i.i19, ptr %prev.i2.i.i.i.i.i.i20, align 4
  %transfer_list.i.i.i.i.i21 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i12, i32 0, i32 18
  %call.i.i.i.i.i.i.i22 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i21, ptr noundef nonnull %msg.i.i.i11, ptr noundef nonnull %msg.i.i.i11) #11
  br i1 %call.i.i.i.i.i.i.i22, label %if.end.i.i.i.i.i.i.i24, label %spi_write_op.exit.spi_write.exit.i27_crit_edge

spi_write_op.exit.spi_write.exit.i27_crit_edge:   ; preds = %spi_write_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i27

if.end.i.i.i.i.i.i.i24:                           ; preds = %spi_write_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i.i.i.i.i21, ptr %prev.i.i.i.i.i.i.i18, align 4
  %38 = ptrtoint ptr %transfer_list.i.i.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i11, ptr %transfer_list.i.i.i.i.i21, align 4
  %prev3.i.i.i.i.i.i.i23 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i12, i32 0, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i.i.i.i.i23 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i11, ptr %prev3.i.i.i.i.i.i.i23, align 4
  %40 = ptrtoint ptr %msg.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i.i.i.i.i21, ptr %msg.i.i.i11, align 4
  br label %spi_write.exit.i27

spi_write.exit.i27:                               ; preds = %if.end.i.i.i.i.i.i.i24, %spi_write_op.exit.spi_write.exit.i27_crit_edge
  %call.i.i.i25 = call i32 @spi_sync(ptr noundef %23, ptr noundef nonnull %msg.i.i.i11) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i11) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i25)
  %tobool.not.i26 = icmp eq i32 %call.i.i.i25, 0
  br i1 %tobool.not.i26, label %spi_write.exit.i27.spi_write_op.exit33_crit_edge, label %land.lhs.true.i31

spi_write.exit.i27.spi_write_op.exit33_crit_edge: ; preds = %spi_write.exit.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit33

land.lhs.true.i31:                                ; preds = %spi_write.exit.i27
  %msg_enable.i28 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %41 = ptrtoint ptr %msg_enable.i28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable.i28, align 4
  %and8.i29 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i29)
  %tobool9.not.i30 = icmp eq i32 %and8.i29, 0
  br i1 %tobool9.not.i30, label %land.lhs.true.i31.spi_write_op.exit33_crit_edge, label %do.end.i32

land.lhs.true.i31.spi_write_op.exit33_crit_edge:  ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit33

do.end.i32:                                       ; preds = %land.lhs.true.i31
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %23, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i25) #14
  br label %spi_write_op.exit33

spi_write_op.exit33:                              ; preds = %do.end.i32, %land.lhs.true.i31.spi_write_op.exit33_crit_edge, %spi_write.exit.i27.spi_write_op.exit33_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext %address) unnamed_addr #2 align 64 {
entry:
  %tx_buf.i9 = alloca [2 x i8], align 1
  %rx_buf.i10 = alloca [4 x i8], align 4
  %tx_buf.i = alloca [2 x i8], align 1
  %rx_buf.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %address)
  %spi.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i) #11
  %2 = getelementptr inbounds [2 x i8], ptr %tx_buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %address)
  %tobool.not.i = icmp sgt i8 %address, -1
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  %and4.i = and i8 %address, 31
  %4 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rx_buf.i, align 4
  %5 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and4.i, ptr %tx_buf.i, align 1
  %call.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %tx_buf.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i, i32 noundef %spec.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool8.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i) #14
  br label %spi_read_op.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = add nsw i32 %spec.select.i, -1
  %arrayidx10.i = getelementptr [4 x i8], ptr %rx_buf.i, i32 0, i32 %sub.i
  %6 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10.i, align 1
  %phi.cast = zext i8 %7 to i32
  br label %spi_read_op.exit

spi_read_op.exit:                                 ; preds = %if.else.i, %do.end.i
  %val.0.i = phi i32 [ 0, %do.end.i ], [ %phi.cast, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i) #11
  %add = add i8 %address, 1
  %8 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spi.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i9) #11
  %10 = getelementptr inbounds [2 x i8], ptr %tx_buf.i9, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -1, ptr %10, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i10) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %add)
  %tobool.not.i12 = icmp sgt i8 %add, -1
  %spec.select.i13 = select i1 %tobool.not.i12, i32 1, i32 2
  %and4.i14 = and i8 %add, 31
  %12 = ptrtoint ptr %rx_buf.i10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %rx_buf.i10, align 4
  %13 = ptrtoint ptr %tx_buf.i9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %and4.i14, ptr %tx_buf.i9, align 1
  %call.i15 = call i32 @spi_write_then_read(ptr noundef %9, ptr noundef nonnull %tx_buf.i9, i32 noundef 1, ptr noundef nonnull %rx_buf.i10, i32 noundef %spec.select.i13) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool8.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool8.not.i16, label %if.else.i20, label %do.end.i17

do.end.i17:                                       ; preds = %spi_read_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %9, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i15) #14
  br label %spi_read_op.exit22

if.else.i20:                                      ; preds = %spi_read_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i18 = add nsw i32 %spec.select.i13, -1
  %arrayidx10.i19 = getelementptr [4 x i8], ptr %rx_buf.i10, i32 0, i32 %sub.i18
  %14 = ptrtoint ptr %arrayidx10.i19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10.i19, align 1
  %phi.cast23 = zext i8 %15 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast23, 8
  br label %spi_read_op.exit22

spi_read_op.exit22:                               ; preds = %if.else.i20, %do.end.i17
  %val.0.i21 = phi i32 [ 0, %do.end.i17 ], [ %phi.bo, %if.else.i20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i10) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i9) #11
  %or = or i32 %val.0.i21, %val.0.i
  ret i32 %or
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %addr) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i94 = alloca %struct.spi_message, align 4
  %t.i.i95 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i72 = alloca %struct.spi_message, align 4
  %t.i.i73 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i50 = alloca %struct.spi_message, align 4
  %t.i.i51 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i8 %addr, 5
  %0 = and i8 %and, 3
  %1 = add i8 %addr, -27
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %2 = icmp ult i8 %1, 5
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv7 = zext i8 %0 to i32
  %and8 = and i32 %conv7, 1
  %bank = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 8
  %3 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bank, align 4
  %5 = and i8 %4, 1
  %and10 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %and10)
  %cmp11.not = icmp eq i32 %and8, %and10
  br i1 %cmp11.not, label %if.end.if.end19_crit_edge, label %if.then13

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  %spi.i52 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %spi.i52 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi.i52, align 4
  %spi_transfer_buf.i53 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  br i1 %tobool.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then13
  %8 = ptrtoint ptr %spi_transfer_buf.i53 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -97, ptr %spi_transfer_buf.i53, align 4
  %arrayidx5.i = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %10 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi_transfer_buf.i53, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %14 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then16.spi_write.exit.i_crit_edge

if.then16.spi_write.exit.i_crit_edge:             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.then16.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.if.end19_crit_edge, label %land.lhs.true.i

spi_write.exit.i.if.end19_crit_edge:              ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true.i:                                  ; preds = %spi_write.exit.i
  %msg_enable.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %24 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end19_crit_edge, label %land.lhs.true.i.if.end19.sink.split_crit_edge

land.lhs.true.i.if.end19.sink.split_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.sink.split

land.lhs.true.i.if.end19_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.else:                                          ; preds = %if.then13
  %26 = ptrtoint ptr %spi_transfer_buf.i53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -65, ptr %spi_transfer_buf.i53, align 4
  %arrayidx5.i54 = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %27 = ptrtoint ptr %arrayidx5.i54 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx5.i54, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i51) #11
  %28 = getelementptr inbounds i8, ptr %t.i.i51, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 92)
  %30 = ptrtoint ptr %t.i.i51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %spi_transfer_buf.i53, ptr %t.i.i51, align 4
  %len1.i.i55 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i51, i32 0, i32 2
  %31 = ptrtoint ptr %len1.i.i55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %len1.i.i55, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i50) #11
  %32 = getelementptr inbounds i8, ptr %msg.i.i.i50, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i.i.i50, ptr %msg.i.i.i50, align 4
  %prev.i.i.i.i.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i50, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i50, ptr %prev.i.i.i.i.i.i.i56, align 4
  %resources.i.i.i.i.i.i57 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i50, i32 0, i32 10
  %36 = ptrtoint ptr %resources.i.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i.i57, ptr %resources.i.i.i.i.i.i57, align 4
  %prev.i2.i.i.i.i.i.i58 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i50, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i.i58 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i.i57, ptr %prev.i2.i.i.i.i.i.i58, align 4
  %transfer_list.i.i.i.i.i59 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i51, i32 0, i32 18
  %call.i.i.i.i.i.i.i60 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i59, ptr noundef nonnull %msg.i.i.i50, ptr noundef nonnull %msg.i.i.i50) #11
  br i1 %call.i.i.i.i.i.i.i60, label %if.end.i.i.i.i.i.i.i62, label %if.else.spi_write.exit.i65_crit_edge

if.else.spi_write.exit.i65_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i65

if.end.i.i.i.i.i.i.i62:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i.i.i59, ptr %prev.i.i.i.i.i.i.i56, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i50, ptr %transfer_list.i.i.i.i.i59, align 4
  %prev3.i.i.i.i.i.i.i61 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i51, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i50, ptr %prev3.i.i.i.i.i.i.i61, align 4
  %41 = ptrtoint ptr %msg.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i.i.i59, ptr %msg.i.i.i50, align 4
  br label %spi_write.exit.i65

spi_write.exit.i65:                               ; preds = %if.end.i.i.i.i.i.i.i62, %if.else.spi_write.exit.i65_crit_edge
  %call.i.i.i63 = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i50) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i50) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i63)
  %tobool.not.i64 = icmp eq i32 %call.i.i.i63, 0
  br i1 %tobool.not.i64, label %spi_write.exit.i65.if.end19_crit_edge, label %land.lhs.true.i69

spi_write.exit.i65.if.end19_crit_edge:            ; preds = %spi_write.exit.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

land.lhs.true.i69:                                ; preds = %spi_write.exit.i65
  %msg_enable.i66 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %42 = ptrtoint ptr %msg_enable.i66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable.i66, align 4
  %and8.i67 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i67)
  %tobool9.not.i68 = icmp eq i32 %and8.i67, 0
  br i1 %tobool9.not.i68, label %land.lhs.true.i69.if.end19_crit_edge, label %land.lhs.true.i69.if.end19.sink.split_crit_edge

land.lhs.true.i69.if.end19.sink.split_crit_edge:  ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.sink.split

land.lhs.true.i69.if.end19_crit_edge:             ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19.sink.split:                              ; preds = %land.lhs.true.i69.if.end19.sink.split_crit_edge, %land.lhs.true.i.if.end19.sink.split_crit_edge
  %call.i.i.i63.sink = phi i32 [ %call.i.i.i, %land.lhs.true.i.if.end19.sink.split_crit_edge ], [ %call.i.i.i63, %land.lhs.true.i69.if.end19.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i63.sink) #14
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %land.lhs.true.i69.if.end19_crit_edge, %spi_write.exit.i65.if.end19_crit_edge, %land.lhs.true.i.if.end19_crit_edge, %spi_write.exit.i.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %and21 = and i32 %conv7, 2
  %44 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bank, align 4
  %46 = and i8 %45, 2
  %and24 = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and21, i32 %and24)
  %cmp25.not = icmp eq i32 %and21, %and24
  br i1 %cmp25.not, label %if.end19.if.end36_crit_edge, label %if.then27

if.end19.if.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then27:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool30.not = icmp eq i32 %and21, 0
  %spi.i96 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %47 = ptrtoint ptr %spi.i96 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi.i96, align 4
  %spi_transfer_buf.i97 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  br i1 %tobool30.not, label %if.else33, label %if.then31

if.then31:                                        ; preds = %if.then27
  %49 = ptrtoint ptr %spi_transfer_buf.i97 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -97, ptr %spi_transfer_buf.i97, align 4
  %arrayidx5.i76 = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %50 = ptrtoint ptr %arrayidx5.i76 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %arrayidx5.i76, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i73) #11
  %51 = getelementptr inbounds i8, ptr %t.i.i73, i32 4
  %52 = call ptr @memset(ptr %51, i32 0, i32 92)
  %53 = ptrtoint ptr %t.i.i73 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %spi_transfer_buf.i97, ptr %t.i.i73, align 4
  %len1.i.i77 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i73, i32 0, i32 2
  %54 = ptrtoint ptr %len1.i.i77 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %len1.i.i77, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i72) #11
  %55 = getelementptr inbounds i8, ptr %msg.i.i.i72, i32 8
  %56 = call ptr @memset(ptr %55, i32 0, i32 40)
  %57 = ptrtoint ptr %msg.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %msg.i.i.i72, ptr %msg.i.i.i72, align 4
  %prev.i.i.i.i.i.i.i78 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i72, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i.i.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i.i72, ptr %prev.i.i.i.i.i.i.i78, align 4
  %resources.i.i.i.i.i.i79 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i72, i32 0, i32 10
  %59 = ptrtoint ptr %resources.i.i.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %resources.i.i.i.i.i.i79, ptr %resources.i.i.i.i.i.i79, align 4
  %prev.i2.i.i.i.i.i.i80 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i72, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %prev.i2.i.i.i.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %resources.i.i.i.i.i.i79, ptr %prev.i2.i.i.i.i.i.i80, align 4
  %transfer_list.i.i.i.i.i81 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i73, i32 0, i32 18
  %call.i.i.i.i.i.i.i82 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i81, ptr noundef nonnull %msg.i.i.i72, ptr noundef nonnull %msg.i.i.i72) #11
  br i1 %call.i.i.i.i.i.i.i82, label %if.end.i.i.i.i.i.i.i84, label %if.then31.spi_write.exit.i87_crit_edge

if.then31.spi_write.exit.i87_crit_edge:           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i87

if.end.i.i.i.i.i.i.i84:                           ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %prev.i.i.i.i.i.i.i78 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i.i.i.i.i81, ptr %prev.i.i.i.i.i.i.i78, align 4
  %62 = ptrtoint ptr %transfer_list.i.i.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i72, ptr %transfer_list.i.i.i.i.i81, align 4
  %prev3.i.i.i.i.i.i.i83 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i73, i32 0, i32 18, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i.i.i72, ptr %prev3.i.i.i.i.i.i.i83, align 4
  %64 = ptrtoint ptr %msg.i.i.i72 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i.i.i.i.i81, ptr %msg.i.i.i72, align 4
  br label %spi_write.exit.i87

spi_write.exit.i87:                               ; preds = %if.end.i.i.i.i.i.i.i84, %if.then31.spi_write.exit.i87_crit_edge
  %call.i.i.i85 = call i32 @spi_sync(ptr noundef %48, ptr noundef nonnull %msg.i.i.i72) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i72) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i73) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i85)
  %tobool.not.i86 = icmp eq i32 %call.i.i.i85, 0
  br i1 %tobool.not.i86, label %spi_write.exit.i87.if.end36_crit_edge, label %land.lhs.true.i91

spi_write.exit.i87.if.end36_crit_edge:            ; preds = %spi_write.exit.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true.i91:                                ; preds = %spi_write.exit.i87
  %msg_enable.i88 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %65 = ptrtoint ptr %msg_enable.i88 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable.i88, align 4
  %and8.i89 = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i89)
  %tobool9.not.i90 = icmp eq i32 %and8.i89, 0
  br i1 %tobool9.not.i90, label %land.lhs.true.i91.if.end36_crit_edge, label %land.lhs.true.i91.if.end36.sink.split_crit_edge

land.lhs.true.i91.if.end36.sink.split_crit_edge:  ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.sink.split

land.lhs.true.i91.if.end36_crit_edge:             ; preds = %land.lhs.true.i91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.else33:                                        ; preds = %if.then27
  %67 = ptrtoint ptr %spi_transfer_buf.i97 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 -65, ptr %spi_transfer_buf.i97, align 4
  %arrayidx5.i98 = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %68 = ptrtoint ptr %arrayidx5.i98 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 2, ptr %arrayidx5.i98, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i95) #11
  %69 = getelementptr inbounds i8, ptr %t.i.i95, i32 4
  %70 = call ptr @memset(ptr %69, i32 0, i32 92)
  %71 = ptrtoint ptr %t.i.i95 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %spi_transfer_buf.i97, ptr %t.i.i95, align 4
  %len1.i.i99 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i95, i32 0, i32 2
  %72 = ptrtoint ptr %len1.i.i99 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %len1.i.i99, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i94) #11
  %73 = getelementptr inbounds i8, ptr %msg.i.i.i94, i32 8
  %74 = call ptr @memset(ptr %73, i32 0, i32 40)
  %75 = ptrtoint ptr %msg.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %msg.i.i.i94, ptr %msg.i.i.i94, align 4
  %prev.i.i.i.i.i.i.i100 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i94, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i.i94, ptr %prev.i.i.i.i.i.i.i100, align 4
  %resources.i.i.i.i.i.i101 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i94, i32 0, i32 10
  %77 = ptrtoint ptr %resources.i.i.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %resources.i.i.i.i.i.i101, ptr %resources.i.i.i.i.i.i101, align 4
  %prev.i2.i.i.i.i.i.i102 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i94, i32 0, i32 10, i32 1
  %78 = ptrtoint ptr %prev.i2.i.i.i.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %resources.i.i.i.i.i.i101, ptr %prev.i2.i.i.i.i.i.i102, align 4
  %transfer_list.i.i.i.i.i103 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i95, i32 0, i32 18
  %call.i.i.i.i.i.i.i104 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i103, ptr noundef nonnull %msg.i.i.i94, ptr noundef nonnull %msg.i.i.i94) #11
  br i1 %call.i.i.i.i.i.i.i104, label %if.end.i.i.i.i.i.i.i106, label %if.else33.spi_write.exit.i109_crit_edge

if.else33.spi_write.exit.i109_crit_edge:          ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i109

if.end.i.i.i.i.i.i.i106:                          ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %prev.i.i.i.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %transfer_list.i.i.i.i.i103, ptr %prev.i.i.i.i.i.i.i100, align 4
  %80 = ptrtoint ptr %transfer_list.i.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %msg.i.i.i94, ptr %transfer_list.i.i.i.i.i103, align 4
  %prev3.i.i.i.i.i.i.i105 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i95, i32 0, i32 18, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i.i94, ptr %prev3.i.i.i.i.i.i.i105, align 4
  %82 = ptrtoint ptr %msg.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %transfer_list.i.i.i.i.i103, ptr %msg.i.i.i94, align 4
  br label %spi_write.exit.i109

spi_write.exit.i109:                              ; preds = %if.end.i.i.i.i.i.i.i106, %if.else33.spi_write.exit.i109_crit_edge
  %call.i.i.i107 = call i32 @spi_sync(ptr noundef %48, ptr noundef nonnull %msg.i.i.i94) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i94) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i95) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i107)
  %tobool.not.i108 = icmp eq i32 %call.i.i.i107, 0
  br i1 %tobool.not.i108, label %spi_write.exit.i109.if.end36_crit_edge, label %land.lhs.true.i113

spi_write.exit.i109.if.end36_crit_edge:           ; preds = %spi_write.exit.i109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true.i113:                               ; preds = %spi_write.exit.i109
  %msg_enable.i110 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %83 = ptrtoint ptr %msg_enable.i110 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msg_enable.i110, align 4
  %and8.i111 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i111)
  %tobool9.not.i112 = icmp eq i32 %and8.i111, 0
  br i1 %tobool9.not.i112, label %land.lhs.true.i113.if.end36_crit_edge, label %land.lhs.true.i113.if.end36.sink.split_crit_edge

land.lhs.true.i113.if.end36.sink.split_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36.sink.split

land.lhs.true.i113.if.end36_crit_edge:            ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.end36.sink.split:                              ; preds = %land.lhs.true.i113.if.end36.sink.split_crit_edge, %land.lhs.true.i91.if.end36.sink.split_crit_edge
  %call.i.i.i107.sink = phi i32 [ %call.i.i.i85, %land.lhs.true.i91.if.end36.sink.split_crit_edge ], [ %call.i.i.i107, %land.lhs.true.i113.if.end36.sink.split_crit_edge ]
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %48, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i107.sink) #14
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %land.lhs.true.i113.if.end36_crit_edge, %spi_write.exit.i109.if.end36_crit_edge, %land.lhs.true.i91.if.end36_crit_edge, %spi_write.exit.i87.if.end36_crit_edge, %if.end19.if.end36_crit_edge
  %85 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %0, ptr %bank, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nolock_reg_bfset(ptr noundef %priv, i8 noundef zeroext %addr, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %addr)
  %spi.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i, align 4
  %2 = and i8 %addr, 31
  %or1.i = or i8 %2, -128
  %spi_transfer_buf.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %spi_transfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or1.i, ptr %spi_transfer_buf.i, align 4
  %arrayidx5.i = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mask, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi_transfer_buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.spi_write_op.exit_crit_edge, label %land.lhs.true.i

spi_write.exit.i.spi_write_op.exit_crit_edge:     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

land.lhs.true.i:                                  ; preds = %spi_write.exit.i
  %msg_enable.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.spi_write_op.exit_crit_edge, label %do.end.i

land.lhs.true.i.spi_write_op.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i) #14
  br label %spi_write_op.exit

spi_write_op.exit:                                ; preds = %do.end.i, %land.lhs.true.i.spi_write_op.exit_crit_edge, %spi_write.exit.i.spi_write_op.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext %address, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %address)
  %spi.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i, align 4
  %2 = and i8 %address, 31
  %or1.i = or i8 %2, 64
  %spi_transfer_buf.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %spi_transfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or1.i, ptr %spi_transfer_buf.i, align 4
  %arrayidx5.i = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi_transfer_buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.spi_write_op.exit_crit_edge, label %land.lhs.true.i

spi_write.exit.i.spi_write_op.exit_crit_edge:     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

land.lhs.true.i:                                  ; preds = %spi_write.exit.i
  %msg_enable.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.spi_write_op.exit_crit_edge, label %do.end.i

land.lhs.true.i.spi_write_op.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i) #14
  br label %spi_write_op.exit

spi_write_op.exit:                                ; preds = %do.end.i, %land.lhs.true.i.spi_write_op.exit_crit_edge, %spi_write.exit.i.spi_write_op.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @locked_regb_read(ptr noundef %priv, i8 noundef zeroext %address) unnamed_addr #2 align 64 {
entry:
  %tx_buf.i.i = alloca [2 x i8], align 1
  %rx_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  tail call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %address) #11
  %spi.i.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i) #11
  %2 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %address)
  %tobool.not.i.i = icmp sgt i8 %address, -1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %and4.i.i = and i8 %address, 31
  %4 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rx_buf.i.i, align 4
  %5 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and4.i.i, ptr %tx_buf.i.i, align 1
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %tx_buf.i.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i, i32 noundef %spec.select.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i) #14
  br label %nolock_regb_read.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add nsw i32 %spec.select.i.i, -1
  %arrayidx10.i.i = getelementptr [4 x i8], ptr %rx_buf.i.i, i32 0, i32 %sub.i.i
  %6 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10.i.i, align 1
  %phi.cast.i = zext i8 %7 to i32
  br label %nolock_regb_read.exit

nolock_regb_read.exit:                            ; preds = %if.else.i.i, %do.end.i.i
  %val.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %phi.cast.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  ret i32 %val.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enc28j60_check_link_status(ptr noundef %ndev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %spi = getelementptr i8, ptr %ndev, i32 2308
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %lock.i = getelementptr i8, ptr %ndev, i32 2312
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -44, i8 noundef zeroext 17) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -46, i8 noundef zeroext 1) #11
  %call.i.i = tail call fastcc i32 @poll_ready(ptr noundef %add.ptr.i, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -46, i8 noundef zeroext 0) #11
  %call1.i = tail call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr.i, i8 noundef zeroext -40) #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %msg_enable = getelementptr i8, ptr %ndev, i32 2600
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -44, i8 noundef zeroext 1) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -46, i8 noundef zeroext 1) #11
  %call.i.i35 = tail call fastcc i32 @poll_ready(ptr noundef %add.ptr.i, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -46, i8 noundef zeroext 0) #11
  %call1.i36 = tail call fastcc i32 @nolock_regw_read(ptr noundef %add.ptr.i, i8 noundef zeroext -40) #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %conv = and i32 %call1.i36, 65535
  %conv4 = and i32 %call1.i, 65535
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i32 noundef %conv, i32 noundef %conv4) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and6 = and i32 %call1.i, 512
  %and8 = and i32 %call1.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  tail call void @netif_carrier_on(ptr noundef %ndev) #11
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and12 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then10.if.end22_crit_edge, label %if.then14

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool15.not = icmp eq i32 %and6, 0
  %cond = select i1 %tobool15.not, ptr @.str.72, ptr @.str.71
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.70, ptr noundef nonnull %cond) #14
  br label %if.end22

if.else:                                          ; preds = %if.end
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and18 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.else.if.end21_crit_edge, label %if.then20

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.73) #14
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else.if.end21_crit_edge
  tail call void @netif_carrier_off(ptr noundef %ndev) #11
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then14, %if.then10.if.end22_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enc28j60_dump_tsv(ptr nocapture noundef readonly %priv, ptr noundef %msg, ptr nocapture noundef readonly %tsv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %msg) #14
  %arrayidx = getelementptr i8, ptr %tsv, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv2, 8
  %4 = ptrtoint ptr %tsv to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tsv, align 1
  %conv5 = zext i8 %5 to i32
  %or = or i32 %shl, %conv5
  %arrayidx8 = getelementptr i8, ptr %tsv, i32 5
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv10 = zext i8 %7 to i32
  %shl11 = shl nuw nsw i32 %conv10, 8
  %arrayidx13 = getelementptr i8, ptr %tsv, i32 4
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %or16 = or i32 %shl11, %conv14
  %arrayidx22 = getelementptr i8, ptr %tsv, i32 2
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx22, align 1
  %12 = and i8 %11, 15
  %and = zext i8 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.81, i32 noundef %or, i32 noundef %and, i32 noundef %or16) #14
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx22, align 1
  %conv29 = zext i8 %14 to i32
  %and30.lobit = lshr i32 %conv29, 7
  %and33 = lshr i32 %conv29, 4
  %and33.lobit = and i32 %and33, 1
  %and38 = lshr i32 %conv29, 5
  %and38.lobit = and i32 %and38, 1
  %and43 = lshr i32 %conv29, 6
  %and43.lobit = and i32 %and43, 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.84, i32 noundef %and30.lobit, i32 noundef %and33.lobit, i32 noundef %and38.lobit, i32 noundef %and43.lobit) #14
  %arrayidx49 = getelementptr i8, ptr %tsv, i32 3
  %15 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %16 to i32
  %and51 = and i32 %conv50, 1
  %and56 = lshr i32 %conv50, 1
  %and56.lobit = and i32 %and56, 1
  %and61 = lshr i32 %conv50, 2
  %and61.lobit = and i32 %and61, 1
  %and66 = lshr i32 %conv50, 3
  %and66.lobit = and i32 %and66, 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.87, i32 noundef %and51, i32 noundef %and56.lobit, i32 noundef %and61.lobit, i32 noundef %and66.lobit) #14
  %17 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx49, align 1
  %conv73 = zext i8 %18 to i32
  %and74 = lshr i32 %conv73, 4
  %and74.lobit = and i32 %and74, 1
  %and79 = lshr i32 %conv73, 5
  %and79.lobit = and i32 %and79, 1
  %and84 = lshr i32 %conv73, 6
  %and84.lobit = and i32 %and84, 1
  %and89.lobit = lshr i32 %conv73, 7
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.90, i32 noundef %and74.lobit, i32 noundef %and79.lobit, i32 noundef %and84.lobit, i32 noundef %and89.lobit) #14
  %arrayidx95 = getelementptr i8, ptr %tsv, i32 6
  %19 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx95, align 1
  %conv96 = zext i8 %20 to i32
  %and97 = and i32 %conv96, 1
  %and102 = lshr i32 %conv96, 1
  %and102.lobit = and i32 %and102, 1
  %and107 = lshr i32 %conv96, 2
  %and107.lobit = and i32 %and107, 1
  %and112 = lshr i32 %conv96, 3
  %and112.lobit = and i32 %and112, 1
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.93, i32 noundef %and97, i32 noundef %and102.lobit, i32 noundef %and107.lobit, i32 noundef %and112.lobit) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enc28j60_tx_clear(ptr noundef %ndev, i1 noundef zeroext %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %err, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %0 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_skb = getelementptr i8, ptr %ndev, i32 2404
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.end.thread:                                    ; preds = %entry
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 1
  %4 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_packets, align 4
  %inc2 = add i32 %5, 1
  store i32 %inc2, ptr %tx_packets, align 4
  %tx_skb22 = getelementptr i8, ptr %ndev, i32 2404
  %6 = ptrtoint ptr %tx_skb22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_skb22, align 4
  %tobool3.not23 = icmp eq ptr %7, null
  br i1 %tobool3.not23, label %if.end.thread.if.end12_crit_edge, label %if.then6

if.end.thread.if.end12_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then6:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %tx_bytes, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %tx_skb2427 = phi ptr [ %tx_skb22, %if.then6 ], [ %tx_skb, %if.end.if.end9_crit_edge ]
  %12 = ptrtoint ptr %tx_skb2427 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_skb2427, align 4
  tail call void @consume_skb(ptr noundef %13) #11
  %14 = ptrtoint ptr %tx_skb2427 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %tx_skb2427, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.end.thread.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %lock.i = getelementptr i8, ptr %ndev, i32 2312
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i, i8 noundef zeroext 31, i8 noundef zeroext 8) #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %16) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nolock_reg_bfclr(ptr noundef %priv, i8 noundef zeroext %addr, i8 noundef zeroext %mask) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %addr)
  %spi.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi.i, align 4
  %2 = and i8 %addr, 31
  %or1.i = or i8 %2, -96
  %spi_transfer_buf.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  %3 = ptrtoint ptr %spi_transfer_buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %or1.i, ptr %spi_transfer_buf.i, align 4
  %arrayidx5.i = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %mask, ptr %arrayidx5.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %5 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 92)
  %7 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi_transfer_buf.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %9 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.spi_write_op.exit_crit_edge, label %land.lhs.true.i

spi_write.exit.i.spi_write_op.exit_crit_edge:     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

land.lhs.true.i:                                  ; preds = %spi_write.exit.i
  %msg_enable.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %19 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.spi_write_op.exit_crit_edge, label %do.end.i

land.lhs.true.i.spi_write_op.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i) #14
  br label %spi_write_op.exit

spi_write_op.exit:                                ; preds = %do.end.i, %land.lhs.true.i.spi_write_op.exit_crit_edge, %spi_write.exit.i.spi_write_op.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext %reg, i8 noundef zeroext %mask, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %tx_buf.i.i = alloca [2 x i8], align 1
  %rx_buf.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 2
  %3 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %reg)
  %tobool.not.i.i = icmp sgt i8 %reg, -1
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %and4.i.i = and i8 %reg, 31
  %sub.i.i = add nsw i32 %spec.select.i.i, -1
  %arrayidx10.i.i = getelementptr [4 x i8], ptr %rx_buf.i.i, i32 0, i32 %sub.i.i
  %conv = zext i8 %mask to i32
  %conv3 = zext i8 %val to i32
  br label %while.cond

while.cond:                                       ; preds = %do.end21, %entry
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext %reg) #11
  %4 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i) #11
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %3, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i) #11
  %7 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rx_buf.i.i, align 4
  %8 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %and4.i.i, ptr %tx_buf.i.i, align 1
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %tx_buf.i.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i, i32 noundef %spec.select.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool8.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %5, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i) #14
  br label %nolock_regb_read.exit

if.else.i.i:                                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx10.i.i, align 1
  %phi.cast.i = zext i8 %10 to i32
  br label %nolock_regb_read.exit

nolock_regb_read.exit:                            ; preds = %if.else.i.i, %do.end.i.i
  %val.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %phi.cast.i, %if.else.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i) #11
  %and = and i32 %val.0.i.i, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv3)
  %cmp.not = icmp eq i32 %and, %conv3
  br i1 %cmp.not, label %nolock_regb_read.exit.cleanup_crit_edge, label %while.body

nolock_regb_read.exit.cleanup_crit_edge:          ; preds = %nolock_regb_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %nolock_regb_read.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %11
  %cmp5 = icmp slt i32 %sub, 0
  br i1 %cmp5, label %if.then, label %do.end21

if.then:                                          ; preds = %while.body
  %msg_enable = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and7 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @poll_ready.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@poll_ready, %if.then13)) #11
          to label %cleanup [label %if.then13], !srcloc !334

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = zext i8 %reg to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @poll_ready.__UNIQUE_ID_ddebug476, ptr noundef %1, ptr noundef nonnull @.str.75, i32 noundef %conv14) #11
  br label %cleanup

do.end21:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !335
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !336
  br label %while.cond

cleanup:                                          ; preds = %if.then13, %do.body, %if.then.cleanup_crit_edge, %nolock_regb_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then13 ], [ -110, %if.then.cleanup_crit_edge ], [ -110, %do.body ], [ 0, %nolock_regb_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_net_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock.i = getelementptr i8, ptr %dev, i32 2312
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext 27, i8 noundef zeroext 0) #11
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i, i8 noundef zeroext 31, i8 noundef zeroext 4) #11
  %hw_enable.i = getelementptr i8, ptr %dev, i32 2592
  %0 = ptrtoint ptr %hw_enable.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hw_enable.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @enc28j60_lowpower(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %1 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %2, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_net_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %if.end4

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %msg_enable = getelementptr i8, ptr %dev, i32 2600
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.125, ptr noundef %1) #14
  br label %cleanup

if.end4:                                          ; preds = %is_valid_ether_addr.exit
  %spi.i = getelementptr i8, ptr %dev, i32 2308
  %9 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi.i, align 4
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2600
  %11 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end4.enc28j60_lowpower.exit_crit_edge, label %do.body.i

if.end4.enc28j60_lowpower.exit_crit_edge:         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_lowpower.exit

do.body.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @enc28j60_lowpower.__UNIQUE_ID_ddebug477, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@enc28j60_net_open, %if.then6.i)) #11
          to label %enc28j60_lowpower.exit [label %if.then6.i], !srcloc !334

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @enc28j60_lowpower.__UNIQUE_ID_ddebug477, ptr noundef %10, ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.156) #11
  br label %enc28j60_lowpower.exit

enc28j60_lowpower.exit:                           ; preds = %if.then6.i, %do.body.i, %if.end4.enc28j60_lowpower.exit_crit_edge
  %lock.i = getelementptr i8, ptr %dev, i32 2312
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i, i8 noundef zeroext 30, i8 noundef zeroext 32) #11
  %call13.i = tail call fastcc i32 @poll_ready(ptr noundef %add.ptr.i, i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext 1) #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext 27, i8 noundef zeroext 0) #11
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i, i8 noundef zeroext 31, i8 noundef zeroext 4) #11
  %hw_enable.i = getelementptr i8, ptr %dev, i32 2592
  %13 = ptrtoint ptr %hw_enable.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %hw_enable.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  %call5 = tail call fastcc i32 @enc28j60_hw_init(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end13

if.then7:                                         ; preds = %enc28j60_lowpower.exit
  %14 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable.i, align 4
  %and9 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.then11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.126) #14
  br label %cleanup

if.end13:                                         ; preds = %enc28j60_lowpower.exit
  %call14 = tail call fastcc i32 @enc28j60_set_hw_macaddr(ptr noundef %dev)
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and.i29 = and i32 %17, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %if.end13.enc28j60_hw_enable.exit_crit_edge, label %do.end.i

if.end13.enc28j60_hw_enable.exit_crit_edge:       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_hw_enable.exit

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %19, ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.141) #14
  br label %enc28j60_hw_enable.exit

enc28j60_hw_enable.exit:                          ; preds = %do.end.i, %if.end13.enc28j60_hw_enable.exit_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext -44, i8 noundef zeroext 18) #11
  tail call fastcc void @nolock_regw_write(ptr noundef %add.ptr.i, i8 noundef zeroext -42, i16 noundef zeroext 18) #11
  %call.i.i.i = tail call fastcc i32 @poll_ready(ptr noundef %add.ptr.i, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #11
  tail call fastcc void @nolock_reg_bfclr(ptr noundef %add.ptr.i, i8 noundef zeroext 28, i8 noundef zeroext 123) #11
  tail call fastcc void @nolock_regb_write(ptr noundef %add.ptr.i, i8 noundef zeroext 27, i8 noundef zeroext -37) #11
  tail call fastcc void @nolock_reg_bfset(ptr noundef %add.ptr.i, i8 noundef zeroext 31, i8 noundef zeroext 4) #11
  %20 = ptrtoint ptr %hw_enable.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %hw_enable.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #11
  tail call fastcc void @enc28j60_check_link_status(ptr noundef %dev)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %enc28j60_hw_enable.exit, %if.then11, %if.then7.cleanup_crit_edge, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %enc28j60_hw_enable.exit ], [ -99, %if.then2 ], [ -99, %if.then.cleanup_crit_edge ], [ -22, %if.then11 ], [ -22, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enc28j60_hw_init(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %tx_buf.i.i125.i = alloca [2 x i8], align 1
  %rx_buf.i.i126.i = alloca [4 x i8], align 4
  %tx_buf.i.i114.i = alloca [2 x i8], align 1
  %rx_buf.i.i115.i = alloca [4 x i8], align 4
  %tx_buf.i.i103.i = alloca [2 x i8], align 1
  %rx_buf.i.i104.i = alloca [4 x i8], align 4
  %tx_buf.i.i93.i = alloca [2 x i8], align 1
  %rx_buf.i.i94.i = alloca [4 x i8], align 4
  %tx_buf.i.i83.i = alloca [2 x i8], align 1
  %rx_buf.i.i84.i = alloca [4 x i8], align 4
  %tx_buf.i.i72.i = alloca [2 x i8], align 1
  %rx_buf.i.i73.i = alloca [4 x i8], align 4
  %tx_buf.i.i61.i = alloca [2 x i8], align 1
  %rx_buf.i.i62.i = alloca [4 x i8], align 4
  %tx_buf.i.i51.i = alloca [2 x i8], align 1
  %rx_buf.i.i52.i = alloca [4 x i8], align 4
  %tx_buf.i.i41.i = alloca [2 x i8], align 1
  %rx_buf.i.i42.i = alloca [4 x i8], align 4
  %tx_buf.i.i31.i = alloca [2 x i8], align 1
  %rx_buf.i.i32.i = alloca [4 x i8], align 4
  %tx_buf.i.i21.i = alloca [2 x i8], align 1
  %rx_buf.i.i22.i = alloca [4 x i8], align 4
  %tx_buf.i.i11.i = alloca [2 x i8], align 1
  %rx_buf.i.i12.i = alloca [4 x i8], align 4
  %tx_buf.i.i1.i = alloca [2 x i8], align 1
  %rx_buf.i.i2.i = alloca [4 x i8], align 4
  %tx_buf.i.i.i = alloca [2 x i8], align 1
  %rx_buf.i.i.i = alloca [4 x i8], align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %msg_enable = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 15
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %full_duplex = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 13
  %4 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %full_duplex, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool2.not, ptr @.str.130, ptr @.str.129
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.128, ptr noundef nonnull %cond) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %6 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi, align 4
  %spi_transfer_buf.i.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 16
  %8 = ptrtoint ptr %spi_transfer_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %spi_transfer_buf.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.enc28j60_net, ptr %priv, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx5.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #11
  %10 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi_transfer_buf.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #11
  %14 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.spi_write.exit.i.i_crit_edge

if.end.spi_write.exit.i.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_write.exit.i.i

spi_write.exit.i.i:                               ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.spi_write.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %7, ptr noundef nonnull %msg.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %spi_write.exit.i.i.enc28j60_soft_reset.exit_crit_edge, label %land.lhs.true.i.i

spi_write.exit.i.i.enc28j60_soft_reset.exit_crit_edge: ; preds = %spi_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_soft_reset.exit

land.lhs.true.i.i:                                ; preds = %spi_write.exit.i.i
  %24 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable, align 4
  %and8.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true.i.i.enc28j60_soft_reset.exit_crit_edge, label %do.end.i.i

land.lhs.true.i.i.enc28j60_soft_reset.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_soft_reset.exit

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %7, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i.i) #14
  br label %enc28j60_soft_reset.exit

enc28j60_soft_reset.exit:                         ; preds = %do.end.i.i, %land.lhs.true.i.i.enc28j60_soft_reset.exit_crit_edge, %spi_write.exit.i.i.enc28j60_soft_reset.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 429496000) #11
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %29 = ptrtoint ptr %spi_transfer_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 95, ptr %spi_transfer_buf.i.i, align 4
  %30 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %arrayidx5.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #11
  %31 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 92)
  %33 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %spi_transfer_buf.i.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  %35 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 40)
  %37 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %40 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #11
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %enc28j60_soft_reset.exit.spi_write.exit.i_crit_edge

enc28j60_soft_reset.exit.spi_write.exit.i_crit_edge: ; preds = %enc28j60_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %enc28j60_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %enc28j60_soft_reset.exit.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %spi_write.exit.i.spi_write_op.exit_crit_edge, label %land.lhs.true.i

spi_write.exit.i.spi_write_op.exit_crit_edge:     ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

land.lhs.true.i:                                  ; preds = %spi_write.exit.i
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 4
  %and8.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i.spi_write_op.exit_crit_edge, label %do.end.i

land.lhs.true.i.spi_write_op.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %spi_write_op.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %28, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45, i32 noundef %call.i.i.i) #14
  br label %spi_write_op.exit

spi_write_op.exit:                                ; preds = %do.end.i, %land.lhs.true.i.spi_write_op.exit_crit_edge, %spi_write.exit.i.spi_write_op.exit_crit_edge
  %bank = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 8
  %47 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %bank, align 4
  %max_pk_counter = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 10
  %rxfilter = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 14
  %48 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %rxfilter, align 4
  %49 = call ptr @memset(ptr %max_pk_counter, i32 0, i32 5)
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext 30, i8 noundef zeroext -120)
  %next_pk_ptr.i = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 9
  %50 = ptrtoint ptr %next_pk_ptr.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %next_pk_ptr.i, align 2
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext 8, i16 noundef zeroext 0) #11
  %51 = ptrtoint ptr %next_pk_ptr.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %next_pk_ptr.i, align 2
  %sub.i.i = add i16 %52, -1
  %53 = add i16 %52, -6657
  call void @__sanitizer_cov_trace_const_cmp2(i16 -6656, i16 %53)
  %54 = icmp ult i16 %53, -6656
  %erxrdpt.0.i.i = select i1 %54, i16 6655, i16 %sub.i.i
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext 12, i16 noundef zeroext %erxrdpt.0.i.i) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext 10, i16 noundef zeroext 6655) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext 4, i16 noundef zeroext 6656) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext 6, i16 noundef zeroext 8191) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  %call4 = call fastcc i32 @locked_regb_read(ptr noundef %priv, i8 noundef zeroext 114)
  %55 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %msg_enable, align 4
  %and6 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %.pre = and i32 %call4, 255
  br i1 %tobool7.not, label %spi_write_op.exit.if.end13_crit_edge, label %do.end11

spi_write_op.exit.if.end13_crit_edge:             ; preds = %spi_write_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

do.end11:                                         ; preds = %spi_write_op.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.132, i32 noundef %.pre) #14
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %spi_write_op.exit.if.end13_crit_edge
  %trunc = trunc i32 %call4 to i8
  %57 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.157)
  switch i8 %trunc, label %if.end29 [
    i8 0, label %if.end13.if.then19_crit_edge
    i8 -1, label %if.end13.if.then19_crit_edge136
  ]

if.end13.if.then19_crit_edge136:                  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.end13.if.then19_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

if.then19:                                        ; preds = %if.end13.if.then19_crit_edge, %if.end13.if.then19_crit_edge136
  %58 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable, align 4
  %and21 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then19.cleanup_crit_edge, label %do.end26

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end26:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %1, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.128, i32 noundef %.pre) #14
  br label %cleanup

if.end29:                                         ; preds = %if.end13
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext 56, i8 noundef zeroext -95) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -64, i8 noundef zeroext 13) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  %full_duplex30 = getelementptr inbounds %struct.enc28j60_net, ptr %priv, i32 0, i32 13
  %60 = ptrtoint ptr %full_duplex30 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %full_duplex30, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool31.not = icmp eq i8 %61, 0
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -62, i8 noundef zeroext 51) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -58, i8 noundef zeroext 18) #11
  br label %if.end33

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -62, i8 noundef zeroext 50) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -61, i8 noundef zeroext 64) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext -58, i16 noundef zeroext 3090) #11
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then32
  %.sink = phi i8 [ 18, %if.else ], [ 21, %if.then32 ]
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -60, i8 noundef zeroext %.sink) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext -54, i16 noundef zeroext 1518) #11
  call void @mutex_unlock(ptr noundef %lock) #11
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -44, i8 noundef zeroext 20) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext -42, i16 noundef zeroext 13430) #11
  %call.i.i = call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i116.not = icmp eq i32 %call.i.i, 0
  call void @mutex_unlock(ptr noundef %lock) #11
  br i1 %tobool.not.i.i116.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %62 = ptrtoint ptr %full_duplex30 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %full_duplex30, align 1, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool39.not = icmp eq i8 %63, 0
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -44, i8 noundef zeroext 0) #11
  br i1 %tobool39.not, label %if.else49, label %if.then40

if.then40:                                        ; preds = %if.end37
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext -42, i16 noundef zeroext 256) #11
  %call.i.i118 = call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %tobool.not.i.i119.not = icmp eq i32 %call.i.i118, 0
  call void @mutex_unlock(ptr noundef %lock) #11
  br i1 %tobool.not.i.i119.not, label %if.end44, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44:                                         ; preds = %if.then40
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -44, i8 noundef zeroext 16) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext -42, i16 noundef zeroext 0) #11
  %call.i.i122 = call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %tobool.not.i.i123.not = icmp eq i32 %call.i.i122, 0
  call void @mutex_unlock(ptr noundef %lock) #11
  br i1 %tobool.not.i.i123.not, label %if.end44.if.end58_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.else49:                                        ; preds = %if.end37
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext -42, i16 noundef zeroext 0) #11
  %call.i.i126 = call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %tobool.not.i.i127.not = icmp eq i32 %call.i.i126, 0
  call void @mutex_unlock(ptr noundef %lock) #11
  br i1 %tobool.not.i.i127.not, label %if.end53, label %if.else49.cleanup_crit_edge

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end53:                                         ; preds = %if.else49
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @nolock_regb_write(ptr noundef %priv, i8 noundef zeroext -44, i8 noundef zeroext 16) #11
  call fastcc void @nolock_regw_write(ptr noundef %priv, i8 noundef zeroext -42, i16 noundef zeroext 256) #11
  %call.i.i130 = call fastcc i32 @poll_ready(ptr noundef %priv, i8 noundef zeroext -22, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130)
  %tobool.not.i.i131.not = icmp eq i32 %call.i.i130, 0
  call void @mutex_unlock(ptr noundef %lock) #11
  br i1 %tobool.not.i.i131.not, label %if.end53.if.end58_crit_edge, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end58:                                         ; preds = %if.end53.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %64 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable, align 4
  %and60 = and i32 %65, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %if.end58.cleanup_crit_edge, label %if.then62

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then62:                                        ; preds = %if.end58
  %66 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %spi, align 4
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext 114) #11
  %68 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i.i) #11
  %70 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i.i, i32 0, i32 1
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -1, ptr %70, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i.i) #11
  %72 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %rx_buf.i.i.i, align 4
  %73 = ptrtoint ptr %tx_buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 18, ptr %tx_buf.i.i.i, align 1
  %call.i.i.i135 = call i32 @spi_write_then_read(ptr noundef %69, ptr noundef nonnull %tx_buf.i.i.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i135)
  %tobool8.not.i.i.i = icmp eq i32 %call.i.i.i135, 0
  br i1 %tobool8.not.i.i.i, label %if.else.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %69, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i.i135) #14
  br label %nolock_regb_read.exit.i

if.else.i.i.i:                                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %rx_buf.i.i.i, align 4
  %phi.cast.i.i = zext i8 %75 to i32
  br label %nolock_regb_read.exit.i

nolock_regb_read.exit.i:                          ; preds = %if.else.i.i.i, %do.end.i.i.i
  %val.0.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %phi.cast.i.i, %if.else.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i.i) #11
  %76 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i1.i) #11
  %78 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i1.i, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %78, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i2.i) #11
  %80 = ptrtoint ptr %rx_buf.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %rx_buf.i.i2.i, align 4
  %81 = ptrtoint ptr %tx_buf.i.i1.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 31, ptr %tx_buf.i.i1.i, align 1
  %call.i.i4.i = call i32 @spi_write_then_read(ptr noundef %77, ptr noundef nonnull %tx_buf.i.i1.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i2.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i4.i)
  %tobool8.not.i.i5.i = icmp eq i32 %call.i.i4.i, 0
  br i1 %tobool8.not.i.i5.i, label %if.else.i.i8.i, label %do.end.i.i6.i

do.end.i.i6.i:                                    ; preds = %nolock_regb_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %77, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i4.i) #14
  br label %nolock_regb_read.exit10.i

if.else.i.i8.i:                                   ; preds = %nolock_regb_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %rx_buf.i.i2.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %rx_buf.i.i2.i, align 4
  %phi.cast.i7.i = zext i8 %83 to i32
  br label %nolock_regb_read.exit10.i

nolock_regb_read.exit10.i:                        ; preds = %if.else.i.i8.i, %do.end.i.i6.i
  %val.0.i.i9.i = phi i32 [ 0, %do.end.i.i6.i ], [ %phi.cast.i7.i, %if.else.i.i8.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i2.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i1.i) #11
  %84 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i11.i) #11
  %86 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i11.i, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -1, ptr %86, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i12.i) #11
  %88 = ptrtoint ptr %rx_buf.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %rx_buf.i.i12.i, align 4
  %89 = ptrtoint ptr %tx_buf.i.i11.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 30, ptr %tx_buf.i.i11.i, align 1
  %call.i.i14.i = call i32 @spi_write_then_read(ptr noundef %85, ptr noundef nonnull %tx_buf.i.i11.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i12.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool8.not.i.i15.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool8.not.i.i15.i, label %if.else.i.i18.i, label %do.end.i.i16.i

do.end.i.i16.i:                                   ; preds = %nolock_regb_read.exit10.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %85, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i14.i) #14
  br label %nolock_regb_read.exit20.i

if.else.i.i18.i:                                  ; preds = %nolock_regb_read.exit10.i
  call void @__sanitizer_cov_trace_pc() #13
  %90 = ptrtoint ptr %rx_buf.i.i12.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %rx_buf.i.i12.i, align 4
  %phi.cast.i17.i = zext i8 %91 to i32
  br label %nolock_regb_read.exit20.i

nolock_regb_read.exit20.i:                        ; preds = %if.else.i.i18.i, %do.end.i.i16.i
  %val.0.i.i19.i = phi i32 [ 0, %do.end.i.i16.i ], [ %phi.cast.i17.i, %if.else.i.i18.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i12.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i11.i) #11
  %92 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i21.i) #11
  %94 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i21.i, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %94, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i22.i) #11
  %96 = ptrtoint ptr %rx_buf.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %rx_buf.i.i22.i, align 4
  %97 = ptrtoint ptr %tx_buf.i.i21.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 29, ptr %tx_buf.i.i21.i, align 1
  %call.i.i24.i = call i32 @spi_write_then_read(ptr noundef %93, ptr noundef nonnull %tx_buf.i.i21.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i22.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24.i)
  %tobool8.not.i.i25.i = icmp eq i32 %call.i.i24.i, 0
  br i1 %tobool8.not.i.i25.i, label %if.else.i.i28.i, label %do.end.i.i26.i

do.end.i.i26.i:                                   ; preds = %nolock_regb_read.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %93, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i24.i) #14
  br label %nolock_regb_read.exit30.i

if.else.i.i28.i:                                  ; preds = %nolock_regb_read.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %rx_buf.i.i22.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %rx_buf.i.i22.i, align 4
  %phi.cast.i27.i = zext i8 %99 to i32
  br label %nolock_regb_read.exit30.i

nolock_regb_read.exit30.i:                        ; preds = %if.else.i.i28.i, %do.end.i.i26.i
  %val.0.i.i29.i = phi i32 [ 0, %do.end.i.i26.i ], [ %phi.cast.i27.i, %if.else.i.i28.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i22.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i21.i) #11
  %100 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i31.i) #11
  %102 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i31.i, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 -1, ptr %102, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i32.i) #11
  %104 = ptrtoint ptr %rx_buf.i.i32.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 -1, ptr %rx_buf.i.i32.i, align 4
  %105 = ptrtoint ptr %tx_buf.i.i31.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 28, ptr %tx_buf.i.i31.i, align 1
  %call.i.i34.i = call i32 @spi_write_then_read(ptr noundef %101, ptr noundef nonnull %tx_buf.i.i31.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i32.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34.i)
  %tobool8.not.i.i35.i = icmp eq i32 %call.i.i34.i, 0
  br i1 %tobool8.not.i.i35.i, label %if.else.i.i38.i, label %do.end.i.i36.i

do.end.i.i36.i:                                   ; preds = %nolock_regb_read.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %101, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i34.i) #14
  br label %nolock_regb_read.exit40.i

if.else.i.i38.i:                                  ; preds = %nolock_regb_read.exit30.i
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %rx_buf.i.i32.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %rx_buf.i.i32.i, align 4
  %phi.cast.i37.i = zext i8 %107 to i32
  br label %nolock_regb_read.exit40.i

nolock_regb_read.exit40.i:                        ; preds = %if.else.i.i38.i, %do.end.i.i36.i
  %val.0.i.i39.i = phi i32 [ 0, %do.end.i.i36.i ], [ %phi.cast.i37.i, %if.else.i.i38.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i32.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i31.i) #11
  %108 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i41.i) #11
  %110 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i41.i, i32 0, i32 1
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 -1, ptr %110, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i42.i) #11
  %112 = ptrtoint ptr %rx_buf.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %rx_buf.i.i42.i, align 4
  %113 = ptrtoint ptr %tx_buf.i.i41.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 27, ptr %tx_buf.i.i41.i, align 1
  %call.i.i44.i = call i32 @spi_write_then_read(ptr noundef %109, ptr noundef nonnull %tx_buf.i.i41.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i42.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool8.not.i.i45.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool8.not.i.i45.i, label %if.else.i.i48.i, label %do.end.i.i46.i

do.end.i.i46.i:                                   ; preds = %nolock_regb_read.exit40.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %109, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i44.i) #14
  br label %nolock_regb_read.exit50.i

if.else.i.i48.i:                                  ; preds = %nolock_regb_read.exit40.i
  call void @__sanitizer_cov_trace_pc() #13
  %114 = ptrtoint ptr %rx_buf.i.i42.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %rx_buf.i.i42.i, align 4
  %phi.cast.i47.i = zext i8 %115 to i32
  br label %nolock_regb_read.exit50.i

nolock_regb_read.exit50.i:                        ; preds = %if.else.i.i48.i, %do.end.i.i46.i
  %val.0.i.i49.i = phi i32 [ 0, %do.end.i.i46.i ], [ %phi.cast.i47.i, %if.else.i.i48.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i42.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i41.i) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext -64) #11
  %116 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i51.i) #11
  %118 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i51.i, i32 0, i32 1
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %118, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i52.i) #11
  %120 = ptrtoint ptr %rx_buf.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %rx_buf.i.i52.i, align 4
  %121 = ptrtoint ptr %tx_buf.i.i51.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 0, ptr %tx_buf.i.i51.i, align 1
  %call.i.i54.i = call i32 @spi_write_then_read(ptr noundef %117, ptr noundef nonnull %tx_buf.i.i51.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i52.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54.i)
  %tobool8.not.i.i55.i = icmp eq i32 %call.i.i54.i, 0
  br i1 %tobool8.not.i.i55.i, label %if.else.i.i58.i, label %do.end.i.i56.i

do.end.i.i56.i:                                   ; preds = %nolock_regb_read.exit50.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %117, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i54.i) #14
  br label %nolock_regb_read.exit60.i

if.else.i.i58.i:                                  ; preds = %nolock_regb_read.exit50.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i.i.i = getelementptr inbounds [4 x i8], ptr %rx_buf.i.i52.i, i32 0, i32 1
  %122 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx10.i.i.i, align 1
  %phi.cast.i57.i = zext i8 %123 to i32
  br label %nolock_regb_read.exit60.i

nolock_regb_read.exit60.i:                        ; preds = %if.else.i.i58.i, %do.end.i.i56.i
  %val.0.i.i59.i = phi i32 [ 0, %do.end.i.i56.i ], [ %phi.cast.i57.i, %if.else.i.i58.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i52.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i51.i) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext -62) #11
  %124 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i61.i) #11
  %126 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i61.i, i32 0, i32 1
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 -1, ptr %126, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i62.i) #11
  %128 = ptrtoint ptr %rx_buf.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %rx_buf.i.i62.i, align 4
  %129 = ptrtoint ptr %tx_buf.i.i61.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 2, ptr %tx_buf.i.i61.i, align 1
  %call.i.i64.i = call i32 @spi_write_then_read(ptr noundef %125, ptr noundef nonnull %tx_buf.i.i61.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i62.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64.i)
  %tobool8.not.i.i65.i = icmp eq i32 %call.i.i64.i, 0
  br i1 %tobool8.not.i.i65.i, label %if.else.i.i69.i, label %do.end.i.i66.i

do.end.i.i66.i:                                   ; preds = %nolock_regb_read.exit60.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %125, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i64.i) #14
  br label %nolock_regb_read.exit71.i

if.else.i.i69.i:                                  ; preds = %nolock_regb_read.exit60.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i.i67.i = getelementptr inbounds [4 x i8], ptr %rx_buf.i.i62.i, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx10.i.i67.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx10.i.i67.i, align 1
  %phi.cast.i68.i = zext i8 %131 to i32
  br label %nolock_regb_read.exit71.i

nolock_regb_read.exit71.i:                        ; preds = %if.else.i.i69.i, %do.end.i.i66.i
  %val.0.i.i70.i = phi i32 [ 0, %do.end.i.i66.i ], [ %phi.cast.i68.i, %if.else.i.i69.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i62.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i61.i) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext -61) #11
  %132 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i72.i) #11
  %134 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i72.i, i32 0, i32 1
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 -1, ptr %134, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i73.i) #11
  %136 = ptrtoint ptr %rx_buf.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %rx_buf.i.i73.i, align 4
  %137 = ptrtoint ptr %tx_buf.i.i72.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 3, ptr %tx_buf.i.i72.i, align 1
  %call.i.i75.i = call i32 @spi_write_then_read(ptr noundef %133, ptr noundef nonnull %tx_buf.i.i72.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i73.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75.i)
  %tobool8.not.i.i76.i = icmp eq i32 %call.i.i75.i, 0
  br i1 %tobool8.not.i.i76.i, label %if.else.i.i80.i, label %do.end.i.i77.i

do.end.i.i77.i:                                   ; preds = %nolock_regb_read.exit71.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %133, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i75.i) #14
  br label %nolock_regb_read.exit82.i

if.else.i.i80.i:                                  ; preds = %nolock_regb_read.exit71.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i.i78.i = getelementptr inbounds [4 x i8], ptr %rx_buf.i.i73.i, i32 0, i32 1
  %138 = ptrtoint ptr %arrayidx10.i.i78.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx10.i.i78.i, align 1
  %phi.cast.i79.i = zext i8 %139 to i32
  br label %nolock_regb_read.exit82.i

nolock_regb_read.exit82.i:                        ; preds = %if.else.i.i80.i, %do.end.i.i77.i
  %val.0.i.i81.i = phi i32 [ 0, %do.end.i.i77.i ], [ %phi.cast.i79.i, %if.else.i.i80.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i73.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i72.i) #11
  %call10.i = call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext 8) #11
  %call11.i = call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext 10) #11
  %call12.i = call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext 14) #11
  %call13.i = call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext 12) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext 56) #11
  %140 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i83.i) #11
  %142 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i83.i, i32 0, i32 1
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 -1, ptr %142, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i84.i) #11
  %144 = ptrtoint ptr %rx_buf.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 -1, ptr %rx_buf.i.i84.i, align 4
  %145 = ptrtoint ptr %tx_buf.i.i83.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 24, ptr %tx_buf.i.i83.i, align 1
  %call.i.i86.i = call i32 @spi_write_then_read(ptr noundef %141, ptr noundef nonnull %tx_buf.i.i83.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i84.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86.i)
  %tobool8.not.i.i87.i = icmp eq i32 %call.i.i86.i, 0
  br i1 %tobool8.not.i.i87.i, label %if.else.i.i90.i, label %do.end.i.i88.i

do.end.i.i88.i:                                   ; preds = %nolock_regb_read.exit82.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %141, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i86.i) #14
  br label %nolock_regb_read.exit92.i

if.else.i.i90.i:                                  ; preds = %nolock_regb_read.exit82.i
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %rx_buf.i.i84.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %rx_buf.i.i84.i, align 4
  %phi.cast.i89.i = zext i8 %147 to i32
  br label %nolock_regb_read.exit92.i

nolock_regb_read.exit92.i:                        ; preds = %if.else.i.i90.i, %do.end.i.i88.i
  %val.0.i.i91.i = phi i32 [ 0, %do.end.i.i88.i ], [ %phi.cast.i89.i, %if.else.i.i90.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i84.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i83.i) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext 57) #11
  %148 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i93.i) #11
  %150 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i93.i, i32 0, i32 1
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 -1, ptr %150, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i94.i) #11
  %152 = ptrtoint ptr %rx_buf.i.i94.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -1, ptr %rx_buf.i.i94.i, align 4
  %153 = ptrtoint ptr %tx_buf.i.i93.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 25, ptr %tx_buf.i.i93.i, align 1
  %call.i.i96.i = call i32 @spi_write_then_read(ptr noundef %149, ptr noundef nonnull %tx_buf.i.i93.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i94.i, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96.i)
  %tobool8.not.i.i97.i = icmp eq i32 %call.i.i96.i, 0
  br i1 %tobool8.not.i.i97.i, label %if.else.i.i100.i, label %do.end.i.i98.i

do.end.i.i98.i:                                   ; preds = %nolock_regb_read.exit92.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %149, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i96.i) #14
  br label %nolock_regb_read.exit102.i

if.else.i.i100.i:                                 ; preds = %nolock_regb_read.exit92.i
  call void @__sanitizer_cov_trace_pc() #13
  %154 = ptrtoint ptr %rx_buf.i.i94.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %rx_buf.i.i94.i, align 4
  %phi.cast.i99.i = zext i8 %155 to i32
  br label %nolock_regb_read.exit102.i

nolock_regb_read.exit102.i:                       ; preds = %if.else.i.i100.i, %do.end.i.i98.i
  %val.0.i.i101.i = phi i32 [ 0, %do.end.i.i98.i ], [ %phi.cast.i99.i, %if.else.i.i100.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i94.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i93.i) #11
  %call16.i = call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext -54) #11
  %call17.i = call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext 4) #11
  %call18.i = call fastcc i32 @nolock_regw_read(ptr noundef %priv, i8 noundef zeroext 6) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext -56) #11
  %156 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i103.i) #11
  %158 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i103.i, i32 0, i32 1
  %159 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -1, ptr %158, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i104.i) #11
  %160 = ptrtoint ptr %rx_buf.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %rx_buf.i.i104.i, align 4
  %161 = ptrtoint ptr %tx_buf.i.i103.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 8, ptr %tx_buf.i.i103.i, align 1
  %call.i.i106.i = call i32 @spi_write_then_read(ptr noundef %157, ptr noundef nonnull %tx_buf.i.i103.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i104.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106.i)
  %tobool8.not.i.i107.i = icmp eq i32 %call.i.i106.i, 0
  br i1 %tobool8.not.i.i107.i, label %if.else.i.i111.i, label %do.end.i.i108.i

do.end.i.i108.i:                                  ; preds = %nolock_regb_read.exit102.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %157, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i106.i) #14
  br label %nolock_regb_read.exit113.i

if.else.i.i111.i:                                 ; preds = %nolock_regb_read.exit102.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i.i109.i = getelementptr inbounds [4 x i8], ptr %rx_buf.i.i104.i, i32 0, i32 1
  %162 = ptrtoint ptr %arrayidx10.i.i109.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx10.i.i109.i, align 1
  %phi.cast.i110.i = zext i8 %163 to i32
  br label %nolock_regb_read.exit113.i

nolock_regb_read.exit113.i:                       ; preds = %if.else.i.i111.i, %do.end.i.i108.i
  %val.0.i.i112.i = phi i32 [ 0, %do.end.i.i108.i ], [ %phi.cast.i110.i, %if.else.i.i111.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i104.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i103.i) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext -55) #11
  %164 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i114.i) #11
  %166 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i114.i, i32 0, i32 1
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 -1, ptr %166, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i115.i) #11
  %168 = ptrtoint ptr %rx_buf.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %rx_buf.i.i115.i, align 4
  %169 = ptrtoint ptr %tx_buf.i.i114.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 9, ptr %tx_buf.i.i114.i, align 1
  %call.i.i117.i = call i32 @spi_write_then_read(ptr noundef %165, ptr noundef nonnull %tx_buf.i.i114.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i115.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117.i)
  %tobool8.not.i.i118.i = icmp eq i32 %call.i.i117.i, 0
  br i1 %tobool8.not.i.i118.i, label %if.else.i.i122.i, label %do.end.i.i119.i

do.end.i.i119.i:                                  ; preds = %nolock_regb_read.exit113.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %165, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i117.i) #14
  br label %nolock_regb_read.exit124.i

if.else.i.i122.i:                                 ; preds = %nolock_regb_read.exit113.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i.i120.i = getelementptr inbounds [4 x i8], ptr %rx_buf.i.i115.i, i32 0, i32 1
  %170 = ptrtoint ptr %arrayidx10.i.i120.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx10.i.i120.i, align 1
  %phi.cast.i121.i = zext i8 %171 to i32
  br label %nolock_regb_read.exit124.i

nolock_regb_read.exit124.i:                       ; preds = %if.else.i.i122.i, %do.end.i.i119.i
  %val.0.i.i123.i = phi i32 [ 0, %do.end.i.i119.i ], [ %phi.cast.i121.i, %if.else.i.i122.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i115.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i114.i) #11
  call fastcc void @enc28j60_set_bank(ptr noundef %priv, i8 noundef zeroext -51) #11
  %172 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_buf.i.i125.i) #11
  %174 = getelementptr inbounds [2 x i8], ptr %tx_buf.i.i125.i, i32 0, i32 1
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -1, ptr %174, align 1, !annotation !331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rx_buf.i.i126.i) #11
  %176 = ptrtoint ptr %rx_buf.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %rx_buf.i.i126.i, align 4
  %177 = ptrtoint ptr %tx_buf.i.i125.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 13, ptr %tx_buf.i.i125.i, align 1
  %call.i.i128.i = call i32 @spi_write_then_read(ptr noundef %173, ptr noundef nonnull %tx_buf.i.i125.i, i32 noundef 1, ptr noundef nonnull %rx_buf.i.i126.i, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128.i)
  %tobool8.not.i.i129.i = icmp eq i32 %call.i.i128.i, 0
  br i1 %tobool8.not.i.i129.i, label %if.else.i.i133.i, label %do.end.i.i130.i

do.end.i.i130.i:                                  ; preds = %nolock_regb_read.exit124.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %173, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call.i.i128.i) #14
  br label %enc28j60_dump_regs.exit

if.else.i.i133.i:                                 ; preds = %nolock_regb_read.exit124.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i.i131.i = getelementptr inbounds [4 x i8], ptr %rx_buf.i.i126.i, i32 0, i32 1
  %178 = ptrtoint ptr %arrayidx10.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx10.i.i131.i, align 1
  %phi.cast.i132.i = zext i8 %179 to i32
  br label %enc28j60_dump_regs.exit

enc28j60_dump_regs.exit:                          ; preds = %if.else.i.i133.i, %do.end.i.i130.i
  %val.0.i.i134.i = phi i32 [ 0, %do.end.i.i130.i ], [ %phi.cast.i132.i, %if.else.i.i133.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rx_buf.i.i126.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_buf.i.i125.i) #11
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.26, ptr noundef %67, ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.137, i32 noundef %val.0.i.i.i, i32 noundef %val.0.i.i9.i, i32 noundef %val.0.i.i19.i, i32 noundef %val.0.i.i29.i, i32 noundef %val.0.i.i39.i, i32 noundef %val.0.i.i49.i, i32 noundef %val.0.i.i59.i, i32 noundef %val.0.i.i70.i, i32 noundef %val.0.i.i81.i, i32 noundef %call10.i, i32 noundef %call11.i, i32 noundef %call12.i, i32 noundef %call13.i, i32 noundef %val.0.i.i91.i, i32 noundef %val.0.i.i101.i, i32 noundef %call16.i, i32 noundef %call17.i, i32 noundef %call18.i, i32 noundef %val.0.i.i112.i, i32 noundef %val.0.i.i123.i, i32 noundef %val.0.i.i134.i) #14
  call void @mutex_unlock(ptr noundef %lock) #11
  br label %cleanup

cleanup:                                          ; preds = %enc28j60_dump_regs.exit, %if.end58.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.else49.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end26, %if.then19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end26 ], [ 0, %if.then19.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.end44.cleanup_crit_edge ], [ 0, %if.else49.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ 1, %enc28j60_dump_regs.exit ], [ 1, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_send_packet(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %tx_skb = getelementptr i8, ptr %dev, i32 2404
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %tx_skb, align 4
  %tx_work = getelementptr i8, ptr %dev, i32 2408
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %tx_work) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rxfilter = getelementptr i8, ptr %dev, i32 2596
  %0 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxfilter, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2600
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.then.if.end26_crit_edge, label %if.then3

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.50) #14
  br label %if.end26

if.else:                                          ; preds = %entry
  %and6 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.else.if.then8_crit_edge

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.else
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.else18, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.else.if.then8_crit_edge
  %msg_enable9 = getelementptr i8, ptr %dev, i32 2600
  %8 = ptrtoint ptr %msg_enable9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable9, align 4
  %and10 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then8.if.end26_crit_edge, label %if.then12

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  %cond = select i1 %tobool7.not, ptr @.str.149, ptr @.str.148
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.147, ptr noundef nonnull %cond) #14
  br label %if.end26

if.else18:                                        ; preds = %lor.lhs.false
  %msg_enable19 = getelementptr i8, ptr %dev, i32 2600
  %10 = ptrtoint ptr %msg_enable19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable19, align 4
  %and20 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else18.if.end26_crit_edge, label %if.then22

if.else18.if.end26_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then22:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.56) #14
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else18.if.end26_crit_edge, %if.then12, %if.then8.if.end26_crit_edge, %if.then3, %if.then.if.end26_crit_edge
  %.sink = phi i32 [ 2, %if.then3 ], [ 2, %if.then.if.end26_crit_edge ], [ 1, %if.then12 ], [ 1, %if.then8.if.end26_crit_edge ], [ 0, %if.then22 ], [ 0, %if.else18.if.end26_crit_edge ]
  %12 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %rxfilter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %.sink)
  %cmp28.not = icmp eq i32 %1, %.sink
  br i1 %cmp28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %setrx_work = getelementptr i8, ptr %dev, i32 2496
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %13 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %13, ptr noundef %setrx_work) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %if.end
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %addr, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end3

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #11
  %call6 = tail call fastcc i32 @enc28j60_set_hw_macaddr(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end3 ], [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_tx_timeout(ptr noundef %ndev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2600
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.150) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 5
  %2 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %tx_errors, align 4
  %restart_work = getelementptr i8, ptr %ndev, i32 2540
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %restart_work) #11
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @enc28j60_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #11
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.6, i32 noundef 32) #11
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enc28j60_get_msglevel(ptr nocapture noundef readonly %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2600
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @enc28j60_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %val) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2600
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @enc28j60_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cmd) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  %0 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 131, ptr %link_modes, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 10, ptr %speed, align 4
  %full_duplex = getelementptr i8, ptr %dev, i32 2593
  %4 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %full_duplex, align 1, !range !333
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %7 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %port, align 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %8 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %autoneg, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @enc28j60_set_link_ksettings(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %duplex, align 4
  %hw_enable.i = getelementptr i8, ptr %dev, i32 2592
  %2 = ptrtoint ptr %hw_enable.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hw_enable.i, align 4, !range !333
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else12.i

if.then.i:                                        ; preds = %entry
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %conv = trunc i32 %5 to i16
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.i = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv)
  %cmp3.i = icmp eq i16 %conv, 10
  %or.cond.i = and i1 %cmp.i, %cmp3.i
  br i1 %or.cond.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp7.i = icmp eq i8 %1, 1
  %full_duplex.i = getelementptr i8, ptr %dev, i32 2593
  %frombool.i = zext i1 %cmp7.i to i8
  %8 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool.i, ptr %full_duplex.i, align 1
  br label %enc28j60_setlink.exit

if.else.i:                                        ; preds = %if.then.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2600
  %9 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %if.else.i.enc28j60_setlink.exit_crit_edge, label %if.then10.i

if.else.i.enc28j60_setlink.exit_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_setlink.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.151) #14
  br label %enc28j60_setlink.exit

if.else12.i:                                      ; preds = %entry
  %msg_enable13.i = getelementptr i8, ptr %dev, i32 2600
  %11 = ptrtoint ptr %msg_enable13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable13.i, align 4
  %and14.i = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else12.i.enc28j60_setlink.exit_crit_edge, label %if.then16.i

if.else12.i.enc28j60_setlink.exit_crit_edge:      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %enc28j60_setlink.exit

if.then16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.152) #14
  br label %enc28j60_setlink.exit

enc28j60_setlink.exit:                            ; preds = %if.then16.i, %if.else12.i.enc28j60_setlink.exit_crit_edge, %if.then10.i, %if.else.i.enc28j60_setlink.exit_crit_edge, %if.then5.i
  %ret.0.i = phi i32 [ 0, %if.then5.i ], [ -95, %if.then10.i ], [ -95, %if.else.i.enc28j60_setlink.exit_crit_edge ], [ -16, %if.then16.i ], [ -16, %if.else12.i.enc28j60_setlink.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !154, !156, !158, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !223, !224, !225, !227, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !255, !257, !259, !260, !261, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !276, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !289, !291, !292, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !313, !314, !315, !317, !318}
!llvm.module.flags = !{!320, !321, !322, !323, !324, !325, !326, !327}
!llvm.ident = !{!328}

!0 = !{ptr @__initcall__kmod_enc28j60__478_1640_enc28j60_driver_init6, !1, !"__initcall__kmod_enc28j60__478_1640_enc28j60_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1640, i32 1}
!2 = !{ptr @__exitcall_enc28j60_driver_exit, !1, !"__exitcall_enc28j60_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description479, !4, !"__UNIQUE_ID_description479", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1642, i32 1}
!5 = !{ptr @__UNIQUE_ID_author480, !6, !"__UNIQUE_ID_author480", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1643, i32 1}
!7 = !{ptr @__UNIQUE_ID_file481, !8, !"__UNIQUE_ID_file481", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1644, i32 1}
!9 = !{ptr @__UNIQUE_ID_license482, !8, !"__UNIQUE_ID_license482", i1 false, i1 false}
!10 = !{ptr @__param_debug, !11, !"__param_debug", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1645, i32 1}
!12 = !{ptr @__UNIQUE_ID_debugtype483, !11, !"__UNIQUE_ID_debugtype483", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_debug484, !14, !"__UNIQUE_ID_debug484", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1646, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias485, !16, !"__UNIQUE_ID_alias485", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1647, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1634, i32 11}
!19 = !{ptr @enc28j60_driver, !20, !"enc28j60_driver", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1632, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1547, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @enc28j60_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @enc28j60_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @enc28j60_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1559, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @enc28j60_probe.__key.8, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1560, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @enc28j60_probe.__key.10, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1561, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @enc28j60_probe.__key.12, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1562, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @enc28j60_probe.__key.14, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1563, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1569, i32 4}
!47 = !{ptr @enc28j60_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @enc28j60_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1584, i32 4}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @enc28j60_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @enc28j60_probe._entry_ptr.22, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1600, i32 4}
!56 = !{ptr @enc28j60_probe._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @enc28j60_probe._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1242, i32 17}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1242, i32 35}
!62 = !{ptr @__func__.enc28j60_hw_tx, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1246, i32 15}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1267, i32 5}
!66 = !{ptr @enc28j60_hw_tx._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @enc28j60_hw_tx._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1274, i32 4}
!70 = !{ptr @enc28j60_hw_tx._entry.29, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @enc28j60_hw_tx._entry_ptr.31, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 893, i32 2}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @dump_packet._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @dump_packet._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 894, i32 29}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 388, i32 4}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @enc28j60_packet_write._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @enc28j60_packet_write._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 398, i32 3}
!86 = !{ptr @enc28j60_packet_write._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @enc28j60_packet_write._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 404, i32 3}
!90 = !{ptr @enc28j60_packet_write._entry.40, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @enc28j60_packet_write._entry_ptr.42, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 159, i32 3}
!94 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @spi_read_op._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @spi_read_op._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 179, i32 3}
!99 = !{ptr @spi_write_op._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @spi_write_op._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 134, i32 4}
!103 = !{ptr @spi_write_buf._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @spi_write_buf._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 363, i32 4}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @enc28j60_mem_read._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @enc28j60_mem_read._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 113, i32 3}
!112 = !{ptr @spi_read_buf._entry, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @spi_read_buf._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1429, i32 4}
!116 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @enc28j60_setrx_work_handler._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @enc28j60_setrx_work_handler._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1433, i32 4}
!121 = !{ptr @enc28j60_setrx_work_handler._entry.52, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @enc28j60_setrx_work_handler._entry_ptr.54, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1439, i32 4}
!125 = !{ptr @enc28j60_setrx_work_handler._entry.55, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @enc28j60_setrx_work_handler._entry_ptr.57, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1138, i32 37}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1146, i32 37}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1158, i32 37}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1163, i32 23}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1169, i32 29}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1180, i32 37}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1185, i32 29}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1196, i32 13}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1211, i32 37}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1216, i32 38}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1054, i32 3}
!149 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @enc28j60_check_link_status._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @enc28j60_check_link_status._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1062, i32 22}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1063, i32 18}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1063, i32 34}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1066, i32 22}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 419, i32 5}
!162 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @poll_ready.__UNIQUE_ID_ddebug476, !161, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 812, i32 3}
!166 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @enc28j60_read_tsv._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @enc28j60_read_tsv._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 823, i32 2}
!171 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @enc28j60_dump_tsv._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @enc28j60_dump_tsv._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 832, i32 2}
!176 = !{ptr @enc28j60_dump_tsv._entry.80, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @enc28j60_dump_tsv._entry_ptr.82, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 835, i32 2}
!180 = !{ptr @enc28j60_dump_tsv._entry.83, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @enc28j60_dump_tsv._entry_ptr.85, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.87, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 841, i32 2}
!184 = !{ptr @enc28j60_dump_tsv._entry.86, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @enc28j60_dump_tsv._entry_ptr.88, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 847, i32 2}
!188 = !{ptr @enc28j60_dump_tsv._entry.89, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @enc28j60_dump_tsv._entry_ptr.91, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 852, i32 2}
!192 = !{ptr @enc28j60_dump_tsv._entry.92, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @enc28j60_dump_tsv._entry_ptr.94, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 613, i32 4}
!196 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @nolock_txfifo_init._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @nolock_txfifo_init._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.97, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1037, i32 35}
!201 = !{ptr @__func__.enc28j60_get_free_rxfifo, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1038, i32 10}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1105, i32 35}
!205 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1111, i32 36}
!207 = !{ptr @.str.100, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 913, i32 35}
!209 = !{ptr @.str.101, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 918, i32 21}
!211 = !{ptr @__func__.enc28j60_hw_rx, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 919, i32 8}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 952, i32 21}
!215 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 964, i32 22}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 988, i32 3}
!219 = !{ptr @enc28j60_hw_rx._entry, !218, !"_entry", i1 false, i1 false}
!220 = !{ptr @enc28j60_hw_rx._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 998, i32 4}
!223 = !{ptr @enc28j60_hw_rx._entry.105, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @enc28j60_hw_rx._entry_ptr.107, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.108, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 595, i32 4}
!227 = !{ptr @.str.109, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @nolock_rxfifo_init._entry, !226, !"_entry", i1 false, i1 false}
!229 = !{ptr @nolock_rxfifo_init._entry_ptr, !226, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.110, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 868, i32 2}
!232 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @enc28j60_dump_rsv._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @enc28j60_dump_rsv._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.113, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 869, i32 2}
!237 = !{ptr @enc28j60_dump_rsv._entry.112, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @enc28j60_dump_rsv._entry_ptr.114, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.116, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 871, i32 2}
!241 = !{ptr @enc28j60_dump_rsv._entry.115, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @enc28j60_dump_rsv._entry_ptr.117, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 877, i32 2}
!245 = !{ptr @enc28j60_dump_rsv._entry.118, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @enc28j60_dump_rsv._entry_ptr.120, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.122, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 883, i32 2}
!249 = !{ptr @enc28j60_dump_rsv._entry.121, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @enc28j60_dump_rsv._entry_ptr.123, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.124, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1458, i32 22}
!253 = !{ptr @.str.125, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1354, i32 20}
!255 = !{ptr @.str.126, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1362, i32 20}
!257 = !{ptr @.str.127, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 655, i32 3}
!259 = !{ptr @.str.128, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @enc28j60_hw_init._entry, !258, !"_entry", i1 false, i1 false}
!261 = !{ptr @enc28j60_hw_init._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.129, !258, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.130, !258, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @.str.132, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 682, i32 3}
!266 = !{ptr @enc28j60_hw_init._entry.131, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @enc28j60_hw_init._entry_ptr.133, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.135, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 685, i32 4}
!270 = !{ptr @enc28j60_hw_init._entry.134, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @enc28j60_hw_init._entry_ptr.136, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.137, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 739, i32 28}
!274 = !{ptr @.str.138, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 532, i32 2}
!276 = !{ptr @.str.139, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @enc28j60_dump_regs._entry, !275, !"_entry", i1 false, i1 false}
!278 = !{ptr @enc28j60_dump_regs._entry_ptr, !275, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.140, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 750, i32 3}
!281 = !{ptr @.str.141, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @enc28j60_hw_enable._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @enc28j60_hw_enable._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.142, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 487, i32 4}
!286 = !{ptr @.str.143, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @enc28j60_set_hw_macaddr._entry, !285, !"_entry", i1 false, i1 false}
!288 = !{ptr @enc28j60_set_hw_macaddr._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!289 = !{ptr @.str.145, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 499, i32 4}
!291 = !{ptr @enc28j60_set_hw_macaddr._entry.144, !290, !"_entry", i1 false, i1 false}
!292 = !{ptr @enc28j60_set_hw_macaddr._entry_ptr.146, !290, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @enc28j60_netdev_ops, !294, !"enc28j60_netdev_ops", i1 false, i1 false}
!294 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1530, i32 36}
!295 = !{ptr @.str.147, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1408, i32 21}
!297 = !{ptr @.str.148, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1409, i32 39}
!299 = !{ptr @.str.149, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1409, i32 48}
!301 = !{ptr @.str.150, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1333, i32 20}
!303 = !{ptr @enc28j60_ethtool_ops, !304, !"enc28j60_ethtool_ops", i1 false, i1 false}
!304 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1515, i32 33}
!305 = !{ptr @.str.151, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 791, i32 23}
!307 = !{ptr @.str.152, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 796, i32 22}
!309 = !{ptr @.str.153, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 632, i32 3}
!311 = !{ptr @.str.154, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @enc28j60_lowpower.__UNIQUE_ID_ddebug477, !310, !"__UNIQUE_ID_ddebug477", i1 false, i1 false}
!313 = !{ptr @.str.155, !310, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.156, !310, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @enc28j60_dt_ids, !316, !"enc28j60_dt_ids", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 1626, i32 34}
!317 = !{ptr @__param_str_debug, !11, !"__param_str_debug", i1 false, i1 false}
!318 = !{ptr @debug, !319, !"debug", i1 false, i1 false}
!319 = !{!"../drivers/net/ethernet/microchip/enc28j60.c", i32 78, i32 3}
!320 = !{i32 1, !"wchar_size", i32 2}
!321 = !{i32 1, !"min_enum_size", i32 4}
!322 = !{i32 8, !"branch-target-enforcement", i32 0}
!323 = !{i32 8, !"sign-return-address", i32 0}
!324 = !{i32 8, !"sign-return-address-all", i32 0}
!325 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!326 = !{i32 7, !"uwtable", i32 1}
!327 = !{i32 7, !"frame-pointer", i32 2}
!328 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!329 = !{!"branch_weights", i32 1, i32 2000}
!330 = !{i64 2157444240, i64 2157444747, i64 2157444277, i64 2157444333, i64 2157444367, i64 2157444391, i64 2157444432, i64 2157444453, i64 2157444481, i64 2157444515}
!331 = !{!"auto-init"}
!332 = !{!"branch_weights", i32 2000, i32 1}
!333 = !{i8 0, i8 2}
!334 = !{i64 2148997036, i64 2148997041, i64 2148997054, i64 2148997098, i64 2148997132, i64 2148997153}
!335 = !{i64 2157383738}
!336 = !{i64 2157383580}
