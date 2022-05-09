; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/asix/ax88796c_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/asix/ax88796c_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ax88796c_pcpu_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, i32, i32, i32, i32 }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ax88796c_device = type { ptr, ptr, ptr, %struct.work_struct, %struct.mutex, %struct.sk_buff_head, %struct.axspi_data, ptr, ptr, i32, i16, [8 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
%struct.axspi_data = type { ptr, %struct.spi_message, [2 x %struct.spi_transfer], [6 x i8], [6 x i8], i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.rx_header = type { i16, i16, i16 }

@__param_str_msg_enable = internal constant [20 x i8] c"ax88796c.msg_enable\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@msg_enable = internal global { i32, [28 x i8] } { i32 198, [28 x i8] zeroinitializer }, align 32
@__param_msg_enable = internal constant %struct.kernel_param { ptr @__param_str_msg_enable, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.97 { ptr @msg_enable } }, section "__param", align 4
@__UNIQUE_ID_msg_enabletype351 = internal constant [33 x i8] c"ax88796c.parmtype=msg_enable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_msg_enable352 = internal constant [73 x i8] c"ax88796c.parm=msg_enable:Message mask (see linux/netdevice.h for bitmap)\00", section ".modinfo", align 1
@ax88796c_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @asix_id, ptr @ax88796c_probe, ptr @ax88796c_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ax88796c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_ax88796c__364_1163_ax88796c_spi_init6 = internal global ptr @ax88796c_spi_init, section ".initcall6.init", align 4
@__exitcall_ax88796c_spi_exit = internal global ptr @ax88796c_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author365 = internal constant [58 x i8] c"ax88796c.author=\C5\81ukasz Stelmach <l.stelmach@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description366 = internal constant [55 x i8] c"ax88796c.description=ASIX AX88796C SPI Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file367 = internal constant [49 x i8] c"ax88796c.file=drivers/net/ethernet/asix/ax88796c\00", section ".modinfo", align 1
@__UNIQUE_ID_license368 = internal constant [21 x i8] c"ax88796c.license=GPL\00", section ".modinfo", align 1
@ax88796c_no_regs_mask = dso_local global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@asix_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ax88796c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ax88796c\00", [23 x i8] zeroinitializer }, align 32
@ax88796c_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asix,ax88796c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@ax88796c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&stat->syncp)->seq\00", [43 x i8] zeroinitializer }, align 32
@ax88796c_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&ax_local->spi_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ax88976c-mdiobus\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ax88796c-%s.%u\00", [17 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1013, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not register MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ax88796c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/asix/ax88796c_main.c\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry_ptr = internal global ptr @ax88796c_probe._entry, section ".printk_index", align 4
@ax88796c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1018, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"AX88796C-SPI Configuration:\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry_ptr.14 = internal global ptr @ax88796c_probe._entry.11, section ".printk_index", align 4
@ax88796c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.7, ptr @.str.8, i32 1020, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    Compression : %s\0A\00", [42 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry_ptr.17 = internal global ptr @ax88796c_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ON\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OFF\00", [28 x i8] zeroinitializer }, align 32
@ax88796c_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ax88796c_open, ptr @ax88796c_close, ptr @ax88796c_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr null, ptr null, ptr @ax88796c_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ax88796c_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ax88796c_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@ax88796c_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.7, ptr @.str.8, i32 1046, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spi read failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry_ptr.22 = internal global ptr @ax88796c_probe._entry.20, section ".printk_index", align 4
@ax88796c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 1063, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"irq %d, MAC addr %02X:%02X:%02X:%02X:%02X:%02X\0A\00", [48 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry_ptr.25 = internal global ptr @ax88796c_probe._entry.23, section ".printk_index", align 4
@ax88796c_probe.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&ax_local->ax_work)\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.8, i32 1088, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register a network device\0A\00", [59 x i8] zeroinitializer }, align 32
@ax88796c_probe._entry_ptr.31 = internal global ptr @ax88796c_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s %s registered\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get IRQ %d (errno=%d).\0A\00", [62 x i8] zeroinitializer }, align 32
@ax88796c_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.8, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ax88796c: irq %d for unknown device.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ax88796c_interrupt\00", [45 x i8] zeroinitializer }, align 32
@ax88796c_interrupt._entry_ptr = internal global ptr @ax88796c_interrupt._entry, section ".printk_index", align 4
@ax88796c_interrupt.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.8, ptr @.str.36, i8 0, i8 -107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Interrupt occurred\0A\00", [44 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ax88796c_close.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.8, ptr @.str.38, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ax88796c_close\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clearing bits\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ax88796c_hard_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.8, i32 952, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Could not get 'reset' GPIO: %ld\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ax88796c_hard_reset\00", [44 x i8] zeroinitializer }, align 32
@ax88796c_hard_reset._entry_ptr = internal global ptr @ax88796c_hard_reset._entry, section ".printk_index", align 4
@ax88796c_reload_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.8, i32 84, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout waiting for reload eeprom\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ax88796c_reload_eeprom\00", [41 x i8] zeroinitializer }, align 32
@ax88796c_reload_eeprom._entry_ptr = internal global ptr @ax88796c_reload_eeprom._entry, section ".printk_index", align 4
@ax88796c_load_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.8, i32 157, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"MAC address read from device tree\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ax88796c_load_mac_addr\00", [41 x i8] zeroinitializer }, align 32
@ax88796c_load_mac_addr._entry_ptr = internal global ptr @ax88796c_load_mac_addr._entry, section ".printk_index", align 4
@ax88796c_load_mac_addr._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.8, i32 178, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"MAC address read from ASIX chip\0A\00", [63 x i8] zeroinitializer }, align 32
@ax88796c_load_mac_addr._entry_ptr.48 = internal global ptr @ax88796c_load_mac_addr._entry.46, section ".printk_index", align 4
@ax88796c_load_mac_addr._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.8, i32 184, ptr @.str.13, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Use random MAC address\0A\00", [40 x i8] zeroinitializer }, align 32
@ax88796c_load_mac_addr._entry_ptr.51 = internal global ptr @ax88796c_load_mac_addr._entry.49, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ax88796c_process_isr.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.53, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ax88796c_process_isr\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  ISR 0x%04x\0A\00", [18 x i8] zeroinitializer }, align 32
@ax88796c_process_isr.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.54, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"  TXERR interrupt\0A\00", [45 x i8] zeroinitializer }, align 32
@ax88796c_process_isr.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.55, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  TXPAGES interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@ax88796c_process_isr.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.56, i8 0, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Link change interrupt\0A\00", [39 x i8] zeroinitializer }, align 32
@ax88796c_process_isr.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.8, ptr @.str.57, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"  RX interrupt\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Rx Bridge is not idle\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Header error\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRC or MII error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s:     \00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"RX data, total len %d, packet len %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  Dump RX packet header:\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"  Dump RX packet:\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"< rx, len %zu, type 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netif_rx status %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"TX FIFO error, re-initialize the TX bridge\0A\00", [52 x i8] zeroinitializer }, align 32
@ax88796c_tx_cmd_buf = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.70 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TX packet len %d, total len %d, seq %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"  SPI Header:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  TX SOP:\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"  TX packet:\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"  TX EOP:\0A\00", [21 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"removing network device %s %s\0A\00", [33 x i8] zeroinitializer }, align 32
@ax88796c_spi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.8, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013ax88796c: Invalid bitmap description, masking all registers\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ax88796c_spi_init\00", [46 x i8] zeroinitializer }, align 32
@ax88796c_spi_init._entry_ptr = internal global ptr @ax88796c_spi_init._entry, section ".printk_index", align 4
@.str.79 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"80018001,e1918001,8001a001,fc0d0000\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 4294967295]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 255]
@___asan_gen_.81 = private unnamed_addr constant [11 x i8] c"msg_enable\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 28, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [20 x i8] c"ax88796c_spi_driver\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1133, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"ax88796c_no_regs_mask\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 34, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant [8 x i8] c"asix_id\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1127, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1135, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"ax88796c_dt_ids\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1120, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 987, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 995, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1004, i32 28 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1009, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1013, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1018, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1019, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c"ax88796c_netdev_ops\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 934, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1046, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1058, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1071, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1075, i32 40 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1088, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1092, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 806, i32 20 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 592, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 599, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 898, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 950, i32 30 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 952, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 83, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 156, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 177, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 184, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 559, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 562, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 568, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 573, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 578, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 532, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 455, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 464, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 475, i32 30 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 476, i32 21 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 479, i32 21 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 483, i32 21 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 433, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 438, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.298, i32 271, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 364, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 309, i32 21 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 312, i32 21 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 316, i32 21 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 320, i32 21 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 325, i32 21 }
@___asan_gen_.318 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1984, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1112, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1152, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private constant [45 x i8] c"../drivers/net/ethernet/asix/ax88796c_main.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 33, i32 35 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author365, ptr @__UNIQUE_ID_description366, ptr @__UNIQUE_ID_file367, ptr @__UNIQUE_ID_license368, ptr @__UNIQUE_ID_msg_enable352, ptr @__UNIQUE_ID_msg_enabletype351, ptr @__exitcall_ax88796c_spi_exit, ptr @__initcall__kmod_ax88796c__364_1163_ax88796c_spi_init6, ptr @__param_msg_enable, ptr @ax88796c_hard_reset._entry, ptr @ax88796c_hard_reset._entry_ptr, ptr @ax88796c_interrupt._entry, ptr @ax88796c_interrupt._entry_ptr, ptr @ax88796c_load_mac_addr._entry, ptr @ax88796c_load_mac_addr._entry.46, ptr @ax88796c_load_mac_addr._entry.49, ptr @ax88796c_load_mac_addr._entry_ptr, ptr @ax88796c_load_mac_addr._entry_ptr.48, ptr @ax88796c_load_mac_addr._entry_ptr.51, ptr @ax88796c_probe._entry, ptr @ax88796c_probe._entry.11, ptr @ax88796c_probe._entry.15, ptr @ax88796c_probe._entry.20, ptr @ax88796c_probe._entry.23, ptr @ax88796c_probe._entry.29, ptr @ax88796c_probe._entry_ptr, ptr @ax88796c_probe._entry_ptr.14, ptr @ax88796c_probe._entry_ptr.17, ptr @ax88796c_probe._entry_ptr.22, ptr @ax88796c_probe._entry_ptr.25, ptr @ax88796c_probe._entry_ptr.31, ptr @ax88796c_reload_eeprom._entry, ptr @ax88796c_reload_eeprom._entry_ptr, ptr @ax88796c_spi_exit, ptr @ax88796c_spi_init._entry, ptr @ax88796c_spi_init._entry_ptr, ptr @msg_enable, ptr @ax88796c_spi_driver, ptr @ax88796c_no_regs_mask, ptr @asix_id, ptr @.str, ptr @ax88796c_dt_ids, ptr @ax88796c_probe.__key, ptr @.str.1, ptr @ax88796c_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @ax88796c_netdev_ops, ptr @.str.21, ptr @.str.24, ptr @ax88796c_probe.__key.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @skb_queue_head_init.__key, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [86 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_no_regs_mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asix_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_hard_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_reload_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_load_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_load_mac_addr._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_load_mac_addr._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax88796c_spi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ax88796c_spi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ax88796c_spi_driver, i32 0, i32 4)) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_spi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @ax88796c_no_regs_mask, i32 0, i32 32)
  %call = tail call i32 @bitmap_parse(ptr noundef nonnull @.str.79, i32 noundef 35, ptr noundef nonnull @ax88796c_no_regs_mask, i32 noundef 256) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = call ptr @memset(ptr @ax88796c_no_regs_mask, i32 255, i32 32)
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call2 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ax88796c_spi_driver) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_probe(ptr noundef %spi) #2 align 64 {
entry:
  %addr.i.i = alloca [6 x i8], align 1
  %addr.i = alloca [6 x i8], align 4
  %phy_id = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %phy_id) #11
  %0 = call ptr @memset(ptr %phy_id, i32 255, i32 64)
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %spi, i32 noundef 528, i32 noundef 1, i32 noundef 1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %add.ptr.i, align 4
  %ax_spi = getelementptr i8, ptr %call, i32 2508
  %4 = ptrtoint ptr %ax_spi to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %ax_spi, align 4
  %call8 = tail call ptr @__devm_alloc_percpu(ptr noundef %spi, i32 noundef 80, i32 noundef 8) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then20.critedge, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %call11308 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11308, i32 %5)
  %cmp309 = icmp ult i32 %call11308, %5
  br i1 %cmp309, label %for.body.lr.ph, label %for.cond.preheader.if.end21_crit_edge

for.cond.preheader.if.end21_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %call8 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call11310 = phi i32 [ %call11308, %for.body.lr.ph ], [ %call11, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11310
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %6
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %9, i32 0, i32 4
  %dep_map.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %9, i32 0, i32 4, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ax88796c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %10 = ptrtoint ptr %syncp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %syncp, align 4
  %call11 = tail call i32 @cpumask_next(i32 noundef %call11310, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call11, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end21_crit_edge

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.then20.critedge:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %stats.c = getelementptr i8, ptr %call, i32 2312
  %12 = ptrtoint ptr %stats.c to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %stats.c, align 4
  br label %cleanup

if.end21:                                         ; preds = %for.body.if.end21_crit_edge, %for.cond.preheader.if.end21_crit_edge
  %stats = getelementptr i8, ptr %call, i32 2312
  %13 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %stats, align 4
  %ndev22 = getelementptr i8, ptr %call, i32 2308
  %14 = ptrtoint ptr %ndev22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %ndev22, align 4
  %priv_flags = getelementptr i8, ptr %call, i32 2824
  %15 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priv_flags, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %priv_flags, align 4
  %17 = load i32, ptr @msg_enable, align 4
  %msg_enable = getelementptr i8, ptr %call, i32 2784
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %msg_enable, align 4
  %spi_lock = getelementptr i8, ptr %call, i32 2360
  tail call void @__mutex_init(ptr noundef %spi_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @ax88796c_probe.__key.2) #11
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %spi, i32 noundef 0) #11
  %mdiobus = getelementptr i8, ptr %call, i32 2776
  %19 = ptrtoint ptr %mdiobus to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %mdiobus, align 4
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.end21.cleanup_crit_edge, label %if.end32

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %if.end21
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %priv, align 8
  %21 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdiobus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ax88796c_mdio_read, ptr %read, align 4
  %24 = load ptr, ptr %mdiobus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ax88796c_mdio_write, ptr %write, align 8
  %26 = load ptr, ptr %mdiobus, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.4, ptr %name, align 4
  %28 = load ptr, ptr %mdiobus, align 4
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -65537, ptr %phy_mask, align 8
  %30 = load ptr, ptr %mdiobus, align 4
  %parent40 = getelementptr inbounds %struct.mii_bus, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %parent40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %spi, ptr %parent40, align 4
  %32 = load ptr, ptr %mdiobus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %32, i32 0, i32 2
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.dev_name.exit_crit_edge

if.end32.dev_name.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end32.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %36, %if.end.i ], [ %34, %if.end32.dev_name.exit_crit_edge ]
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %37 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %38 to i32
  %call44 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i, i32 noundef %conv)
  %39 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdiobus, align 4
  %call47 = tail call i32 @__devm_mdiobus_register(ptr noundef %spi, ptr noundef %40, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %do.end53, label %if.end55

do.end53:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.6) #14
  br label %cleanup

if.end55:                                         ; preds = %dev_name.exit
  %41 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %msg_enable, align 4
  %and = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %if.end55.if.end71_crit_edge, label %do.end61

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.12) #14
  %43 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %priv_flags, align 4
  %and68 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70 = select i1 %tobool69.not, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond70) #14
  br label %if.end71

if.end71:                                         ; preds = %do.end61, %if.end55.if.end71_crit_edge
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  %irq72 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %47 = ptrtoint ptr %irq72 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %irq72, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %48 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ax88796c_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %49 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ax88796c_ethtool_ops, ptr %ethtool_ops, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %50 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %hw_features, align 8
  %or73 = or i64 %51, 1099511627784
  store i64 %or73, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %52 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features, align 16
  %or74 = or i64 %53, 1099511627784
  store i64 %or74, ptr %features, align 16
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 21
  %54 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 8, ptr %needed_headroom, align 8
  %needed_tailroom = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 22
  %55 = ptrtoint ptr %needed_tailroom to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 4, ptr %needed_tailroom, align 2
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #11
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  %call.i281 = tail call ptr @gpiod_get(ptr noundef %57, ptr noundef nonnull @.str.39, i32 noundef 0) #11
  %cmp.i.i = icmp ugt ptr %call.i281, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i282

do.end.i:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %call.i281 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.40, i32 noundef %58) #14
  br label %ax88796c_hard_reset.exit

if.end.i282:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i = tail call i32 @gpiod_direction_output(ptr noundef %call.i281, i32 noundef 1) #11
  tail call void @msleep(i32 noundef 100) #11
  %call6.i = tail call i32 @gpiod_direction_output(ptr noundef %call.i281, i32 noundef 0) #11
  tail call void @gpiod_put(ptr noundef %call.i281) #11
  tail call void @msleep(i32 noundef 20) #11
  br label %ax88796c_hard_reset.exit

ax88796c_hard_reset.exit:                         ; preds = %if.end.i282, %do.end.i
  %call77 = tail call fastcc i32 @ax88796c_soft_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %if.then80, label %if.end82

if.then80:                                        ; preds = %ax88796c_hard_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @mutex_unlock(ptr noundef %spi_lock) #11
  br label %cleanup

if.end82:                                         ; preds = %ax88796c_hard_reset.exit
  %call.i283 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 82) #11
  %conv85 = zext i16 %call.i283 to i32
  %and86 = and i32 %conv85, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %cmp87.not = icmp eq i32 %and86, 0
  br i1 %cmp87.not, label %if.end96, label %do.end92

do.end92:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.21, i32 noundef %conv85) #14
  tail call void @mutex_unlock(ptr noundef %spi_lock) #11
  br label %cleanup

if.end96:                                         ; preds = %if.end82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %59 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i284 = icmp eq i32 %59, 0
  br i1 %tobool.not.i284, label %if.end96.if.end.i287_crit_edge, label %land.rhs.i

if.end96.if.end.i287_crit_edge:                   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i287

land.rhs.i:                                       ; preds = %if.end96
  %dep_map.i285 = getelementptr i8, ptr %call, i32 2424
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i285, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i286, label %land.rhs.i.if.end.i287_crit_edge, !prof !195

land.rhs.i.if.end.i287_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i287

do.end.i286:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 74, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i287

if.end.i287:                                      ; preds = %do.end.i286, %land.rhs.i.if.end.i287_crit_edge, %if.end96.if.end.i287_crit_edge
  %call.i1.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 120, i16 noundef zeroext 16384) #11
  %call25.i = tail call i32 @jiffies_to_usecs(i32 noundef 0) #11
  %conv.i = zext i32 %call25.i to i64
  %call26.i = tail call i64 @ktime_get() #11
  %mul.i.i = mul nuw nsw i64 %conv.i, 1000
  %add.i.i = add i64 %mul.i.i, %call26.i
  %call.i25.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 0) #11
  %conv436.i = zext i16 %call.i25.i to i32
  %and7.i = and i32 %conv436.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool44.not8.i = icmp eq i32 %and7.i, 0
  br i1 %tobool44.not8.i, label %if.end46.lr.ph.i, label %if.end.i287.for.end.i_crit_edge

if.end.i287.for.end.i_crit_edge:                  ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end46.lr.ph.i:                                 ; preds = %if.end.i287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool47.not.i = icmp eq i32 %call25.i, 0
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.end59.i.if.end46.i_crit_edge, %if.end46.lr.ph.i
  br i1 %tobool47.not.i, label %if.end46.i.if.end59.i_crit_edge, label %land.lhs.true.i

if.end46.i.if.end59.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

land.lhs.true.i:                                  ; preds = %if.end46.i
  %call48.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call48.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call48.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then52.i, label %land.lhs.true.i.if.end59.i_crit_edge

land.lhs.true.i.if.end59.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i

if.then52.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i3.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 0) #11
  %conv55.i = zext i16 %call.i3.i to i32
  br label %for.end.i

if.end59.i:                                       ; preds = %land.lhs.true.i.if.end59.i_crit_edge, %if.end46.i.if.end59.i_crit_edge
  %call.i2.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 0) #11
  %conv43.i = zext i16 %call.i2.i to i32
  %and.i = and i32 %conv43.i, 128
  %tobool44.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool44.not.i, label %if.end59.i.if.end46.i_crit_edge, label %if.end59.i.for.end.i_crit_edge

if.end59.i.for.end.i_crit_edge:                   ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end59.i.if.end46.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46.i

for.end.i:                                        ; preds = %if.end59.i.for.end.i_crit_edge, %if.then52.i, %if.end.i287.for.end.i_crit_edge
  %ret.0.i = phi i32 [ %conv55.i, %if.then52.i ], [ %conv436.i, %if.end.i287.for.end.i_crit_edge ], [ %conv43.i, %if.end59.i.for.end.i_crit_edge ]
  %and61.i = and i32 %ret.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  br i1 %tobool62.not.i, label %do.end67.i, label %for.end.i.ax88796c_reload_eeprom.exit_crit_edge

for.end.i.ax88796c_reload_eeprom.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_reload_eeprom.exit

do.end67.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.42) #14
  br label %ax88796c_reload_eeprom.exit

ax88796c_reload_eeprom.exit:                      ; preds = %do.end67.i, %for.end.i.ax88796c_reload_eeprom.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #11
  %62 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %63 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %64 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %65 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %66 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %67 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i288 = icmp eq i32 %67, 0
  br i1 %tobool.not.i288, label %ax88796c_reload_eeprom.exit.if.end.i295_crit_edge, label %land.rhs.i292

ax88796c_reload_eeprom.exit.if.end.i295_crit_edge: ; preds = %ax88796c_reload_eeprom.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i295

land.rhs.i292:                                    ; preds = %ax88796c_reload_eeprom.exit
  %dep_map.i289 = getelementptr i8, ptr %call, i32 2424
  %call.i.i290 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i289, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i290)
  %cmp.not.i291 = icmp eq i32 %call.i.i290, 0
  br i1 %cmp.not.i291, label %do.end.i293, label %land.rhs.i292.if.end.i295_crit_edge, !prof !195

land.rhs.i292.if.end.i295_crit_edge:              ; preds = %land.rhs.i292
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i295

do.end.i293:                                      ; preds = %land.rhs.i292
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 150, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i295

if.end.i295:                                      ; preds = %do.end.i293, %land.rhs.i292.if.end.i295_crit_edge, %ax88796c_reload_eeprom.exit.if.end.i295_crit_edge
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %add.ptr.i, align 4
  %call25.i294 = tail call i32 @platform_get_ethdev_address(ptr noundef %69, ptr noundef %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i294)
  %tobool26.not.i = icmp eq i32 %call25.i294, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i296, label %if.end.i295.if.end37.i_crit_edge

if.end.i295.if.end37.i_crit_edge:                 ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

land.lhs.true.i296:                               ; preds = %if.end.i295
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %70 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_addr.i, align 64
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %74 = and i32 %73, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not.i.i = icmp eq i32 %74, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %land.lhs.true.i296.if.end37.i_crit_edge

land.lhs.true.i296.if.end37.i_crit_edge:          ; preds = %land.lhs.true.i296
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

is_valid_ether_addr.exit.i:                       ; preds = %land.lhs.true.i296
  %add.ptr.i.i.i = getelementptr i8, ptr %71, i32 4
  %75 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %76 to i32
  %or.i.i.i = or i32 %73, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.if.end37.i_crit_edge, label %if.then28.i

is_valid_ether_addr.exit.i.if.end37.i_crit_edge:  ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.then28.i:                                      ; preds = %is_valid_ether_addr.exit.i
  %77 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable, align 4
  %and.i297 = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297)
  %tobool29.not.i = icmp eq i32 %and.i297, 0
  br i1 %tobool29.not.i, label %if.then28.i.ax88796c_load_mac_addr.exit_crit_edge, label %do.end33.i

if.then28.i.ax88796c_load_mac_addr.exit_crit_edge: ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_load_mac_addr.exit

do.end33.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.44) #14
  br label %ax88796c_load_mac_addr.exit

if.end37.i:                                       ; preds = %is_valid_ether_addr.exit.i.if.end37.i_crit_edge, %land.lhs.true.i296.if.end37.i_crit_edge, %if.end.i295.if.end37.i_crit_edge
  %call.i104.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 98) #11
  %conv.i299 = trunc i16 %call.i104.i to i8
  %81 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv.i299, ptr %66, align 1
  %82 = lshr i16 %call.i104.i, 8
  %conv40.i = trunc i16 %82 to i8
  %83 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv40.i, ptr %65, align 4
  %call.i105.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 100) #11
  %conv44.i = trunc i16 %call.i105.i to i8
  %84 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv44.i, ptr %64, align 1
  %85 = lshr i16 %call.i105.i, 8
  %conv48.i = trunc i16 %85 to i8
  %86 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv48.i, ptr %63, align 2
  %call.i106.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 102) #11
  %conv52.i = trunc i16 %call.i106.i to i8
  %87 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv52.i, ptr %62, align 1
  %88 = lshr i16 %call.i106.i, 8
  %conv56.i = trunc i16 %88 to i8
  %89 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv56.i, ptr %addr.i, align 4
  %90 = load i32, ptr %addr.i, align 4
  %91 = and i32 %90, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.i.not.i107.i = icmp eq i32 %91, 0
  br i1 %tobool.i.not.i107.i, label %is_valid_ether_addr.exit113.i, label %if.end37.i.if.end71.i_crit_edge

if.end37.i.if.end71.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71.i

is_valid_ether_addr.exit113.i:                    ; preds = %if.end37.i
  %92 = ptrtoint ptr %65 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %65, align 4
  %conv.i.i109.i = zext i16 %93 to i32
  %or.i.i110.i = or i32 %90, %conv.i.i109.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i110.i)
  %cmp.i.i111.not.i = icmp eq i32 %or.i.i110.i, 0
  br i1 %cmp.i.i111.not.i, label %is_valid_ether_addr.exit113.i.if.end71.i_crit_edge, label %if.then59.i

is_valid_ether_addr.exit113.i.if.end71.i_crit_edge: ; preds = %is_valid_ether_addr.exit113.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71.i

if.then59.i:                                      ; preds = %is_valid_ether_addr.exit113.i
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #11
  %94 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable, align 4
  %and62.i = and i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.then59.i.ax88796c_load_mac_addr.exit_crit_edge, label %do.end67.i300

if.then59.i.ax88796c_load_mac_addr.exit_crit_edge: ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_load_mac_addr.exit

do.end67.i300:                                    ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.47) #14
  br label %ax88796c_load_mac_addr.exit

if.end71.i:                                       ; preds = %is_valid_ether_addr.exit113.i.if.end71.i_crit_edge, %if.end37.i.if.end71.i_crit_edge
  %98 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %msg_enable, align 4
  %and73.i = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  br i1 %tobool74.not.i, label %if.end71.i.if.end81.i_crit_edge, label %do.end78.i

if.end71.i.if.end81.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end81.i

do.end78.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.50) #14
  br label %if.end81.i

if.end81.i:                                       ; preds = %do.end78.i, %if.end71.i.if.end81.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i) #11
  %102 = call ptr @memset(ptr %addr.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i, i32 noundef 6) #11
  %103 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %addr.i.i, align 1
  %105 = and i8 %104, -4
  %106 = or i8 %105, 2
  store i8 %106, ptr %addr.i.i, align 1
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %addr.i.i, i32 noundef 6) #11
  %addr_assign_type.i.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 55
  %107 = ptrtoint ptr %addr_assign_type.i.i to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %addr_assign_type.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i) #11
  br label %ax88796c_load_mac_addr.exit

ax88796c_load_mac_addr.exit:                      ; preds = %if.end81.i, %do.end67.i300, %if.then59.i.ax88796c_load_mac_addr.exit_crit_edge, %do.end33.i, %if.then28.i.ax88796c_load_mac_addr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #11
  %108 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %msg_enable, align 4
  %and99 = and i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %ax88796c_load_mac_addr.exit.if.end124_crit_edge, label %do.end104

ax88796c_load_mac_addr.exit.if.end124_crit_edge:  ; preds = %ax88796c_load_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end124

do.end104:                                        ; preds = %ax88796c_load_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  %110 = ptrtoint ptr %irq72 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %irq72, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %112 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev_addr, align 64
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 1
  %conv108 = zext i8 %115 to i32
  %arrayidx110 = getelementptr i8, ptr %113, i32 1
  %116 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx110, align 1
  %conv111 = zext i8 %117 to i32
  %arrayidx113 = getelementptr i8, ptr %113, i32 2
  %118 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx113, align 1
  %conv114 = zext i8 %119 to i32
  %arrayidx116 = getelementptr i8, ptr %113, i32 3
  %120 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx116, align 1
  %conv117 = zext i8 %121 to i32
  %arrayidx119 = getelementptr i8, ptr %113, i32 4
  %122 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx119, align 1
  %conv120 = zext i8 %123 to i32
  %arrayidx122 = getelementptr i8, ptr %113, i32 5
  %124 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx122, align 1
  %conv123 = zext i8 %125 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.24, i32 noundef %111, i32 noundef %conv108, i32 noundef %conv111, i32 noundef %conv114, i32 noundef %conv117, i32 noundef %conv120, i32 noundef %conv123) #14
  br label %if.end124

if.end124:                                        ; preds = %do.end104, %ax88796c_load_mac_addr.exit.if.end124_crit_edge
  %call.i301 = call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 12) #11
  %126 = and i16 %call.i301, -16
  %call.i302 = call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 12, i16 noundef zeroext %126) #11
  call void @mutex_unlock(ptr noundef %spi_lock) #11
  %ax_work = getelementptr i8, ptr %call, i32 2316
  call void @__init_work(ptr noundef %ax_work, i32 noundef 0) #11
  %127 = ptrtoint ptr %ax_work to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -64, ptr %ax_work, align 4
  %lockdep_map = getelementptr i8, ptr %call, i32 2332
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.27, ptr noundef nonnull @ax88796c_probe.__key.26, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry138 = getelementptr i8, ptr %call, i32 2320
  %128 = ptrtoint ptr %entry138 to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile ptr %entry138, ptr %entry138, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2324
  %129 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %entry138, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2328
  %130 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @ax88796c_work, ptr %func, align 4
  %tx_wait_q = getelementptr i8, ptr %call, i32 2452
  %lock.i = getelementptr i8, ptr %call, i32 2464
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.75, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #11
  %131 = ptrtoint ptr %tx_wait_q to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %tx_wait_q, ptr %tx_wait_q, align 4
  %prev.i.i = getelementptr i8, ptr %call, i32 2456
  %132 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %tx_wait_q, ptr %prev.i.i, align 4
  %qlen.i.i = getelementptr i8, ptr %call, i32 2460
  %133 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %qlen.i.i, align 4
  %134 = ptrtoint ptr %mdiobus to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mdiobus, align 4
  %id144 = getelementptr inbounds %struct.mii_bus, ptr %135, i32 0, i32 2
  %call146 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_id, i32 noundef 64, ptr noundef nonnull @.str.28, ptr noundef %id144, i32 noundef 16)
  %136 = ptrtoint ptr %ndev22 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ndev22, align 4
  %call149 = call ptr @phy_connect(ptr noundef %137, ptr noundef nonnull %phy_id, ptr noundef nonnull @ax88796c_handle_link_change, i32 noundef 2) #11
  %phydev = getelementptr i8, ptr %call, i32 2780
  %138 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call149, ptr %phydev, align 4
  %cmp.i = icmp ugt ptr %call149, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then152, label %if.end155

if.then152:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %call149 to i32
  br label %cleanup

if.end155:                                        ; preds = %if.end124
  %irq157 = getelementptr inbounds %struct.phy_device, ptr %call149, i32 0, i32 25
  %140 = ptrtoint ptr %irq157 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %irq157, align 4
  %call159 = call i32 @devm_register_netdev(ptr noundef %spi, ptr noundef nonnull %call) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %do.body167, label %do.end164

do.end164:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.30) #14
  %141 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %phydev, align 4
  call void @phy_disconnect(ptr noundef %142) #11
  br label %cleanup

do.body167:                                       ; preds = %if.end155
  %143 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %msg_enable, align 4
  %and169 = and i32 %144, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %do.body167.do.end178_crit_edge, label %if.then171

do.body167.do.end178_crit_edge:                   ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end178

if.then171:                                       ; preds = %do.body167
  %call173 = call ptr @dev_driver_string(ptr noundef %spi) #11
  %145 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i304 = icmp eq ptr %146, null
  br i1 %tobool.not.i304, label %if.end.i305, label %if.then171.dev_name.exit307_crit_edge

if.then171.dev_name.exit307_crit_edge:            ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit307

if.end.i305:                                      ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %spi, align 4
  br label %dev_name.exit307

dev_name.exit307:                                 ; preds = %if.end.i305, %if.then171.dev_name.exit307_crit_edge
  %retval.0.i306 = phi ptr [ %148, %if.end.i305 ], [ %146, %if.then171.dev_name.exit307_crit_edge ]
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.32, ptr noundef %call173, ptr noundef %retval.0.i306) #14
  br label %do.end178

do.end178:                                        ; preds = %dev_name.exit307, %do.body167.do.end178_crit_edge
  %149 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %phydev, align 4
  call void @phy_attached_info(ptr noundef %150) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %do.end164, %if.then152, %do.end92, %if.then80, %do.end53, %if.end21.cleanup_crit_edge, %if.then20.critedge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %do.end53 ], [ 0, %do.end178 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then20.critedge ], [ -12, %if.end21.cleanup_crit_edge ], [ -19, %if.then80 ], [ -19, %do.end92 ], [ %139, %if.then152 ], [ %call159, %do.end164 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_id) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ndev1 = getelementptr inbounds %struct.ax88796c_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev1, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %5) #11
  %msg_enable = getelementptr inbounds %struct.ax88796c_device, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %entry
  %call3 = tail call ptr @dev_driver_string(ptr noundef %spi) #11
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.76, ptr noundef %call3, ptr noundef %retval.0.i) #14
  br label %do.end

do.end:                                           ; preds = %dev_name.exit, %entry.do.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_alloc_percpu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax88796c_mdio_read(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax88796c_mdio_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax88796c_soft_reset(ptr noundef %ax_local) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !195

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 44, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ax_spi = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 6
  %call.i107 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 0, i16 noundef zeroext 0) #11
  %call.i108 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 0, i16 noundef zeroext -32768) #11
  %call27 = tail call i32 @jiffies_to_usecs(i32 noundef 16) #11
  %conv = zext i32 %call27 to i64
  %call28 = tail call i64 @ktime_get() #11
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call28
  %call.i109115 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 0) #11
  %1 = and i16 %call.i109115, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool46.not118 = icmp eq i16 %1, 0
  br i1 %tobool46.not118, label %if.end48.lr.ph, label %if.end.if.end67_crit_edge

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.end48.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool49.not = icmp eq i32 %call27, 0
  br label %if.end48

if.end48:                                         ; preds = %if.end61.if.end48_crit_edge, %if.end48.lr.ph
  br i1 %tobool49.not, label %if.end48.if.end61_crit_edge, label %land.lhs.true

if.end48.if.end61_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

land.lhs.true:                                    ; preds = %if.end48
  %call50 = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call50, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call50, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end61_crit_edge

land.lhs.true.if.end61_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true.if.end61_crit_edge, %if.end48.if.end61_crit_edge
  %call.i109 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 0) #11
  %2 = and i16 %call.i109, 128
  %tobool46.not = icmp eq i16 %2, 0
  br i1 %tobool46.not, label %if.end61.if.end48_crit_edge, label %if.end61.if.end67_crit_edge

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.end61.if.end48_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

for.end:                                          ; preds = %land.lhs.true
  %call.i110 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 0) #11
  %3 = and i16 %call.i110, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool64.not = icmp eq i16 %3, 0
  br i1 %tobool64.not, label %for.end.cleanup_crit_edge, label %for.end.if.end67_crit_edge

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end67:                                         ; preds = %for.end.if.end67_crit_edge, %if.end61.if.end67_crit_edge, %if.end.if.end67_crit_edge
  %call.i111 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext -118) #11
  %priv_flags = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 18
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv_flags, align 4
  %and70 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  %6 = and i16 %call.i111, -4
  %masksel = select i1 %tobool71.not, i16 0, i16 3
  %.sink121 = or i16 %6, %masksel
  %not.tobool71.not = xor i1 %tobool71.not, true
  %.sink = zext i1 %not.tobool71.not to i8
  %call.i112 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext -118, i16 noundef zeroext %.sink121) #11
  %comp = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 6, i32 5
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %comp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %for.end.cleanup_crit_edge ], [ 0, %if.end67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88796c_work(ptr noundef %work) #2 align 64 {
entry:
  %pfx.i.i = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %spi_lock = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #11
  %flags = getelementptr i8, ptr %work, i32 512
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %ndev = getelementptr i8, ptr %work, i32 -8
  %3 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ndev, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2304
  %mc.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 66
  %count.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 66, i32 1
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %land.rhs.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr i8, ptr %4, i32 2424
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !195

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 97, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %multi_filter.i = getelementptr i8, ptr %4, i32 2790
  %8 = ptrtoint ptr %multi_filter.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %multi_filter.i, align 2
  %flags.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 14
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %10, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool25.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool25.not.i, label %if.else.i, label %if.end.i.ax88796c_set_hw_multicast.exit_crit_edge

if.end.i.ax88796c_set_hw_multicast.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_set_hw_multicast.exit

if.else.i:                                        ; preds = %if.end.i
  %and29.i = and i32 %10, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp ne i32 %and29.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %6)
  %cmp31.i = icmp sgt i32 %6, 64
  %or.cond.i = select i1 %tobool30.not.i, i1 true, i1 %cmp31.i
  br i1 %or.cond.i, label %if.else.i.ax88796c_set_hw_multicast.exit_crit_edge, label %if.else37.i

if.else.i.ax88796c_set_hw_multicast.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_set_hw_multicast.exit

if.else37.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp38.i = icmp eq i32 %6, 0
  br i1 %cmp38.i, label %if.else37.i.ax88796c_set_hw_multicast.exit_crit_edge, label %for.cond.preheader.i

if.else37.i.ax88796c_set_hw_multicast.exit_crit_edge: ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_set_hw_multicast.exit

for.cond.preheader.i:                             ; preds = %if.else37.i
  %11 = ptrtoint ptr %mc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %ha.0151.i = load ptr, ptr %mc.i, align 4
  %cmp47.not152.i = icmp eq ptr %ha.0151.i, %mc.i
  br i1 %cmp47.not152.i, label %for.cond.preheader.i.for.cond90.preheader.i_crit_edge, label %for.cond.preheader.i.cond.end.i_crit_edge

for.cond.preheader.i.cond.end.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %cond.end.i

for.cond.preheader.i.for.cond90.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond90.preheader.i

for.cond90.preheader.i:                           ; preds = %cond.end.i.for.cond90.preheader.i_crit_edge, %for.cond.preheader.i.for.cond90.preheader.i_crit_edge
  %ax_spi.i = getelementptr i8, ptr %4, i32 2508
  %arrayidx95.i = getelementptr i8, ptr %4, i32 2791
  %12 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx95.i, align 1
  %conv96.i = zext i8 %13 to i16
  %shl97.i = shl nuw i16 %conv96.i, 8
  %14 = ptrtoint ptr %multi_filter.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %multi_filter.i, align 1
  %conv101.i = zext i8 %15 to i16
  %or102.i = or i16 %shl97.i, %conv101.i
  %call.i149.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 104, i16 noundef zeroext %or102.i) #11
  %arrayidx95.1.i = getelementptr i8, ptr %4, i32 2793
  %16 = ptrtoint ptr %arrayidx95.1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx95.1.i, align 1
  %conv96.1.i = zext i8 %17 to i16
  %shl97.1.i = shl nuw i16 %conv96.1.i, 8
  %arrayidx100.1.i = getelementptr i8, ptr %4, i32 2792
  %18 = ptrtoint ptr %arrayidx100.1.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx100.1.i, align 1
  %conv101.1.i = zext i8 %19 to i16
  %or102.1.i = or i16 %shl97.1.i, %conv101.1.i
  %call.i149.1.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 106, i16 noundef zeroext %or102.1.i) #11
  %arrayidx95.2.i = getelementptr i8, ptr %4, i32 2795
  %20 = ptrtoint ptr %arrayidx95.2.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx95.2.i, align 1
  %conv96.2.i = zext i8 %21 to i16
  %shl97.2.i = shl nuw i16 %conv96.2.i, 8
  %arrayidx100.2.i = getelementptr i8, ptr %4, i32 2794
  %22 = ptrtoint ptr %arrayidx100.2.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx100.2.i, align 1
  %conv101.2.i = zext i8 %23 to i16
  %or102.2.i = or i16 %shl97.2.i, %conv101.2.i
  %call.i149.2.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 108, i16 noundef zeroext %or102.2.i) #11
  %arrayidx95.3.i = getelementptr i8, ptr %4, i32 2797
  %24 = ptrtoint ptr %arrayidx95.3.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx95.3.i, align 1
  %conv96.3.i = zext i8 %25 to i16
  %shl97.3.i = shl nuw i16 %conv96.3.i, 8
  %arrayidx100.3.i = getelementptr i8, ptr %4, i32 2796
  %26 = ptrtoint ptr %arrayidx100.3.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx100.3.i, align 1
  %conv101.3.i = zext i8 %27 to i16
  %or102.3.i = or i16 %shl97.3.i, %conv101.3.i
  %call.i149.3.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 110, i16 noundef zeroext %or102.3.i) #11
  br label %ax88796c_set_hw_multicast.exit

cond.end.i:                                       ; preds = %cond.end.i.cond.end.i_crit_edge, %for.cond.preheader.i.cond.end.i_crit_edge
  %ha.0153.i = phi ptr [ %ha.0.i, %cond.end.i.cond.end.i_crit_edge ], [ %ha.0151.i, %for.cond.preheader.i.cond.end.i_crit_edge ]
  %addr.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0153.i, i32 0, i32 2
  %call52.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i, i32 noundef 6) #15
  %28 = and i32 %call52.i, 255
  %arrayidx.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %shr77.i = lshr i8 %30, 2
  %and78.i = and i8 %shr77.i, 7
  %shl79.i = shl i8 1, %and78.i
  %31 = lshr i8 %30, 5
  %shr81.i = zext i8 %31 to i32
  %arrayidx.i = getelementptr %struct.ax88796c_device, ptr %add.ptr.i.i, i32 0, i32 11, i32 %shr81.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %conv84.i = or i8 %33, %shl79.i
  store i8 %conv84.i, ptr %arrayidx.i, align 1
  %34 = ptrtoint ptr %ha.0153.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %ha.0.i = load ptr, ptr %ha.0153.i, align 4
  %cmp47.not.i = icmp eq ptr %ha.0.i, %mc.i
  br i1 %cmp47.not.i, label %cond.end.i.for.cond90.preheader.i_crit_edge, label %cond.end.i.cond.end.i_crit_edge

cond.end.i.cond.end.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.end.i.for.cond90.preheader.i_crit_edge:      ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond90.preheader.i

ax88796c_set_hw_multicast.exit:                   ; preds = %for.cond90.preheader.i, %if.else37.i.ax88796c_set_hw_multicast.exit_crit_edge, %if.else.i.ax88796c_set_hw_multicast.exit_crit_edge, %if.end.i.ax88796c_set_hw_multicast.exit_crit_edge
  %rx_ctl.0.i = phi i16 [ 8, %if.else37.i.ax88796c_set_hw_multicast.exit_crit_edge ], [ 9, %if.end.i.ax88796c_set_hw_multicast.exit_crit_edge ], [ 10, %if.else.i.ax88796c_set_hw_multicast.exit_crit_edge ], [ 8, %for.cond90.preheader.i ]
  %ax_spi113.i = getelementptr i8, ptr %4, i32 2508
  %call.i150.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi113.i, i8 noundef zeroext 86, i16 noundef zeroext %rx_ctl.0.i) #11
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  br label %if.end

if.end:                                           ; preds = %ax88796c_set_hw_multicast.exit, %entry.if.end_crit_edge
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %flags, align 4
  %and1.i54 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i54)
  %tobool4.not = icmp eq i32 %and1.i54, 0
  br i1 %tobool4.not, label %if.end.if.end13_crit_edge, label %if.then5

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then5:                                         ; preds = %if.end
  %ax_spi = getelementptr i8, ptr %work, i32 192
  %call.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 8, i16 noundef zeroext -1) #11
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then5
  %call7 = tail call fastcc i32 @ax88796c_process_isr(ptr noundef %add.ptr)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  %call.i57 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 8, i16 noundef zeroext 256) #11
  %ndev12 = getelementptr i8, ptr %work, i32 -8
  %37 = ptrtoint ptr %ndev12 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev12, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 64
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %40) #11
  br label %if.end13

if.end13:                                         ; preds = %while.end, %if.end.if.end13_crit_edge
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags, align 4
  %43 = and i32 %42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool16.not = icmp eq i32 %43, 0
  br i1 %tobool16.not, label %if.end13.if.end35_crit_edge, label %while.cond18.preheader

if.end13.if.end35_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

while.cond18.preheader:                           ; preds = %if.end13
  %qlen.i = getelementptr i8, ptr %work, i32 144
  %44 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool20.not83 = icmp eq i32 %45, 0
  br i1 %tobool20.not83, label %while.cond18.preheader.while.end26_crit_edge, label %while.body21.lr.ph

while.cond18.preheader.while.end26_crit_edge:     ; preds = %while.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.body21.lr.ph:                               ; preds = %while.cond18.preheader
  %dep_map.i59 = getelementptr i8, ptr %work, i32 108
  %stats29.i = getelementptr i8, ptr %work, i32 -4
  %ndev.i = getelementptr i8, ptr %work, i32 -8
  %tx_wait_q.i = getelementptr i8, ptr %work, i32 136
  %ax_spi.i67 = getelementptr i8, ptr %work, i32 192
  %msg_enable.i = getelementptr i8, ptr %work, i32 468
  %seq_num.i = getelementptr i8, ptr %work, i32 472
  br label %while.body21

while.body21:                                     ; preds = %ax88796c_hard_xmit.exit.while.body21_crit_edge, %while.body21.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %46 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i58 = icmp eq i32 %46, 0
  br i1 %tobool.not.i58, label %while.body21.if.end.i65_crit_edge, label %land.rhs.i62

while.body21.if.end.i65_crit_edge:                ; preds = %while.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65

land.rhs.i62:                                     ; preds = %while.body21
  %call.i.i60 = call i32 @lock_is_held_type(ptr noundef %dep_map.i59, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %cmp.not.i61 = icmp eq i32 %call.i.i60, 0
  br i1 %cmp.not.i61, label %do.end.i63, label %land.rhs.i62.if.end.i65_crit_edge, !prof !195

land.rhs.i62.if.end.i65_crit_edge:                ; preds = %land.rhs.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i65

do.end.i63:                                       ; preds = %land.rhs.i62
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 340, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i65

if.end.i65:                                       ; preds = %do.end.i63, %land.rhs.i62.if.end.i65_crit_edge, %while.body21.if.end.i65_crit_edge
  %47 = ptrtoint ptr %stats29.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %stats29.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %50 = call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cpu.i, align 4
  %arrayidx.i64 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %53
  %54 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i64, align 4
  %add.i = add i32 %55, %49
  %56 = inttoptr i32 %add.i to ptr
  %57 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ndev.i, align 4
  %comp.i.i = getelementptr i8, ptr %58, i32 2772
  %59 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %comp.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i.i = icmp eq i8 %60, 0
  %conv1.i.i = select i1 %tobool.not.i.i, i8 4, i8 1
  %61 = ptrtoint ptr %tx_wait_q.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_wait_q.i, align 4
  %cmp.i.i.i = icmp eq ptr %62, %tx_wait_q.i
  br i1 %cmp.i.i.i, label %if.end.i65.do.body36.i_crit_edge, label %if.end.i.i

if.end.i65.do.body36.i_crit_edge:                 ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

if.end.i.i:                                       ; preds = %if.end.i65
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 6
  %63 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i.i, align 4
  %conv7.i.i = and i32 %64, 65535
  %add8.i.i = add i32 %64, 135
  %65 = lshr i32 %add8.i.i, 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %66 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i.i.i = icmp eq i32 %66, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i
  %dep_map.i.i.i = getelementptr i8, ptr %58, i32 2424
  %call.i.i.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !195

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 227, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.i.if.end.i.i.i_crit_edge
  %ax_spi.i.i.i = getelementptr i8, ptr %58, i32 2508
  %call.i51.i.i.i = call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i.i.i, i8 noundef zeroext 16) #11
  %67 = and i16 %call.i51.i.i.i, 63
  %68 = trunc i32 %65 to i16
  %69 = and i16 %68, 255
  call void @__sanitizer_cov_trace_cmp2(i16 %67, i16 %69)
  %cmp29.i.i.i = icmp ult i16 %67, %69
  br i1 %cmp29.i.i.i, label %ax88796c_check_free_pages.exit.i.i, label %if.end13.i.i

ax88796c_check_free_pages.exit.i.i:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv9.i.i.le = trunc i32 %65 to i8
  %call.i52.i.i.i = call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i.i.i, i8 noundef zeroext 16) #11
  %70 = and i16 %call.i52.i.i.i, -16257
  %71 = and i8 %conv9.i.i.le, 63
  %and40.i.i.i = zext i8 %71 to i16
  %shl.i.i.i = shl nuw nsw i16 %and40.i.i.i, 7
  %72 = or i16 %70, %shl.i.i.i
  %or41.i.i.i = or i16 %72, 8192
  %call.i53.i.i.i = call i32 @axspi_write_reg(ptr noundef %ax_spi.i.i.i, i8 noundef zeroext 16, i16 noundef zeroext %or41.i.i.i) #11
  br label %do.body36.i

if.end13.i.i:                                     ; preds = %if.end.i.i.i
  %conv6.i.i = trunc i32 %64 to i16
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 18
  %75 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 7
  %77 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.i.not.i.i.i, label %cond.false.i.i.i, label %if.end13.i.i.skb_tailroom.exit.i.i_crit_edge

if.end13.i.i.skb_tailroom.exit.i.i_crit_edge:     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_tailroom.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 17
  %79 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 16
  %81 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i157.i.i = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i158.i.i = ptrtoint ptr %82 to i32
  %sub.ptr.sub.i159.i.i = sub i32 %sub.ptr.lhs.cast.i157.i.i, %sub.ptr.rhs.cast.i158.i.i
  br label %skb_tailroom.exit.i.i

skb_tailroom.exit.i.i:                            ; preds = %cond.false.i.i.i, %if.end13.i.i.skb_tailroom.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %sub.ptr.sub.i159.i.i, %cond.false.i.i.i ], [ 0, %if.end13.i.i.skb_tailroom.exit.i.i_crit_edge ]
  %sub.i.i = add i32 %64, 255
  %or.i.i = or i32 %sub.i.i, 3
  %add17.i.i = sub i32 1, %64
  %sub19.i.i = add i32 %or.i.i, %add17.i.i
  %seq_num21.i.i = getelementptr i8, ptr %58, i32 2788
  %83 = ptrtoint ptr %seq_num21.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %seq_num21.i.i, align 4
  %inc.i.i = add i16 %84, 1
  store i16 %inc.i.i, ptr %seq_num21.i.i, align 4
  %85 = trunc i16 %inc.i.i to i8
  %conv23.i.i = and i8 %85, 31
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 12
  %86 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i160.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i160.i.i, label %skb_tailroom.exit.i.i.lor.lhs.false.i.i_crit_edge, label %skb_cloned.exit.i.i

skb_tailroom.exit.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

skb_cloned.exit.i.i:                              ; preds = %skb_tailroom.exit.i.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 17
  %87 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %88, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #11
  %89 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %90, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i161.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i161.not.i.i, label %skb_cloned.exit.i.i.lor.lhs.false.i.i_crit_edge, label %skb_cloned.exit.if.then36_crit_edge.i.i

skb_cloned.exit.i.i.lor.lhs.false.i.i_crit_edge:  ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false.i.i

skb_cloned.exit.if.then36_crit_edge.i.i:          ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %.pre.i.i = or i8 %conv1.i.i, 8
  %.pre169.i.i = zext i8 %.pre.i.i to i32
  br label %if.then36.i.i

lor.lhs.false.i.i:                                ; preds = %skb_cloned.exit.i.i.lor.lhs.false.i.i_crit_edge, %skb_tailroom.exit.i.i.lor.lhs.false.i.i_crit_edge
  %91 = or i8 %conv1.i.i, 8
  %add28.i.i = zext i8 %91 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add28.i.i)
  %cmp29.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, %add28.i.i
  br i1 %cmp29.i.i, label %lor.lhs.false.i.i.if.then36.i.i_crit_edge, label %lor.lhs.false31.i.i

lor.lhs.false.i.i.if.then36.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36.i.i

lor.lhs.false31.i.i:                              ; preds = %lor.lhs.false.i.i
  %conv32.i.i = and i32 %sub19.i.i, 255
  %add33.i.i = add nuw nsw i32 %conv32.i.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i.i, i32 %add33.i.i)
  %cmp34.i.i = icmp slt i32 %cond.i.i.i, %add33.i.i
  br i1 %cmp34.i.i, label %lor.lhs.false31.i.i.if.then36.i.i_crit_edge, label %lor.lhs.false31.i.i.if.end58.i.i_crit_edge

lor.lhs.false31.i.i.if.end58.i.i_crit_edge:       ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i.i

lor.lhs.false31.i.i.if.then36.i.i_crit_edge:      ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then36.i.i

if.then36.i.i:                                    ; preds = %lor.lhs.false31.i.i.if.then36.i.i_crit_edge, %lor.lhs.false.i.i.if.then36.i.i_crit_edge, %skb_cloned.exit.if.then36_crit_edge.i.i
  %add38.pre-phi.i.i = phi i32 [ %.pre169.i.i, %skb_cloned.exit.if.then36_crit_edge.i.i ], [ %add28.i.i, %lor.lhs.false31.i.i.if.then36.i.i_crit_edge ], [ %add28.i.i, %lor.lhs.false.i.i.if.then36.i.i_crit_edge ]
  %sub39.i.i = sub i32 %add38.pre-phi.i.i, %sub.ptr.sub.i.i.i
  %92 = call i32 @llvm.smax.i32(i32 %sub39.i.i, i32 0) #11
  %conv43.i.i = and i32 %sub19.i.i, 255
  %add44.i.i = add nuw nsw i32 %conv43.i.i, 4
  %sub45.i.i = sub i32 %add44.i.i, %cond.i.i.i
  %93 = call i32 @llvm.smax.i32(i32 %sub45.i.i, i32 0) #11
  %call53.i.i = call i32 @pskb_expand_head(ptr noundef %62, i32 noundef %92, i32 noundef %93, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.then36.i.i.if.end58.i.i_crit_edge, label %if.then36.i.i.do.body36.i_crit_edge

if.then36.i.i.do.body36.i_crit_edge:              ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

if.then36.i.i.if.end58.i.i_crit_edge:             ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then36.i.i.if.end58.i.i_crit_edge, %lor.lhs.false31.i.i.if.end58.i.i_crit_edge
  %conv65.pre-phi.i.i = phi i32 [ %conv43.i.i, %if.then36.i.i.if.end58.i.i_crit_edge ], [ %conv32.i.i, %lor.lhs.false31.i.i.if.end58.i.i_crit_edge ]
  %conv59.i.i = zext i8 %conv23.i.i to i16
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 15
  %94 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %95 = shl i16 %bf.load.i.i, 5
  %96 = and i16 %95, -32768
  %97 = xor i16 %96, -32768
  %neg.i.i.i = and i16 %conv6.i.i, 2047
  %and.i163.i.i = xor i16 %neg.i.i.i, 2047
  %or.i.i.i = or i16 %97, %conv6.i.i
  %shl.i164.i.i = shl nuw i16 %conv59.i.i, 11
  %or13.i.i.i = or i16 %shl.i164.i.i, %and.i163.i.i
  %98 = or i16 %conv6.i.i, -16384
  %or44.i.i.i = or i16 %shl.i164.i.i, %conv6.i.i
  %neg48.i.i.i = xor i16 %conv59.i.i, -1
  %shl49.i.i.i = shl i16 %neg48.i.i.i, 11
  %or52.i.i.i = or i16 %shl49.i.i.i, %and.i163.i.i
  %call61.i.i = call ptr @skb_push(ptr noundef %62, i32 noundef 8) #11
  %info.sroa.0.sroa.9.0.insert.ext.i.i = zext i16 %and.i163.i.i to i64
  %info.sroa.0.sroa.7.0.insert.ext.i.i = zext i16 %98 to i64
  %info.sroa.0.sroa.7.0.insert.shift.i.i = shl nuw nsw i64 %info.sroa.0.sroa.7.0.insert.ext.i.i, 16
  %info.sroa.0.sroa.7.0.insert.insert.i.i = or i64 %info.sroa.0.sroa.7.0.insert.shift.i.i, %info.sroa.0.sroa.9.0.insert.ext.i.i
  %info.sroa.0.sroa.5.0.insert.ext.i.i = zext i16 %or13.i.i.i to i64
  %info.sroa.0.sroa.5.0.insert.shift.i.i = shl nuw nsw i64 %info.sroa.0.sroa.5.0.insert.ext.i.i, 32
  %info.sroa.0.sroa.5.0.insert.insert.i.i = or i64 %info.sroa.0.sroa.5.0.insert.shift.i.i, %info.sroa.0.sroa.7.0.insert.insert.i.i
  %info.sroa.0.sroa.0.0.insert.ext.i.i = zext i16 %or.i.i.i to i64
  %info.sroa.0.sroa.0.0.insert.shift.i.i = shl nuw i64 %info.sroa.0.sroa.0.0.insert.ext.i.i, 48
  %info.sroa.0.sroa.0.0.insert.insert.i.i = or i64 %info.sroa.0.sroa.0.0.insert.shift.i.i, %info.sroa.0.sroa.5.0.insert.insert.i.i
  %99 = ptrtoint ptr %call61.i.i to i32
  call void @__asan_storeN_noabort(i32 %99, i32 8)
  store i64 %info.sroa.0.sroa.0.0.insert.insert.i.i, ptr %call61.i.i, align 1
  %conv62.i.i = zext i8 %conv1.i.i to i32
  %call63.i.i = call ptr @skb_push(ptr noundef %62, i32 noundef %conv62.i.i) #11
  %100 = call ptr @memcpy(ptr %call63.i.i, ptr @ax88796c_tx_cmd_buf, i32 %conv62.i.i)
  %call66.i.i = call ptr @skb_put(ptr noundef %62, i32 noundef %conv65.pre-phi.i.i) #11
  %call67.i.i = call ptr @skb_put(ptr noundef %62, i32 noundef 4) #11
  %info.sroa.11.sroa.5.0.insert.ext.i.i = zext i16 %or52.i.i.i to i32
  %info.sroa.11.sroa.0.0.insert.ext.i.i = zext i16 %or44.i.i.i to i32
  %info.sroa.11.sroa.0.0.insert.shift.i.i = shl nuw i32 %info.sroa.11.sroa.0.0.insert.ext.i.i, 16
  %info.sroa.11.sroa.0.0.insert.insert.i.i = or i32 %info.sroa.11.sroa.0.0.insert.shift.i.i, %info.sroa.11.sroa.5.0.insert.ext.i.i
  %101 = ptrtoint ptr %call67.i.i to i32
  call void @__asan_storeN_noabort(i32 %101, i32 4)
  store i32 %info.sroa.11.sroa.0.0.insert.insert.i.i, ptr %call67.i.i, align 1
  call void @skb_unlink(ptr noundef %62, ptr noundef %tx_wait_q.i) #11
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3
  %102 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 0, ptr %cb.i.i, align 4
  %len69.i.i = getelementptr inbounds %struct.sk_buff, ptr %62, i32 0, i32 3, i32 4
  %103 = ptrtoint ptr %len69.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv7.i.i, ptr %len69.i.i, align 4
  %msg_enable.i.i = getelementptr i8, ptr %58, i32 2784
  %104 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_enable.i.i, align 4
  %and70.i.i = and i32 %105, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i.i)
  %tobool71.not.i.i = icmp eq i32 %and70.i.i, 0
  br i1 %tobool71.not.i.i, label %if.end58.i.i.ax88796c_tx_fixup.exit.i_crit_edge, label %if.then72.i.i

if.end58.i.i.ax88796c_tx_fixup.exit.i_crit_edge:  ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_tx_fixup.exit.i

if.then72.i.i:                                    ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %pfx.i.i) #11
  %106 = call ptr @memset(ptr %pfx.i.i, i32 255, i32 23)
  %call75.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfx.i.i, i32 noundef 23, ptr noundef nonnull @.str.61, ptr noundef %58) #11
  %107 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i.i, align 4
  %conv78.i.i = zext i8 %conv23.i.i to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %58, ptr noundef nonnull @.str.70, i32 noundef %conv7.i.i, i32 noundef %108, i32 noundef %conv78.i.i) #14
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %58, ptr noundef nonnull @.str.71) #14
  %109 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i.i.i, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull %pfx.i.i, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %110, i32 noundef 4, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %58, ptr noundef nonnull @.str.72) #14
  %111 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i66 = getelementptr i8, ptr %112, i32 4
  call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull %pfx.i.i, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.i.i66, i32 noundef 8, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %58, ptr noundef nonnull @.str.73) #14
  %113 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr85.i.i = getelementptr i8, ptr %114, i32 12
  %115 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len.i.i, align 4
  %sub89.i.i = add i32 %116, -16
  call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull %pfx.i.i, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr85.i.i, i32 noundef %sub89.i.i, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %58, ptr noundef nonnull @.str.74) #14
  %117 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %data.i.i.i, align 4
  %119 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %len.i.i, align 4
  %add.ptr93.i.i = getelementptr i8, ptr %118, i32 -4
  %add.ptr94.i.i = getelementptr i8, ptr %add.ptr93.i.i, i32 %120
  call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull %pfx.i.i, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr94.i.i, i32 noundef 4, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %pfx.i.i) #11
  br label %ax88796c_tx_fixup.exit.i

ax88796c_tx_fixup.exit.i:                         ; preds = %if.then72.i.i, %if.end58.i.i.ax88796c_tx_fixup.exit.i_crit_edge
  %tobool33.not.i = icmp eq ptr %62, null
  br i1 %tobool33.not.i, label %ax88796c_tx_fixup.exit.i.do.body36.i_crit_edge, label %if.end90.i

ax88796c_tx_fixup.exit.i.do.body36.i_crit_edge:   ; preds = %ax88796c_tx_fixup.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body36.i

do.body36.i:                                      ; preds = %ax88796c_tx_fixup.exit.i.do.body36.i_crit_edge, %if.then36.i.i.do.body36.i_crit_edge, %ax88796c_check_free_pages.exit.i.i, %if.end.i65.do.body36.i_crit_edge
  %121 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !196
  %122 = ptrtoint ptr %stats29.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %stats29.i, align 4
  %tx_dropped.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %123, i32 0, i32 6
  %124 = ptrtoint ptr %tx_dropped.i to i32
  %125 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cpu.i, align 4
  %arrayidx58.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %arrayidx58.i, align 4
  %add59.i = add i32 %128, %124
  %129 = inttoptr i32 %add59.i to ptr
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %129, align 4
  %add60.i = add i32 %131, 1
  store i32 %add60.i, ptr %129, align 4
  %132 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i217.i = and i32 %132, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i217.i)
  %tobool71.not.i = icmp eq i32 %and.i.i217.i, 0
  br i1 %tobool71.not.i, label %if.then80.i, label %do.body36.i.ax88796c_hard_xmit.exit.thread_crit_edge, !prof !195

do.body36.i.ax88796c_hard_xmit.exit.thread_crit_edge: ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_hard_xmit.exit.thread

if.then80.i:                                      ; preds = %do.body36.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %ax88796c_hard_xmit.exit.thread

ax88796c_hard_xmit.exit.thread:                   ; preds = %if.then80.i, %do.body36.i.ax88796c_hard_xmit.exit.thread_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %121) #11, !srcloc !198
  br label %while.end26

if.end90.i:                                       ; preds = %ax88796c_tx_fixup.exit.i
  %call.i218.i = call i32 @axspi_write_reg(ptr noundef %ax_spi.i67, i8 noundef zeroext 18, i16 noundef zeroext -32512) #11
  %133 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i.i.i, align 4
  %135 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i.i, align 4
  %call93.i = call i32 @axspi_write_txq(ptr noundef %ax_spi.i67, ptr noundef %134, i32 noundef %136) #11
  %call.i219.i = call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i67, i8 noundef zeroext 18) #11
  %137 = and i16 %call.i219.i, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %137)
  %cmp97.i = icmp eq i16 %137, 0
  br i1 %cmp97.i, label %if.end90.i.if.then105.i_crit_edge, label %lor.lhs.false.i

if.end90.i.if.then105.i_crit_edge:                ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then105.i

lor.lhs.false.i:                                  ; preds = %if.end90.i
  %call.i220.i = call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i67, i8 noundef zeroext 6) #11
  %138 = and i16 %call.i220.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %138)
  %cmp103.not.i = icmp eq i16 %138, 0
  br i1 %cmp103.not.i, label %if.else.i68, label %lor.lhs.false.i.if.then105.i_crit_edge

lor.lhs.false.i.if.then105.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then105.i

if.then105.i:                                     ; preds = %lor.lhs.false.i.if.then105.i_crit_edge, %if.end90.i.if.then105.i_crit_edge
  %call.i221.i = call i32 @axspi_write_reg(ptr noundef %ax_spi.i67, i8 noundef zeroext 6, i16 noundef zeroext 256) #11
  %139 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !196
  %140 = ptrtoint ptr %stats29.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %stats29.i, align 4
  %tx_dropped132.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %141, i32 0, i32 6
  %142 = ptrtoint ptr %tx_dropped132.i to i32
  %143 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %cpu.i, align 4
  %arrayidx136.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %144
  %145 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx136.i, align 4
  %add137.i = add i32 %146, %142
  %147 = inttoptr i32 %add137.i to ptr
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %add138.i = add i32 %149, 1
  store i32 %add138.i, ptr %147, align 4
  %150 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i222.i = and i32 %150, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i222.i)
  %tobool149.not.i = icmp eq i32 %and.i.i222.i, 0
  br i1 %tobool149.not.i, label %if.then158.i, label %if.then105.i.do.end161.i_crit_edge, !prof !195

if.then105.i.do.end161.i_crit_edge:               ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161.i

if.then158.i:                                     ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %do.end161.i

do.end161.i:                                      ; preds = %if.then158.i, %if.then105.i.do.end161.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %139) #11, !srcloc !198
  %call168.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168.i)
  %tobool169.not.i = icmp eq i32 %call168.i, 0
  br i1 %tobool169.not.i, label %do.end161.i.if.end179.i_crit_edge, label %do.body171.i

do.end161.i.if.end179.i_crit_edge:                ; preds = %do.end161.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179.i

do.body171.i:                                     ; preds = %do.end161.i
  %151 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %msg_enable.i, align 4
  %and172.i = and i32 %152, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172.i)
  %tobool173.not.i = icmp eq i32 %and172.i, 0
  br i1 %tobool173.not.i, label %do.body171.i.if.end179.i_crit_edge, label %if.then174.i

do.body171.i.if.end179.i_crit_edge:               ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end179.i

if.then174.i:                                     ; preds = %do.body171.i
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %154, ptr noundef nonnull @.str.69) #14
  br label %if.end179.i

if.end179.i:                                      ; preds = %if.then174.i, %do.body171.i.if.end179.i_crit_edge, %do.end161.i.if.end179.i_crit_edge
  %call.i223.i = call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i67, i8 noundef zeroext 18) #11
  %155 = or i16 %call.i223.i, 16384
  %call.i224.i = call i32 @axspi_write_reg(ptr noundef %ax_spi.i67, i8 noundef zeroext 18, i16 noundef zeroext %155) #11
  %156 = ptrtoint ptr %seq_num.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 0, ptr %seq_num.i, align 4
  br label %ax88796c_hard_xmit.exit

if.else.i68:                                      ; preds = %lor.lhs.false.i
  %syncp.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %56, i32 0, i32 4
  %call186.i = call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %syncp.i) #11
  %tx_packets.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %56, i32 0, i32 2
  %157 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %tx_packets.i, align 8
  %inc.i225.i = add i64 %158, 1
  store i64 %inc.i225.i, ptr %tx_packets.i, align 8
  %tx_bytes.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %56, i32 0, i32 3
  %159 = ptrtoint ptr %len69.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %len69.i.i, align 4
  %conv.i.i = zext i32 %160 to i64
  %161 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %tx_bytes.i, align 8
  %add.i.i = add i64 %162, %conv.i.i
  store i64 %add.i.i, ptr %tx_bytes.i, align 8
  %dep_map.i.i226.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %56, i32 0, i32 4, i32 0, i32 1
  %163 = call ptr @llvm.returnaddress(i32 0) #11
  %164 = ptrtoint ptr %163 to i32
  call void @lock_release(ptr noundef %dep_map.i.i226.i, i32 noundef %164) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !199
  %165 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %166, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  %and.i.i227.i = and i32 %call186.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i227.i)
  %tobool.not.i228.i = icmp eq i32 %and.i.i227.i, 0
  br i1 %tobool.not.i228.i, label %if.then8.i.i, label %if.else.i68.do.body10.i.i_crit_edge

if.else.i68.do.body10.i.i_crit_edge:              ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10.i.i

if.then8.i.i:                                     ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_on() #11
  br label %do.body10.i.i

do.body10.i.i:                                    ; preds = %if.then8.i.i, %if.else.i68.do.body10.i.i_crit_edge
  %167 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i.i.i = and i32 %167, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool18.not.i.i, label %if.then22.i.i, label %do.body10.i.i.u64_stats_update_end_irqrestore.exit.i_crit_edge, !prof !195

do.body10.i.i.u64_stats_update_end_irqrestore.exit.i_crit_edge: ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_end_irqrestore.exit.i

if.then22.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %u64_stats_update_end_irqrestore.exit.i

u64_stats_update_end_irqrestore.exit.i:           ; preds = %if.then22.i.i, %do.body10.i.i.u64_stats_update_end_irqrestore.exit.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call186.i) #11, !srcloc !198
  br label %ax88796c_hard_xmit.exit

ax88796c_hard_xmit.exit:                          ; preds = %u64_stats_update_end_irqrestore.exit.i, %if.end179.i
  %168 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 1, ptr %cb.i.i, align 4
  call void @consume_skb(ptr noundef nonnull %62) #11
  %169 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %qlen.i, align 4
  %tobool20.not = icmp eq i32 %170, 0
  br i1 %tobool20.not, label %ax88796c_hard_xmit.exit.while.end26_crit_edge, label %ax88796c_hard_xmit.exit.while.body21_crit_edge

ax88796c_hard_xmit.exit.while.body21_crit_edge:   ; preds = %ax88796c_hard_xmit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body21

ax88796c_hard_xmit.exit.while.end26_crit_edge:    ; preds = %ax88796c_hard_xmit.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end26

while.end26:                                      ; preds = %ax88796c_hard_xmit.exit.while.end26_crit_edge, %ax88796c_hard_xmit.exit.thread, %while.cond18.preheader.while.end26_crit_edge
  call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %ndev28 = getelementptr i8, ptr %work, i32 -8
  %171 = ptrtoint ptr %ndev28 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ndev28, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %172, i32 0, i32 103
  %173 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %174, i32 0, i32 13
  %175 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %while.end26.if.end35_crit_edge, label %land.lhs.true

while.end26.if.end35_crit_edge:                   ; preds = %while.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %while.end26
  %177 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %178)
  %cmp = icmp ult i32 %178, 20
  br i1 %cmp, label %if.then32, label %land.lhs.true.if.end35_crit_edge

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_tx_wake_queue(ptr noundef %174) #11
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %land.lhs.true.if.end35_crit_edge, %while.end26.if.end35_crit_edge, %if.end13.if.end35_crit_edge
  call void @mutex_unlock(ptr noundef %spi_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88796c_handle_link_change(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %speed = getelementptr i8, ptr %ndev, i32 2804
  %4 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed, align 4
  %speed2 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %speed2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %lor.lhs.false, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

lor.lhs.false:                                    ; preds = %land.lhs.true
  %duplex = getelementptr i8, ptr %ndev, i32 2808
  %8 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %duplex, align 4
  %duplex3 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %duplex3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %duplex3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp4.not = icmp eq i32 %9, %11
  br i1 %cmp4.not, label %lor.lhs.false5, label %lor.lhs.false.if.end.thread_crit_edge

lor.lhs.false.if.end.thread_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %pause = getelementptr i8, ptr %ndev, i32 2812
  %12 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pause, align 4
  %pause6 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %pause6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pause6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp7.not = icmp eq i32 %13, %15
  br i1 %cmp7.not, label %lor.lhs.false8, label %lor.lhs.false5.if.end.thread_crit_edge

lor.lhs.false5.if.end.thread_crit_edge:           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

lor.lhs.false8:                                   ; preds = %lor.lhs.false5
  %asym_pause = getelementptr i8, ptr %ndev, i32 2816
  %16 = ptrtoint ptr %asym_pause to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %asym_pause, align 4
  %asym_pause9 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %asym_pause9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %asym_pause9, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp10.not = icmp eq i32 %17, %19
  br i1 %cmp10.not, label %lor.lhs.false8.if.end_crit_edge, label %lor.lhs.false8.if.end.thread_crit_edge

lor.lhs.false8.if.end.thread_crit_edge:           ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread

lor.lhs.false8.if.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false8.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load20 = load i16, ptr %link, align 8
  %bf.lshr21 = lshr i16 %bf.load20, 2
  %bf.clear22 = and i16 %bf.lshr21, 1
  %bf.cast23 = zext i16 %bf.clear22 to i32
  %link24 = getelementptr i8, ptr %ndev, i32 2800
  %21 = ptrtoint ptr %link24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %bf.cast23)
  %cmp25.not = icmp eq i32 %22, %bf.cast23
  br i1 %cmp25.not, label %if.end.if.end46_crit_edge, label %if.end.if.then26_crit_edge

if.end.if.then26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.end.thread:                                    ; preds = %lor.lhs.false8.if.end.thread_crit_edge, %lor.lhs.false5.if.end.thread_crit_edge, %lor.lhs.false.if.end.thread_crit_edge, %land.lhs.true.if.end.thread_crit_edge
  %23 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %7, ptr %speed, align 4
  %duplex13 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %duplex13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %duplex13, align 4
  %duplex14 = getelementptr i8, ptr %ndev, i32 2808
  %26 = ptrtoint ptr %duplex14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %duplex14, align 4
  %pause15 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %pause15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pause15, align 4
  %pause16 = getelementptr i8, ptr %ndev, i32 2812
  %29 = ptrtoint ptr %pause16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pause16, align 4
  %asym_pause17 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %asym_pause17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %asym_pause17, align 8
  %asym_pause18 = getelementptr i8, ptr %ndev, i32 2816
  %32 = ptrtoint ptr %asym_pause18 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %asym_pause18, align 4
  %33 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load2078 = load i16, ptr %link, align 8
  %bf.lshr2179 = lshr i16 %bf.load2078, 2
  %bf.clear2280 = and i16 %bf.lshr2179, 1
  %bf.cast2381 = zext i16 %bf.clear2280 to i32
  %link2482 = getelementptr i8, ptr %ndev, i32 2800
  %34 = ptrtoint ptr %link2482 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %link2482, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %bf.cast2381)
  %cmp25.not83 = icmp eq i32 %35, %bf.cast2381
  br i1 %cmp25.not83, label %if.end.thread.if.then45_crit_edge, label %if.end.thread.if.then26_crit_edge

if.end.thread.if.then26_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.thread.if.then45_crit_edge:                ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.then26:                                        ; preds = %if.end.thread.if.then26_crit_edge, %if.end.if.then26_crit_edge
  %link2486 = phi ptr [ %link2482, %if.end.thread.if.then26_crit_edge ], [ %link24, %if.end.if.then26_crit_edge ]
  %bf.clear2285 = phi i16 [ %bf.clear2280, %if.end.thread.if.then26_crit_edge ], [ %bf.clear22, %if.end.if.then26_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear2285)
  %tobool32.not = icmp eq i16 %bf.clear2285, 0
  br i1 %tobool32.not, label %if.then33, label %if.then26.if.end36_crit_edge

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %speed34 = getelementptr i8, ptr %ndev, i32 2804
  %36 = ptrtoint ptr %speed34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %speed34, align 4
  %duplex35 = getelementptr i8, ptr %ndev, i32 2808
  %37 = ptrtoint ptr %duplex35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 255, ptr %duplex35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then26.if.end36_crit_edge
  %38 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load38 = load i16, ptr %link, align 8
  %bf.lshr39 = lshr i16 %bf.load38, 2
  %bf.clear40 = and i16 %bf.lshr39, 1
  %bf.cast41 = zext i16 %bf.clear40 to i32
  %39 = ptrtoint ptr %link2486 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %bf.cast41, ptr %link2486, align 4
  br label %if.then45

if.then45:                                        ; preds = %if.end36, %if.end.thread.if.then45_crit_edge
  %link2487 = phi ptr [ %link2486, %if.end36 ], [ %link2482, %if.end.thread.if.then45_crit_edge ]
  %40 = ptrtoint ptr %link2487 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %link2487, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp ne i32 %41, 0
  %conv.i = zext i1 %tobool.not.i to i16
  %speed.i = getelementptr i8, ptr %ndev, i32 2804
  %42 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %speed.i, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %if.then45.if.end46_crit_edge [
    i32 100, label %sw.bb.i
    i32 10, label %if.then45.sw.epilog.i_crit_edge
    i32 -1, label %if.then45.sw.epilog.i_crit_edge91
  ]

if.then45.sw.epilog.i_crit_edge91:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then45.sw.epilog.i_crit_edge:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then45.if.end46_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

sw.bb.i:                                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %or.i = or i16 %conv.i, 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.then45.sw.epilog.i_crit_edge, %if.then45.sw.epilog.i_crit_edge91
  %maccr.0.i = phi i16 [ %conv.i, %if.then45.sw.epilog.i_crit_edge ], [ %conv.i, %if.then45.sw.epilog.i_crit_edge91 ], [ %or.i, %sw.bb.i ]
  %duplex.i = getelementptr i8, ptr %ndev, i32 2808
  %45 = ptrtoint ptr %duplex.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %duplex.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %46, label %sw.epilog.i.if.end46_crit_edge [
    i32 1, label %sw.bb4.i
    i32 0, label %sw.epilog.i.sw.epilog10.i_crit_edge
    i32 255, label %sw.epilog.i.sw.epilog10.i_crit_edge92
  ]

sw.epilog.i.sw.epilog10.i_crit_edge92:            ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog10.i

sw.epilog.i.sw.epilog10.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog10.i

sw.epilog.i.if.end46_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

sw.bb4.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = or i16 %maccr.0.i, 4
  br label %sw.epilog10.i

sw.epilog10.i:                                    ; preds = %sw.bb4.i, %sw.epilog.i.sw.epilog10.i_crit_edge, %sw.epilog.i.sw.epilog10.i_crit_edge92
  %maccr.1.i = phi i16 [ %maccr.0.i, %sw.epilog.i.sw.epilog10.i_crit_edge ], [ %maccr.0.i, %sw.epilog.i.sw.epilog10.i_crit_edge92 ], [ %48, %sw.bb4.i ]
  %flowctrl.i = getelementptr i8, ptr %ndev, i32 2820
  %49 = ptrtoint ptr %flowctrl.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flowctrl.i, align 4
  %and.i = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %sw.epilog10.i.if.else.i_crit_edge, label %land.lhs.true.i

sw.epilog10.i.if.else.i_crit_edge:                ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %sw.epilog10.i
  %phydev.i = getelementptr i8, ptr %ndev, i32 2780
  %51 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phydev.i, align 4
  %autoneg.i = getelementptr inbounds %struct.phy_device, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %autoneg.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load.i = load i16, ptr %autoneg.i, align 8
  %54 = and i16 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool12.not.i = icmp eq i16 %54, 0
  br i1 %tobool12.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %pause.i = getelementptr i8, ptr %ndev, i32 2812
  %55 = ptrtoint ptr %pause.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool13.not.i = icmp eq i32 %56, 0
  %cond14.i = select i1 %tobool13.not.i, i16 0, i16 8
  %or16.i = or i16 %cond14.i, %maccr.1.i
  %asym_pause.i = getelementptr i8, ptr %ndev, i32 2816
  %57 = ptrtoint ptr %asym_pause.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %asym_pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool20.not.i = icmp ne i32 %58, 0
  %cmp.not.i = xor i1 %tobool13.not.i, %tobool20.not.i
  %cond24.i = select i1 %cmp.not.i, i16 0, i16 16
  %or26.i = or i16 %or16.i, %cond24.i
  br label %if.end.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %sw.epilog10.i.if.else.i_crit_edge
  %.tr.i = trunc i32 %50 to i16
  %59 = shl i16 %.tr.i, 3
  %60 = and i16 %59, 8
  %conv34.i = or i16 %60, %maccr.1.i
  %61 = and i16 %59, 16
  %conv41.i = or i16 %conv34.i, %61
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %maccr.2.i = phi i16 [ %or26.i, %if.then.i ], [ %conv41.i, %if.else.i ]
  %spi_lock.i = getelementptr i8, ptr %ndev, i32 2360
  tail call void @mutex_lock_nested(ptr noundef %spi_lock.i, i32 noundef 0) #11
  %ax_spi.i = getelementptr i8, ptr %ndev, i32 2508
  %call.i.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 14) #11
  %62 = and i16 %call.i.i, -31
  %or4571.i = or i16 %62, %maccr.2.i
  %call.i72.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 14, i16 noundef zeroext %or4571.i) #11
  tail call void @mutex_unlock(ptr noundef %spi_lock.i) #11
  br label %if.end46

if.end46:                                         ; preds = %if.end.i, %sw.epilog.i.if.end46_crit_edge, %if.then45.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %call47 = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phydev1, align 16
  tail call void @phy_print_status(ptr noundef %64) #11
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_register_netdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @ax88796c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %ndev, ptr noundef %ndev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %call.i) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %spi_lock = getelementptr i8, ptr %ndev, i32 2360
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #11
  %call3 = tail call fastcc i32 @ax88796c_soft_reset(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call6 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %ndev) #11
  tail call void @mutex_unlock(ptr noundef %spi_lock) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %seq_num = getelementptr i8, ptr %ndev, i32 2788
  %6 = ptrtoint ptr %seq_num to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 31, ptr %seq_num, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %7 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end8.ax88796c_set_mac_addr.exit_crit_edge, label %land.rhs.i

if.end8.ax88796c_set_mac_addr.exit_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_set_mac_addr.exit

land.rhs.i:                                       ; preds = %if.end8
  %dep_map.i = getelementptr i8, ptr %ndev, i32 2424
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.ax88796c_set_mac_addr.exit_crit_edge, !prof !195

land.rhs.i.ax88796c_set_mac_addr.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ax88796c_set_mac_addr.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 134, i32 noundef 9, ptr noundef null) #11
  br label %ax88796c_set_mac_addr.exit

ax88796c_set_mac_addr.exit:                       ; preds = %do.end.i, %land.rhs.i.ax88796c_set_mac_addr.exit_crit_edge, %if.end8.ax88796c_set_mac_addr.exit_crit_edge
  %ax_spi.i = getelementptr i8, ptr %ndev, i32 2508
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx28.i = getelementptr i8, ptr %9, i32 5
  %12 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx28.i, align 1
  %conv30.i = zext i8 %13 to i16
  %or.i = or i16 %shl.i, %conv30.i
  %call.i71.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 98, i16 noundef zeroext %or.i) #11
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx35.i = getelementptr i8, ptr %15, i32 2
  %16 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %17 to i16
  %shl37.i = shl nuw i16 %conv36.i, 8
  %arrayidx41.i = getelementptr i8, ptr %15, i32 3
  %18 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx41.i, align 1
  %conv43.i = zext i8 %19 to i16
  %or44.i = or i16 %shl37.i, %conv43.i
  %call.i72.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 100, i16 noundef zeroext %or44.i) #11
  %20 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr.i, align 64
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv50.i = zext i8 %23 to i16
  %shl51.i = shl nuw i16 %conv50.i, 8
  %arrayidx55.i = getelementptr i8, ptr %21, i32 1
  %24 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx55.i, align 1
  %conv57.i = zext i8 %25 to i16
  %or58.i = or i16 %shl51.i, %conv57.i
  %call.i73.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 102, i16 noundef zeroext %or58.i) #11
  tail call fastcc void @ax88796c_set_csums(ptr noundef %add.ptr.i)
  %call.i117 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 48) #11
  %26 = and i16 %call.i117, 32767
  %call.i118 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 48, i16 noundef zeroext %26) #11
  %call.i119 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 34, i16 noundef zeroext 1) #11
  %call.i120 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 4) #11
  %27 = or i16 %call.i120, -13824
  %call.i121 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 4, i16 noundef zeroext %27) #11
  %call.i122 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 76, i16 noundef zeroext 773) #11
  %call.i123 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 78) #11
  %28 = and i16 %call.i123, -256
  %29 = or i16 %28, 9
  %call.i124 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 78, i16 noundef zeroext %29) #11
  %call.i125 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 68, i16 noundef zeroext 4096) #11
  %call.i126 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 8, i16 noundef zeroext 256) #11
  tail call void @mutex_unlock(ptr noundef %spi_lock) #11
  %phydev = getelementptr i8, ptr %ndev, i32 2780
  %30 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phydev, align 4
  tail call void @phy_support_asym_pause(ptr noundef %31) #11
  %32 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phydev, align 4
  %advertising = getelementptr inbounds %struct.phy_device, ptr %33, i32 0, i32 17
  %34 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %advertising, align 4
  %36 = and i32 %35, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool40.not = icmp eq i32 %36, 0
  br i1 %tobool40.not, label %lor.lhs.false, label %ax88796c_set_mac_addr.exit.if.then46_crit_edge

ax88796c_set_mac_addr.exit.if.then46_crit_edge:   ; preds = %ax88796c_set_mac_addr.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

lor.lhs.false:                                    ; preds = %ax88796c_set_mac_addr.exit
  %37 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %advertising, align 4
  %39 = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool45.not = icmp eq i32 %39, 0
  br i1 %tobool45.not, label %lor.lhs.false.if.end48_crit_edge, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then46

lor.lhs.false.if.end48_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %ax88796c_set_mac_addr.exit.if.then46_crit_edge
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %lor.lhs.false.if.end48_crit_edge
  %fc.0 = phi i32 [ 4, %if.then46 ], [ 0, %lor.lhs.false.if.end48_crit_edge ]
  %40 = ptrtoint ptr %advertising to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %advertising, align 4
  %42 = lshr i32 %41, 13
  %.lobit = and i32 %42, 1
  %or54 = or i32 %.lobit, %fc.0
  %43 = load volatile i32, ptr %advertising, align 4
  %shr.i.i131 = lshr i32 %43, 13
  %44 = load volatile i32, ptr %advertising, align 4
  %shr.i.i133 = lshr i32 %44, 14
  %45 = xor i32 %shr.i.i133, %shr.i.i131
  %46 = shl nuw nsw i32 %45, 1
  %47 = and i32 %46, 2
  %or66 = or i32 %or54, %47
  %flowctrl = getelementptr i8, ptr %ndev, i32 2820
  %48 = ptrtoint ptr %flowctrl to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or66, ptr %flowctrl, align 4
  %ndev67 = getelementptr i8, ptr %ndev, i32 2308
  %49 = ptrtoint ptr %ndev67 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev67, align 4
  %phydev68 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 145
  %51 = ptrtoint ptr %phydev68 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phydev68, align 16
  tail call void @phy_start(ptr noundef %52) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %53 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %54, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %rx_msg = getelementptr i8, ptr %ndev, i32 2512
  %55 = getelementptr i8, ptr %ndev, i32 2520
  %56 = call ptr @memset(ptr %55, i32 0, i32 40)
  %57 = ptrtoint ptr %rx_msg to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %rx_msg, ptr %rx_msg, align 4
  %prev.i.i.i = getelementptr i8, ptr %ndev, i32 2516
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %rx_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr i8, ptr %ndev, i32 2560
  %59 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr i8, ptr %ndev, i32 2564
  %60 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then4, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call3, %if.then4 ], [ 0, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_close(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %1) #11
  %spi_lock = getelementptr i8, ptr %ndev, i32 2360
  tail call void @mutex_lock_nested(ptr noundef %spi_lock, i32 noundef 0) #11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %msg_enable = getelementptr i8, ptr %ndev, i32 2784
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88796c_close.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88796c_close, %if.then6)) #11
          to label %do.end9 [label %if.then6], !srcloc !200

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88796c_close.__UNIQUE_ID_ddebug363, ptr noundef %ndev, ptr noundef nonnull @.str.38) #11
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body1, %entry.do.end9_crit_edge
  %flags = getelementptr i8, ptr %ndev, i32 2828
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #11
  %ax_spi = getelementptr i8, ptr %ndev, i32 2508
  %call.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 8, i16 noundef zeroext -1) #11
  %tx_wait_q = getelementptr i8, ptr %ndev, i32 2452
  %6 = ptrtoint ptr %tx_wait_q to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_wait_q, align 4
  %cmp.i.i2.i = icmp eq ptr %7, %tx_wait_q
  %tobool.not.i13.i = icmp eq ptr %7, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %do.end9.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

do.end9.__skb_queue_purge.exit_crit_edge:         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %do.end9
  %qlen.i.i.i = getelementptr i8, ptr %ndev, i32 2460
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %8 = phi ptr [ %7, %while.body.lr.ph.i ], [ %18, %while.body.i.while.body.i_crit_edge ]
  %9 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.44, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %8, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.44, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %14, ptr %prev17.i.i.i, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %12, ptr %14, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %8, i32 noundef 0) #11
  %17 = ptrtoint ptr %tx_wait_q to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tx_wait_q, align 4
  %cmp.i.i.i = icmp eq ptr %18, %tx_wait_q
  %tobool.not.i1.i = icmp eq ptr %18, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %do.end9.__skb_queue_purge.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call13 = tail call fastcc i32 @ax88796c_soft_reset(ptr noundef %add.ptr.i)
  tail call void @mutex_unlock(ptr noundef %spi_lock) #11
  %ax_work = getelementptr i8, ptr %ndev, i32 2316
  %call15 = tail call zeroext i1 @cancel_work_sync(ptr noundef %ax_work) #11
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call16 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %ndev) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_wait_q = getelementptr i8, ptr %ndev, i32 2452
  tail call void @skb_queue_tail(ptr noundef %tx_wait_q, ptr noundef %skb) #11
  %qlen.i = getelementptr i8, ptr %ndev, i32 2460
  %0 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 45, i32 %1)
  %cmp = icmp ugt i32 %1, 45
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr i8, ptr %ndev, i32 2828
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  %ax_work = getelementptr i8, ptr %ndev, i32 2316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %ax_work) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax88796c_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ax88796c_get_stats64(ptr nocapture noundef readonly %ndev, ptr nocapture noundef %stats) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call167 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call167, i32 %0)
  %cmp68 = icmp ult i32 %call167, %0
  br i1 %cmp68, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %stats2 = getelementptr i8, ptr %ndev, i32 2312
  %rx_bytes20 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %tx_packets22 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes24 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %do.end17.for.body_crit_edge, %for.body.lr.ph
  %call173 = phi i32 [ %call167, %for.body.lr.ph ], [ %call1, %do.end17.for.body_crit_edge ]
  %rx_frame_errors.072 = phi i32 [ 0, %for.body.lr.ph ], [ %add31, %do.end17.for.body_crit_edge ]
  %rx_crc_errors.071 = phi i32 [ 0, %for.body.lr.ph ], [ %add33, %do.end17.for.body_crit_edge ]
  %rx_dropped.070 = phi i32 [ 0, %for.body.lr.ph ], [ %add27, %do.end17.for.body_crit_edge ]
  %tx_dropped.069 = phi i32 [ 0, %for.body.lr.ph ], [ %add29, %do.end17.for.body_crit_edge ]
  %1 = ptrtoint ptr %stats2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats2, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call173
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 4
  %dep_map.c48.i.i.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 4, i32 0, i32 1
  %rx_bytes8 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 1
  %tx_packets10 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 2
  %tx_bytes12 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 3
  br label %do.body4

do.body4:                                         ; preds = %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge, %for.body
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !196
  %and.i.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %do.body24.critedge.i.i.i

if.then.i.i.i:                                    ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %8 = tail call ptr @llvm.returnaddress(i32 0) #11
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %9) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i.i

do.body24.critedge.i.i.i:                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call ptr @llvm.returnaddress(i32 0) #11
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #11
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i, i32 noundef %11) #11
  br label %do.body24.i.i.i

do.body24.i.i.i:                                  ; preds = %do.body24.critedge.i.i.i, %if.then.i.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge, !prof !195

do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge: ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i.i

if.then36.i.i.i:                                  ; preds = %do.body24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i.i

seqcount_lockdep_reader_access.exit.i.i:          ; preds = %if.then36.i.i.i, %do.body24.i.i.i.seqcount_lockdep_reader_access.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #11, !srcloc !198
  %13 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %syncp, align 4
  %and18.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool.not19.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool.not19.i.i, label %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  br label %do.end.i.i

seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_fetch_begin_irq.exit

do.end.i.i:                                       ; preds = %do.end.i.i.do.end.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.do.end.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !201
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !202
  %15 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %syncp, align 4
  %and.i.i = and i32 %16, 1
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, label %do.end.i.i.do.end.i.i_crit_edge

do.end.i.i.do.end.i.i_crit_edge:                  ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_fetch_begin_irq.exit

u64_stats_fetch_begin_irq.exit:                   ; preds = %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge
  %.lcssa.i.i = phi i32 [ %14, %seqcount_lockdep_reader_access.exit.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ], [ %16, %do.end.i.i.u64_stats_fetch_begin_irq.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !203
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %6, align 8
  %19 = ptrtoint ptr %rx_bytes8 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %rx_bytes8, align 8
  %21 = ptrtoint ptr %tx_packets10 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tx_packets10, align 8
  %23 = ptrtoint ptr %tx_bytes12 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tx_bytes12, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !204
  %25 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %26, %.lcssa.i.i
  br i1 %cmp.i.i.i.i.not, label %do.end17, label %u64_stats_fetch_begin_irq.exit.do.body4_crit_edge

u64_stats_fetch_begin_irq.exit.do.body4_crit_edge: ; preds = %u64_stats_fetch_begin_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body4

do.end17:                                         ; preds = %u64_stats_fetch_begin_irq.exit
  %27 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %stats, align 8
  %add19 = add i64 %28, %18
  store i64 %add19, ptr %stats, align 8
  %29 = ptrtoint ptr %rx_bytes20 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %rx_bytes20, align 8
  %add21 = add i64 %30, %20
  store i64 %add21, ptr %rx_bytes20, align 8
  %31 = ptrtoint ptr %tx_packets22 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_packets22, align 8
  %add23 = add i64 %32, %22
  store i64 %add23, ptr %tx_packets22, align 8
  %33 = ptrtoint ptr %tx_bytes24 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_bytes24, align 8
  %add25 = add i64 %34, %24
  store i64 %add25, ptr %tx_bytes24, align 8
  %rx_dropped26 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 5
  %35 = ptrtoint ptr %rx_dropped26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_dropped26, align 8
  %add27 = add i32 %36, %rx_dropped.070
  %tx_dropped28 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 6
  %37 = ptrtoint ptr %tx_dropped28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx_dropped28, align 4
  %add29 = add i32 %38, %tx_dropped.069
  %rx_frame_errors30 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 7
  %39 = ptrtoint ptr %rx_frame_errors30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_frame_errors30, align 8
  %add31 = add i32 %40, %rx_frame_errors.072
  %rx_crc_errors32 = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %6, i32 0, i32 8
  %41 = ptrtoint ptr %rx_crc_errors32 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_crc_errors32, align 4
  %add33 = add i32 %42, %rx_crc_errors.071
  %call1 = tail call i32 @cpumask_next(i32 noundef %call173, ptr noundef nonnull @__cpu_possible_mask) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %43 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call1, %43
  br i1 %cmp, label %do.end17.for.body_crit_edge, label %do.end17.for.end_crit_edge

do.end17.for.end_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end17.for.body_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.end17.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_dropped.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add29, %do.end17.for.end_crit_edge ]
  %rx_dropped.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add27, %do.end17.for.end_crit_edge ]
  %rx_crc_errors.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add33, %do.end17.for.end_crit_edge ]
  %rx_frame_errors.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add31, %do.end17.for.end_crit_edge ]
  %conv = zext i32 %rx_dropped.0.lcssa to i64
  %rx_dropped34 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %44 = ptrtoint ptr %rx_dropped34 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv, ptr %rx_dropped34, align 8
  %conv35 = zext i32 %tx_dropped.0.lcssa to i64
  %tx_dropped36 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %45 = ptrtoint ptr %tx_dropped36 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv35, ptr %tx_dropped36, align 8
  %conv37 = zext i32 %rx_frame_errors.0.lcssa to i64
  %rx_frame_errors38 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  %46 = ptrtoint ptr %rx_frame_errors38 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv37, ptr %rx_frame_errors38, align 8
  %conv39 = zext i32 %rx_crc_errors.0.lcssa to i64
  %rx_crc_errors40 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %47 = ptrtoint ptr %rx_crc_errors40 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %conv39, ptr %rx_crc_errors40, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_set_features(ptr noundef %ndev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511627784
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %2 = ptrtoint ptr %features1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %features, ptr %features1, align 16
  tail call fastcc void @ax88796c_set_csums(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ax88796c_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_instance, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %irq) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @disable_irq_nosync(i32 noundef %irq) #11
  %msg_enable = getelementptr i8, ptr %dev_instance, i32 2784
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.do.end17_crit_edge, label %do.body5

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end17

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88796c_interrupt.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88796c_interrupt, %if.then11)) #11
          to label %do.end17 [label %if.then11], !srcloc !200

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88796c_interrupt.__UNIQUE_ID_ddebug362, ptr noundef nonnull %dev_instance, ptr noundef nonnull @.str.36) #11
  br label %do.end17

do.end17:                                         ; preds = %if.then11, %do.body5, %if.end.do.end17_crit_edge
  %flags = getelementptr i8, ptr %dev_instance, i32 2828
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #11
  %ax_work = getelementptr i8, ptr %dev_instance, i32 2316
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %ax_work) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end
  %retval.0 = phi i32 [ 1, %do.end17 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ax88796c_set_csums(ptr noundef %ax_local) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 1
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !195

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 775, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %features, align 16
  %and = and i64 %4, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool25.not = icmp eq i64 %and, 0
  %ax_spi30 = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 6
  %. = select i1 %tobool25.not, i16 0, i16 797
  %5 = lshr exact i64 %and, 31
  %6 = trunc i64 %5 to i16
  %call.i62 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi30, i8 noundef zeroext -110, i16 noundef zeroext %.) #11
  %call.i63 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi30, i8 noundef zeroext -108, i16 noundef zeroext %6) #11
  %7 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features, align 16
  %and36 = and i64 %8, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  %ax_spi44 = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 6
  %.71 = select i1 %tobool37.not, i16 0, i16 775
  %9 = lshr exact i64 %and36, 2
  %10 = trunc i64 %9 to i16
  %call.i66 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi44, i8 noundef zeroext -106, i16 noundef zeroext %.71) #11
  %call.i67 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi44, i8 noundef zeroext -104, i16 noundef zeroext %10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @axspi_read_reg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_write_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ax88796c_process_isr(ptr noundef %ax_local) unnamed_addr #2 align 64 {
entry:
  %pfx.i.i = alloca [23 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev1 = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 1
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !195

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 554, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ax_spi = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 6
  %call.i204 = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi, i8 noundef zeroext 6) #11
  %call.i205 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 6, i16 noundef zeroext %call.i204) #11
  %msg_enable = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 9
  %3 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg_enable, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end.do.end47_crit_edge, label %do.body31

if.end.do.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end47

do.body31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88796c_process_isr, %if.then41)) #11
          to label %do.end47 [label %if.then41], !srcloc !200

if.then41:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %call.i204 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88796c_process_isr.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %conv) #11
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %do.body31, %if.end.do.end47_crit_edge
  %conv48 = zext i16 %call.i204 to i32
  %and49 = and i32 %conv48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.end47.if.end78_crit_edge, label %do.body52

do.end47.if.end78_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

do.body52:                                        ; preds = %do.end47
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and54 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body52.do.end75_crit_edge, label %do.body57

do.body52.do.end75_crit_edge:                     ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75

do.body57:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88796c_process_isr, %if.then69)) #11
          to label %do.end75 [label %if.then69], !srcloc !200

if.then69:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88796c_process_isr.__UNIQUE_ID_ddebug358, ptr noundef %1, ptr noundef nonnull @.str.54) #11
  br label %do.end75

do.end75:                                         ; preds = %if.then69, %do.body57, %do.body52.do.end75_crit_edge
  %call.i206 = tail call i32 @axspi_write_reg(ptr noundef %ax_spi, i8 noundef zeroext 18, i16 noundef zeroext 16384) #11
  %seq_num = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 10
  %7 = ptrtoint ptr %seq_num to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 31, ptr %seq_num, align 4
  br label %if.end78

if.end78:                                         ; preds = %do.end75, %do.end47.if.end78_crit_edge
  %and80 = and i32 %conv48, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.end78.if.end107_crit_edge, label %do.body83

if.end78.if.end107_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

do.body83:                                        ; preds = %if.end78
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and85 = and i32 %9, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body83.do.end106_crit_edge, label %do.body88

do.body83.do.end106_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106

do.body88:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88796c_process_isr, %if.then100)) #11
          to label %do.end106 [label %if.then100], !srcloc !200

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88796c_process_isr.__UNIQUE_ID_ddebug359, ptr noundef %1, ptr noundef nonnull @.str.55) #11
  br label %do.end106

do.end106:                                        ; preds = %if.then100, %do.body88, %do.body83.do.end106_crit_edge
  %flags = getelementptr inbounds %struct.ax88796c_device, ptr %ax_local, i32 0, i32 19
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  br label %if.end107

if.end107:                                        ; preds = %do.end106, %if.end78.if.end107_crit_edge
  %and109 = and i32 %conv48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end137_crit_edge, label %do.body112

if.end107.if.end137_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end137

do.body112:                                       ; preds = %if.end107
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 4
  %and114 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %do.body112.do.end135_crit_edge, label %do.body117

do.body112.do.end135_crit_edge:                   ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end135

do.body117:                                       ; preds = %do.body112
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88796c_process_isr, %if.then129)) #11
          to label %do.end135 [label %if.then129], !srcloc !200

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88796c_process_isr.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.56) #11
  br label %do.end135

do.end135:                                        ; preds = %if.then129, %do.body117, %do.body112.do.end135_crit_edge
  %12 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev1, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 145
  %14 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phydev, align 16
  tail call void @phy_mac_interrupt(ptr noundef %15) #11
  br label %if.end137

if.end137:                                        ; preds = %do.end135, %if.end107.if.end137_crit_edge
  %and139 = and i32 %conv48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end137.if.end168_crit_edge, label %do.body142

if.end137.if.end168_crit_edge:                    ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

do.body142:                                       ; preds = %if.end137
  %16 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable, align 4
  %and144 = and i32 %17, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %do.body142.do.end165_crit_edge, label %do.body147

do.body142.do.end165_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end165

do.body147:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ax88796c_process_isr, %if.then159)) #11
          to label %do.end165 [label %if.then159], !srcloc !200

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ax88796c_process_isr.__UNIQUE_ID_ddebug361, ptr noundef %1, ptr noundef nonnull @.str.57) #11
  br label %do.end165

do.end165:                                        ; preds = %if.then159, %do.body147, %do.body142.do.end165_crit_edge
  %18 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.end165.if.end.i_crit_edge, label %land.rhs.i

do.end165.if.end.i_crit_edge:                     ; preds = %do.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

land.rhs.i:                                       ; preds = %do.end165
  %dep_map.i = getelementptr i8, ptr %19, i32 2424
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !195

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 502, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %do.end165.if.end.i_crit_edge
  %ax_spi.i = getelementptr i8, ptr %19, i32 2508
  %call.i166.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 26) #11
  %21 = or i16 %call.i166.i, -32768
  %call.i167.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 26, i16 noundef zeroext %21) #11
  %call.i168.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 24) #11
  %conv33.i = trunc i16 %call.i168.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv33.i)
  %tobool34.not.i = icmp eq i8 %conv33.i, 0
  br i1 %tobool34.not.i, label %if.end.i.if.end168_crit_edge, label %if.end36.i

if.end.i.if.end168_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.end36.i:                                       ; preds = %if.end.i
  %call.i169.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 28) #11
  %22 = and i16 %call.i169.i, 2047
  %23 = add nuw nsw i16 %22, 5
  %24 = or i16 %23, 3
  %narrow.i = add nuw nsw i16 %24, 1
  %mul.i = zext i16 %narrow.i to i32
  %call.i170.i = tail call ptr @__netdev_alloc_skb(ptr noundef %19, i32 noundef %mul.i, i32 noundef 2592) #11
  %tobool48.not.i = icmp eq ptr %call.i170.i, null
  br i1 %tobool48.not.i, label %if.then49.i, label %if.end103.i

if.then49.i:                                      ; preds = %if.end36.i
  %call.i171.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 22, i16 noundef zeroext 16384) #11
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !196
  %stats.i = getelementptr i8, ptr %19, i32 2312
  %26 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stats.i, align 4
  %rx_dropped.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %rx_dropped.i to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %add72.i = add i32 %34, %28
  %35 = inttoptr i32 %add72.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add73.i = add i32 %37, 1
  store i32 %add73.i, ptr %35, align 4
  %38 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool84.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool84.not.i, label %if.then93.i, label %if.then49.i.do.end96.i_crit_edge, !prof !195

if.then49.i.do.end96.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end96.i

if.then93.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end96.i

do.end96.i:                                       ; preds = %if.then93.i, %if.then49.i.do.end96.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %25) #11, !srcloc !198
  br label %if.end168

if.end103.i:                                      ; preds = %if.end36.i
  %39 = lshr exact i16 %narrow.i, 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 3
  %or106.i = or i16 %39, -32768
  %call.i172.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 22, i16 noundef zeroext %or106.i) #11
  %call112.i = tail call ptr @skb_put(ptr noundef nonnull %call.i170.i, i32 noundef %mul.i) #11
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 6
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  %call113.i = tail call i32 @axspi_read_rxq(ptr noundef %ax_spi.i, ptr noundef %call112.i, i32 noundef %41) #11
  %call.i173.i = tail call zeroext i16 @axspi_read_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 24) #11
  %42 = and i16 %call.i173.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp118.i = icmp eq i16 %42, 0
  br i1 %cmp118.i, label %if.then120.i, label %if.end103.i.if.end135.i_crit_edge

if.end103.i.if.end135.i_crit_edge:                ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135.i

if.then120.i:                                     ; preds = %if.end103.i
  %call121.i = tail call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool122.not.i = icmp eq i32 %call121.i, 0
  br i1 %tobool122.not.i, label %if.then120.i.if.end131.i_crit_edge, label %do.body124.i

if.then120.i.if.end131.i_crit_edge:               ; preds = %if.then120.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

do.body124.i:                                     ; preds = %if.then120.i
  %msg_enable.i = getelementptr i8, ptr %19, i32 2784
  %43 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable.i, align 4
  %and125.i = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  br i1 %tobool126.not.i, label %do.body124.i.if.end131.i_crit_edge, label %if.then127.i

do.body124.i.if.end131.i_crit_edge:               ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end131.i

if.then127.i:                                     ; preds = %do.body124.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.58) #14
  br label %if.end131.i

if.end131.i:                                      ; preds = %if.then127.i, %do.body124.i.if.end131.i_crit_edge, %if.then120.i.if.end131.i_crit_edge
  %call.i174.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 24, i16 noundef zeroext -32768) #11
  br label %if.end135.i

if.end135.i:                                      ; preds = %if.end131.i, %if.end103.i.if.end135.i_crit_edge
  %storemerge.i = phi i32 [ 3, %if.end131.i ], [ 2, %if.end103.i.if.end135.i_crit_edge ]
  %45 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %storemerge.i, ptr %cb.i, align 4
  %call.i175.i = tail call i32 @axspi_write_reg(ptr noundef %ax_spi.i, i8 noundef zeroext 6, i16 noundef zeroext 1) #11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i, align 4
  %ndev1.i.i = getelementptr i8, ptr %19, i32 2308
  %48 = ptrtoint ptr %ndev1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ndev1.i.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %47, align 2
  %conv.i.i = zext i16 %51 to i32
  %and.i176.i = and i32 %conv.i.i, 2047
  %seq_lenbar9.i.i = getelementptr inbounds %struct.rx_header, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %seq_lenbar9.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %seq_lenbar9.i.i, align 2
  %54 = and i16 %53, 2047
  %55 = xor i16 %54, 2047
  %and11.i.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i176.i, i32 %and11.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i176.i, %and11.i.i
  br i1 %cmp.not.i.i, label %if.end61.i.i, label %do.body13.i.i

do.body13.i.i:                                    ; preds = %if.end135.i
  %msg_enable.i.i = getelementptr i8, ptr %19, i32 2784
  %56 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_enable.i.i, align 4
  %and14.i.i = and i32 %57, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool.not.i.i = icmp eq i32 %and14.i.i, 0
  br i1 %tobool.not.i.i, label %do.body13.i.i.do.body19.i.i_crit_edge, label %if.then15.i.i

do.body13.i.i.do.body19.i.i_crit_edge:            ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body19.i.i

if.then15.i.i:                                    ; preds = %do.body13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.59) #14
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %if.then15.i.i, %do.body13.i.i.do.body19.i.i_crit_edge
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !196
  %stats.i.i = getelementptr i8, ptr %19, i32 2312
  %59 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %stats.i.i, align 4
  %rx_frame_errors.i.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %60, i32 0, i32 7
  %61 = ptrtoint ptr %rx_frame_errors.i.i to i32
  %62 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i177.i = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i177.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %65
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %67, %61
  %68 = inttoptr i32 %add.i.i to ptr
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %add36.i.i = add i32 %70, 1
  store i32 %add36.i.i, ptr %68, align 4
  %71 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i.i.i = and i32 %71, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool47.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool47.not.i.i, label %if.then51.i.i, label %do.body19.i.i.do.end54.i.i_crit_edge, !prof !195

do.body19.i.i.do.end54.i.i_crit_edge:             ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end54.i.i

if.then51.i.i:                                    ; preds = %do.body19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end54.i.i

do.end54.i.i:                                     ; preds = %if.then51.i.i, %do.body19.i.i.do.end54.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %58) #11, !srcloc !198
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i170.i, i32 noundef 0) #11
  br label %if.end168

if.end61.i.i:                                     ; preds = %if.end135.i
  %72 = and i32 %conv.i.i, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %73 = icmp eq i32 %72, 0
  %msg_enable143.i.i = getelementptr i8, ptr %19, i32 2784
  %74 = ptrtoint ptr %msg_enable143.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable143.i.i, align 4
  br i1 %73, label %if.end138.i.i, label %do.body71.i.i

do.body71.i.i:                                    ; preds = %if.end61.i.i
  %and73.i.i = and i32 %75, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  br i1 %tobool74.not.i.i, label %do.body71.i.i.do.body80.i.i_crit_edge, label %if.then75.i.i

do.body71.i.i.do.body80.i.i_crit_edge:            ; preds = %do.body71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body80.i.i

if.then75.i.i:                                    ; preds = %do.body71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.60) #14
  br label %do.body80.i.i

do.body80.i.i:                                    ; preds = %if.then75.i.i, %do.body71.i.i.do.body80.i.i_crit_edge
  %76 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !196
  %stats102.i.i = getelementptr i8, ptr %19, i32 2312
  %77 = ptrtoint ptr %stats102.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %stats102.i.i, align 4
  %rx_crc_errors.i.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %rx_crc_errors.i.i to i32
  %80 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i191.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i191.i.i to ptr
  %cpu105.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %cpu105.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cpu105.i.i, align 4
  %arrayidx106.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %83
  %84 = ptrtoint ptr %arrayidx106.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx106.i.i, align 4
  %add107.i.i = add i32 %85, %79
  %86 = inttoptr i32 %add107.i.i to ptr
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %add108.i.i = add i32 %88, 1
  store i32 %add108.i.i, ptr %86, align 4
  %89 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i192.i.i = and i32 %89, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i192.i.i)
  %tobool119.not.i.i = icmp eq i32 %and.i.i192.i.i, 0
  br i1 %tobool119.not.i.i, label %if.then128.i.i, label %do.body80.i.i.do.end131.i.i_crit_edge, !prof !195

do.body80.i.i.do.end131.i.i_crit_edge:            ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end131.i.i

if.then128.i.i:                                   ; preds = %do.body80.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end131.i.i

do.end131.i.i:                                    ; preds = %if.then128.i.i, %do.body80.i.i.do.end131.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %76) #11, !srcloc !198
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i170.i, i32 noundef 0) #11
  br label %if.end168

if.end138.i.i:                                    ; preds = %if.end61.i.i
  %and144.i.i = and i32 %75, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144.i.i)
  %tobool145.not.i.i = icmp eq i32 %and144.i.i, 0
  br i1 %tobool145.not.i.i, label %if.end138.i.i.if.end156.i.i_crit_edge, label %if.then146.i.i

if.end138.i.i.if.end156.i.i_crit_edge:            ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i.i

if.then146.i.i:                                   ; preds = %if.end138.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %pfx.i.i) #11
  %90 = call ptr @memset(ptr %pfx.i.i, i32 255, i32 23)
  %call148.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %pfx.i.i, i32 noundef 23, ptr noundef nonnull @.str.61, ptr noundef %49) #11
  %91 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %49, ptr noundef nonnull @.str.62, i32 noundef %92, i32 noundef %and.i176.i) #14
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %49, ptr noundef nonnull @.str.63) #14
  %93 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull %pfx.i.i, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %94, i32 noundef 6, i1 noundef zeroext false) #11
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %49, ptr noundef nonnull @.str.64) #14
  %95 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i178.i = getelementptr i8, ptr %96, i32 6
  call void @print_hex_dump(ptr noundef nonnull @.str.13, ptr noundef nonnull %pfx.i.i, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr.i178.i, i32 noundef %and.i176.i, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %pfx.i.i) #11
  br label %if.end156.i.i

if.end156.i.i:                                    ; preds = %if.then146.i.i, %if.end138.i.i.if.end156.i.i_crit_edge
  %call157.i.i = call ptr @skb_pull(ptr noundef nonnull %call.i170.i, i32 noundef 6) #11
  %97 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %and.i176.i)
  %cmp.i.i.i = icmp ugt i32 %98, %and.i176.i
  br i1 %cmp.i.i.i, label %cond.true.i.i.i, label %if.end156.i.i.pskb_trim.exit.i.i_crit_edge

if.end156.i.i.pskb_trim.exit.i.i_crit_edge:       ; preds = %if.end156.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pskb_trim.exit.i.i

cond.true.i.i.i:                                  ; preds = %if.end156.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 7
  %99 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i.i.i = icmp eq i32 %100, 0
  br i1 %tobool.not.i.i.i.i, label %__skb_trim.exit.i.i.i.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i.i = call i32 @___pskb_trim(ptr noundef nonnull %call.i170.i, i32 noundef %and.i176.i) #11
  br label %pskb_trim.exit.i.i

__skb_trim.exit.i.i.i.i:                          ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and.i176.i, ptr %len.i, align 4
  %102 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i.i.i = getelementptr i8, ptr %103, i32 %and.i176.i
  %tail.i.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 16
  %104 = ptrtoint ptr %tail.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %add.ptr.i.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i.i, align 8
  br label %pskb_trim.exit.i.i

pskb_trim.exit.i.i:                               ; preds = %__skb_trim.exit.i.i.i.i, %if.then.i.i.i.i, %if.end156.i.i.pskb_trim.exit.i.i_crit_edge
  %105 = ptrtoint ptr %ndev1.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ndev1.i.i, align 4
  %stats2.i.i.i = getelementptr i8, ptr %19, i32 2312
  %107 = ptrtoint ptr %stats2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %stats2.i.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i193.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i193.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %115, %109
  %116 = inttoptr i32 %add.i.i.i to ptr
  %features.i.i.i = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 23
  %117 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %features.i.i.i, align 16
  %and.i194.i.i = and i64 %118, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i194.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i194.i.i, 0
  br i1 %tobool.not.i.i.i, label %pskb_trim.exit.i.i.do.end26.i.i.i_crit_edge, label %if.end.i.i.i

pskb_trim.exit.i.i.do.end26.i.i.i_crit_edge:      ; preds = %pskb_trim.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i.i.i

if.end.i.i.i:                                     ; preds = %pskb_trim.exit.i.i
  %flags5.i.i.i = getelementptr inbounds %struct.rx_header, ptr %47, i32 0, i32 2
  %119 = ptrtoint ptr %flags5.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %flags5.i.i.i, align 2
  %conv.i.i.i = zext i16 %120 to i32
  %121 = and i32 %conv.i.i.i, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %122 = icmp ne i32 %121, 0
  %123 = and i32 %conv.i.i.i, 5120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %124 = icmp eq i32 %123, 0
  %or.cond.i.i.i = or i1 %122, %124
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.do.end26.i.i.i_crit_edge, label %if.then23.i.i.i

if.end.i.i.i.do.end26.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end26.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 15
  %125 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, -1537
  %bf.set.i.i.i = or i16 %bf.clear.i.i.i, 512
  store i16 %bf.set.i.i.i, ptr %ip_summed.i.i.i, align 8
  br label %do.end26.i.i.i

do.end26.i.i.i:                                   ; preds = %if.then23.i.i.i, %if.end.i.i.i.do.end26.i.i.i_crit_edge, %pskb_trim.exit.i.i.do.end26.i.i.i_crit_edge
  %syncp.i.i.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %116, i32 0, i32 4
  %call27.i.i.i = call fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %syncp.i.i.i) #11
  %126 = ptrtoint ptr %116 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %116, align 8
  %inc.i.i.i.i = add i64 %127, 1
  store i64 %inc.i.i.i.i, ptr %116, align 8
  %rx_bytes.i.i.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %116, i32 0, i32 1
  %128 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len.i, align 4
  %conv.i.i.i.i = zext i32 %129 to i64
  %130 = ptrtoint ptr %rx_bytes.i.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %rx_bytes.i.i.i, align 8
  %add.i.i.i.i = add i64 %131, %conv.i.i.i.i
  store i64 %add.i.i.i.i, ptr %rx_bytes.i.i.i, align 8
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.ax88796c_pcpu_stats, ptr %116, i32 0, i32 4, i32 0, i32 1
  %132 = call ptr @llvm.returnaddress(i32 0) #11
  %133 = ptrtoint ptr %132 to i32
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %133) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !199
  %134 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %syncp.i.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %135, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %call27.i.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i195.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i195.i.i, label %if.then8.i.i.i.i, label %do.end26.i.i.i.do.body10.i.i.i.i_crit_edge

do.end26.i.i.i.do.body10.i.i.i.i_crit_edge:       ; preds = %do.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10.i.i.i.i

if.then8.i.i.i.i:                                 ; preds = %do.end26.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @trace_hardirqs_on() #11
  br label %do.body10.i.i.i.i

do.body10.i.i.i.i:                                ; preds = %if.then8.i.i.i.i, %do.end26.i.i.i.do.body10.i.i.i.i_crit_edge
  %136 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !197
  %and.i.i.i.i.i.i = and i32 %136, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool18.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool18.not.i.i.i.i, label %if.then22.i.i.i.i, label %do.body10.i.i.i.i.u64_stats_update_end_irqrestore.exit.i.i.i_crit_edge, !prof !195

do.body10.i.i.i.i.u64_stats_update_end_irqrestore.exit.i.i.i_crit_edge: ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %u64_stats_update_end_irqrestore.exit.i.i.i

if.then22.i.i.i.i:                                ; preds = %do.body10.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @warn_bogus_irq_restore() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i.i

u64_stats_update_end_irqrestore.exit.i.i.i:       ; preds = %if.then22.i.i.i.i, %do.body10.i.i.i.i.u64_stats_update_end_irqrestore.exit.i.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %call27.i.i.i) #11, !srcloc !198
  %137 = getelementptr inbounds %struct.anon.44, ptr %call.i170.i, i32 0, i32 2
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %106, ptr %137, align 8
  %139 = ptrtoint ptr %ndev1.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ndev1.i.i, align 4
  %call30.i.i.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i170.i, ptr noundef %140) #11
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i170.i, i32 0, i32 15, i32 0, i32 18
  %141 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %call30.i.i.i, ptr %protocol.i.i.i, align 8
  %142 = ptrtoint ptr %msg_enable143.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %msg_enable143.i.i, align 4
  %and32.i.i.i = and i32 %143, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %and32.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %u64_stats_update_end_irqrestore.exit.i.i.i.do.end41.i.i.i_crit_edge, label %if.then34.i.i.i

u64_stats_update_end_irqrestore.exit.i.i.i.do.end41.i.i.i_crit_edge: ; preds = %u64_stats_update_end_irqrestore.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end41.i.i.i

if.then34.i.i.i:                                  ; preds = %u64_stats_update_end_irqrestore.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %len.i, align 4
  %add36.i.i.i = add i32 %145, 14
  %conv38.i.i.i = zext i16 %call30.i.i.i to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %106, ptr noundef nonnull @.str.66, i32 noundef %add36.i.i.i, i32 noundef %conv38.i.i.i) #14
  br label %do.end41.i.i.i

do.end41.i.i.i:                                   ; preds = %if.then34.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i.i.do.end41.i.i.i_crit_edge
  %call42.i.i.i = call i32 @netif_rx_ni(ptr noundef nonnull %call.i170.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call42.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end41.i.i.i.if.end168_crit_edge, label %land.lhs.true.i.i.i

do.end41.i.i.i.if.end168_crit_edge:               ; preds = %do.end41.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

land.lhs.true.i.i.i:                              ; preds = %do.end41.i.i.i
  %call44.i.i.i = call i32 @net_ratelimit() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i.i.i)
  %tobool45.not.i.i.i = icmp eq i32 %call44.i.i.i, 0
  br i1 %tobool45.not.i.i.i, label %land.lhs.true.i.i.i.if.end168_crit_edge, label %do.body47.i.i.i

land.lhs.true.i.i.i.if.end168_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

do.body47.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %146 = ptrtoint ptr %msg_enable143.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %msg_enable143.i.i, align 4
  %and49.i.i.i = and i32 %147, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i.i.i)
  %tobool50.not.i.i.i = icmp eq i32 %and49.i.i.i, 0
  br i1 %tobool50.not.i.i.i, label %do.body47.i.i.i.if.end168_crit_edge, label %if.then51.i.i.i

do.body47.i.i.i.if.end168_crit_edge:              ; preds = %do.body47.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then51.i.i.i:                                  ; preds = %do.body47.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %106, ptr noundef nonnull @.str.67, i32 noundef %call42.i.i.i) #14
  br label %if.end168

if.end168:                                        ; preds = %if.then51.i.i.i, %do.body47.i.i.i.if.end168_crit_edge, %land.lhs.true.i.i.i.if.end168_crit_edge, %do.end41.i.i.i.if.end168_crit_edge, %do.end131.i.i, %do.end54.i.i, %do.end96.i, %if.end.i.if.end168_crit_edge, %if.end137.if.end168_crit_edge
  %todo.0 = phi i32 [ 0, %if.end137.if.end168_crit_edge ], [ 0, %do.end96.i ], [ 0, %if.end.i.if.end168_crit_edge ], [ 1, %do.end54.i.i ], [ 1, %do.end131.i.i ], [ 1, %do.end41.i.i.i.if.end168_crit_edge ], [ 1, %land.lhs.true.i.i.i.if.end168_crit_edge ], [ 1, %do.body47.i.i.i.if.end168_crit_edge ], [ 1, %if.then51.i.i.i ]
  ret i32 %todo.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_mac_interrupt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_read_rxq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_update_begin_irqsave(ptr noundef %syncp) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !196
  %and.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %1 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %do.body12.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

do.body12.__seqprop_assert.exit_crit_edge:        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %do.body12
  %2 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %5, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !205
  %6 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, ptrtoint (ptr @lockdep_recursion to i32)
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !206
  %15 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i7.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %18, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool20.not.i = icmp eq i32 %14, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %19 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %23 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i9.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %26, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !207
  %27 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %30, ptrtoint (ptr @hardirqs_enabled to i32)
  %31 = inttoptr i32 %add47.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !208
  %34 = tail call i32 @llvm.read_register.i32(metadata !185) #11
  %and.i.i.i12.i = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %37, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool54.not.i = icmp eq i32 %33, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !209

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.68, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %do.body12.__seqprop_assert.exit_crit_edge
  %38 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %39, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !210
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %40 = tail call ptr @llvm.returnaddress(i32 0) #11
  %41 = ptrtoint ptr %40 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %41) #11
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axspi_write_txq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_unlink(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 86)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !33, !35, !37, !39, !40, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !69, !71, !72, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !157, !159, !161, !163, !165, !167, !169, !171, !172, !174, !176, !178, !179, !180, !181, !183}
!llvm.named.register.sp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__param_msg_enable, !1, !"__param_msg_enable", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_msg_enabletype351, !1, !"__UNIQUE_ID_msg_enabletype351", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_msg_enable352, !4, !"__UNIQUE_ID_msg_enable352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 37, i32 1}
!5 = !{ptr @__initcall__kmod_ax88796c__364_1163_ax88796c_spi_init6, !6, !"__initcall__kmod_ax88796c__364_1163_ax88796c_spi_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1163, i32 1}
!7 = !{ptr @__exitcall_ax88796c_spi_exit, !8, !"__exitcall_ax88796c_spi_exit", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1164, i32 1}
!9 = !{ptr @__UNIQUE_ID_author365, !10, !"__UNIQUE_ID_author365", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1166, i32 1}
!11 = !{ptr @__UNIQUE_ID_description366, !12, !"__UNIQUE_ID_description366", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1167, i32 1}
!13 = !{ptr @__UNIQUE_ID_file367, !14, !"__UNIQUE_ID_file367", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1168, i32 1}
!15 = !{ptr @__UNIQUE_ID_license368, !14, !"__UNIQUE_ID_license368", i1 false, i1 false}
!16 = !{ptr @ax88796c_no_regs_mask, !17, !"ax88796c_no_regs_mask", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 34, i32 15}
!18 = !{ptr @__param_str_msg_enable, !1, !"__param_str_msg_enable", i1 false, i1 false}
!19 = !{ptr @msg_enable, !20, !"msg_enable", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 28, i32 12}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1135, i32 11}
!23 = !{ptr @ax88796c_spi_driver, !24, !"ax88796c_spi_driver", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1133, i32 26}
!25 = !{ptr @asix_id, !26, !"asix_id", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1127, i32 35}
!27 = !{ptr @ax88796c_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 987, i32 3}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ax88796c_probe.__key.2, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 995, i32 2}
!32 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1004, i32 28}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1009, i32 4}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1013, i32 3}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ax88796c_probe._entry, !38, !"_entry", i1 false, i1 false}
!44 = !{ptr @ax88796c_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1018, i32 3}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ax88796c_probe._entry.11, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ax88796c_probe._entry_ptr.14, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1019, i32 3}
!52 = !{ptr @ax88796c_probe._entry.15, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ax88796c_probe._entry_ptr.17, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1046, i32 3}
!58 = !{ptr @ax88796c_probe._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ax88796c_probe._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1058, i32 3}
!62 = !{ptr @ax88796c_probe._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ax88796c_probe._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ax88796c_probe.__key.26, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1071, i32 2}
!66 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1075, i32 40}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1088, i32 3}
!71 = !{ptr @ax88796c_probe._entry.29, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ax88796c_probe._entry_ptr.31, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1092, i32 2}
!75 = distinct !{null, !76, !"comp", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 27, i32 12}
!77 = !{ptr @ax88796c_netdev_ops, !78, !"ax88796c_netdev_ops", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 934, i32 36}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 806, i32 20}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 592, i32 3}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ax88796c_interrupt._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @ax88796c_interrupt._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 599, i32 2}
!88 = !{ptr @ax88796c_interrupt.__UNIQUE_ID_ddebug362, !87, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 898, i32 2}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @ax88796c_close.__UNIQUE_ID_ddebug363, !90, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 950, i32 30}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 952, i32 3}
!97 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @ax88796c_hard_reset._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @ax88796c_hard_reset._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 83, i32 3}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ax88796c_reload_eeprom._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ax88796c_reload_eeprom._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 156, i32 4}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @ax88796c_load_mac_addr._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @ax88796c_load_mac_addr._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 177, i32 4}
!112 = !{ptr @ax88796c_load_mac_addr._entry.46, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @ax88796c_load_mac_addr._entry_ptr.48, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 184, i32 3}
!116 = !{ptr @ax88796c_load_mac_addr._entry.49, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ax88796c_load_mac_addr._entry_ptr.51, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 559, i32 2}
!120 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug357, !119, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 562, i32 3}
!124 = !{ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug358, !123, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 568, i32 3}
!127 = !{ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug359, !126, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 573, i32 3}
!130 = !{ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug360, !129, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 578, i32 3}
!133 = !{ptr @ax88796c_process_isr.__UNIQUE_ID_ddebug361, !132, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 532, i32 4}
!136 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 455, i32 3}
!138 = !{ptr @.str.60, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 464, i32 3}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 475, i32 30}
!142 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 476, i32 21}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 479, i32 21}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 483, i32 21}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!150 = !{ptr @.str.66, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 433, i32 2}
!152 = !{ptr @.str.67, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 438, i32 3}
!154 = distinct !{null, !155, !"__already_done", i1 false, i1 false}
!155 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!156 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 364, i32 4}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 309, i32 21}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 312, i32 21}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 316, i32 21}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 320, i32 21}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 325, i32 21}
!169 = !{ptr @skb_queue_head_init.__key, !170, !"__key", i1 false, i1 false}
!170 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!171 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1112, i32 2}
!174 = !{ptr @ax88796c_dt_ids, !175, !"ax88796c_dt_ids", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1120, i32 34}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 1152, i32 3}
!178 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @ax88796c_spi_init._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @ax88796c_spi_init._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.79, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 33, i32 35}
!183 = distinct !{null, !184, !"no_regs_list", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/asix/ax88796c_main.c", i32 33, i32 20}
!185 = !{!"sp"}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{i64 930228, i64 930289}
!197 = !{i64 932960}
!198 = !{i64 933245}
!199 = !{i64 2150385248}
!200 = !{i64 2149083793, i64 2149083798, i64 2149083811, i64 2149083855, i64 2149083889, i64 2149083910}
!201 = !{i64 2150964135}
!202 = !{i64 2150963977}
!203 = !{i64 2150964305}
!204 = !{i64 2150384598}
!205 = !{i64 2150276850}
!206 = !{i64 2150281784}
!207 = !{i64 2150303502}
!208 = !{i64 2150308396}
!209 = !{!"branch_weights", i32 2000, i32 1}
!210 = !{i64 2150384923}
