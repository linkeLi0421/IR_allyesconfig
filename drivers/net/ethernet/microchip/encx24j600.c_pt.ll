; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/microchip/encx24j600.c_pt.bc'
source_filename = "../drivers/net/ethernet/microchip/encx24j600.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.encx24j600_priv = type { ptr, %struct.mutex, %struct.encx24j600_context, ptr, ptr, %struct.kthread_worker, %struct.kthread_work, %struct.kthread_work, i16, i8, i8, i8, i16, i32, i32 }
%struct.encx24j600_context = type { ptr, ptr, ptr, %struct.mutex, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rsv = type { i16, i16, i32 }
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
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__param_str_debug = internal constant [17 x i8] c"encx24j600.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype341 = internal constant [30 x i8] c"encx24j600.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug342 = internal constant [54 x i8] c"encx24j600.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@__initcall__kmod_encx24j600__355_1125_encx24j600_spi_net_driver_init6 = internal global ptr @encx24j600_spi_net_driver_init, section ".initcall6.init", align 4
@encx24j600_spi_net_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @encx24j600_spi_id_table, ptr @encx24j600_spi_probe, ptr @encx24j600_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr @spi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_encx24j600_spi_net_driver_exit = internal global ptr @encx24j600_spi_net_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description356 = internal constant [50 x i8] c"encx24j600.description=encx24j600 ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author357 = internal constant [53 x i8] c"encx24j600.author=Jon Ringle <jringle@gridpoint.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file358 = internal constant [58 x i8] c"encx24j600.file=drivers/net/ethernet/microchip/encx24j600\00", section ".modinfo", align 1
@__UNIQUE_ID_license359 = internal constant [23 x i8] c"encx24j600.license=GPL\00", section ".modinfo", align 1
@encx24j600_spi_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"encx24j600\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"encx24j600\00", [21 x i8] zeroinitializer }, align 32
@spi_bus_type = external dso_local global %struct.bus_type, align 4
@encx24j600_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @encx24j600_open, ptr @encx24j600_stop, ptr @encx24j600_tx, ptr null, ptr null, ptr null, ptr @encx24j600_set_multicast_list, ptr @encx24j600_set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @encx24j600_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@encx24j600_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"encx24j600: Chip is not detected\0A\00", [62 x i8] zeroinitializer }, align 32
@encx24j600_spi_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&priv->kworker)->lock\00", [41 x i8] zeroinitializer }, align 32
@encx24j600_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @encx24j600_get_drvinfo, ptr @encx24j600_get_regs_len, ptr @encx24j600_get_regs, ptr null, ptr null, ptr @encx24j600_get_msglevel, ptr @encx24j600_set_msglevel, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @encx24j600_get_link_ksettings, ptr @encx24j600_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Error %d initializing card encx24j600 card\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Silicon rev ID: 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MAC address %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"request irq %d failed (ret = %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Packet counter full\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: error %d with cmd %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@__func__.encx24j600_cmd = private unnamed_addr constant [15 x i8] c"encx24j600_cmd\00", align 1
@encx24j600_int_link_handler.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"encx24j600_int_link_handler\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/microchip/encx24j600.c\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"link up\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link down\0A\00", [21 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for autoneg done\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Using parallel detection: %s/%s\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Full\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Half\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: error %d reading %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@__func__.encx24j600_read_phy = private unnamed_addr constant [20 x i8] c"encx24j600_read_phy\00", align 1
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: error %d writing reg %02x=%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@__func__.encx24j600_write_phy = private unnamed_addr constant [21 x i8] c"encx24j600_write_phy\00", align 1
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: error %d updating reg %02x=%04x~%04x\0A\00", [54 x i8] zeroinitializer }, align 32
@__func__.encx24j600_update_reg = private unnamed_addr constant [22 x i8] c"encx24j600_update_reg\00", align 1
@__func__.encx24j600_write_reg = private unnamed_addr constant [21 x i8] c"encx24j600_write_reg\00", align 1
@encx24j600_tx_complete.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.12, ptr @.str.26, i8 0, i8 79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"encx24j600_tx_complete\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TX Done%s\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c": Err\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@__func__.encx24j600_rx_packets = private unnamed_addr constant [22 x i8] c"encx24j600_rx_packets\00", align 1
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX Error %04x\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX packet Len:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@encx24j600_dump_rsv.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.12, ptr @.str.32, i8 0, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"encx24j600_dump_rsv\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s - NextPk: 0x%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@encx24j600_dump_rsv.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.12, ptr @.str.33, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RxOK: %d, DribbleNibble: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@encx24j600_dump_rsv.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.12, ptr @.str.34, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"CRCErr:%d, LenChkErr: %d, LenOutOfRange: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@encx24j600_dump_rsv.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.12, ptr @.str.35, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Multicast: %d, Broadcast: %d, LongDropEvent: %d, CarrierEvent: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@encx24j600_dump_rsv.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.12, ptr @.str.36, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"ControlFrame: %d, PauseFrame: %d, UnknownOp: %d, VLanTagFrame: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@encx24j600_receive_packet._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.encx24j600_receive_packet = private unnamed_addr constant [26 x i8] c"encx24j600_receive_packet\00", align 1
@encx24j600_receive_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.encx24j600_receive_packet, ptr @.str.12, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013RX: OOM: packet dropped\0A\00", [37 x i8] zeroinitializer }, align 32
@encx24j600_receive_packet._entry_ptr = internal global ptr @encx24j600_receive_packet._entry, section ".printk_index", align 4
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@dump_packet.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.12, ptr @.str.41, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dump_packet\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"encx24j600: %s - packet len:%d\0A\00", [32 x i8] zeroinitializer }, align 32
@dump_packet.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.12, ptr @.str.42, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pk data: \00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@encx24j600_set_multicast_list.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.12, ptr @.str.45, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"encx24j600_set_multicast_list\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"promiscuous mode\0A\00", [46 x i8] zeroinitializer }, align 32
@encx24j600_set_multicast_list.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.12, ptr @.str.46, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%smulticast mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"all-\00", [27 x i8] zeroinitializer }, align 32
@encx24j600_set_multicast_list.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.12, ptr @.str.48, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"normal mode\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Hardware must be disabled to set Mac address\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Setting MAC address to %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TX timeout at %ld, latency %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hw is initialized\00", [46 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.12, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016encx24j600: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"encx24j600_dump_config\00", [41 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr = internal global ptr @encx24j600_dump_config._entry, section ".printk_index", align 4
@encx24j600_dump_config._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.12, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 ECON1:   %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.57 = internal global ptr @encx24j600_dump_config._entry.55, section ".printk_index", align 4
@encx24j600_dump_config._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.12, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 ECON2:   %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.60 = internal global ptr @encx24j600_dump_config._entry.58, section ".printk_index", align 4
@encx24j600_dump_config._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.12, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 ERXFCON: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.63 = internal global ptr @encx24j600_dump_config._entry.61, section ".printk_index", align 4
@encx24j600_dump_config._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.12, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 ESTAT:   %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.66 = internal global ptr @encx24j600_dump_config._entry.64, section ".printk_index", align 4
@encx24j600_dump_config._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.54, ptr @.str.12, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 EIR:     %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.69 = internal global ptr @encx24j600_dump_config._entry.67, section ".printk_index", align 4
@encx24j600_dump_config._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.54, ptr @.str.12, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 EIDLED:  %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.72 = internal global ptr @encx24j600_dump_config._entry.70, section ".printk_index", align 4
@encx24j600_dump_config._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.54, ptr @.str.12, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 MACON1:  %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.75 = internal global ptr @encx24j600_dump_config._entry.73, section ".printk_index", align 4
@encx24j600_dump_config._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.54, ptr @.str.12, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 MACON2:  %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.78 = internal global ptr @encx24j600_dump_config._entry.76, section ".printk_index", align 4
@encx24j600_dump_config._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.54, ptr @.str.12, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 MAIPG:   %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.81 = internal global ptr @encx24j600_dump_config._entry.79, section ".printk_index", align 4
@encx24j600_dump_config._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.54, ptr @.str.12, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 MACLCON: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.84 = internal global ptr @encx24j600_dump_config._entry.82, section ".printk_index", align 4
@encx24j600_dump_config._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.54, ptr @.str.12, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 MABBIPG: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.87 = internal global ptr @encx24j600_dump_config._entry.85, section ".printk_index", align 4
@encx24j600_dump_config._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.54, ptr @.str.12, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHCON1:  %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.90 = internal global ptr @encx24j600_dump_config._entry.88, section ".printk_index", align 4
@encx24j600_dump_config._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.54, ptr @.str.12, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHCON2:  %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.93 = internal global ptr @encx24j600_dump_config._entry.91, section ".printk_index", align 4
@encx24j600_dump_config._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.54, ptr @.str.12, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHANA:   %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.96 = internal global ptr @encx24j600_dump_config._entry.94, section ".printk_index", align 4
@encx24j600_dump_config._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.54, ptr @.str.12, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHANLPA: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.99 = internal global ptr @encx24j600_dump_config._entry.97, section ".printk_index", align 4
@encx24j600_dump_config._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.54, ptr @.str.12, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHANE:   %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.102 = internal global ptr @encx24j600_dump_config._entry.100, section ".printk_index", align 4
@encx24j600_dump_config._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.54, ptr @.str.12, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHSTAT1: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.105 = internal global ptr @encx24j600_dump_config._entry.103, section ".printk_index", align 4
@encx24j600_dump_config._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.54, ptr @.str.12, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHSTAT2: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.108 = internal global ptr @encx24j600_dump_config._entry.106, section ".printk_index", align 4
@encx24j600_dump_config._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.54, ptr @.str.12, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016encx24j600 PHSTAT3: %04X\0A\00", [36 x i8] zeroinitializer }, align 32
@encx24j600_dump_config._entry_ptr.111 = internal global ptr @encx24j600_dump_config._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TX Packet Len:%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported link speed setting\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Warning: hw must be disabled to set link mode\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error %d reading reg %02x\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.encx24j600_read_reg = private unnamed_addr constant [20 x i8] c"encx24j600_read_reg\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 16, i64 10, i64 100]
@___asan_gen_.119 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 27, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"encx24j600_spi_net_driver\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1114, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"encx24j600_spi_id_table\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1108, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1116, i32 11 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"encx24j600_netdev_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 987, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1034, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1038, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1047, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [23 x i8] c"encx24j600_ethtool_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 977, i32 33 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1067, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1078, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 1081, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 776, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 423, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 169, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 294, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 276, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 278, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 231, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 239, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 138, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 149, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 127, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 319, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 375, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 76, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 77, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 79, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 82, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 86, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 91, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 336, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 344, i32 15 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 67, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 68, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 814, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 817, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 821, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 733, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 739, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 895, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 649, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 552, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 555, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 556, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 557, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 559, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 560, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 561, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 564, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 565, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 566, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 567, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 569, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 573, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 574, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 575, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 576, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 578, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 579, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 581, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 583, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 833, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 837, i32 15 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 929, i32 25 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 694, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 700, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.441 = private constant [47 x i8] c"../drivers/net/ethernet/microchip/encx24j600.c\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.441, i32 105, i32 3 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @__UNIQUE_ID_author357, ptr @__UNIQUE_ID_debug342, ptr @__UNIQUE_ID_debugtype341, ptr @__UNIQUE_ID_description356, ptr @__UNIQUE_ID_file358, ptr @__UNIQUE_ID_license359, ptr @__exitcall_encx24j600_spi_net_driver_exit, ptr @__initcall__kmod_encx24j600__355_1125_encx24j600_spi_net_driver_init6, ptr @__param_debug, ptr @encx24j600_dump_config._entry, ptr @encx24j600_dump_config._entry.100, ptr @encx24j600_dump_config._entry.103, ptr @encx24j600_dump_config._entry.106, ptr @encx24j600_dump_config._entry.109, ptr @encx24j600_dump_config._entry.55, ptr @encx24j600_dump_config._entry.58, ptr @encx24j600_dump_config._entry.61, ptr @encx24j600_dump_config._entry.64, ptr @encx24j600_dump_config._entry.67, ptr @encx24j600_dump_config._entry.70, ptr @encx24j600_dump_config._entry.73, ptr @encx24j600_dump_config._entry.76, ptr @encx24j600_dump_config._entry.79, ptr @encx24j600_dump_config._entry.82, ptr @encx24j600_dump_config._entry.85, ptr @encx24j600_dump_config._entry.88, ptr @encx24j600_dump_config._entry.91, ptr @encx24j600_dump_config._entry.94, ptr @encx24j600_dump_config._entry.97, ptr @encx24j600_dump_config._entry_ptr, ptr @encx24j600_dump_config._entry_ptr.102, ptr @encx24j600_dump_config._entry_ptr.105, ptr @encx24j600_dump_config._entry_ptr.108, ptr @encx24j600_dump_config._entry_ptr.111, ptr @encx24j600_dump_config._entry_ptr.57, ptr @encx24j600_dump_config._entry_ptr.60, ptr @encx24j600_dump_config._entry_ptr.63, ptr @encx24j600_dump_config._entry_ptr.66, ptr @encx24j600_dump_config._entry_ptr.69, ptr @encx24j600_dump_config._entry_ptr.72, ptr @encx24j600_dump_config._entry_ptr.75, ptr @encx24j600_dump_config._entry_ptr.78, ptr @encx24j600_dump_config._entry_ptr.81, ptr @encx24j600_dump_config._entry_ptr.84, ptr @encx24j600_dump_config._entry_ptr.87, ptr @encx24j600_dump_config._entry_ptr.90, ptr @encx24j600_dump_config._entry_ptr.93, ptr @encx24j600_dump_config._entry_ptr.96, ptr @encx24j600_dump_config._entry_ptr.99, ptr @encx24j600_receive_packet._entry, ptr @encx24j600_receive_packet._entry_ptr, ptr @encx24j600_spi_net_driver_exit, ptr @debug, ptr @encx24j600_spi_net_driver, ptr @encx24j600_spi_id_table, ptr @.str, ptr @encx24j600_netdev_ops, ptr @encx24j600_spi_probe.__key, ptr @.str.1, ptr @.str.2, ptr @encx24j600_spi_probe.__key.3, ptr @.str.4, ptr @encx24j600_ethtool_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @encx24j600_receive_packet._rs, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], section "llvm.metadata"
@0 = internal global [108 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_spi_net_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_spi_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_spi_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_receive_packet._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_receive_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @encx24j600_dump_config._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_spi_net_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @encx24j600_spi_net_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @encx24j600_spi_net_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @encx24j600_spi_net_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val.i49.i = alloca i32, align 4
  %val.i38.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i57.i.i = alloca i32, align 4
  %val.i38.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #10
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 340, i32 noundef 1, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %parent, align 8
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %8)
  %cmp1.i = icmp ugt i32 %8, 31
  br i1 %cmp1.i, label %if.end.netif_msg_init.exit_crit_edge, label %if.end.i

if.end.netif_msg_init.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_msg_init.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp eq i32 %8, 0
  br i1 %cmp2.i, label %if.end.i.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i.netif_msg_init.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %notmask.i = shl nsw i32 -1, %8
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i.netif_msg_init.exit_crit_edge, %if.end.netif_msg_init.exit_crit_edge
  %retval.0.i = phi i32 [ %sub.i, %if.end4.i ], [ 7, %if.end.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 2640
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %retval.0.i, ptr %msg_enable, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %add.ptr.i, align 4
  %full_duplex = getelementptr i8, ptr %call, i32 2631
  %11 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %full_duplex, align 1
  %autoneg = getelementptr i8, ptr %call, i32 2632
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %autoneg, align 4
  %speed = getelementptr i8, ptr %call, i32 2634
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 100, ptr %speed, align 2
  %ctx = getelementptr i8, ptr %call, i32 2400
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spi, ptr %ctx, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %irq7 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %17 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq7, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %18 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @encx24j600_netdev_ops, ptr %netdev_ops, align 8
  %call10 = tail call i32 @devm_regmap_init_encx24j600(ptr noundef %spi, ptr noundef %ctx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body, label %netif_msg_init.exit.out_free_crit_edge

netif_msg_init.exit.out_free_crit_edge:           ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

do.body:                                          ; preds = %netif_msg_init.exit
  %lock = getelementptr i8, ptr %call, i32 2308
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @encx24j600_spi_probe.__key) #10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %regmap.i.i = getelementptr i8, ptr %call, i32 2404
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  tail call void @regcache_cache_bypass(ptr noundef %20, i1 noundef zeroext true) #10
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %do.body
  %timeout.0.i.i = phi i32 [ 10, %do.body ], [ %dec.i.i, %land.rhs.i.i.do.body.i.i_crit_edge ]
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 22, i32 noundef 4660) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.encx24j600_write_reg.exit.i.i_crit_edge, label %do.body.i.i.i, !prof !244

do.body.i.i.encx24j600_write_reg.exit.i.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i
  %25 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable, align 4
  %and.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %do.body.i.i.i.encx24j600_write_reg.exit.i.i_crit_edge, label %if.then5.i.i.i

do.body.i.i.i.encx24j600_write_reg.exit.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i.i

if.then5.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i.i.i, i32 noundef 22, i32 noundef 4660) #13
  br label %encx24j600_write_reg.exit.i.i

encx24j600_write_reg.exit.i.i:                    ; preds = %if.then5.i.i.i, %do.body.i.i.i.encx24j600_write_reg.exit.i.i_crit_edge, %do.body.i.i.encx24j600_write_reg.exit.i.i_crit_edge
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #10
  %29 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val.i.i.i, align 4
  %30 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i.i, align 4
  %call.i33.i.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 22, ptr noundef nonnull %val.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i)
  %tobool.not.i34.i.i = icmp eq i32 %call.i33.i.i, 0
  br i1 %tobool.not.i34.i.i, label %encx24j600_write_reg.exit.i.i.encx24j600_read_reg.exit.i.i_crit_edge, label %do.body.i37.i.i, !prof !244

encx24j600_write_reg.exit.i.i.encx24j600_read_reg.exit.i.i_crit_edge: ; preds = %encx24j600_write_reg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i.i

do.body.i37.i.i:                                  ; preds = %encx24j600_write_reg.exit.i.i
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and.i36.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %and.i36.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.body.i37.i.i.encx24j600_read_reg.exit.i.i_crit_edge, label %if.then4.i.i.i

do.body.i37.i.i.encx24j600_read_reg.exit.i.i_crit_edge: ; preds = %do.body.i37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i.i

if.then4.i.i.i:                                   ; preds = %do.body.i37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i33.i.i, i32 noundef 22) #13
  br label %encx24j600_read_reg.exit.i.i

encx24j600_read_reg.exit.i.i:                     ; preds = %if.then4.i.i.i, %do.body.i37.i.i.encx24j600_read_reg.exit.i.i_crit_edge, %encx24j600_write_reg.exit.i.i.encx24j600_read_reg.exit.i.i_crit_edge
  %34 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i.i.i, align 4
  %conv7.i.i.i = trunc i32 %35 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #10
  call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 4660, i16 %conv7.i.i.i)
  %cmp.not.i.i = icmp eq i16 %conv7.i.i.i, 4660
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %encx24j600_read_reg.exit.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %do.end.thread.i.i, label %land.rhs.i.i.do.body.i.i_crit_edge

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.end.thread.i.i:                                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i, align 4
  call void @regcache_cache_bypass(ptr noundef %37, i1 noundef zeroext false) #10
  br label %do.body17

do.end.i.i:                                       ; preds = %encx24j600_read_reg.exit.i.i
  %38 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i.i, align 4
  call void @regcache_cache_bypass(ptr noundef %39, i1 noundef zeroext false) #10
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %do.end.i.i
  %timeout.2.i.i = phi i32 [ %dec10.i.i, %while.body.i.i ], [ 10, %do.end.i.i ]
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i38.i.i) #10
  %42 = ptrtoint ptr %val.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val.i38.i.i, align 4
  %43 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i, align 4
  %call.i40.i.i = call i32 @regmap_read(ptr noundef %44, i32 noundef 26, ptr noundef nonnull %val.i38.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i.i)
  %tobool.not.i41.i.i = icmp eq i32 %call.i40.i.i, 0
  br i1 %tobool.not.i41.i.i, label %while.cond.i.i.encx24j600_read_reg.exit48.i.i_crit_edge, label %do.body.i45.i.i, !prof !244

while.cond.i.i.encx24j600_read_reg.exit48.i.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit48.i.i

do.body.i45.i.i:                                  ; preds = %while.cond.i.i
  %45 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable, align 4
  %and.i43.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43.i.i)
  %tobool3.not.i44.i.i = icmp eq i32 %and.i43.i.i, 0
  br i1 %tobool3.not.i44.i.i, label %do.body.i45.i.i.encx24j600_read_reg.exit48.i.i_crit_edge, label %if.then4.i46.i.i

do.body.i45.i.i.encx24j600_read_reg.exit48.i.i_crit_edge: ; preds = %do.body.i45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit48.i.i

if.then4.i46.i.i:                                 ; preds = %do.body.i45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %41, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i40.i.i, i32 noundef 26) #13
  br label %encx24j600_read_reg.exit48.i.i

encx24j600_read_reg.exit48.i.i:                   ; preds = %if.then4.i46.i.i, %do.body.i45.i.i.encx24j600_read_reg.exit48.i.i_crit_edge, %while.cond.i.i.encx24j600_read_reg.exit48.i.i_crit_edge
  %47 = ptrtoint ptr %val.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i38.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i38.i.i) #10
  %49 = and i32 %48, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool8.not.i.i = icmp eq i32 %49, 0
  br i1 %tobool8.not.i.i, label %land.rhs9.i.i, label %if.end16.i.i

land.rhs9.i.i:                                    ; preds = %encx24j600_read_reg.exit48.i.i
  %dec10.i.i = add nsw i32 %timeout.2.i.i, -1
  %tobool11.not.i.i = icmp eq i32 %dec10.i.i, 0
  br i1 %tobool11.not.i.i, label %land.rhs9.i.i.do.body17_crit_edge, label %while.body.i.i

land.rhs9.i.i.do.body17_crit_edge:                ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

while.body.i.i:                                   ; preds = %land.rhs9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  br label %while.cond.i.i

if.end16.i.i:                                     ; preds = %encx24j600_read_reg.exit48.i.i
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 4
  %52 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i.i, align 4
  %call.i50.i.i = call i32 @regmap_write(ptr noundef %53, i32 noundef 202, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50.i.i)
  %tobool.not.i51.i.i = icmp eq i32 %call.i50.i.i, 0
  br i1 %tobool.not.i51.i.i, label %if.end16.i.i.encx24j600_cmd.exit.i.i_crit_edge, label %do.body.i55.i.i, !prof !244

if.end16.i.i.encx24j600_cmd.exit.i.i_crit_edge:   ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit.i.i

do.body.i55.i.i:                                  ; preds = %if.end16.i.i
  %54 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %msg_enable, align 4
  %and.i53.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i.i)
  %tobool3.not.i54.i.i = icmp eq i32 %and.i53.i.i, 0
  br i1 %tobool3.not.i54.i.i, label %do.body.i55.i.i.encx24j600_cmd.exit.i.i_crit_edge, label %if.then4.i56.i.i

do.body.i55.i.i.encx24j600_cmd.exit.i.i_crit_edge: ; preds = %do.body.i55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit.i.i

if.then4.i56.i.i:                                 ; preds = %do.body.i55.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i50.i.i, i32 noundef 202) #13
  br label %encx24j600_cmd.exit.i.i

encx24j600_cmd.exit.i.i:                          ; preds = %if.then4.i56.i.i, %do.body.i55.i.i.encx24j600_cmd.exit.i.i_crit_edge, %if.end16.i.i.encx24j600_cmd.exit.i.i_crit_edge
  call void @usleep_range_state(i32 noundef 25, i32 noundef 100, i32 noundef 2) #10
  %56 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i57.i.i) #10
  %58 = ptrtoint ptr %val.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %val.i57.i.i, align 4
  %59 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i.i, align 4
  %call.i59.i.i = call i32 @regmap_read(ptr noundef %60, i32 noundef 22, ptr noundef nonnull %val.i57.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59.i.i)
  %tobool.not.i60.i.i = icmp eq i32 %call.i59.i.i, 0
  br i1 %tobool.not.i60.i.i, label %encx24j600_cmd.exit.i.i.encx24j600_read_reg.exit67.i.i_crit_edge, label %do.body.i64.i.i, !prof !244

encx24j600_cmd.exit.i.i.encx24j600_read_reg.exit67.i.i_crit_edge: ; preds = %encx24j600_cmd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit67.i.i

do.body.i64.i.i:                                  ; preds = %encx24j600_cmd.exit.i.i
  %61 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable, align 4
  %and.i62.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62.i.i)
  %tobool3.not.i63.i.i = icmp eq i32 %and.i62.i.i, 0
  br i1 %tobool3.not.i63.i.i, label %do.body.i64.i.i.encx24j600_read_reg.exit67.i.i_crit_edge, label %if.then4.i65.i.i

do.body.i64.i.i.encx24j600_read_reg.exit67.i.i_crit_edge: ; preds = %do.body.i64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit67.i.i

if.then4.i65.i.i:                                 ; preds = %do.body.i64.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %57, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i59.i.i, i32 noundef 22) #13
  br label %encx24j600_read_reg.exit67.i.i

encx24j600_read_reg.exit67.i.i:                   ; preds = %if.then4.i65.i.i, %do.body.i64.i.i.encx24j600_read_reg.exit67.i.i_crit_edge, %encx24j600_cmd.exit.i.i.encx24j600_read_reg.exit67.i.i_crit_edge
  %63 = ptrtoint ptr %val.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i57.i.i, align 4
  %conv7.i66.i.i = trunc i32 %64 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i57.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv7.i66.i.i)
  %cmp19.not.i.i = icmp eq i16 %conv7.i66.i.i, 0
  br i1 %cmp19.not.i.i, label %if.end24, label %encx24j600_read_reg.exit67.i.i.do.body17_crit_edge

encx24j600_read_reg.exit67.i.i.do.body17_crit_edge: ; preds = %encx24j600_read_reg.exit67.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

do.body17:                                        ; preds = %encx24j600_read_reg.exit67.i.i.do.body17_crit_edge, %land.rhs9.i.i.do.body17_crit_edge, %do.end.thread.i.i
  call void @mutex_unlock(ptr noundef %lock) #10
  %65 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable, align 4
  %and = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body17.out_free_crit_edge, label %if.then20

do.body17.out_free_crit_edge:                     ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_free

if.then20:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.2) #13
  br label %out_free

if.end24:                                         ; preds = %encx24j600_read_reg.exit67.i.i
  call void @usleep_range_state(i32 noundef 256, i32 noundef 1000, i32 noundef 2) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  call fastcc void @encx24j600_hw_init(ptr noundef %add.ptr.i)
  %kworker = getelementptr i8, ptr %call, i32 2516
  call void @__kthread_init_worker(ptr noundef %kworker, ptr noundef nonnull @.str.4, ptr noundef nonnull @encx24j600_spi_probe.__key.3) #10
  %tx_work = getelementptr i8, ptr %call, i32 2588
  %67 = getelementptr i8, ptr %call, i32 2600
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 8)
  store i64 0, ptr %67, align 4
  %69 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %tx_work, ptr %tx_work, align 4
  %prev.i = getelementptr i8, ptr %call, i32 2592
  %70 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %tx_work, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call, i32 2596
  %71 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @encx24j600_tx_proc, ptr %func, align 4
  %setrx_work = getelementptr i8, ptr %call, i32 2608
  %72 = getelementptr i8, ptr %call, i32 2620
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_storeN_noabort(i32 %73, i32 8)
  store i64 0, ptr %72, align 4
  %74 = ptrtoint ptr %setrx_work to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %setrx_work, ptr %setrx_work, align 4
  %prev.i155 = getelementptr i8, ptr %call, i32 2612
  %75 = ptrtoint ptr %prev.i155 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %setrx_work, ptr %prev.i155, align 4
  %func37 = getelementptr i8, ptr %call, i32 2616
  %76 = ptrtoint ptr %func37 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @encx24j600_setrx_proc, ptr %func37, align 4
  %call41 = call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @kthread_worker_fn, ptr noundef %kworker, i32 noundef -1, ptr noundef nonnull @.str) #10
  %cmp.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %kworker_task162 = getelementptr i8, ptr %call, i32 2512
  %77 = ptrtoint ptr %kworker_task162 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call41, ptr %kworker_task162, align 4
  %78 = ptrtoint ptr %call41 to i32
  br label %out_free

if.end51:                                         ; preds = %if.end24
  %call44 = call i32 @wake_up_process(ptr noundef %call41) #10
  %kworker_task = getelementptr i8, ptr %call, i32 2512
  %79 = ptrtoint ptr %kworker_task to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call41, ptr %kworker_task, align 4
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %82 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %val.i.i, align 4
  %83 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %84, i32 noundef 100, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i158 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i158, label %if.end51.encx24j600_read_reg.exit.i_crit_edge, label %do.body.i.i159, !prof !244

if.end51.encx24j600_read_reg.exit.i_crit_edge:    ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i

do.body.i.i159:                                   ; preds = %if.end51
  %85 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %msg_enable, align 4
  %and.i.i = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i159.encx24j600_read_reg.exit.i_crit_edge, label %if.then4.i.i

do.body.i.i159.encx24j600_read_reg.exit.i_crit_edge: ; preds = %do.body.i.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i

if.then4.i.i:                                     ; preds = %do.body.i.i159
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %81, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i.i, i32 noundef 100) #13
  br label %encx24j600_read_reg.exit.i

encx24j600_read_reg.exit.i:                       ; preds = %if.then4.i.i, %do.body.i.i159.encx24j600_read_reg.exit.i_crit_edge, %if.end51.encx24j600_read_reg.exit.i_crit_edge
  %87 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %conv1.i = trunc i32 %88 to i8
  %89 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv1.i, ptr %addr, align 1
  %90 = lshr i32 %88, 8
  %conv4.i = trunc i32 %90 to i8
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv4.i, ptr %0, align 1
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i38.i) #10
  %94 = ptrtoint ptr %val.i38.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %val.i38.i, align 4
  %95 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i.i, align 4
  %call.i40.i = call i32 @regmap_read(ptr noundef %96, i32 noundef 98, ptr noundef nonnull %val.i38.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool.not.i41.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool.not.i41.i, label %encx24j600_read_reg.exit.i.encx24j600_read_reg.exit48.i_crit_edge, label %do.body.i45.i, !prof !244

encx24j600_read_reg.exit.i.encx24j600_read_reg.exit48.i_crit_edge: ; preds = %encx24j600_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit48.i

do.body.i45.i:                                    ; preds = %encx24j600_read_reg.exit.i
  %97 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_enable, align 4
  %and.i43.i = and i32 %98, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43.i)
  %tobool3.not.i44.i = icmp eq i32 %and.i43.i, 0
  br i1 %tobool3.not.i44.i, label %do.body.i45.i.encx24j600_read_reg.exit48.i_crit_edge, label %if.then4.i46.i

do.body.i45.i.encx24j600_read_reg.exit48.i_crit_edge: ; preds = %do.body.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit48.i

if.then4.i46.i:                                   ; preds = %do.body.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %93, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i40.i, i32 noundef 98) #13
  br label %encx24j600_read_reg.exit48.i

encx24j600_read_reg.exit48.i:                     ; preds = %if.then4.i46.i, %do.body.i45.i.encx24j600_read_reg.exit48.i_crit_edge, %encx24j600_read_reg.exit.i.encx24j600_read_reg.exit48.i_crit_edge
  %99 = ptrtoint ptr %val.i38.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val.i38.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i38.i) #10
  %conv9.i = trunc i32 %100 to i8
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv9.i, ptr %1, align 1
  %102 = lshr i32 %100, 8
  %conv14.i = trunc i32 %102 to i8
  %103 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv14.i, ptr %2, align 1
  %104 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i49.i) #10
  %106 = ptrtoint ptr %val.i49.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %val.i49.i, align 4
  %107 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i.i, align 4
  %call.i51.i = call i32 @regmap_read(ptr noundef %108, i32 noundef 96, ptr noundef nonnull %val.i49.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i52.i, label %encx24j600_read_reg.exit48.i.encx24j600_hw_get_macaddr.exit_crit_edge, label %do.body.i56.i, !prof !244

encx24j600_read_reg.exit48.i.encx24j600_hw_get_macaddr.exit_crit_edge: ; preds = %encx24j600_read_reg.exit48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_get_macaddr.exit

do.body.i56.i:                                    ; preds = %encx24j600_read_reg.exit48.i
  %109 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %msg_enable, align 4
  %and.i54.i = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool3.not.i55.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool3.not.i55.i, label %do.body.i56.i.encx24j600_hw_get_macaddr.exit_crit_edge, label %if.then4.i57.i

do.body.i56.i.encx24j600_hw_get_macaddr.exit_crit_edge: ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_get_macaddr.exit

if.then4.i57.i:                                   ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %105, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i51.i, i32 noundef 96) #13
  br label %encx24j600_hw_get_macaddr.exit

encx24j600_hw_get_macaddr.exit:                   ; preds = %if.then4.i57.i, %do.body.i56.i.encx24j600_hw_get_macaddr.exit_crit_edge, %encx24j600_read_reg.exit48.i.encx24j600_hw_get_macaddr.exit_crit_edge
  %111 = ptrtoint ptr %val.i49.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val.i49.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i49.i) #10
  %conv19.i = trunc i32 %112 to i8
  %113 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv19.i, ptr %3, align 1
  %114 = lshr i32 %112, 8
  %conv24.i = trunc i32 %114 to i8
  %115 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv24.i, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef %call, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #10
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %116 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @encx24j600_ethtool_ops, ptr %ethtool_ops, align 16
  %call53 = call i32 @register_netdev(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end66, label %do.body58, !prof !244

do.body58:                                        ; preds = %encx24j600_hw_get_macaddr.exit
  %117 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %msg_enable, align 4
  %and60 = and i32 %118, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  br i1 %tobool61.not, label %do.body58.out_stop_crit_edge, label %if.then62

do.body58.out_stop_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_stop

if.then62:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call, ptr noundef nonnull @.str.5, i32 noundef %call53) #13
  br label %out_stop

if.end66:                                         ; preds = %encx24j600_hw_get_macaddr.exit
  %119 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %121 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %val.i, align 4
  %122 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap.i.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %123, i32 noundef 116, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end66.encx24j600_read_reg.exit_crit_edge, label %do.body.i, !prof !244

if.end66.encx24j600_read_reg.exit_crit_edge:      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

do.body.i:                                        ; preds = %if.end66
  %124 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.encx24j600_read_reg.exit_crit_edge, label %if.then4.i

do.body.i.encx24j600_read_reg.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %120, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i, i32 noundef 116) #13
  br label %encx24j600_read_reg.exit

encx24j600_read_reg.exit:                         ; preds = %if.then4.i, %do.body.i.encx24j600_read_reg.exit_crit_edge, %if.end66.encx24j600_read_reg.exit_crit_edge
  %126 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %128 = and i32 %127, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %128)
  %cmp.not = icmp eq i32 %128, 32
  br i1 %cmp.not, label %do.body72, label %if.then70

if.then70:                                        ; preds = %encx24j600_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %129 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr.i, align 4
  call void @unregister_netdev(ptr noundef %130) #10
  br label %out_stop

do.body72:                                        ; preds = %encx24j600_read_reg.exit
  %131 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msg_enable, align 4
  %and74 = and i32 %132, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %do.body72.do.body83_crit_edge, label %if.then76

do.body72.do.body83_crit_edge:                    ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body83

if.then76:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #12
  %and78 = and i32 %127, 31
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.6, i32 noundef %and78) #13
  br label %do.body83

do.body83:                                        ; preds = %if.then76, %do.body72.do.body83_crit_edge
  %133 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %msg_enable, align 4
  %and85 = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.body83.cleanup_crit_edge, label %if.then87

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then87:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  %135 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %add.ptr.i, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 86
  %137 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %136, ptr noundef nonnull @.str.7, ptr noundef %138) #13
  br label %cleanup

out_stop:                                         ; preds = %if.then70, %if.then62, %do.body58.out_stop_crit_edge
  %ret.0 = phi i32 [ %call53, %if.then62 ], [ %call53, %do.body58.out_stop_crit_edge ], [ -22, %if.then70 ]
  %139 = ptrtoint ptr %kworker_task to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %kworker_task, align 4
  %call94 = call i32 @kthread_stop(ptr noundef %140) #10
  br label %out_free

out_free:                                         ; preds = %out_stop, %if.then48, %if.then20, %do.body17.out_free_crit_edge, %netif_msg_init.exit.out_free_crit_edge
  %ret.1 = phi i32 [ %call10, %netif_msg_init.exit.out_free_crit_edge ], [ %78, %if.then48 ], [ %ret.0, %out_stop ], [ -5, %if.then20 ], [ -5, %do.body17.out_free_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then87, %do.body83.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then87 ], [ 0, %do.body83.cleanup_crit_edge ], [ %ret.1, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @unregister_netdev(ptr noundef %3) #10
  %kworker_task = getelementptr inbounds %struct.encx24j600_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %kworker_task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kworker_task, align 4
  %call1 = tail call i32 @kthread_stop(ptr noundef %5) #10
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @free_netdev(ptr noundef %7) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_init_encx24j600(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_hw_init(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %val.i186.i = alloca i32, align 4
  %val.i175.i = alloca i32, align 4
  %val.i164.i = alloca i32, align 4
  %val.i153.i = alloca i32, align 4
  %val.i142.i = alloca i32, align 4
  %val.i131.i = alloca i32, align 4
  %val.i120.i = alloca i32, align 4
  %val.i111.i = alloca i32, align 4
  %val.i100.i = alloca i32, align 4
  %val.i89.i = alloca i32, align 4
  %val.i78.i = alloca i32, align 4
  %val.i67.i = alloca i32, align 4
  %val.i56.i = alloca i32, align 4
  %val.i45.i = alloca i32, align 4
  %val.i34.i = alloca i32, align 4
  %val.i23.i = alloca i32, align 4
  %val.i12.i = alloca i32, align 4
  %val.i1.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_enabled = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %hw_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hw_enabled, align 2
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %regmap.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 116, i32 noundef 65280, i32 noundef 51968, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %entry.encx24j600_update_reg.exit_crit_edge, label %do.body.i, !prof !244

entry.encx24j600_update_reg.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_update_reg.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %do.body.i.encx24j600_update_reg.exit_crit_edge, label %if.then6.i

do.body.i.encx24j600_update_reg.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_update_reg.exit

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i, i32 noundef 116, i32 noundef 51968, i32 noundef 65280) #13
  br label %encx24j600_update_reg.exit

encx24j600_update_reg.exit:                       ; preds = %if.then6.i, %do.body.i.encx24j600_update_reg.exit_crit_edge, %entry.encx24j600_update_reg.exit_crit_edge
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 64, i32 noundef 9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i27 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i27, label %encx24j600_update_reg.exit.encx24j600_write_reg.exit_crit_edge, label %do.body.i30, !prof !244

encx24j600_update_reg.exit.encx24j600_write_reg.exit_crit_edge: ; preds = %encx24j600_update_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit

do.body.i30:                                      ; preds = %encx24j600_update_reg.exit
  %msg_enable.i28 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %11 = ptrtoint ptr %msg_enable.i28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i28, align 4
  %and.i29 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool4.not.i = icmp eq i32 %and.i29, 0
  br i1 %tobool4.not.i, label %do.body.i30.encx24j600_write_reg.exit_crit_edge, label %if.then5.i

do.body.i30.encx24j600_write_reg.exit_crit_edge:  ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit

if.then5.i:                                       ; preds = %do.body.i30
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i, i32 noundef 64, i32 noundef 9) #13
  br label %encx24j600_write_reg.exit

encx24j600_write_reg.exit:                        ; preds = %if.then5.i, %do.body.i30.encx24j600_write_reg.exit_crit_edge, %encx24j600_update_reg.exit.encx24j600_write_reg.exit_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i32 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 70, i32 noundef 3090) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %encx24j600_write_reg.exit.encx24j600_write_reg.exit39_crit_edge, label %do.body.i37, !prof !244

encx24j600_write_reg.exit.encx24j600_write_reg.exit39_crit_edge: ; preds = %encx24j600_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit39

do.body.i37:                                      ; preds = %encx24j600_write_reg.exit
  %msg_enable.i34 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %17 = ptrtoint ptr %msg_enable.i34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable.i34, align 4
  %and.i35 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i35)
  %tobool4.not.i36 = icmp eq i32 %and.i35, 0
  br i1 %tobool4.not.i36, label %do.body.i37.encx24j600_write_reg.exit39_crit_edge, label %if.then5.i38

do.body.i37.encx24j600_write_reg.exit39_crit_edge: ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit39

if.then5.i38:                                     ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i32, i32 noundef 70, i32 noundef 3090) #13
  br label %encx24j600_write_reg.exit39

encx24j600_write_reg.exit39:                      ; preds = %if.then5.i38, %do.body.i37.encx24j600_write_reg.exit39_crit_edge, %encx24j600_write_reg.exit.encx24j600_write_reg.exit39_crit_edge
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %phymap.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phymap.i, align 4
  %call.i40 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 4, i32 noundef 1505) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool.not.i41 = icmp eq i32 %call.i40, 0
  br i1 %tobool.not.i41, label %encx24j600_write_reg.exit39.encx24j600_write_phy.exit_crit_edge, label %do.body.i45, !prof !244

encx24j600_write_reg.exit39.encx24j600_write_phy.exit_crit_edge: ; preds = %encx24j600_write_reg.exit39
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_phy.exit

do.body.i45:                                      ; preds = %encx24j600_write_reg.exit39
  %msg_enable.i42 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %23 = ptrtoint ptr %msg_enable.i42 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable.i42, align 4
  %and.i43 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool4.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool4.not.i44, label %do.body.i45.encx24j600_write_phy.exit_crit_edge, label %if.then5.i46

do.body.i45.encx24j600_write_phy.exit_crit_edge:  ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_phy.exit

if.then5.i46:                                     ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_phy, i32 noundef %call.i40, i32 noundef 4, i32 noundef 1505) #13
  br label %encx24j600_write_phy.exit

encx24j600_write_phy.exit:                        ; preds = %if.then5.i46, %do.body.i45.encx24j600_write_phy.exit_crit_edge, %encx24j600_write_reg.exit39.encx24j600_write_phy.exit_crit_edge
  tail call fastcc void @encx24j600_update_phcon1(ptr noundef %priv)
  tail call fastcc void @encx24j600_check_link_status(ptr noundef %priv)
  %autoneg = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 11
  %25 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %autoneg, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp = icmp eq i8 %26, 0
  br i1 %cmp, label %land.lhs.true, label %encx24j600_write_phy.exit.if.end_crit_edge

encx24j600_write_phy.exit.if.end_crit_edge:       ; preds = %encx24j600_write_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %encx24j600_write_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %full_duplex = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 10
  %27 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %full_duplex, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not = icmp eq i8 %28, 0
  %spec.select = select i1 %tobool2.not, i32 16562, i32 16563
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %encx24j600_write_phy.exit.if.end_crit_edge
  %macon2.0 = phi i32 [ 16562, %encx24j600_write_phy.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 66, i32 noundef %macon2.0, i32 noundef %macon2.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.encx24j600_set_bits.exit_crit_edge, label %do.body.i.i, !prof !244

if.end.encx24j600_set_bits.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit

do.body.i.i:                                      ; preds = %if.end
  %msg_enable.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %33 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.encx24j600_set_bits.exit_crit_edge, label %if.then6.i.i

do.body.i.i.encx24j600_set_bits.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i, i32 noundef 66, i32 noundef %macon2.0, i32 noundef %macon2.0) #13
  br label %encx24j600_set_bits.exit

encx24j600_set_bits.exit:                         ; preds = %if.then6.i.i, %do.body.i.i.encx24j600_set_bits.exit_crit_edge, %if.end.encx24j600_set_bits.exit_crit_edge
  %rxfilter = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 13
  %35 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %rxfilter, align 4
  tail call fastcc void @encx24j600_set_rxfilter_mode(ptr noundef %priv)
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i, align 4
  %call.i48 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 74, i32 noundef 1518) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %encx24j600_set_bits.exit.encx24j600_write_reg.exit55_crit_edge, label %do.body.i53, !prof !244

encx24j600_set_bits.exit.encx24j600_write_reg.exit55_crit_edge: ; preds = %encx24j600_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit55

do.body.i53:                                      ; preds = %encx24j600_set_bits.exit
  %msg_enable.i50 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %40 = ptrtoint ptr %msg_enable.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable.i50, align 4
  %and.i51 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i51)
  %tobool4.not.i52 = icmp eq i32 %and.i51, 0
  br i1 %tobool4.not.i52, label %do.body.i53.encx24j600_write_reg.exit55_crit_edge, label %if.then5.i54

do.body.i53.encx24j600_write_reg.exit55_crit_edge: ; preds = %do.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit55

if.then5.i54:                                     ; preds = %do.body.i53
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i48, i32 noundef 74, i32 noundef 1518) #13
  br label %encx24j600_write_reg.exit55

encx24j600_write_reg.exit55:                      ; preds = %if.then5.i54, %do.body.i53.encx24j600_write_reg.exit55_crit_edge, %encx24j600_set_bits.exit.encx24j600_write_reg.exit55_crit_edge
  tail call fastcc void @encx24j600_reset_hw_tx(ptr noundef %priv) #10
  %42 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %priv, align 4
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 28, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %encx24j600_write_reg.exit55.encx24j600_clr_bits.exit.i_crit_edge, label %do.body.i.i.i, !prof !244

encx24j600_write_reg.exit55.encx24j600_clr_bits.exit.i_crit_edge: ; preds = %encx24j600_write_reg.exit55
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit.i

do.body.i.i.i:                                    ; preds = %encx24j600_write_reg.exit55
  %msg_enable.i.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %46 = ptrtoint ptr %msg_enable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_enable.i.i.i, align 4
  %and.i.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %do.body.i.i.i.encx24j600_clr_bits.exit.i_crit_edge, label %if.then6.i.i.i

do.body.i.i.i.encx24j600_clr_bits.exit.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit.i

if.then6.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %43, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i.i, i32 noundef 28, i32 noundef 0, i32 noundef 12) #13
  br label %encx24j600_clr_bits.exit.i

encx24j600_clr_bits.exit.i:                       ; preds = %if.then6.i.i.i, %do.body.i.i.i.encx24j600_clr_bits.exit.i_crit_edge, %encx24j600_write_reg.exit55.encx24j600_clr_bits.exit.i_crit_edge
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 4
  %50 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i, align 4
  %call.i.i56 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 136, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i56)
  %tobool.not.i.i57 = icmp eq i32 %call.i.i56, 0
  br i1 %tobool.not.i.i57, label %encx24j600_clr_bits.exit.i.encx24j600_hw_init_tx.exit_crit_edge, label %do.body.i.i60, !prof !244

encx24j600_clr_bits.exit.i.encx24j600_hw_init_tx.exit_crit_edge: ; preds = %encx24j600_clr_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_init_tx.exit

do.body.i.i60:                                    ; preds = %encx24j600_clr_bits.exit.i
  %msg_enable.i.i58 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %52 = ptrtoint ptr %msg_enable.i.i58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_enable.i.i58, align 4
  %and.i.i59 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59)
  %tobool4.not.i.i = icmp eq i32 %and.i.i59, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i60.encx24j600_hw_init_tx.exit_crit_edge, label %if.then5.i.i

do.body.i.i60.encx24j600_hw_init_tx.exit_crit_edge: ; preds = %do.body.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_init_tx.exit

if.then5.i.i:                                     ; preds = %do.body.i.i60
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i.i56, i32 noundef 136, i32 noundef 0) #13
  br label %encx24j600_hw_init_tx.exit

encx24j600_hw_init_tx.exit:                       ; preds = %if.then5.i.i, %do.body.i.i60.encx24j600_hw_init_tx.exit_crit_edge, %encx24j600_clr_bits.exit.i.encx24j600_hw_init_tx.exit_crit_edge
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 4
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %call.i.i62 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 234, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %call.i.i62, 0
  br i1 %tobool.not.i.i63, label %encx24j600_hw_init_tx.exit.encx24j600_cmd.exit.i_crit_edge, label %do.body.i.i66, !prof !244

encx24j600_hw_init_tx.exit.encx24j600_cmd.exit.i_crit_edge: ; preds = %encx24j600_hw_init_tx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit.i

do.body.i.i66:                                    ; preds = %encx24j600_hw_init_tx.exit
  %msg_enable.i.i64 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %58 = ptrtoint ptr %msg_enable.i.i64 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable.i.i64, align 4
  %and.i.i65 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i65)
  %tobool3.not.i.i = icmp eq i32 %and.i.i65, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i66.encx24j600_cmd.exit.i_crit_edge, label %if.then4.i.i

do.body.i.i66.encx24j600_cmd.exit.i_crit_edge:    ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit.i

if.then4.i.i:                                     ; preds = %do.body.i.i66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i.i62, i32 noundef 234) #13
  br label %encx24j600_cmd.exit.i

encx24j600_cmd.exit.i:                            ; preds = %if.then4.i.i, %do.body.i.i66.encx24j600_cmd.exit.i_crit_edge, %encx24j600_hw_init_tx.exit.encx24j600_cmd.exit.i_crit_edge
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 4
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %call.i9.i = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 4, i32 noundef 1536) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool.not.i10.i, label %encx24j600_cmd.exit.i.encx24j600_write_reg.exit.i_crit_edge, label %do.body.i13.i, !prof !244

encx24j600_cmd.exit.i.encx24j600_write_reg.exit.i_crit_edge: ; preds = %encx24j600_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

do.body.i13.i:                                    ; preds = %encx24j600_cmd.exit.i
  %msg_enable.i11.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %64 = ptrtoint ptr %msg_enable.i11.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable.i11.i, align 4
  %and.i12.i = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool4.not.i.i67 = icmp eq i32 %and.i12.i, 0
  br i1 %tobool4.not.i.i67, label %do.body.i13.i.encx24j600_write_reg.exit.i_crit_edge, label %if.then5.i.i68

do.body.i13.i.encx24j600_write_reg.exit.i_crit_edge: ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

if.then5.i.i68:                                   ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i9.i, i32 noundef 4, i32 noundef 1536) #13
  br label %encx24j600_write_reg.exit.i

encx24j600_write_reg.exit.i:                      ; preds = %if.then5.i.i68, %do.body.i13.i.encx24j600_write_reg.exit.i_crit_edge, %encx24j600_cmd.exit.i.encx24j600_write_reg.exit.i_crit_edge
  %66 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %priv, align 4
  %68 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i, align 4
  %call.i15.i = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 138, i32 noundef 1536) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool.not.i16.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool.not.i16.i, label %encx24j600_write_reg.exit.i.encx24j600_write_reg.exit22.i_crit_edge, label %do.body.i20.i, !prof !244

encx24j600_write_reg.exit.i.encx24j600_write_reg.exit22.i_crit_edge: ; preds = %encx24j600_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit22.i

do.body.i20.i:                                    ; preds = %encx24j600_write_reg.exit.i
  %msg_enable.i17.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %70 = ptrtoint ptr %msg_enable.i17.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_enable.i17.i, align 4
  %and.i18.i = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18.i)
  %tobool4.not.i19.i = icmp eq i32 %and.i18.i, 0
  br i1 %tobool4.not.i19.i, label %do.body.i20.i.encx24j600_write_reg.exit22.i_crit_edge, label %if.then5.i21.i

do.body.i20.i.encx24j600_write_reg.exit22.i_crit_edge: ; preds = %do.body.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit22.i

if.then5.i21.i:                                   ; preds = %do.body.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i15.i, i32 noundef 138, i32 noundef 1536) #13
  br label %encx24j600_write_reg.exit22.i

encx24j600_write_reg.exit22.i:                    ; preds = %if.then5.i21.i, %do.body.i20.i.encx24j600_write_reg.exit22.i_crit_edge, %encx24j600_write_reg.exit.i.encx24j600_write_reg.exit22.i_crit_edge
  %next_packet.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 8
  %72 = ptrtoint ptr %next_packet.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 1536, ptr %next_packet.i, align 4
  %73 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv, align 4
  %75 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i, align 4
  %call.i24.i = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 6, i32 noundef 24574) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %encx24j600_write_reg.exit22.i.encx24j600_write_reg.exit31.i_crit_edge, label %do.body.i29.i, !prof !244

encx24j600_write_reg.exit22.i.encx24j600_write_reg.exit31.i_crit_edge: ; preds = %encx24j600_write_reg.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit31.i

do.body.i29.i:                                    ; preds = %encx24j600_write_reg.exit22.i
  %msg_enable.i26.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %77 = ptrtoint ptr %msg_enable.i26.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable.i26.i, align 4
  %and.i27.i = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %tobool4.not.i28.i = icmp eq i32 %and.i27.i, 0
  br i1 %tobool4.not.i28.i, label %do.body.i29.i.encx24j600_write_reg.exit31.i_crit_edge, label %if.then5.i30.i

do.body.i29.i.encx24j600_write_reg.exit31.i_crit_edge: ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit31.i

if.then5.i30.i:                                   ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %74, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i24.i, i32 noundef 6, i32 noundef 24574) #13
  br label %encx24j600_write_reg.exit31.i

encx24j600_write_reg.exit31.i:                    ; preds = %if.then5.i30.i, %do.body.i29.i.encx24j600_write_reg.exit31.i_crit_edge, %encx24j600_write_reg.exit22.i.encx24j600_write_reg.exit31.i_crit_edge
  %79 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %priv, align 4
  %81 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap.i, align 4
  %call.i33.i = tail call i32 @regmap_write(ptr noundef %82, i32 noundef 22, i32 noundef 24576) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool.not.i34.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool.not.i34.i, label %encx24j600_write_reg.exit31.i.encx24j600_write_reg.exit40.i_crit_edge, label %do.body.i38.i, !prof !244

encx24j600_write_reg.exit31.i.encx24j600_write_reg.exit40.i_crit_edge: ; preds = %encx24j600_write_reg.exit31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit40.i

do.body.i38.i:                                    ; preds = %encx24j600_write_reg.exit31.i
  %msg_enable.i35.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %83 = ptrtoint ptr %msg_enable.i35.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %msg_enable.i35.i, align 4
  %and.i36.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool4.not.i37.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool4.not.i37.i, label %do.body.i38.i.encx24j600_write_reg.exit40.i_crit_edge, label %if.then5.i39.i

do.body.i38.i.encx24j600_write_reg.exit40.i_crit_edge: ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit40.i

if.then5.i39.i:                                   ; preds = %do.body.i38.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %80, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i33.i, i32 noundef 22, i32 noundef 24576) #13
  br label %encx24j600_write_reg.exit40.i

encx24j600_write_reg.exit40.i:                    ; preds = %if.then5.i39.i, %do.body.i38.i.encx24j600_write_reg.exit40.i_crit_edge, %encx24j600_write_reg.exit31.i.encx24j600_write_reg.exit40.i_crit_edge
  %85 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %priv, align 4
  %87 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i, align 4
  %call.i42.i = tail call i32 @regmap_write(ptr noundef %88, i32 noundef 24, i32 noundef 24577) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool.not.i43.i, label %encx24j600_write_reg.exit40.i.encx24j600_write_reg.exit49.i_crit_edge, label %do.body.i47.i, !prof !244

encx24j600_write_reg.exit40.i.encx24j600_write_reg.exit49.i_crit_edge: ; preds = %encx24j600_write_reg.exit40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit49.i

do.body.i47.i:                                    ; preds = %encx24j600_write_reg.exit40.i
  %msg_enable.i44.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %89 = ptrtoint ptr %msg_enable.i44.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable.i44.i, align 4
  %and.i45.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45.i)
  %tobool4.not.i46.i = icmp eq i32 %and.i45.i, 0
  br i1 %tobool4.not.i46.i, label %do.body.i47.i.encx24j600_write_reg.exit49.i_crit_edge, label %if.then5.i48.i

do.body.i47.i.encx24j600_write_reg.exit49.i_crit_edge: ; preds = %do.body.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit49.i

if.then5.i48.i:                                   ; preds = %do.body.i47.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i42.i, i32 noundef 24, i32 noundef 24577) #13
  br label %encx24j600_write_reg.exit49.i

encx24j600_write_reg.exit49.i:                    ; preds = %if.then5.i48.i, %do.body.i47.i.encx24j600_write_reg.exit49.i_crit_edge, %encx24j600_write_reg.exit40.i.encx24j600_write_reg.exit49.i_crit_edge
  %91 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %priv, align 4
  %93 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap.i, align 4
  %call.i51.i = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 74, i32 noundef 1518) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i52.i, label %encx24j600_write_reg.exit49.i.encx24j600_hw_init_rx.exit_crit_edge, label %do.body.i56.i, !prof !244

encx24j600_write_reg.exit49.i.encx24j600_hw_init_rx.exit_crit_edge: ; preds = %encx24j600_write_reg.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_init_rx.exit

do.body.i56.i:                                    ; preds = %encx24j600_write_reg.exit49.i
  %msg_enable.i53.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %95 = ptrtoint ptr %msg_enable.i53.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_enable.i53.i, align 4
  %and.i54.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool4.not.i55.i = icmp eq i32 %and.i54.i, 0
  br i1 %tobool4.not.i55.i, label %do.body.i56.i.encx24j600_hw_init_rx.exit_crit_edge, label %if.then5.i57.i

do.body.i56.i.encx24j600_hw_init_rx.exit_crit_edge: ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_init_rx.exit

if.then5.i57.i:                                   ; preds = %do.body.i56.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i51.i, i32 noundef 74, i32 noundef 1518) #13
  br label %encx24j600_hw_init_rx.exit

encx24j600_hw_init_rx.exit:                       ; preds = %if.then5.i57.i, %do.body.i56.i.encx24j600_hw_init_rx.exit_crit_edge, %encx24j600_write_reg.exit49.i.encx24j600_hw_init_rx.exit_crit_edge
  %msg_enable = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %97 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %msg_enable, align 4
  %and = and i32 %98, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %encx24j600_hw_init_rx.exit.if.end8_crit_edge, label %if.then7

encx24j600_hw_init_rx.exit.if.end8_crit_edge:     ; preds = %encx24j600_hw_init_rx.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %encx24j600_hw_init_rx.exit
  %call.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52) #13
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %101 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %val.i.i, align 4
  %102 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap.i, align 4
  %call.i.i71 = call i32 @regmap_read(ptr noundef %103, i32 noundef 30, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool.not.i.i72 = icmp eq i32 %call.i.i71, 0
  br i1 %tobool.not.i.i72, label %if.then7.encx24j600_read_reg.exit.i_crit_edge, label %do.body.i.i76, !prof !244

if.then7.encx24j600_read_reg.exit.i_crit_edge:    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i

do.body.i.i76:                                    ; preds = %if.then7
  %104 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %msg_enable, align 4
  %and.i.i74 = and i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool3.not.i.i75 = icmp eq i32 %and.i.i74, 0
  br i1 %tobool3.not.i.i75, label %do.body.i.i76.encx24j600_read_reg.exit.i_crit_edge, label %if.then4.i.i77

do.body.i.i76.encx24j600_read_reg.exit.i_crit_edge: ; preds = %do.body.i.i76
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i

if.then4.i.i77:                                   ; preds = %do.body.i.i76
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %100, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i.i71, i32 noundef 30) #13
  br label %encx24j600_read_reg.exit.i

encx24j600_read_reg.exit.i:                       ; preds = %if.then4.i.i77, %do.body.i.i76.encx24j600_read_reg.exit.i_crit_edge, %if.then7.encx24j600_read_reg.exit.i_crit_edge
  %106 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %conv.i = and i32 %107, 65535
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv.i) #13
  %108 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i1.i) #10
  %110 = ptrtoint ptr %val.i1.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %val.i1.i, align 4
  %111 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i, align 4
  %call.i3.i = call i32 @regmap_read(ptr noundef %112, i32 noundef 110, ptr noundef nonnull %val.i1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %encx24j600_read_reg.exit.i.encx24j600_read_reg.exit11.i_crit_edge, label %do.body.i8.i, !prof !244

encx24j600_read_reg.exit.i.encx24j600_read_reg.exit11.i_crit_edge: ; preds = %encx24j600_read_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit11.i

do.body.i8.i:                                     ; preds = %encx24j600_read_reg.exit.i
  %113 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %msg_enable, align 4
  %and.i6.i = and i32 %114, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool3.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool3.not.i7.i, label %do.body.i8.i.encx24j600_read_reg.exit11.i_crit_edge, label %if.then4.i9.i

do.body.i8.i.encx24j600_read_reg.exit11.i_crit_edge: ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit11.i

if.then4.i9.i:                                    ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %109, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i3.i, i32 noundef 110) #13
  br label %encx24j600_read_reg.exit11.i

encx24j600_read_reg.exit11.i:                     ; preds = %if.then4.i9.i, %do.body.i8.i.encx24j600_read_reg.exit11.i_crit_edge, %encx24j600_read_reg.exit.i.encx24j600_read_reg.exit11.i_crit_edge
  %115 = ptrtoint ptr %val.i1.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %val.i1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i1.i) #10
  %conv10.i = and i32 %116, 65535
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv10.i) #13
  %117 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i12.i) #10
  %119 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 0, ptr %val.i12.i, align 4
  %120 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap.i, align 4
  %call.i14.i = call i32 @regmap_read(ptr noundef %121, i32 noundef 52, ptr noundef nonnull %val.i12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool.not.i15.i, label %encx24j600_read_reg.exit11.i.encx24j600_read_reg.exit22.i_crit_edge, label %do.body.i19.i, !prof !244

encx24j600_read_reg.exit11.i.encx24j600_read_reg.exit22.i_crit_edge: ; preds = %encx24j600_read_reg.exit11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit22.i

do.body.i19.i:                                    ; preds = %encx24j600_read_reg.exit11.i
  %122 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %msg_enable, align 4
  %and.i17.i = and i32 %123, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool3.not.i18.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool3.not.i18.i, label %do.body.i19.i.encx24j600_read_reg.exit22.i_crit_edge, label %if.then4.i20.i

do.body.i19.i.encx24j600_read_reg.exit22.i_crit_edge: ; preds = %do.body.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit22.i

if.then4.i20.i:                                   ; preds = %do.body.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %118, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i14.i, i32 noundef 52) #13
  br label %encx24j600_read_reg.exit22.i

encx24j600_read_reg.exit22.i:                     ; preds = %if.then4.i20.i, %do.body.i19.i.encx24j600_read_reg.exit22.i_crit_edge, %encx24j600_read_reg.exit11.i.encx24j600_read_reg.exit22.i_crit_edge
  %124 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %val.i12.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i12.i) #10
  %conv16.i = and i32 %125, 65535
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv16.i) #13
  %126 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i23.i) #10
  %128 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %val.i23.i, align 4
  %129 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap.i, align 4
  %call.i25.i = call i32 @regmap_read(ptr noundef %130, i32 noundef 26, ptr noundef nonnull %val.i23.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool.not.i26.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool.not.i26.i, label %encx24j600_read_reg.exit22.i.encx24j600_read_reg.exit33.i_crit_edge, label %do.body.i30.i, !prof !244

encx24j600_read_reg.exit22.i.encx24j600_read_reg.exit33.i_crit_edge: ; preds = %encx24j600_read_reg.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit33.i

do.body.i30.i:                                    ; preds = %encx24j600_read_reg.exit22.i
  %131 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %msg_enable, align 4
  %and.i28.i = and i32 %132, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i28.i)
  %tobool3.not.i29.i = icmp eq i32 %and.i28.i, 0
  br i1 %tobool3.not.i29.i, label %do.body.i30.i.encx24j600_read_reg.exit33.i_crit_edge, label %if.then4.i31.i

do.body.i30.i.encx24j600_read_reg.exit33.i_crit_edge: ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit33.i

if.then4.i31.i:                                   ; preds = %do.body.i30.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %127, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i25.i, i32 noundef 26) #13
  br label %encx24j600_read_reg.exit33.i

encx24j600_read_reg.exit33.i:                     ; preds = %if.then4.i31.i, %do.body.i30.i.encx24j600_read_reg.exit33.i_crit_edge, %encx24j600_read_reg.exit22.i.encx24j600_read_reg.exit33.i_crit_edge
  %133 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %val.i23.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i23.i) #10
  %conv22.i = and i32 %134, 65535
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv22.i) #13
  %135 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i34.i) #10
  %137 = ptrtoint ptr %val.i34.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %val.i34.i, align 4
  %138 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap.i, align 4
  %call.i36.i = call i32 @regmap_read(ptr noundef %139, i32 noundef 28, ptr noundef nonnull %val.i34.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i37.i, label %encx24j600_read_reg.exit33.i.encx24j600_read_reg.exit44.i_crit_edge, label %do.body.i41.i, !prof !244

encx24j600_read_reg.exit33.i.encx24j600_read_reg.exit44.i_crit_edge: ; preds = %encx24j600_read_reg.exit33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit44.i

do.body.i41.i:                                    ; preds = %encx24j600_read_reg.exit33.i
  %140 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %msg_enable, align 4
  %and.i39.i = and i32 %141, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39.i)
  %tobool3.not.i40.i = icmp eq i32 %and.i39.i, 0
  br i1 %tobool3.not.i40.i, label %do.body.i41.i.encx24j600_read_reg.exit44.i_crit_edge, label %if.then4.i42.i

do.body.i41.i.encx24j600_read_reg.exit44.i_crit_edge: ; preds = %do.body.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit44.i

if.then4.i42.i:                                   ; preds = %do.body.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %136, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i36.i, i32 noundef 28) #13
  br label %encx24j600_read_reg.exit44.i

encx24j600_read_reg.exit44.i:                     ; preds = %if.then4.i42.i, %do.body.i41.i.encx24j600_read_reg.exit44.i_crit_edge, %encx24j600_read_reg.exit33.i.encx24j600_read_reg.exit44.i_crit_edge
  %142 = ptrtoint ptr %val.i34.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %val.i34.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i34.i) #10
  %conv28.i = and i32 %143, 65535
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %conv28.i) #13
  %144 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i45.i) #10
  %146 = ptrtoint ptr %val.i45.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %val.i45.i, align 4
  %147 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regmap.i, align 4
  %call.i47.i = call i32 @regmap_read(ptr noundef %148, i32 noundef 116, ptr noundef nonnull %val.i45.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %encx24j600_read_reg.exit44.i.encx24j600_read_reg.exit55.i_crit_edge, label %do.body.i52.i, !prof !244

encx24j600_read_reg.exit44.i.encx24j600_read_reg.exit55.i_crit_edge: ; preds = %encx24j600_read_reg.exit44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit55.i

do.body.i52.i:                                    ; preds = %encx24j600_read_reg.exit44.i
  %149 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %msg_enable, align 4
  %and.i50.i = and i32 %150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50.i)
  %tobool3.not.i51.i = icmp eq i32 %and.i50.i, 0
  br i1 %tobool3.not.i51.i, label %do.body.i52.i.encx24j600_read_reg.exit55.i_crit_edge, label %if.then4.i53.i

do.body.i52.i.encx24j600_read_reg.exit55.i_crit_edge: ; preds = %do.body.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit55.i

if.then4.i53.i:                                   ; preds = %do.body.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %145, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i47.i, i32 noundef 116) #13
  br label %encx24j600_read_reg.exit55.i

encx24j600_read_reg.exit55.i:                     ; preds = %if.then4.i53.i, %do.body.i52.i.encx24j600_read_reg.exit55.i_crit_edge, %encx24j600_read_reg.exit44.i.encx24j600_read_reg.exit55.i_crit_edge
  %151 = ptrtoint ptr %val.i45.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %val.i45.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i45.i) #10
  %conv34.i = and i32 %152, 65535
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %conv34.i) #13
  %153 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i56.i) #10
  %155 = ptrtoint ptr %val.i56.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %val.i56.i, align 4
  %156 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %regmap.i, align 4
  %call.i58.i = call i32 @regmap_read(ptr noundef %157, i32 noundef 64, ptr noundef nonnull %val.i56.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i)
  %tobool.not.i59.i = icmp eq i32 %call.i58.i, 0
  br i1 %tobool.not.i59.i, label %encx24j600_read_reg.exit55.i.encx24j600_read_reg.exit66.i_crit_edge, label %do.body.i63.i, !prof !244

encx24j600_read_reg.exit55.i.encx24j600_read_reg.exit66.i_crit_edge: ; preds = %encx24j600_read_reg.exit55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit66.i

do.body.i63.i:                                    ; preds = %encx24j600_read_reg.exit55.i
  %158 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %msg_enable, align 4
  %and.i61.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool3.not.i62.i = icmp eq i32 %and.i61.i, 0
  br i1 %tobool3.not.i62.i, label %do.body.i63.i.encx24j600_read_reg.exit66.i_crit_edge, label %if.then4.i64.i

do.body.i63.i.encx24j600_read_reg.exit66.i_crit_edge: ; preds = %do.body.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit66.i

if.then4.i64.i:                                   ; preds = %do.body.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %154, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i58.i, i32 noundef 64) #13
  br label %encx24j600_read_reg.exit66.i

encx24j600_read_reg.exit66.i:                     ; preds = %if.then4.i64.i, %do.body.i63.i.encx24j600_read_reg.exit66.i_crit_edge, %encx24j600_read_reg.exit55.i.encx24j600_read_reg.exit66.i_crit_edge
  %160 = ptrtoint ptr %val.i56.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %val.i56.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i56.i) #10
  %conv40.i = and i32 %161, 65535
  %call41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %conv40.i) #13
  %162 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i67.i) #10
  %164 = ptrtoint ptr %val.i67.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %val.i67.i, align 4
  %165 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap.i, align 4
  %call.i69.i = call i32 @regmap_read(ptr noundef %166, i32 noundef 66, ptr noundef nonnull %val.i67.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %tobool.not.i70.i = icmp eq i32 %call.i69.i, 0
  br i1 %tobool.not.i70.i, label %encx24j600_read_reg.exit66.i.encx24j600_read_reg.exit77.i_crit_edge, label %do.body.i74.i, !prof !244

encx24j600_read_reg.exit66.i.encx24j600_read_reg.exit77.i_crit_edge: ; preds = %encx24j600_read_reg.exit66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit77.i

do.body.i74.i:                                    ; preds = %encx24j600_read_reg.exit66.i
  %167 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %msg_enable, align 4
  %and.i72.i = and i32 %168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i72.i)
  %tobool3.not.i73.i = icmp eq i32 %and.i72.i, 0
  br i1 %tobool3.not.i73.i, label %do.body.i74.i.encx24j600_read_reg.exit77.i_crit_edge, label %if.then4.i75.i

do.body.i74.i.encx24j600_read_reg.exit77.i_crit_edge: ; preds = %do.body.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit77.i

if.then4.i75.i:                                   ; preds = %do.body.i74.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %163, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i69.i, i32 noundef 66) #13
  br label %encx24j600_read_reg.exit77.i

encx24j600_read_reg.exit77.i:                     ; preds = %if.then4.i75.i, %do.body.i74.i.encx24j600_read_reg.exit77.i_crit_edge, %encx24j600_read_reg.exit66.i.encx24j600_read_reg.exit77.i_crit_edge
  %169 = ptrtoint ptr %val.i67.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %val.i67.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i67.i) #10
  %conv46.i = and i32 %170, 65535
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %conv46.i) #13
  %171 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i78.i) #10
  %173 = ptrtoint ptr %val.i78.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %val.i78.i, align 4
  %174 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %regmap.i, align 4
  %call.i80.i = call i32 @regmap_read(ptr noundef %175, i32 noundef 70, ptr noundef nonnull %val.i78.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80.i)
  %tobool.not.i81.i = icmp eq i32 %call.i80.i, 0
  br i1 %tobool.not.i81.i, label %encx24j600_read_reg.exit77.i.encx24j600_read_reg.exit88.i_crit_edge, label %do.body.i85.i, !prof !244

encx24j600_read_reg.exit77.i.encx24j600_read_reg.exit88.i_crit_edge: ; preds = %encx24j600_read_reg.exit77.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit88.i

do.body.i85.i:                                    ; preds = %encx24j600_read_reg.exit77.i
  %176 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %msg_enable, align 4
  %and.i83.i = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i83.i)
  %tobool3.not.i84.i = icmp eq i32 %and.i83.i, 0
  br i1 %tobool3.not.i84.i, label %do.body.i85.i.encx24j600_read_reg.exit88.i_crit_edge, label %if.then4.i86.i

do.body.i85.i.encx24j600_read_reg.exit88.i_crit_edge: ; preds = %do.body.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit88.i

if.then4.i86.i:                                   ; preds = %do.body.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %172, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i80.i, i32 noundef 70) #13
  br label %encx24j600_read_reg.exit88.i

encx24j600_read_reg.exit88.i:                     ; preds = %if.then4.i86.i, %do.body.i85.i.encx24j600_read_reg.exit88.i_crit_edge, %encx24j600_read_reg.exit77.i.encx24j600_read_reg.exit88.i_crit_edge
  %178 = ptrtoint ptr %val.i78.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %val.i78.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i78.i) #10
  %conv52.i = and i32 %179, 65535
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %conv52.i) #13
  %180 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i89.i) #10
  %182 = ptrtoint ptr %val.i89.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %val.i89.i, align 4
  %183 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regmap.i, align 4
  %call.i91.i = call i32 @regmap_read(ptr noundef %184, i32 noundef 72, ptr noundef nonnull %val.i89.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool.not.i92.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool.not.i92.i, label %encx24j600_read_reg.exit88.i.encx24j600_read_reg.exit99.i_crit_edge, label %do.body.i96.i, !prof !244

encx24j600_read_reg.exit88.i.encx24j600_read_reg.exit99.i_crit_edge: ; preds = %encx24j600_read_reg.exit88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit99.i

do.body.i96.i:                                    ; preds = %encx24j600_read_reg.exit88.i
  %185 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %msg_enable, align 4
  %and.i94.i = and i32 %186, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i94.i)
  %tobool3.not.i95.i = icmp eq i32 %and.i94.i, 0
  br i1 %tobool3.not.i95.i, label %do.body.i96.i.encx24j600_read_reg.exit99.i_crit_edge, label %if.then4.i97.i

do.body.i96.i.encx24j600_read_reg.exit99.i_crit_edge: ; preds = %do.body.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit99.i

if.then4.i97.i:                                   ; preds = %do.body.i96.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %181, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i91.i, i32 noundef 72) #13
  br label %encx24j600_read_reg.exit99.i

encx24j600_read_reg.exit99.i:                     ; preds = %if.then4.i97.i, %do.body.i96.i.encx24j600_read_reg.exit99.i_crit_edge, %encx24j600_read_reg.exit88.i.encx24j600_read_reg.exit99.i_crit_edge
  %187 = ptrtoint ptr %val.i89.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %val.i89.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i89.i) #10
  %conv58.i = and i32 %188, 65535
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %conv58.i) #13
  %189 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i100.i) #10
  %191 = ptrtoint ptr %val.i100.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %val.i100.i, align 4
  %192 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regmap.i, align 4
  %call.i102.i = call i32 @regmap_read(ptr noundef %193, i32 noundef 68, ptr noundef nonnull %val.i100.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102.i)
  %tobool.not.i103.i = icmp eq i32 %call.i102.i, 0
  br i1 %tobool.not.i103.i, label %encx24j600_read_reg.exit99.i.encx24j600_read_reg.exit110.i_crit_edge, label %do.body.i107.i, !prof !244

encx24j600_read_reg.exit99.i.encx24j600_read_reg.exit110.i_crit_edge: ; preds = %encx24j600_read_reg.exit99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit110.i

do.body.i107.i:                                   ; preds = %encx24j600_read_reg.exit99.i
  %194 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %msg_enable, align 4
  %and.i105.i = and i32 %195, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105.i)
  %tobool3.not.i106.i = icmp eq i32 %and.i105.i, 0
  br i1 %tobool3.not.i106.i, label %do.body.i107.i.encx24j600_read_reg.exit110.i_crit_edge, label %if.then4.i108.i

do.body.i107.i.encx24j600_read_reg.exit110.i_crit_edge: ; preds = %do.body.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit110.i

if.then4.i108.i:                                  ; preds = %do.body.i107.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %190, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i102.i, i32 noundef 68) #13
  br label %encx24j600_read_reg.exit110.i

encx24j600_read_reg.exit110.i:                    ; preds = %if.then4.i108.i, %do.body.i107.i.encx24j600_read_reg.exit110.i_crit_edge, %encx24j600_read_reg.exit99.i.encx24j600_read_reg.exit110.i_crit_edge
  %196 = ptrtoint ptr %val.i100.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %val.i100.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i100.i) #10
  %conv64.i = and i32 %197, 65535
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %conv64.i) #13
  %198 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i111.i) #10
  %200 = ptrtoint ptr %val.i111.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %val.i111.i, align 4
  %201 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %phymap.i, align 4
  %call.i112.i = call i32 @regmap_read(ptr noundef %202, i32 noundef 0, ptr noundef nonnull %val.i111.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112.i)
  %tobool.not.i113.i = icmp eq i32 %call.i112.i, 0
  br i1 %tobool.not.i113.i, label %encx24j600_read_reg.exit110.i.encx24j600_read_phy.exit.i_crit_edge, label %do.body.i117.i, !prof !244

encx24j600_read_reg.exit110.i.encx24j600_read_phy.exit.i_crit_edge: ; preds = %encx24j600_read_reg.exit110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit.i

do.body.i117.i:                                   ; preds = %encx24j600_read_reg.exit110.i
  %203 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %msg_enable, align 4
  %and.i115.i = and i32 %204, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115.i)
  %tobool3.not.i116.i = icmp eq i32 %and.i115.i, 0
  br i1 %tobool3.not.i116.i, label %do.body.i117.i.encx24j600_read_phy.exit.i_crit_edge, label %if.then4.i118.i

do.body.i117.i.encx24j600_read_phy.exit.i_crit_edge: ; preds = %do.body.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit.i

if.then4.i118.i:                                  ; preds = %do.body.i117.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %199, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i112.i, i32 noundef 0) #13
  br label %encx24j600_read_phy.exit.i

encx24j600_read_phy.exit.i:                       ; preds = %if.then4.i118.i, %do.body.i117.i.encx24j600_read_phy.exit.i_crit_edge, %encx24j600_read_reg.exit110.i.encx24j600_read_phy.exit.i_crit_edge
  %205 = ptrtoint ptr %val.i111.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %val.i111.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i111.i) #10
  %conv70.i = and i32 %206, 65535
  %call71.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, i32 noundef %conv70.i) #13
  %207 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i120.i) #10
  %209 = ptrtoint ptr %val.i120.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %val.i120.i, align 4
  %210 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %phymap.i, align 4
  %call.i122.i = call i32 @regmap_read(ptr noundef %211, i32 noundef 17, ptr noundef nonnull %val.i120.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call.i122.i, 0
  br i1 %tobool.not.i123.i, label %encx24j600_read_phy.exit.i.encx24j600_read_phy.exit130.i_crit_edge, label %do.body.i127.i, !prof !244

encx24j600_read_phy.exit.i.encx24j600_read_phy.exit130.i_crit_edge: ; preds = %encx24j600_read_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit130.i

do.body.i127.i:                                   ; preds = %encx24j600_read_phy.exit.i
  %212 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %msg_enable, align 4
  %and.i125.i = and i32 %213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool3.not.i126.i = icmp eq i32 %and.i125.i, 0
  br i1 %tobool3.not.i126.i, label %do.body.i127.i.encx24j600_read_phy.exit130.i_crit_edge, label %if.then4.i128.i

do.body.i127.i.encx24j600_read_phy.exit130.i_crit_edge: ; preds = %do.body.i127.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit130.i

if.then4.i128.i:                                  ; preds = %do.body.i127.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %208, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i122.i, i32 noundef 17) #13
  br label %encx24j600_read_phy.exit130.i

encx24j600_read_phy.exit130.i:                    ; preds = %if.then4.i128.i, %do.body.i127.i.encx24j600_read_phy.exit130.i_crit_edge, %encx24j600_read_phy.exit.i.encx24j600_read_phy.exit130.i_crit_edge
  %214 = ptrtoint ptr %val.i120.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %val.i120.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i120.i) #10
  %conv76.i = and i32 %215, 65535
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, i32 noundef %conv76.i) #13
  %216 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i131.i) #10
  %218 = ptrtoint ptr %val.i131.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 0, ptr %val.i131.i, align 4
  %219 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %phymap.i, align 4
  %call.i133.i = call i32 @regmap_read(ptr noundef %220, i32 noundef 4, ptr noundef nonnull %val.i131.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133.i)
  %tobool.not.i134.i = icmp eq i32 %call.i133.i, 0
  br i1 %tobool.not.i134.i, label %encx24j600_read_phy.exit130.i.encx24j600_read_phy.exit141.i_crit_edge, label %do.body.i138.i, !prof !244

encx24j600_read_phy.exit130.i.encx24j600_read_phy.exit141.i_crit_edge: ; preds = %encx24j600_read_phy.exit130.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit141.i

do.body.i138.i:                                   ; preds = %encx24j600_read_phy.exit130.i
  %221 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %msg_enable, align 4
  %and.i136.i = and i32 %222, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i136.i)
  %tobool3.not.i137.i = icmp eq i32 %and.i136.i, 0
  br i1 %tobool3.not.i137.i, label %do.body.i138.i.encx24j600_read_phy.exit141.i_crit_edge, label %if.then4.i139.i

do.body.i138.i.encx24j600_read_phy.exit141.i_crit_edge: ; preds = %do.body.i138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit141.i

if.then4.i139.i:                                  ; preds = %do.body.i138.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %217, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i133.i, i32 noundef 4) #13
  br label %encx24j600_read_phy.exit141.i

encx24j600_read_phy.exit141.i:                    ; preds = %if.then4.i139.i, %do.body.i138.i.encx24j600_read_phy.exit141.i_crit_edge, %encx24j600_read_phy.exit130.i.encx24j600_read_phy.exit141.i_crit_edge
  %223 = ptrtoint ptr %val.i131.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %val.i131.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i131.i) #10
  %conv82.i = and i32 %224, 65535
  %call83.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, i32 noundef %conv82.i) #13
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i142.i) #10
  %227 = ptrtoint ptr %val.i142.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 0, ptr %val.i142.i, align 4
  %228 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %phymap.i, align 4
  %call.i144.i = call i32 @regmap_read(ptr noundef %229, i32 noundef 5, ptr noundef nonnull %val.i142.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144.i)
  %tobool.not.i145.i = icmp eq i32 %call.i144.i, 0
  br i1 %tobool.not.i145.i, label %encx24j600_read_phy.exit141.i.encx24j600_read_phy.exit152.i_crit_edge, label %do.body.i149.i, !prof !244

encx24j600_read_phy.exit141.i.encx24j600_read_phy.exit152.i_crit_edge: ; preds = %encx24j600_read_phy.exit141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit152.i

do.body.i149.i:                                   ; preds = %encx24j600_read_phy.exit141.i
  %230 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %msg_enable, align 4
  %and.i147.i = and i32 %231, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i147.i)
  %tobool3.not.i148.i = icmp eq i32 %and.i147.i, 0
  br i1 %tobool3.not.i148.i, label %do.body.i149.i.encx24j600_read_phy.exit152.i_crit_edge, label %if.then4.i150.i

do.body.i149.i.encx24j600_read_phy.exit152.i_crit_edge: ; preds = %do.body.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit152.i

if.then4.i150.i:                                  ; preds = %do.body.i149.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %226, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i144.i, i32 noundef 5) #13
  br label %encx24j600_read_phy.exit152.i

encx24j600_read_phy.exit152.i:                    ; preds = %if.then4.i150.i, %do.body.i149.i.encx24j600_read_phy.exit152.i_crit_edge, %encx24j600_read_phy.exit141.i.encx24j600_read_phy.exit152.i_crit_edge
  %232 = ptrtoint ptr %val.i142.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %val.i142.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i142.i) #10
  %conv88.i = and i32 %233, 65535
  %call89.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, i32 noundef %conv88.i) #13
  %234 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i153.i) #10
  %236 = ptrtoint ptr %val.i153.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 0, ptr %val.i153.i, align 4
  %237 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %phymap.i, align 4
  %call.i155.i = call i32 @regmap_read(ptr noundef %238, i32 noundef 6, ptr noundef nonnull %val.i153.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i)
  %tobool.not.i156.i = icmp eq i32 %call.i155.i, 0
  br i1 %tobool.not.i156.i, label %encx24j600_read_phy.exit152.i.encx24j600_read_phy.exit163.i_crit_edge, label %do.body.i160.i, !prof !244

encx24j600_read_phy.exit152.i.encx24j600_read_phy.exit163.i_crit_edge: ; preds = %encx24j600_read_phy.exit152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit163.i

do.body.i160.i:                                   ; preds = %encx24j600_read_phy.exit152.i
  %239 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %msg_enable, align 4
  %and.i158.i = and i32 %240, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158.i)
  %tobool3.not.i159.i = icmp eq i32 %and.i158.i, 0
  br i1 %tobool3.not.i159.i, label %do.body.i160.i.encx24j600_read_phy.exit163.i_crit_edge, label %if.then4.i161.i

do.body.i160.i.encx24j600_read_phy.exit163.i_crit_edge: ; preds = %do.body.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit163.i

if.then4.i161.i:                                  ; preds = %do.body.i160.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %235, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i155.i, i32 noundef 6) #13
  br label %encx24j600_read_phy.exit163.i

encx24j600_read_phy.exit163.i:                    ; preds = %if.then4.i161.i, %do.body.i160.i.encx24j600_read_phy.exit163.i_crit_edge, %encx24j600_read_phy.exit152.i.encx24j600_read_phy.exit163.i_crit_edge
  %241 = ptrtoint ptr %val.i153.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %val.i153.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i153.i) #10
  %conv94.i = and i32 %242, 65535
  %call95.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, i32 noundef %conv94.i) #13
  %243 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i164.i) #10
  %245 = ptrtoint ptr %val.i164.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %val.i164.i, align 4
  %246 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %phymap.i, align 4
  %call.i166.i = call i32 @regmap_read(ptr noundef %247, i32 noundef 1, ptr noundef nonnull %val.i164.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166.i)
  %tobool.not.i167.i = icmp eq i32 %call.i166.i, 0
  br i1 %tobool.not.i167.i, label %encx24j600_read_phy.exit163.i.encx24j600_read_phy.exit174.i_crit_edge, label %do.body.i171.i, !prof !244

encx24j600_read_phy.exit163.i.encx24j600_read_phy.exit174.i_crit_edge: ; preds = %encx24j600_read_phy.exit163.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit174.i

do.body.i171.i:                                   ; preds = %encx24j600_read_phy.exit163.i
  %248 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %msg_enable, align 4
  %and.i169.i = and i32 %249, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i169.i)
  %tobool3.not.i170.i = icmp eq i32 %and.i169.i, 0
  br i1 %tobool3.not.i170.i, label %do.body.i171.i.encx24j600_read_phy.exit174.i_crit_edge, label %if.then4.i172.i

do.body.i171.i.encx24j600_read_phy.exit174.i_crit_edge: ; preds = %do.body.i171.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit174.i

if.then4.i172.i:                                  ; preds = %do.body.i171.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %244, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i166.i, i32 noundef 1) #13
  br label %encx24j600_read_phy.exit174.i

encx24j600_read_phy.exit174.i:                    ; preds = %if.then4.i172.i, %do.body.i171.i.encx24j600_read_phy.exit174.i_crit_edge, %encx24j600_read_phy.exit163.i.encx24j600_read_phy.exit174.i_crit_edge
  %250 = ptrtoint ptr %val.i164.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %val.i164.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i164.i) #10
  %conv100.i = and i32 %251, 65535
  %call101.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %conv100.i) #13
  %252 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i175.i) #10
  %254 = ptrtoint ptr %val.i175.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 0, ptr %val.i175.i, align 4
  %255 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %phymap.i, align 4
  %call.i177.i = call i32 @regmap_read(ptr noundef %256, i32 noundef 27, ptr noundef nonnull %val.i175.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177.i)
  %tobool.not.i178.i = icmp eq i32 %call.i177.i, 0
  br i1 %tobool.not.i178.i, label %encx24j600_read_phy.exit174.i.encx24j600_read_phy.exit185.i_crit_edge, label %do.body.i182.i, !prof !244

encx24j600_read_phy.exit174.i.encx24j600_read_phy.exit185.i_crit_edge: ; preds = %encx24j600_read_phy.exit174.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit185.i

do.body.i182.i:                                   ; preds = %encx24j600_read_phy.exit174.i
  %257 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %msg_enable, align 4
  %and.i180.i = and i32 %258, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180.i)
  %tobool3.not.i181.i = icmp eq i32 %and.i180.i, 0
  br i1 %tobool3.not.i181.i, label %do.body.i182.i.encx24j600_read_phy.exit185.i_crit_edge, label %if.then4.i183.i

do.body.i182.i.encx24j600_read_phy.exit185.i_crit_edge: ; preds = %do.body.i182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit185.i

if.then4.i183.i:                                  ; preds = %do.body.i182.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %253, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i177.i, i32 noundef 27) #13
  br label %encx24j600_read_phy.exit185.i

encx24j600_read_phy.exit185.i:                    ; preds = %if.then4.i183.i, %do.body.i182.i.encx24j600_read_phy.exit185.i_crit_edge, %encx24j600_read_phy.exit174.i.encx24j600_read_phy.exit185.i_crit_edge
  %259 = ptrtoint ptr %val.i175.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %val.i175.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i175.i) #10
  %conv106.i = and i32 %260, 65535
  %call107.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, i32 noundef %conv106.i) #13
  %261 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i186.i) #10
  %263 = ptrtoint ptr %val.i186.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 0, ptr %val.i186.i, align 4
  %264 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %phymap.i, align 4
  %call.i188.i = call i32 @regmap_read(ptr noundef %265, i32 noundef 31, ptr noundef nonnull %val.i186.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188.i)
  %tobool.not.i189.i = icmp eq i32 %call.i188.i, 0
  br i1 %tobool.not.i189.i, label %encx24j600_read_phy.exit185.i.encx24j600_dump_config.exit_crit_edge, label %do.body.i193.i, !prof !244

encx24j600_read_phy.exit185.i.encx24j600_dump_config.exit_crit_edge: ; preds = %encx24j600_read_phy.exit185.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_dump_config.exit

do.body.i193.i:                                   ; preds = %encx24j600_read_phy.exit185.i
  %266 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %msg_enable, align 4
  %and.i191.i = and i32 %267, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i191.i)
  %tobool3.not.i192.i = icmp eq i32 %and.i191.i, 0
  br i1 %tobool3.not.i192.i, label %do.body.i193.i.encx24j600_dump_config.exit_crit_edge, label %if.then4.i194.i

do.body.i193.i.encx24j600_dump_config.exit_crit_edge: ; preds = %do.body.i193.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_dump_config.exit

if.then4.i194.i:                                  ; preds = %do.body.i193.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %262, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i188.i, i32 noundef 31) #13
  br label %encx24j600_dump_config.exit

encx24j600_dump_config.exit:                      ; preds = %if.then4.i194.i, %do.body.i193.i.encx24j600_dump_config.exit_crit_edge, %encx24j600_read_phy.exit185.i.encx24j600_dump_config.exit_crit_edge
  %268 = ptrtoint ptr %val.i186.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %val.i186.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i186.i) #10
  %conv112.i = and i32 %269, 65535
  %call113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, i32 noundef %conv112.i) #13
  br label %if.end8

if.end8:                                          ; preds = %encx24j600_dump_config.exit, %encx24j600_hw_init_rx.exit.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kthread_init_worker(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encx24j600_tx_proc(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -284
  %lock = getelementptr i8, ptr %ws, i32 -280
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  tail call fastcc void @encx24j600_hw_tx(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encx24j600_setrx_proc(ptr noundef %ws) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ws, i32 -304
  %lock = getelementptr i8, ptr %ws, i32 -300
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  tail call fastcc void @encx24j600_set_rxfilter_mode(ptr noundef %add.ptr)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_worker_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %ctx = getelementptr i8, ptr %dev, i32 2400
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef null, ptr noundef nonnull @encx24j600_isr, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end, !prof !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %irq5 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq5, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %7, i32 noundef %call1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %regmap.i.i = getelementptr i8, ptr %dev, i32 2404
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 114, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.encx24j600_write_reg.exit.i_crit_edge, label %do.body.i.i, !prof !244

if.end.encx24j600_write_reg.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

do.body.i.i:                                      ; preds = %if.end
  %msg_enable.i.i = getelementptr i8, ptr %dev, i32 2640
  %12 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.encx24j600_write_reg.exit.i_crit_edge, label %if.then5.i.i

do.body.i.i.encx24j600_write_reg.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i.i, i32 noundef 114, i32 noundef 0) #13
  br label %encx24j600_write_reg.exit.i

encx24j600_write_reg.exit.i:                      ; preds = %if.then5.i.i, %do.body.i.i.encx24j600_write_reg.exit.i_crit_edge, %if.end.encx24j600_write_reg.exit.i_crit_edge
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %call.i4.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 234, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call.i4.i, 0
  br i1 %tobool.not.i5.i, label %encx24j600_write_reg.exit.i.encx24j600_hw_disable.exit_crit_edge, label %do.body.i8.i, !prof !244

encx24j600_write_reg.exit.i.encx24j600_hw_disable.exit_crit_edge: ; preds = %encx24j600_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_disable.exit

do.body.i8.i:                                     ; preds = %encx24j600_write_reg.exit.i
  %msg_enable.i6.i = getelementptr i8, ptr %dev, i32 2640
  %18 = ptrtoint ptr %msg_enable.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable.i6.i, align 4
  %and.i7.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool3.not.i.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i8.i.encx24j600_hw_disable.exit_crit_edge, label %if.then4.i.i

do.body.i8.i.encx24j600_hw_disable.exit_crit_edge: ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_disable.exit

if.then4.i.i:                                     ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i4.i, i32 noundef 234) #13
  br label %encx24j600_hw_disable.exit

encx24j600_hw_disable.exit:                       ; preds = %if.then4.i.i, %do.body.i8.i.encx24j600_hw_disable.exit_crit_edge, %encx24j600_write_reg.exit.i.encx24j600_hw_disable.exit_crit_edge
  %hw_enabled.i = getelementptr i8, ptr %dev, i32 2630
  %20 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %hw_enabled.i, align 2
  tail call fastcc void @encx24j600_hw_init(ptr noundef %add.ptr.i)
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 28, i32 noundef 2127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %encx24j600_hw_disable.exit.encx24j600_clr_bits.exit.i_crit_edge, label %do.body.i.i.i, !prof !244

encx24j600_hw_disable.exit.encx24j600_clr_bits.exit.i_crit_edge: ; preds = %encx24j600_hw_disable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit.i

do.body.i.i.i:                                    ; preds = %encx24j600_hw_disable.exit
  %msg_enable.i.i.i = getelementptr i8, ptr %dev, i32 2640
  %25 = ptrtoint ptr %msg_enable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable.i.i.i, align 4
  %and.i.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %do.body.i.i.i.encx24j600_clr_bits.exit.i_crit_edge, label %if.then6.i.i.i

do.body.i.i.i.encx24j600_clr_bits.exit.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit.i

if.then6.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i.i, i32 noundef 28, i32 noundef 0, i32 noundef 2127) #13
  br label %encx24j600_clr_bits.exit.i

encx24j600_clr_bits.exit.i:                       ; preds = %if.then6.i.i.i, %do.body.i.i.i.encx24j600_clr_bits.exit.i_crit_edge, %encx24j600_hw_disable.exit.encx24j600_clr_bits.exit.i_crit_edge
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 4
  %29 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i16 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 114, i32 noundef 34895) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i16)
  %tobool.not.i.i17 = icmp eq i32 %call.i.i16, 0
  br i1 %tobool.not.i.i17, label %encx24j600_clr_bits.exit.i.encx24j600_write_reg.exit.i23_crit_edge, label %do.body.i.i21, !prof !244

encx24j600_clr_bits.exit.i.encx24j600_write_reg.exit.i23_crit_edge: ; preds = %encx24j600_clr_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i23

do.body.i.i21:                                    ; preds = %encx24j600_clr_bits.exit.i
  %msg_enable.i.i18 = getelementptr i8, ptr %dev, i32 2640
  %31 = ptrtoint ptr %msg_enable.i.i18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i.i18, align 4
  %and.i.i19 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i19)
  %tobool4.not.i.i20 = icmp eq i32 %and.i.i19, 0
  br i1 %tobool4.not.i.i20, label %do.body.i.i21.encx24j600_write_reg.exit.i23_crit_edge, label %if.then5.i.i22

do.body.i.i21.encx24j600_write_reg.exit.i23_crit_edge: ; preds = %do.body.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i23

if.then5.i.i22:                                   ; preds = %do.body.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i.i16, i32 noundef 114, i32 noundef 34895) #13
  br label %encx24j600_write_reg.exit.i23

encx24j600_write_reg.exit.i23:                    ; preds = %if.then5.i.i22, %do.body.i.i21.encx24j600_write_reg.exit.i23_crit_edge, %encx24j600_clr_bits.exit.i.encx24j600_write_reg.exit.i23_crit_edge
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 4
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 4
  %call.i5.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 232, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool.not.i6.i, label %encx24j600_write_reg.exit.i23.encx24j600_hw_enable.exit_crit_edge, label %do.body.i9.i, !prof !244

encx24j600_write_reg.exit.i23.encx24j600_hw_enable.exit_crit_edge: ; preds = %encx24j600_write_reg.exit.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_enable.exit

do.body.i9.i:                                     ; preds = %encx24j600_write_reg.exit.i23
  %msg_enable.i7.i = getelementptr i8, ptr %dev, i32 2640
  %37 = ptrtoint ptr %msg_enable.i7.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable.i7.i, align 4
  %and.i8.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool3.not.i.i24 = icmp eq i32 %and.i8.i, 0
  br i1 %tobool3.not.i.i24, label %do.body.i9.i.encx24j600_hw_enable.exit_crit_edge, label %if.then4.i.i25

do.body.i9.i.encx24j600_hw_enable.exit_crit_edge: ; preds = %do.body.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_hw_enable.exit

if.then4.i.i25:                                   ; preds = %do.body.i9.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i5.i, i32 noundef 232) #13
  br label %encx24j600_hw_enable.exit

encx24j600_hw_enable.exit:                        ; preds = %if.then4.i.i25, %do.body.i9.i.encx24j600_hw_enable.exit_crit_edge, %encx24j600_write_reg.exit.i23.encx24j600_hw_enable.exit_crit_edge
  %39 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %hw_enabled.i, align 2
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %encx24j600_hw_enable.exit, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %encx24j600_hw_enable.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %ctx = getelementptr i8, ptr %dev, i32 2400
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %add.ptr.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_tx(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp.not.i.i = icmp eq i32 %6, %4
  br i1 %cmp.not.i.i, label %entry.netif_trans_update.exit_crit_edge, label %do.body5.i.i

entry.netif_trans_update.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %4, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %entry.netif_trans_update.exit_crit_edge
  %tx_skb = getelementptr i8, ptr %dev, i32 2508
  %8 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %tx_skb, align 4
  %kworker = getelementptr i8, ptr %dev, i32 2516
  %tx_work = getelementptr i8, ptr %dev, i32 2588
  %call1 = tail call zeroext i1 @kthread_queue_work(ptr noundef %kworker, ptr noundef %tx_work) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encx24j600_set_multicast_list(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxfilter = getelementptr i8, ptr %dev, i32 2636
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
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %dev, i32 2640
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.if.end73_crit_edge, label %do.body4

do.body.if.end73_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_set_multicast_list, %if.then9)) #10
          to label %if.end73 [label %if.then9], !srcloc !247

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.45) #10
  br label %if.end73

if.else:                                          ; preds = %entry
  %and15 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.else.do.body18_crit_edge

if.else.do.body18_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

lor.lhs.false:                                    ; preds = %if.else
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %do.body47, label %lor.lhs.false.do.body18_crit_edge

lor.lhs.false.do.body18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body18

do.body18:                                        ; preds = %lor.lhs.false.do.body18_crit_edge, %if.else.do.body18_crit_edge
  %msg_enable19 = getelementptr i8, ptr %dev, i32 2640
  %8 = ptrtoint ptr %msg_enable19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable19, align 4
  %and20 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.body18.if.end73_crit_edge, label %do.body23

do.body18.if.end73_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body23:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_set_multicast_list, %if.then35)) #10
          to label %if.end73 [label %if.then35], !srcloc !247

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and37 = and i32 %11, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %cond = select i1 %tobool38.not, ptr @.str.28, ptr @.str.47
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull %cond) #10
  br label %if.end73

do.body47:                                        ; preds = %lor.lhs.false
  %msg_enable48 = getelementptr i8, ptr %dev, i32 2640
  %12 = ptrtoint ptr %msg_enable48 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable48, align 4
  %and49 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %do.body47.if.end73_crit_edge, label %do.body52

do.body47.if.end73_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.body52:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_set_multicast_list, %if.then64)) #10
          to label %if.end73 [label %if.then64], !srcloc !247

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.48) #10
  br label %if.end73

if.end73:                                         ; preds = %if.then64, %do.body52, %do.body47.if.end73_crit_edge, %if.then35, %do.body23, %do.body18.if.end73_crit_edge, %if.then9, %do.body4, %do.body.if.end73_crit_edge
  %.sink = phi i32 [ 2, %do.body4 ], [ 2, %if.then9 ], [ 2, %do.body.if.end73_crit_edge ], [ 1, %do.body23 ], [ 1, %if.then35 ], [ 1, %do.body18.if.end73_crit_edge ], [ 0, %do.body52 ], [ 0, %if.then64 ], [ 0, %do.body47.if.end73_crit_edge ]
  %14 = ptrtoint ptr %rxfilter to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %rxfilter, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %.sink)
  %cmp75.not = icmp eq i32 %1, %.sink
  br i1 %cmp75.not, label %if.end73.if.end78_crit_edge, label %if.then76

if.end73.if.end78_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

if.then76:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %kworker = getelementptr i8, ptr %dev, i32 2516
  %setrx_work = getelementptr i8, ptr %dev, i32 2608
  %call77 = tail call zeroext i1 @kthread_queue_work(ptr noundef %kworker, ptr noundef %setrx_work) #10
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end73.if.end78_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_set_mac_address(ptr noundef %dev, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %is_valid_ether_addr.exit
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #10
  %add.ptr.i.i10 = getelementptr i8, ptr %dev, i32 2304
  %hw_enabled.i = getelementptr i8, ptr %dev, i32 2630
  %7 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hw_enabled.i, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end3.i, label %do.body.i

do.body.i:                                        ; preds = %if.end3
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2640
  %9 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.49) #13
  br label %cleanup

if.end3.i:                                        ; preds = %if.end3
  %lock.i = getelementptr i8, ptr %dev, i32 2308
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %msg_enable5.i = getelementptr i8, ptr %dev, i32 2640
  %11 = ptrtoint ptr %msg_enable5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable5.i, align 4
  %and6.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end3.i.do.end11.i_crit_edge, label %if.then8.i

if.end3.i.do.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11.i

if.then8.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %13 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_addr.i, align 64
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef %dev, ptr noundef %14) #13
  br label %do.end11.i

do.end11.i:                                       ; preds = %if.then8.i, %if.end3.i.do.end11.i_crit_edge
  %dev_addr12.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %15 = ptrtoint ptr %dev_addr12.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr12.i, align 64
  %arrayidx.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %18 to i32
  %arrayidx14.i = getelementptr i8, ptr %16, i32 5
  %19 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %20 to i32
  %shl.i = shl nuw nsw i32 %conv15.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %21 = ptrtoint ptr %add.ptr.i.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i.i10, align 4
  %regmap.i.i = getelementptr i8, ptr %dev, i32 2404
  %23 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 96, i32 noundef %or.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %do.end11.i.encx24j600_write_reg.exit.i_crit_edge, label %do.body.i.i, !prof !244

do.end11.i.encx24j600_write_reg.exit.i_crit_edge: ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

do.body.i.i:                                      ; preds = %do.end11.i
  %25 = ptrtoint ptr %msg_enable5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable5.i, align 4
  %and.i.i = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool4.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i.encx24j600_write_reg.exit.i_crit_edge, label %if.then5.i.i

do.body.i.i.encx24j600_write_reg.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i.i, i32 noundef 96, i32 noundef %or.i) #13
  br label %encx24j600_write_reg.exit.i

encx24j600_write_reg.exit.i:                      ; preds = %if.then5.i.i, %do.body.i.i.encx24j600_write_reg.exit.i_crit_edge, %do.end11.i.encx24j600_write_reg.exit.i_crit_edge
  %27 = ptrtoint ptr %dev_addr12.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr12.i, align 64
  %arrayidx18.i = getelementptr i8, ptr %28, i32 2
  %29 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %30 to i32
  %arrayidx21.i = getelementptr i8, ptr %28, i32 3
  %31 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %32 to i32
  %shl23.i = shl nuw nsw i32 %conv22.i, 8
  %or24.i = or i32 %shl23.i, %conv19.i
  %33 = ptrtoint ptr %add.ptr.i.i10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i.i10, align 4
  %35 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i, align 4
  %call.i55.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 98, i32 noundef %or24.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i)
  %tobool.not.i56.i = icmp eq i32 %call.i55.i, 0
  br i1 %tobool.not.i56.i, label %encx24j600_write_reg.exit.i.encx24j600_write_reg.exit62.i_crit_edge, label %do.body.i60.i, !prof !244

encx24j600_write_reg.exit.i.encx24j600_write_reg.exit62.i_crit_edge: ; preds = %encx24j600_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit62.i

do.body.i60.i:                                    ; preds = %encx24j600_write_reg.exit.i
  %37 = ptrtoint ptr %msg_enable5.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable5.i, align 4
  %and.i58.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i58.i)
  %tobool4.not.i59.i = icmp eq i32 %and.i58.i, 0
  br i1 %tobool4.not.i59.i, label %do.body.i60.i.encx24j600_write_reg.exit62.i_crit_edge, label %if.then5.i61.i

do.body.i60.i.encx24j600_write_reg.exit62.i_crit_edge: ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit62.i

if.then5.i61.i:                                   ; preds = %do.body.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i55.i, i32 noundef 98, i32 noundef %or24.i) #13
  br label %encx24j600_write_reg.exit62.i

encx24j600_write_reg.exit62.i:                    ; preds = %if.then5.i61.i, %do.body.i60.i.encx24j600_write_reg.exit62.i_crit_edge, %encx24j600_write_reg.exit.i.encx24j600_write_reg.exit62.i_crit_edge
  %39 = ptrtoint ptr %dev_addr12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_addr12.i, align 64
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv28.i = zext i8 %42 to i32
  %arrayidx30.i = getelementptr i8, ptr %40, i32 1
  %43 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx30.i, align 1
  %conv31.i = zext i8 %44 to i32
  %shl32.i = shl nuw nsw i32 %conv31.i, 8
  %or33.i = or i32 %shl32.i, %conv28.i
  %45 = ptrtoint ptr %add.ptr.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i.i10, align 4
  %47 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i.i, align 4
  %call.i65.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 100, i32 noundef %or33.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65.i)
  %tobool.not.i66.i = icmp eq i32 %call.i65.i, 0
  br i1 %tobool.not.i66.i, label %encx24j600_write_reg.exit62.i.encx24j600_write_reg.exit72.i_crit_edge, label %do.body.i70.i, !prof !244

encx24j600_write_reg.exit62.i.encx24j600_write_reg.exit72.i_crit_edge: ; preds = %encx24j600_write_reg.exit62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit72.i

do.body.i70.i:                                    ; preds = %encx24j600_write_reg.exit62.i
  %49 = ptrtoint ptr %msg_enable5.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable5.i, align 4
  %and.i68.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68.i)
  %tobool4.not.i69.i = icmp eq i32 %and.i68.i, 0
  br i1 %tobool4.not.i69.i, label %do.body.i70.i.encx24j600_write_reg.exit72.i_crit_edge, label %if.then5.i71.i

do.body.i70.i.encx24j600_write_reg.exit72.i_crit_edge: ; preds = %do.body.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit72.i

if.then5.i71.i:                                   ; preds = %do.body.i70.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %46, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i65.i, i32 noundef 100, i32 noundef %or33.i) #13
  br label %encx24j600_write_reg.exit72.i

encx24j600_write_reg.exit72.i:                    ; preds = %if.then5.i71.i, %do.body.i70.i.encx24j600_write_reg.exit72.i_crit_edge, %encx24j600_write_reg.exit62.i.encx24j600_write_reg.exit72.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  br label %cleanup

cleanup:                                          ; preds = %encx24j600_write_reg.exit72.i, %if.then2.i, %do.body.i.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %encx24j600_write_reg.exit72.i ], [ -16, %if.then2.i ], [ -16, %do.body.i.cleanup_crit_edge ], [ -99, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encx24j600_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2640
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %3 = load volatile i32, ptr @jiffies, align 128
  %call1 = tail call i32 @dev_trans_start(ptr noundef %dev) #10
  %sub = sub i32 %3, %call1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %2, i32 noundef %sub) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %4 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %tx_errors, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %val.i83 = alloca i32, align 4
  %rsv.i = alloca %struct.rsv, align 8
  %val.i63 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %regmap.i = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 238, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.encx24j600_cmd.exit_crit_edge, label %do.body.i, !prof !244

entry.encx24j600_cmd.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 14
  %4 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.encx24j600_cmd.exit_crit_edge, label %if.then4.i

do.body.i.encx24j600_cmd.exit_crit_edge:          ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i, i32 noundef 238) #13
  br label %encx24j600_cmd.exit

encx24j600_cmd.exit:                              ; preds = %if.then4.i, %do.body.i.encx24j600_cmd.exit_crit_edge, %entry.encx24j600_cmd.exit_crit_edge
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val.i, align 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i56 = call i32 @regmap_read(ptr noundef %10, i32 noundef 28, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %encx24j600_cmd.exit.encx24j600_read_reg.exit_crit_edge, label %do.body.i61, !prof !244

encx24j600_cmd.exit.encx24j600_read_reg.exit_crit_edge: ; preds = %encx24j600_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

do.body.i61:                                      ; preds = %encx24j600_cmd.exit
  %msg_enable.i58 = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 14
  %11 = ptrtoint ptr %msg_enable.i58 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable.i58, align 4
  %and.i59 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool3.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool3.not.i60, label %do.body.i61.encx24j600_read_reg.exit_crit_edge, label %if.then4.i62

do.body.i61.encx24j600_read_reg.exit_crit_edge:   ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

if.then4.i62:                                     ; preds = %do.body.i61
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i56, i32 noundef 28) #13
  br label %encx24j600_read_reg.exit

encx24j600_read_reg.exit:                         ; preds = %if.then4.i62, %do.body.i61.encx24j600_read_reg.exit_crit_edge, %encx24j600_cmd.exit.encx24j600_read_reg.exit_crit_edge
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %and = and i32 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %encx24j600_read_reg.exit.if.end_crit_edge, label %if.then

encx24j600_read_reg.exit.if.end_crit_edge:        ; preds = %encx24j600_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %encx24j600_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @encx24j600_int_link_handler(ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.then, %encx24j600_read_reg.exit.if.end_crit_edge
  %and1 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @encx24j600_tx_complete(ptr noundef %dev_id, i1 noundef zeroext false)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %and5 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @encx24j600_tx_complete(ptr noundef %dev_id, i1 noundef zeroext true)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end4.if.end8_crit_edge
  %and9 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end20_crit_edge, label %if.then11

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then11:                                        ; preds = %if.end8
  %and12 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.then11.if.end19_crit_edge, label %do.body

if.then11.if.end19_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body:                                          ; preds = %if.then11
  %msg_enable = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 14
  %15 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable, align 4
  %and15 = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body.if.end19_crit_edge, label %if.then17

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #13
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %do.body.if.end19_crit_edge, %if.then11.if.end19_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %17 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %18, 1
  store i32 %inc, ptr %rx_dropped, align 8
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_id, align 4
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 28, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end19.if.end20_crit_edge, label %do.body.i.i, !prof !244

if.end19.if.end20_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.body.i.i:                                      ; preds = %if.end19
  %msg_enable.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 14
  %23 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.if.end20_crit_edge, label %if.then6.i.i

do.body.i.i.if.end20_crit_edge:                   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %20, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i, i32 noundef 28, i32 noundef 0, i32 noundef 2) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then6.i.i, %do.body.i.i.if.end20_crit_edge, %if.end19.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %and21 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end34_crit_edge, label %if.then23

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then23:                                        ; preds = %if.end20
  %lock = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i63) #10
  %27 = ptrtoint ptr %val.i63 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %val.i63, align 4
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i65 = call i32 @regmap_read(ptr noundef %29, i32 noundef 26, ptr noundef nonnull %val.i63) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool.not.i66 = icmp eq i32 %call.i65, 0
  br i1 %tobool.not.i66, label %if.then23.encx24j600_read_reg.exit73_crit_edge, label %do.body.i70, !prof !244

if.then23.encx24j600_read_reg.exit73_crit_edge:   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit73

do.body.i70:                                      ; preds = %if.then23
  %msg_enable.i67 = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 14
  %30 = ptrtoint ptr %msg_enable.i67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable.i67, align 4
  %and.i68 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool3.not.i69 = icmp eq i32 %and.i68, 0
  br i1 %tobool3.not.i69, label %do.body.i70.encx24j600_read_reg.exit73_crit_edge, label %if.then4.i71

do.body.i70.encx24j600_read_reg.exit73_crit_edge: ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit73

if.then4.i71:                                     ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %26, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i65, i32 noundef 26) #13
  br label %encx24j600_read_reg.exit73

encx24j600_read_reg.exit73:                       ; preds = %if.then4.i71, %do.body.i70.encx24j600_read_reg.exit73_crit_edge, %if.then23.encx24j600_read_reg.exit73_crit_edge
  %32 = ptrtoint ptr %val.i63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val.i63, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i63) #10
  %packet_count.0103 = trunc i32 %33 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %packet_count.0103)
  %tobool28.not104 = icmp eq i8 %packet_count.0103, 0
  br i1 %tobool28.not104, label %encx24j600_read_reg.exit73.while.end_crit_edge, label %while.body.lr.ph.i.lr.ph

encx24j600_read_reg.exit73.while.end_crit_edge:   ; preds = %encx24j600_read_reg.exit73
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph.i.lr.ph:                         ; preds = %encx24j600_read_reg.exit73
  %34 = getelementptr inbounds %struct.rsv, ptr %rsv.i, i32 0, i32 1
  %35 = getelementptr inbounds %struct.rsv, ptr %rsv.i, i32 0, i32 2
  %next_packet.i = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 8
  %msg_enable.i.i75 = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 14
  %ctx.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 2
  %mutex.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 2, i32 3
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %encx24j600_read_reg.exit93.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.i.lr.ph
  %packet_count.0105 = phi i8 [ %packet_count.0103, %while.body.lr.ph.i.lr.ph ], [ %packet_count.0, %encx24j600_read_reg.exit93.while.body.lr.ph.i_crit_edge ]
  %36 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_id, align 4
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 4
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 12
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 13
  %rx_over_errors.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 36, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %encx24j600_write_reg.exit82.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec85.in.i = phi i8 [ %packet_count.0105, %while.body.lr.ph.i ], [ %dec85.i, %encx24j600_write_reg.exit82.i.while.body.i_crit_edge ]
  %dec85.i = add i8 %dec85.in.i, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rsv.i) #10
  %38 = ptrtoint ptr %rsv.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 -1, ptr %rsv.i, align 8
  %39 = ptrtoint ptr %next_packet.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %next_packet.i, align 4
  %41 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_id, align 4
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %conv1.i.i = zext i16 %40 to i32
  %call.i.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 138, i32 noundef %conv1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i76 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i76, label %while.body.i.encx24j600_write_reg.exit.i_crit_edge, label %do.body.i.i78, !prof !244

while.body.i.encx24j600_write_reg.exit.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

do.body.i.i78:                                    ; preds = %while.body.i
  %45 = ptrtoint ptr %msg_enable.i.i75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_enable.i.i75, align 4
  %and.i.i77 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i77)
  %tobool4.not.i.i = icmp eq i32 %and.i.i77, 0
  br i1 %tobool4.not.i.i, label %do.body.i.i78.encx24j600_write_reg.exit.i_crit_edge, label %if.then5.i.i

do.body.i.i78.encx24j600_write_reg.exit.i_crit_edge: ; preds = %do.body.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit.i

if.then5.i.i:                                     ; preds = %do.body.i.i78
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %42, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i.i, i32 noundef 138, i32 noundef %conv1.i.i) #13
  br label %encx24j600_write_reg.exit.i

encx24j600_write_reg.exit.i:                      ; preds = %if.then5.i.i, %do.body.i.i78.encx24j600_write_reg.exit.i_crit_edge, %while.body.i.encx24j600_write_reg.exit.i_crit_edge
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #10
  %call.i66.i = call i32 @regmap_encx24j600_spi_read(ptr noundef %ctx.i.i, i8 noundef zeroext 44, ptr noundef nonnull %rsv.i, i32 noundef 8) #10
  call void @mutex_unlock(ptr noundef %mutex.i.i) #10
  %47 = ptrtoint ptr %msg_enable.i.i75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable.i.i75, align 4
  %and.i79 = and i32 %48, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool1.not.i = icmp eq i32 %and.i79, 0
  br i1 %tobool1.not.i, label %encx24j600_write_reg.exit.i.if.end.i_crit_edge, label %if.then.i

encx24j600_write_reg.exit.i.if.end.i_crit_edge:   ; preds = %encx24j600_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %encx24j600_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @encx24j600_dump_rsv(ptr noundef %dev_id, ptr noundef nonnull %rsv.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %encx24j600_write_reg.exit.i.if.end.i_crit_edge
  %49 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %35, align 4
  %and2.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i80 = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i80, label %if.end.i.do.body.i81_crit_edge, label %lor.lhs.false.i

if.end.i.do.body.i81_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i81

lor.lhs.false.i:                                  ; preds = %if.end.i
  %51 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1518, i16 %52)
  %cmp.i = icmp ugt i16 %52, 1518
  br i1 %cmp.i, label %lor.lhs.false.i.do.body.i81_crit_edge, label %if.else.i

lor.lhs.false.i.do.body.i81_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i81

do.body.i81:                                      ; preds = %lor.lhs.false.i.do.body.i81_crit_edge, %if.end.i.do.body.i81_crit_edge
  %53 = ptrtoint ptr %msg_enable.i.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable.i.i75, align 4
  %and7.i = and i32 %54, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %do.body.i81.do.end.i_crit_edge, label %if.then9.i

do.body.i81.do.end.i_crit_edge:                   ; preds = %do.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then9.i:                                       ; preds = %do.body.i81
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.29, i32 noundef %50) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %do.body.i81.do.end.i_crit_edge
  %55 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_errors.i, align 8
  %inc.i = add i32 %56, 1
  store i32 %inc.i, ptr %rx_errors.i, align 8
  %57 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %35, align 4
  %and13.i = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %do.end.i.if.end20.i_crit_edge, label %if.then17.i

do.end.i.if.end20.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i

if.then17.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_crc_errors.i, align 8
  %inc19.i = add i32 %60, 1
  store i32 %inc19.i, ptr %rx_crc_errors.i, align 8
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %do.end.i.if.end20.i_crit_edge
  %and22.i = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end20.i.if.end29.i_crit_edge, label %if.then26.i

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29.i

if.then26.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %rx_frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rx_frame_errors.i, align 4
  %inc28.i = add i32 %62, 1
  store i32 %inc28.i, ptr %rx_frame_errors.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %if.end20.i.if.end29.i_crit_edge
  %63 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1518, i16 %64)
  %cmp32.i = icmp ugt i16 %64, 1518
  br i1 %cmp32.i, label %if.then34.i, label %if.end29.i.if.end39.i_crit_edge

if.end29.i.if.end39.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39.i

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %rx_over_errors.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_over_errors.i, align 4
  %inc36.i = add i32 %66, 1
  store i32 %inc36.i, ptr %rx_over_errors.i, align 4
  br label %if.end39.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @encx24j600_receive_packet(ptr noundef %dev_id, ptr noundef nonnull %rsv.i) #10
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.else.i, %if.then34.i, %if.end29.i.if.end39.i_crit_edge
  %67 = ptrtoint ptr %rsv.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %rsv.i, align 8
  %69 = ptrtoint ptr %next_packet.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %next_packet.i, align 4
  %sub.i = add i16 %68, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %sub.i)
  %cmp46.i = icmp eq i16 %sub.i, 1536
  %spec.store.select.i = select i1 %cmp46.i, i16 24574, i16 %sub.i
  %70 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_id, align 4
  %72 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i, align 4
  %call.i68.i = call i32 @regmap_write(ptr noundef %73, i32 noundef 204, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i)
  %tobool.not.i69.i = icmp eq i32 %call.i68.i, 0
  br i1 %tobool.not.i69.i, label %if.end39.i.encx24j600_cmd.exit.i_crit_edge, label %do.body.i72.i, !prof !244

if.end39.i.encx24j600_cmd.exit.i_crit_edge:       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit.i

do.body.i72.i:                                    ; preds = %if.end39.i
  %74 = ptrtoint ptr %msg_enable.i.i75 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %msg_enable.i.i75, align 4
  %and.i71.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i71.i)
  %tobool3.not.i.i = icmp eq i32 %and.i71.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i72.i.encx24j600_cmd.exit.i_crit_edge, label %if.then4.i.i

do.body.i72.i.encx24j600_cmd.exit.i_crit_edge:    ; preds = %do.body.i72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit.i

if.then4.i.i:                                     ; preds = %do.body.i72.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %71, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i68.i, i32 noundef 204) #13
  br label %encx24j600_cmd.exit.i

encx24j600_cmd.exit.i:                            ; preds = %if.then4.i.i, %do.body.i72.i.encx24j600_cmd.exit.i_crit_edge, %if.end39.i.encx24j600_cmd.exit.i_crit_edge
  %76 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev_id, align 4
  %78 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i, align 4
  %conv1.i74.i = zext i16 %spec.store.select.i to i32
  %call.i75.i = call i32 @regmap_write(ptr noundef %79, i32 noundef 6, i32 noundef %conv1.i74.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i)
  %tobool.not.i76.i = icmp eq i32 %call.i75.i, 0
  br i1 %tobool.not.i76.i, label %encx24j600_cmd.exit.i.encx24j600_write_reg.exit82.i_crit_edge, label %do.body.i80.i, !prof !244

encx24j600_cmd.exit.i.encx24j600_write_reg.exit82.i_crit_edge: ; preds = %encx24j600_cmd.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit82.i

do.body.i80.i:                                    ; preds = %encx24j600_cmd.exit.i
  %80 = ptrtoint ptr %msg_enable.i.i75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable.i.i75, align 4
  %and.i78.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i)
  %tobool4.not.i79.i = icmp eq i32 %and.i78.i, 0
  br i1 %tobool4.not.i79.i, label %do.body.i80.i.encx24j600_write_reg.exit82.i_crit_edge, label %if.then5.i81.i

do.body.i80.i.encx24j600_write_reg.exit82.i_crit_edge: ; preds = %do.body.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit82.i

if.then5.i81.i:                                   ; preds = %do.body.i80.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %77, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i75.i, i32 noundef 6, i32 noundef %conv1.i74.i) #13
  br label %encx24j600_write_reg.exit82.i

encx24j600_write_reg.exit82.i:                    ; preds = %if.then5.i81.i, %do.body.i80.i.encx24j600_write_reg.exit82.i_crit_edge, %encx24j600_cmd.exit.i.encx24j600_write_reg.exit82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rsv.i) #10
  %tobool.not.i82 = icmp eq i8 %dec85.i, 0
  br i1 %tobool.not.i82, label %encx24j600_rx_packets.exit, label %encx24j600_write_reg.exit82.i.while.body.i_crit_edge

encx24j600_write_reg.exit82.i.while.body.i_crit_edge: ; preds = %encx24j600_write_reg.exit82.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

encx24j600_rx_packets.exit:                       ; preds = %encx24j600_write_reg.exit82.i
  %82 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i83) #10
  %84 = ptrtoint ptr %val.i83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %val.i83, align 4
  %85 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i, align 4
  %call.i85 = call i32 @regmap_read(ptr noundef %86, i32 noundef 26, ptr noundef nonnull %val.i83) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85)
  %tobool.not.i86 = icmp eq i32 %call.i85, 0
  br i1 %tobool.not.i86, label %encx24j600_rx_packets.exit.encx24j600_read_reg.exit93_crit_edge, label %do.body.i90, !prof !244

encx24j600_rx_packets.exit.encx24j600_read_reg.exit93_crit_edge: ; preds = %encx24j600_rx_packets.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit93

do.body.i90:                                      ; preds = %encx24j600_rx_packets.exit
  %87 = ptrtoint ptr %msg_enable.i.i75 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %msg_enable.i.i75, align 4
  %and.i88 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool3.not.i89 = icmp eq i32 %and.i88, 0
  br i1 %tobool3.not.i89, label %do.body.i90.encx24j600_read_reg.exit93_crit_edge, label %if.then4.i91

do.body.i90.encx24j600_read_reg.exit93_crit_edge: ; preds = %do.body.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit93

if.then4.i91:                                     ; preds = %do.body.i90
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i85, i32 noundef 26) #13
  br label %encx24j600_read_reg.exit93

encx24j600_read_reg.exit93:                       ; preds = %if.then4.i91, %do.body.i90.encx24j600_read_reg.exit93_crit_edge, %encx24j600_rx_packets.exit.encx24j600_read_reg.exit93_crit_edge
  %89 = ptrtoint ptr %val.i83 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val.i83, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i83) #10
  %packet_count.0 = trunc i32 %90 to i8
  %tobool28.not = icmp eq i8 %packet_count.0, 0
  br i1 %tobool28.not, label %encx24j600_read_reg.exit93.while.end_crit_edge, label %encx24j600_read_reg.exit93.while.body.lr.ph.i_crit_edge

encx24j600_read_reg.exit93.while.body.lr.ph.i_crit_edge: ; preds = %encx24j600_read_reg.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.lr.ph.i

encx24j600_read_reg.exit93.while.end_crit_edge:   ; preds = %encx24j600_read_reg.exit93
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %encx24j600_read_reg.exit93.while.end_crit_edge, %encx24j600_read_reg.exit73.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %if.end34

if.end34:                                         ; preds = %while.end, %if.end20.if.end34_crit_edge
  %91 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev_id, align 4
  %93 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap.i, align 4
  %call.i95 = call i32 @regmap_write(ptr noundef %94, i32 noundef 236, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool.not.i96 = icmp eq i32 %call.i95, 0
  br i1 %tobool.not.i96, label %if.end34.encx24j600_cmd.exit102_crit_edge, label %do.body.i100, !prof !244

if.end34.encx24j600_cmd.exit102_crit_edge:        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit102

do.body.i100:                                     ; preds = %if.end34
  %msg_enable.i97 = getelementptr inbounds %struct.encx24j600_priv, ptr %dev_id, i32 0, i32 14
  %95 = ptrtoint ptr %msg_enable.i97 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %msg_enable.i97, align 4
  %and.i98 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %tobool3.not.i99 = icmp eq i32 %and.i98, 0
  br i1 %tobool3.not.i99, label %do.body.i100.encx24j600_cmd.exit102_crit_edge, label %if.then4.i101

do.body.i100.encx24j600_cmd.exit102_crit_edge:    ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit102

if.then4.i101:                                    ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %92, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i95, i32 noundef 236) #13
  br label %encx24j600_cmd.exit102

encx24j600_cmd.exit102:                           ; preds = %if.then4.i101, %do.body.i100.encx24j600_cmd.exit102_crit_edge, %if.end34.encx24j600_cmd.exit102_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_int_link_handler(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %msg_enable = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.body1

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end8

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_int_link_handler.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_int_link_handler, %if.then5)) #10
          to label %do.end8 [label %if.then5], !srcloc !247

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_int_link_handler.__UNIQUE_ID_ddebug350, ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #10
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %entry.do.end8_crit_edge
  tail call fastcc void @encx24j600_check_link_status(ptr noundef %priv)
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %regmap.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 28, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %do.end8.encx24j600_clr_bits.exit_crit_edge, label %do.body.i.i, !prof !244

do.end8.encx24j600_clr_bits.exit_crit_edge:       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

do.body.i.i:                                      ; preds = %do.end8
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.encx24j600_clr_bits.exit_crit_edge, label %if.then6.i.i

do.body.i.i.encx24j600_clr_bits.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i, i32 noundef 28, i32 noundef 0, i32 noundef 2048) #13
  br label %encx24j600_clr_bits.exit

encx24j600_clr_bits.exit:                         ; preds = %if.then6.i.i, %do.body.i.i.encx24j600_clr_bits.exit_crit_edge, %do.end8.encx24j600_clr_bits.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_tx_complete(ptr noundef %priv, i1 noundef zeroext %err) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tx_skb = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/microchip/encx24j600.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 304, 0\0A.popsection", ""() #10, !srcloc !248
  unreachable

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  %tx_packets.sink44 = select i1 %err, ptr %tx_errors, ptr %tx_packets
  %4 = ptrtoint ptr %tx_packets.sink44 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_packets.sink44, align 4
  %inc7 = add i32 %5, 1
  store i32 %inc7, ptr %tx_packets.sink44, align 4
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  %10 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %tx_bytes, align 4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  %regmap.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 28, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.encx24j600_clr_bits.exit_crit_edge, label %do.body.i.i, !prof !244

if.end.encx24j600_clr_bits.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

do.body.i.i:                                      ; preds = %if.end
  %msg_enable.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %16 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.encx24j600_clr_bits.exit_crit_edge, label %if.then6.i.i

do.body.i.i.encx24j600_clr_bits.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i, i32 noundef 28, i32 noundef 0, i32 noundef 12) #13
  br label %encx24j600_clr_bits.exit

encx24j600_clr_bits.exit:                         ; preds = %if.then6.i.i, %do.body.i.i.encx24j600_clr_bits.exit_crit_edge, %if.end.encx24j600_clr_bits.exit_crit_edge
  %msg_enable = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and = and i32 %19, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %encx24j600_clr_bits.exit.do.end26_crit_edge, label %do.body14

encx24j600_clr_bits.exit.do.end26_crit_edge:      ; preds = %encx24j600_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.body14:                                        ; preds = %encx24j600_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_tx_complete.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_tx_complete, %if.then19)) #10
          to label %do.end26 [label %if.then19], !srcloc !247

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  %cond = select i1 %err, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_tx_complete.__UNIQUE_ID_ddebug351, ptr noundef %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %cond) #10
  br label %do.end26

do.end26:                                         ; preds = %if.then19, %do.body14, %encx24j600_clr_bits.exit.do.end26_crit_edge
  %20 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_skb, align 4
  tail call void @consume_skb(ptr noundef %21) #10
  %22 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %tx_skb, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %24) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_check_link_status(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %val.i23.i = alloca i32, align 4
  %val.i12.i = alloca i32, align 4
  %val.i1.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val.i, align 4
  %regmap.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 26, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.encx24j600_read_reg.exit_crit_edge, label %do.body.i, !prof !244

entry.encx24j600_read_reg.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.encx24j600_read_reg.exit_crit_edge, label %if.then4.i

do.body.i.encx24j600_read_reg.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i, i32 noundef 26) #13
  br label %encx24j600_read_reg.exit

encx24j600_read_reg.exit:                         ; preds = %if.then4.i, %do.body.i.encx24j600_read_reg.exit_crit_edge, %entry.encx24j600_read_reg.exit_crit_edge
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body10, label %if.then

if.then:                                          ; preds = %encx24j600_read_reg.exit
  %autoneg = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 11
  %10 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %autoneg, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool1.not = icmp eq i8 %11, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %14, 200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #10
  %15 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %val.i.i, align 4
  %phymap.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %phymap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phymap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %val.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then4.encx24j600_read_phy.exit.i_crit_edge, label %do.body.i.i, !prof !244

if.then4.encx24j600_read_phy.exit.i_crit_edge:    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit.i

do.body.i.i:                                      ; preds = %if.then4
  %msg_enable.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %18 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool3.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool3.not.i.i, label %do.body.i.i.encx24j600_read_phy.exit.i_crit_edge, label %if.then4.i.i

do.body.i.i.encx24j600_read_phy.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit.i

if.then4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i.i, i32 noundef 1) #13
  br label %encx24j600_read_phy.exit.i

encx24j600_read_phy.exit.i:                       ; preds = %if.then4.i.i, %do.body.i.i.encx24j600_read_phy.exit.i_crit_edge, %if.then4.encx24j600_read_phy.exit.i_crit_edge
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #10
  %22 = and i32 %21, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp64.i = icmp eq i32 %22, 0
  br i1 %cmp64.i, label %while.body.lr.ph.i, label %encx24j600_read_phy.exit.i.while.end.i_crit_edge

encx24j600_read_phy.exit.i.while.end.i_crit_edge: ; preds = %encx24j600_read_phy.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %encx24j600_read_phy.exit.i
  %msg_enable.i16.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  br label %while.body.i

while.body.i:                                     ; preds = %encx24j600_read_phy.exit22.i.while.body.i_crit_edge, %while.body.lr.ph.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.then.i, label %do.end39.i

if.then.i:                                        ; preds = %while.body.i
  %24 = ptrtoint ptr %msg_enable.i16.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i16.i, align 4
  %and5.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i31 = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i31, label %if.then.i.do.end.i_crit_edge, label %if.then6.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %13, ptr noundef nonnull @.str.16) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.then.i.do.end.i_crit_edge
  %26 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %autoneg, align 4
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i1.i) #10
  %29 = ptrtoint ptr %val.i1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val.i1.i, align 4
  %30 = ptrtoint ptr %phymap.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phymap.i.i, align 4
  %call.i3.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 31, ptr noundef nonnull %val.i1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %do.end.i.encx24j600_read_phy.exit11.i_crit_edge, label %do.body.i8.i, !prof !244

do.end.i.encx24j600_read_phy.exit11.i_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit11.i

do.body.i8.i:                                     ; preds = %do.end.i
  %32 = ptrtoint ptr %msg_enable.i16.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable.i16.i, align 4
  %and.i6.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i6.i)
  %tobool3.not.i7.i = icmp eq i32 %and.i6.i, 0
  br i1 %tobool3.not.i7.i, label %do.body.i8.i.encx24j600_read_phy.exit11.i_crit_edge, label %if.then4.i9.i

do.body.i8.i.encx24j600_read_phy.exit11.i_crit_edge: ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit11.i

if.then4.i9.i:                                    ; preds = %do.body.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i3.i, i32 noundef 31) #13
  br label %encx24j600_read_phy.exit11.i

encx24j600_read_phy.exit11.i:                     ; preds = %if.then4.i9.i, %do.body.i8.i.encx24j600_read_phy.exit11.i_crit_edge, %do.end.i.encx24j600_read_phy.exit11.i_crit_edge
  %34 = ptrtoint ptr %val.i1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i1.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i1.i) #10
  %36 = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool10.not.i = icmp eq i32 %36, 0
  %conv11.i = select i1 %tobool10.not.i, i16 10, i16 100
  %speed.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 12
  %37 = ptrtoint ptr %speed.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv11.i, ptr %speed.i, align 2
  %full_duplex.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 10
  %38 = trunc i32 %35 to i8
  %39 = lshr i8 %38, 4
  %40 = and i8 %39, 1
  %41 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %full_duplex.i, align 1
  call fastcc void @encx24j600_update_phcon1(ptr noundef %priv) #10
  %42 = ptrtoint ptr %msg_enable.i16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %msg_enable.i16.i, align 4
  %and19.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %encx24j600_read_phy.exit11.i.if.end_crit_edge, label %if.then21.i

encx24j600_read_phy.exit11.i.if.end_crit_edge:    ; preds = %encx24j600_read_phy.exit11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then21.i:                                      ; preds = %encx24j600_read_phy.exit11.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %speed.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %speed.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %45)
  %cmp24.i = icmp eq i16 %45, 100
  %cond26.i = select i1 %cmp24.i, ptr @.str.18, ptr @.str.19
  %46 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %full_duplex.i, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool28.not.i = icmp eq i8 %47, 0
  %cond30.i = select i1 %tobool28.not.i, ptr @.str.21, ptr @.str.20
  call void (ptr, ptr, ...) @netdev_notice(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond26.i, ptr noundef nonnull %cond30.i) #13
  br label %if.end

do.end39.i:                                       ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !249
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !250
  %48 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i12.i) #10
  %50 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %val.i12.i, align 4
  %51 = ptrtoint ptr %phymap.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phymap.i.i, align 4
  %call.i14.i = call i32 @regmap_read(ptr noundef %52, i32 noundef 1, ptr noundef nonnull %val.i12.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool.not.i15.i = icmp eq i32 %call.i14.i, 0
  br i1 %tobool.not.i15.i, label %do.end39.i.encx24j600_read_phy.exit22.i_crit_edge, label %do.body.i19.i, !prof !244

do.end39.i.encx24j600_read_phy.exit22.i_crit_edge: ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit22.i

do.body.i19.i:                                    ; preds = %do.end39.i
  %53 = ptrtoint ptr %msg_enable.i16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %msg_enable.i16.i, align 4
  %and.i17.i = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool3.not.i18.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool3.not.i18.i, label %do.body.i19.i.encx24j600_read_phy.exit22.i_crit_edge, label %if.then4.i20.i

do.body.i19.i.encx24j600_read_phy.exit22.i_crit_edge: ; preds = %do.body.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit22.i

if.then4.i20.i:                                   ; preds = %do.body.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i14.i, i32 noundef 1) #13
  br label %encx24j600_read_phy.exit22.i

encx24j600_read_phy.exit22.i:                     ; preds = %if.then4.i20.i, %do.body.i19.i.encx24j600_read_phy.exit22.i_crit_edge, %do.end39.i.encx24j600_read_phy.exit22.i_crit_edge
  %55 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val.i12.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i12.i) #10
  %57 = and i32 %56, 32
  %cmp.i = icmp eq i32 %57, 0
  br i1 %cmp.i, label %encx24j600_read_phy.exit22.i.while.body.i_crit_edge, label %encx24j600_read_phy.exit22.i.while.end.i_crit_edge

encx24j600_read_phy.exit22.i.while.end.i_crit_edge: ; preds = %encx24j600_read_phy.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

encx24j600_read_phy.exit22.i.while.body.i_crit_edge: ; preds = %encx24j600_read_phy.exit22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %encx24j600_read_phy.exit22.i.while.end.i_crit_edge, %encx24j600_read_phy.exit.i.while.end.i_crit_edge
  %58 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i23.i) #10
  %60 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %val.i23.i, align 4
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %call.i24.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 26, ptr noundef nonnull %val.i23.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool.not.i25.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool.not.i25.i, label %while.end.i.encx24j600_read_reg.exit.i_crit_edge, label %do.body.i29.i, !prof !244

while.end.i.encx24j600_read_reg.exit.i_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i

do.body.i29.i:                                    ; preds = %while.end.i
  %msg_enable.i26.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %63 = ptrtoint ptr %msg_enable.i26.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msg_enable.i26.i, align 4
  %and.i27.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i27.i)
  %tobool3.not.i28.i = icmp eq i32 %and.i27.i, 0
  br i1 %tobool3.not.i28.i, label %do.body.i29.i.encx24j600_read_reg.exit.i_crit_edge, label %if.then4.i30.i

do.body.i29.i.encx24j600_read_reg.exit.i_crit_edge: ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit.i

if.then4.i30.i:                                   ; preds = %do.body.i29.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %59, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i24.i, i32 noundef 26) #13
  br label %encx24j600_read_reg.exit.i

encx24j600_read_reg.exit.i:                       ; preds = %if.then4.i30.i, %do.body.i29.i.encx24j600_read_reg.exit.i_crit_edge, %while.end.i.encx24j600_read_reg.exit.i_crit_edge
  %65 = ptrtoint ptr %val.i23.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val.i23.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i23.i) #10
  %67 = and i32 %66, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool48.not.i = icmp eq i32 %67, 0
  %68 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv, align 4
  %70 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i, align 4
  br i1 %tobool48.not.i, label %if.else.i, label %if.then49.i

if.then49.i:                                      ; preds = %encx24j600_read_reg.exit.i
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 66, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then49.i.encx24j600_set_bits.exit.i_crit_edge, label %do.body.i.i.i, !prof !244

if.then49.i.encx24j600_set_bits.exit.i_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit.i

do.body.i.i.i:                                    ; preds = %if.then49.i
  %msg_enable.i.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %72 = ptrtoint ptr %msg_enable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %msg_enable.i.i.i, align 4
  %and.i.i.i = and i32 %73, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %do.body.i.i.i.encx24j600_set_bits.exit.i_crit_edge, label %if.then6.i.i.i

do.body.i.i.i.encx24j600_set_bits.exit.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit.i

if.then6.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i.i, i32 noundef 66, i32 noundef 1, i32 noundef 1) #13
  br label %encx24j600_set_bits.exit.i

encx24j600_set_bits.exit.i:                       ; preds = %if.then6.i.i.i, %do.body.i.i.i.encx24j600_set_bits.exit.i_crit_edge, %if.then49.i.encx24j600_set_bits.exit.i_crit_edge
  %74 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %priv, align 4
  %76 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i, align 4
  %call.i33.i = call i32 @regmap_write(ptr noundef %77, i32 noundef 68, i32 noundef 21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool.not.i34.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool.not.i34.i, label %encx24j600_set_bits.exit.i.if.end_crit_edge, label %do.body.i37.i, !prof !244

encx24j600_set_bits.exit.i.if.end_crit_edge:      ; preds = %encx24j600_set_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body.i37.i:                                    ; preds = %encx24j600_set_bits.exit.i
  %msg_enable.i35.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %78 = ptrtoint ptr %msg_enable.i35.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %msg_enable.i35.i, align 4
  %and.i36.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool4.not.i.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool4.not.i.i, label %do.body.i37.i.if.end_crit_edge, label %if.then5.i.i

do.body.i37.i.if.end_crit_edge:                   ; preds = %do.body.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5.i.i:                                     ; preds = %do.body.i37.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i33.i, i32 noundef 68, i32 noundef 21) #13
  br label %if.end

if.else.i:                                        ; preds = %encx24j600_read_reg.exit.i
  %call.i.i.i39.i = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 66, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i39.i)
  %tobool.not.i.i40.i = icmp eq i32 %call.i.i.i39.i, 0
  br i1 %tobool.not.i.i40.i, label %if.else.i.encx24j600_clr_bits.exit.i_crit_edge, label %do.body.i.i44.i, !prof !244

if.else.i.encx24j600_clr_bits.exit.i_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit.i

do.body.i.i44.i:                                  ; preds = %if.else.i
  %msg_enable.i.i41.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %80 = ptrtoint ptr %msg_enable.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %msg_enable.i.i41.i, align 4
  %and.i.i42.i = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42.i)
  %tobool5.not.i.i43.i = icmp eq i32 %and.i.i42.i, 0
  br i1 %tobool5.not.i.i43.i, label %do.body.i.i44.i.encx24j600_clr_bits.exit.i_crit_edge, label %if.then6.i.i45.i

do.body.i.i44.i.encx24j600_clr_bits.exit.i_crit_edge: ; preds = %do.body.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit.i

if.then6.i.i45.i:                                 ; preds = %do.body.i.i44.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i39.i, i32 noundef 66, i32 noundef 0, i32 noundef 1) #13
  br label %encx24j600_clr_bits.exit.i

encx24j600_clr_bits.exit.i:                       ; preds = %if.then6.i.i45.i, %do.body.i.i44.i.encx24j600_clr_bits.exit.i_crit_edge, %if.else.i.encx24j600_clr_bits.exit.i_crit_edge
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %priv, align 4
  %84 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i, align 4
  %call.i47.i = call i32 @regmap_write(ptr noundef %85, i32 noundef 68, i32 noundef 18) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47.i)
  %tobool.not.i48.i = icmp eq i32 %call.i47.i, 0
  br i1 %tobool.not.i48.i, label %encx24j600_clr_bits.exit.i.encx24j600_write_reg.exit54.i_crit_edge, label %do.body.i52.i, !prof !244

encx24j600_clr_bits.exit.i.encx24j600_write_reg.exit54.i_crit_edge: ; preds = %encx24j600_clr_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit54.i

do.body.i52.i:                                    ; preds = %encx24j600_clr_bits.exit.i
  %msg_enable.i49.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %86 = ptrtoint ptr %msg_enable.i49.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %msg_enable.i49.i, align 4
  %and.i50.i = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i50.i)
  %tobool4.not.i51.i = icmp eq i32 %and.i50.i, 0
  br i1 %tobool4.not.i51.i, label %do.body.i52.i.encx24j600_write_reg.exit54.i_crit_edge, label %if.then5.i53.i

do.body.i52.i.encx24j600_write_reg.exit54.i_crit_edge: ; preds = %do.body.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit54.i

if.then5.i53.i:                                   ; preds = %do.body.i52.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %83, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i47.i, i32 noundef 68, i32 noundef 18) #13
  br label %encx24j600_write_reg.exit54.i

encx24j600_write_reg.exit54.i:                    ; preds = %if.then5.i53.i, %do.body.i52.i.encx24j600_write_reg.exit54.i_crit_edge, %encx24j600_clr_bits.exit.i.encx24j600_write_reg.exit54.i_crit_edge
  %88 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv, align 4
  %90 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i, align 4
  %call.i56.i = call i32 @regmap_write(ptr noundef %91, i32 noundef 72, i32 noundef 14095) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call.i56.i, 0
  br i1 %tobool.not.i57.i, label %encx24j600_write_reg.exit54.i.if.end_crit_edge, label %do.body.i61.i, !prof !244

encx24j600_write_reg.exit54.i.if.end_crit_edge:   ; preds = %encx24j600_write_reg.exit54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body.i61.i:                                    ; preds = %encx24j600_write_reg.exit54.i
  %msg_enable.i58.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %92 = ptrtoint ptr %msg_enable.i58.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_enable.i58.i, align 4
  %and.i59.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59.i)
  %tobool4.not.i60.i = icmp eq i32 %and.i59.i, 0
  br i1 %tobool4.not.i60.i, label %do.body.i61.i.if.end_crit_edge, label %if.then5.i62.i

do.body.i61.i.if.end_crit_edge:                   ; preds = %do.body.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5.i62.i:                                   ; preds = %do.body.i61.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %89, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i56.i, i32 noundef 72, i32 noundef 14095) #13
  br label %if.end

if.end:                                           ; preds = %if.then5.i62.i, %do.body.i61.i.if.end_crit_edge, %encx24j600_write_reg.exit54.i.if.end_crit_edge, %if.then5.i.i, %do.body.i37.i.if.end_crit_edge, %encx24j600_set_bits.exit.i.if.end_crit_edge, %if.then21.i, %encx24j600_read_phy.exit11.i.if.end_crit_edge, %if.then.if.end_crit_edge
  call void @netif_carrier_on(ptr noundef %1) #10
  %msg_enable = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %94 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable, align 4
  %and6 = and i32 %95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end19_crit_edge, label %if.then8

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.14) #13
  br label %if.end19

do.body10:                                        ; preds = %encx24j600_read_reg.exit
  %msg_enable11 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %96 = ptrtoint ptr %msg_enable11 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %msg_enable11, align 4
  %and12 = and i32 %97, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body10.do.end17_crit_edge, label %if.then14

do.body10.do.end17_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

if.then14:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.15) #13
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %do.body10.do.end17_crit_edge
  %autoneg18 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 11
  %98 = ptrtoint ptr %autoneg18 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %autoneg18, align 4
  %full_duplex = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 10
  %99 = ptrtoint ptr %full_duplex to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %full_duplex, align 1
  %speed = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 12
  %100 = ptrtoint ptr %speed to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 100, ptr %speed, align 2
  call void @netif_carrier_off(ptr noundef %1) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.then8, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_update_phcon1(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %val.i, align 4
  %phymap.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phymap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.encx24j600_read_phy.exit_crit_edge, label %do.body.i, !prof !244

entry.encx24j600_read_phy.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %5 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.encx24j600_read_phy.exit_crit_edge, label %if.then4.i

do.body.i.encx24j600_read_phy.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_phy.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.encx24j600_read_phy, i32 noundef %call.i, i32 noundef 0) #13
  br label %encx24j600_read_phy.exit

encx24j600_read_phy.exit:                         ; preds = %if.then4.i, %do.body.i.encx24j600_read_phy.exit_crit_edge, %entry.encx24j600_read_phy.exit_crit_edge
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %conv7.i = trunc i32 %8 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %autoneg = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 11
  %9 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %autoneg, align 4, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %encx24j600_read_phy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = or i16 %conv7.i, 4608
  br label %if.end27

if.else:                                          ; preds = %encx24j600_read_phy.exit
  %speed = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 12
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %speed, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %13)
  %cmp7 = icmp eq i16 %13, 100
  %14 = and i16 %conv7.i, -12289
  %15 = or i16 %14, 8192
  %phcon1.0 = select i1 %cmp7, i16 %15, i16 %14
  %full_duplex = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 10
  %16 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %full_duplex, align 1, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool17.not = icmp eq i8 %17, 0
  br i1 %tobool17.not, label %if.else22, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %18 = or i16 %phcon1.0, 256
  br label %if.end27

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %19 = and i16 %phcon1.0, -4353
  br label %if.end27

if.end27:                                         ; preds = %if.else22, %if.then18, %if.then
  %phcon1.1 = phi i16 [ %11, %if.then ], [ %18, %if.then18 ], [ %19, %if.else22 ]
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv, align 4
  %22 = ptrtoint ptr %phymap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phymap.i, align 4
  %conv1.i = zext i16 %phcon1.1 to i32
  %call.i39 = call i32 @regmap_write(ptr noundef %23, i32 noundef 0, i32 noundef %conv1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %if.end27.encx24j600_write_phy.exit_crit_edge, label %do.body.i43, !prof !244

if.end27.encx24j600_write_phy.exit_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_phy.exit

do.body.i43:                                      ; preds = %if.end27
  %msg_enable.i41 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %24 = ptrtoint ptr %msg_enable.i41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_enable.i41, align 4
  %and.i42 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool4.not.i = icmp eq i32 %and.i42, 0
  br i1 %tobool4.not.i, label %do.body.i43.encx24j600_write_phy.exit_crit_edge, label %if.then5.i

do.body.i43.encx24j600_write_phy.exit_crit_edge:  ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_phy.exit

if.then5.i:                                       ; preds = %do.body.i43
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %21, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_phy, i32 noundef %call.i39, i32 noundef 0, i32 noundef %conv1.i) #13
  br label %encx24j600_write_phy.exit

encx24j600_write_phy.exit:                        ; preds = %if.then5.i, %do.body.i43.encx24j600_write_phy.exit_crit_edge, %if.end27.encx24j600_write_phy.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_dump_rsv(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %rsv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %len = getelementptr inbounds %struct.rsv, ptr %rsv, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 2
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.30, i32 noundef %conv) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_dump_rsv, %if.then)) #10
          to label %do.body8 [label %if.then], !srcloc !247

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %rsv to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rsv, align 4
  %conv4 = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_dump_rsv.__UNIQUE_ID_ddebug345, ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.encx24j600_rx_packets, i32 noundef %conv4) #10
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_dump_rsv, %if.then20)) #10
          to label %do.body32 [label %if.then20], !srcloc !247

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %rxstat = getelementptr inbounds %struct.rsv, ptr %rsv, i32 0, i32 2
  %6 = ptrtoint ptr %rxstat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxstat, align 4
  %and = lshr i32 %7, 7
  %and.lobit = and i32 %and, 1
  %and23 = lshr i32 %7, 10
  %and23.lobit = and i32 %and23, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_dump_rsv.__UNIQUE_ID_ddebug346, ptr noundef %1, ptr noundef nonnull @.str.33, i32 noundef %and.lobit, i32 noundef %and23.lobit) #10
  br label %do.body32

do.body32:                                        ; preds = %if.then20, %do.body8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_dump_rsv, %if.then44)) #10
          to label %do.body63 [label %if.then44], !srcloc !247

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #12
  %rxstat45 = getelementptr inbounds %struct.rsv, ptr %rsv, i32 0, i32 2
  %8 = ptrtoint ptr %rxstat45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rxstat45, align 4
  %and46 = lshr i32 %9, 4
  %and46.lobit = and i32 %and46, 1
  %and50 = lshr i32 %9, 5
  %and50.lobit = and i32 %and50, 1
  %and54 = lshr i32 %9, 6
  %and54.lobit = and i32 %and54, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_dump_rsv.__UNIQUE_ID_ddebug347, ptr noundef %1, ptr noundef nonnull @.str.34, i32 noundef %and46.lobit, i32 noundef %and50.lobit, i32 noundef %and54.lobit) #10
  br label %do.body63

do.body63:                                        ; preds = %if.then44, %do.body32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_dump_rsv, %if.then75)) #10
          to label %do.body98 [label %if.then75], !srcloc !247

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #12
  %rxstat76 = getelementptr inbounds %struct.rsv, ptr %rsv, i32 0, i32 2
  %10 = ptrtoint ptr %rxstat76 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxstat76, align 4
  %and77 = lshr i32 %11, 8
  %and77.lobit = and i32 %and77, 1
  %and81 = lshr i32 %11, 9
  %and81.lobit = and i32 %and81, 1
  %and85 = and i32 %11, 1
  %and89 = lshr i32 %11, 2
  %and89.lobit = and i32 %and89, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_dump_rsv.__UNIQUE_ID_ddebug348, ptr noundef %1, ptr noundef nonnull @.str.35, i32 noundef %and77.lobit, i32 noundef %and81.lobit, i32 noundef %and85, i32 noundef %and89.lobit) #10
  br label %do.body98

do.body98:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_dump_rsv, %if.then110)) #10
          to label %do.end131 [label %if.then110], !srcloc !247

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #12
  %rxstat111 = getelementptr inbounds %struct.rsv, ptr %rsv, i32 0, i32 2
  %12 = ptrtoint ptr %rxstat111 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rxstat111, align 4
  %and112 = lshr i32 %13, 11
  %and112.lobit = and i32 %and112, 1
  %and116 = lshr i32 %13, 12
  %and116.lobit = and i32 %and116, 1
  %and120 = lshr i32 %13, 13
  %and120.lobit = and i32 %and120, 1
  %and124 = lshr i32 %13, 14
  %and124.lobit = and i32 %and124, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @encx24j600_dump_rsv.__UNIQUE_ID_ddebug349, ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %and112.lobit, i32 noundef %and116.lobit, i32 noundef %and120.lobit, i32 noundef %and124.lobit) #10
  br label %do.end131

do.end131:                                        ; preds = %if.then110, %do.body98
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_receive_packet(ptr noundef %priv, ptr nocapture noundef readonly %rsv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %len = getelementptr inbounds %struct.rsv, ptr %rsv, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 2
  %conv = zext i16 %3 to i32
  %add = add nuw nsw i32 %conv, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @encx24j600_receive_packet._rs, ptr noundef nonnull @__func__.encx24j600_receive_packet) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %4 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %cleanup

if.end5:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 2
  %conv7 = zext i16 %11 to i32
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv7) #10
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len, align 2
  %conv10 = zext i16 %13 to i32
  %ctx.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2
  %mutex.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %call.i1 = tail call i32 @regmap_encx24j600_spi_read(ptr noundef %ctx.i, i8 noundef zeroext 44, ptr noundef %call8, i32 noundef %conv10) #10
  tail call void @mutex_unlock(ptr noundef %mutex.i) #10
  %msg_enable = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and = and i32 %15, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end5.if.end15_crit_edge, label %if.then13

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then13:                                        ; preds = %if.end5
  %len14 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %len14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len14, align 4
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_packet.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_receive_packet, %if.then.i)) #10
          to label %do.body3.i [label %if.then.i], !srcloc !247

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_packet.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef %17) #10
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.then13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_packet.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_receive_packet, %if.then15.i)) #10
          to label %if.end15 [label %if.then15.i], !srcloc !247

if.then15.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %19, i32 noundef %17, i1 noundef zeroext true) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then15.i, %do.body3.i, %if.end5.if.end15_crit_edge
  %20 = getelementptr inbounds %struct.anon.44, ptr %call.i, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %20, align 8
  %call16 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %1) #10
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %22 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %call16, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %23 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 1024
  store i16 %bf.set, ptr %ip_summed, align 8
  %stats17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %24 = ptrtoint ptr %stats17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stats17, align 8
  %inc18 = add i32 %25, 1
  store i32 %inc18, ptr %stats17, align 8
  %26 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %len, align 2
  %conv20 = zext i16 %27 to i32
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %28 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_bytes, align 8
  %add22 = add i32 %29, %conv20
  store i32 %add22, ptr %rx_bytes, align 8
  %call23 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_encx24j600_spi_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_trans_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_set_rxfilter_mode(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rxfilter = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 13
  %0 = ptrtoint ptr %rxfilter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxfilter, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %regmap.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 64, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %sw.bb.encx24j600_set_bits.exit_crit_edge, label %do.body.i.i, !prof !244

sw.bb.encx24j600_set_bits.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit

do.body.i.i:                                      ; preds = %sw.bb
  %msg_enable.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %7 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.encx24j600_set_bits.exit_crit_edge, label %if.then6.i.i

do.body.i.i.encx24j600_set_bits.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i, i32 noundef 64, i32 noundef 2, i32 noundef 2) #13
  br label %encx24j600_set_bits.exit

encx24j600_set_bits.exit:                         ; preds = %if.then6.i.i, %do.body.i.i.encx24j600_set_bits.exit_crit_edge, %sw.bb.encx24j600_set_bits.exit_crit_edge
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 52, i32 noundef 14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %encx24j600_set_bits.exit.sw.epilog_crit_edge, label %do.body.i, !prof !244

encx24j600_set_bits.exit.sw.epilog_crit_edge:     ; preds = %encx24j600_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body.i:                                        ; preds = %encx24j600_set_bits.exit
  %msg_enable.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %13 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %do.body.i.sw.epilog_crit_edge, label %if.then5.i

do.body.i.sw.epilog_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i, i32 noundef 52, i32 noundef 14) #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %regmap.i.i9 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %regmap.i.i9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i9, align 4
  %call.i.i.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 64, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i10)
  %tobool.not.i.i11 = icmp eq i32 %call.i.i.i10, 0
  br i1 %tobool.not.i.i11, label %sw.bb1.encx24j600_clr_bits.exit_crit_edge, label %do.body.i.i15, !prof !244

sw.bb1.encx24j600_clr_bits.exit_crit_edge:        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

do.body.i.i15:                                    ; preds = %sw.bb1
  %msg_enable.i.i12 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %19 = ptrtoint ptr %msg_enable.i.i12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_enable.i.i12, align 4
  %and.i.i13 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool5.not.i.i14 = icmp eq i32 %and.i.i13, 0
  br i1 %tobool5.not.i.i14, label %do.body.i.i15.encx24j600_clr_bits.exit_crit_edge, label %if.then6.i.i16

do.body.i.i15.encx24j600_clr_bits.exit_crit_edge: ; preds = %do.body.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

if.then6.i.i16:                                   ; preds = %do.body.i.i15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i10, i32 noundef 64, i32 noundef 0, i32 noundef 2) #13
  br label %encx24j600_clr_bits.exit

encx24j600_clr_bits.exit:                         ; preds = %if.then6.i.i16, %do.body.i.i15.encx24j600_clr_bits.exit_crit_edge, %sw.bb1.encx24j600_clr_bits.exit_crit_edge
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %23 = ptrtoint ptr %regmap.i.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i.i9, align 4
  %call.i18 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 52, i32 noundef 75) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %encx24j600_clr_bits.exit.sw.epilog_crit_edge, label %do.body.i23, !prof !244

encx24j600_clr_bits.exit.sw.epilog_crit_edge:     ; preds = %encx24j600_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body.i23:                                      ; preds = %encx24j600_clr_bits.exit
  %msg_enable.i20 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %25 = ptrtoint ptr %msg_enable.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_enable.i20, align 4
  %and.i21 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool4.not.i22 = icmp eq i32 %and.i21, 0
  br i1 %tobool4.not.i22, label %do.body.i23.sw.epilog_crit_edge, label %if.then5.i24

do.body.i23.sw.epilog_crit_edge:                  ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then5.i24:                                     ; preds = %do.body.i23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %22, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i18, i32 noundef 52, i32 noundef 75) #13
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %priv, align 4
  %regmap.i.i26 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %regmap.i.i26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i.i26, align 4
  %call.i.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 64, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %call.i.i.i27, 0
  br i1 %tobool.not.i.i28, label %sw.default.encx24j600_clr_bits.exit34_crit_edge, label %do.body.i.i32, !prof !244

sw.default.encx24j600_clr_bits.exit34_crit_edge:  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit34

do.body.i.i32:                                    ; preds = %sw.default
  %msg_enable.i.i29 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %31 = ptrtoint ptr %msg_enable.i.i29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_enable.i.i29, align 4
  %and.i.i30 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i30)
  %tobool5.not.i.i31 = icmp eq i32 %and.i.i30, 0
  br i1 %tobool5.not.i.i31, label %do.body.i.i32.encx24j600_clr_bits.exit34_crit_edge, label %if.then6.i.i33

do.body.i.i32.encx24j600_clr_bits.exit34_crit_edge: ; preds = %do.body.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit34

if.then6.i.i33:                                   ; preds = %do.body.i.i32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i27, i32 noundef 64, i32 noundef 0, i32 noundef 2) #13
  br label %encx24j600_clr_bits.exit34

encx24j600_clr_bits.exit34:                       ; preds = %if.then6.i.i33, %do.body.i.i32.encx24j600_clr_bits.exit34_crit_edge, %sw.default.encx24j600_clr_bits.exit34_crit_edge
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %35 = ptrtoint ptr %regmap.i.i26 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i26, align 4
  %call.i36 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 52, i32 noundef 73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool.not.i37 = icmp eq i32 %call.i36, 0
  br i1 %tobool.not.i37, label %encx24j600_clr_bits.exit34.sw.epilog_crit_edge, label %do.body.i41, !prof !244

encx24j600_clr_bits.exit34.sw.epilog_crit_edge:   ; preds = %encx24j600_clr_bits.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.body.i41:                                      ; preds = %encx24j600_clr_bits.exit34
  %msg_enable.i38 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %37 = ptrtoint ptr %msg_enable.i38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable.i38, align 4
  %and.i39 = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool4.not.i40 = icmp eq i32 %and.i39, 0
  br i1 %tobool4.not.i40, label %do.body.i41.sw.epilog_crit_edge, label %if.then5.i42

do.body.i41.sw.epilog_crit_edge:                  ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then5.i42:                                     ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i36, i32 noundef 52, i32 noundef 73) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then5.i42, %do.body.i41.sw.epilog_crit_edge, %encx24j600_clr_bits.exit34.sw.epilog_crit_edge, %if.then5.i24, %do.body.i23.sw.epilog_crit_edge, %encx24j600_clr_bits.exit.sw.epilog_crit_edge, %if.then5.i, %do.body.i.sw.epilog_crit_edge, %encx24j600_set_bits.exit.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_reset_hw_tx(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 110, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.encx24j600_set_bits.exit_crit_edge, label %do.body.i.i, !prof !244

entry.encx24j600_set_bits.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit

do.body.i.i:                                      ; preds = %entry
  %msg_enable.i.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %4 = ptrtoint ptr %msg_enable.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.encx24j600_set_bits.exit_crit_edge, label %if.then6.i.i

do.body.i.i.encx24j600_set_bits.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_set_bits.exit

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i, i32 noundef 110, i32 noundef 64, i32 noundef 64) #13
  br label %encx24j600_set_bits.exit

encx24j600_set_bits.exit:                         ; preds = %if.then6.i.i, %do.body.i.i.encx24j600_set_bits.exit_crit_edge, %entry.encx24j600_set_bits.exit_crit_edge
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 110, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i3)
  %tobool.not.i.i4 = icmp eq i32 %call.i.i.i3, 0
  br i1 %tobool.not.i.i4, label %encx24j600_set_bits.exit.encx24j600_clr_bits.exit_crit_edge, label %do.body.i.i8, !prof !244

encx24j600_set_bits.exit.encx24j600_clr_bits.exit_crit_edge: ; preds = %encx24j600_set_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

do.body.i.i8:                                     ; preds = %encx24j600_set_bits.exit
  %msg_enable.i.i5 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %10 = ptrtoint ptr %msg_enable.i.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i.i5, align 4
  %and.i.i6 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6)
  %tobool5.not.i.i7 = icmp eq i32 %and.i.i6, 0
  br i1 %tobool5.not.i.i7, label %do.body.i.i8.encx24j600_clr_bits.exit_crit_edge, label %if.then6.i.i9

do.body.i.i8.encx24j600_clr_bits.exit_crit_edge:  ; preds = %do.body.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

if.then6.i.i9:                                    ; preds = %do.body.i.i8
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i3, i32 noundef 110, i32 noundef 0, i32 noundef 64) #13
  br label %encx24j600_clr_bits.exit

encx24j600_clr_bits.exit:                         ; preds = %if.then6.i.i9, %do.body.i.i8.encx24j600_clr_bits.exit_crit_edge, %encx24j600_set_bits.exit.encx24j600_clr_bits.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @encx24j600_hw_tx(ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %tx_skb = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.112, i32 noundef %7) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and2 = and i32 %9, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end.if.end8_crit_edge, label %if.then4

do.end.if.end8_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then4:                                         ; preds = %do.end
  %tx_skb5 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 3
  %10 = ptrtoint ptr %tx_skb5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_skb5, align 4
  %len6 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len6, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_packet.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_hw_tx, %if.then.i)) #10
          to label %do.body3.i [label %if.then.i], !srcloc !247

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dump_packet.__UNIQUE_ID_ddebug343, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.113, i32 noundef %13) #10
  br label %do.body3.i

do.body3.i:                                       ; preds = %if.then.i, %if.then4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dump_packet.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@encx24j600_hw_tx, %if.then15.i)) #10
          to label %if.end8 [label %if.then15.i], !srcloc !247

if.then15.i:                                      ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %15, i32 noundef %13, i1 noundef zeroext true) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then15.i, %do.body3.i, %do.end.if.end8_crit_edge
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val.i, align 4
  %regmap.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 28, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end8.encx24j600_read_reg.exit_crit_edge, label %do.body.i, !prof !244

if.end8.encx24j600_read_reg.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

do.body.i:                                        ; preds = %if.end8
  %21 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %msg_enable, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %do.body.i.encx24j600_read_reg.exit_crit_edge, label %if.then4.i

do.body.i.encx24j600_read_reg.exit_crit_edge:     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_read_reg.exit

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %17, ptr noundef nonnull @.str.117, ptr noundef nonnull @__func__.encx24j600_read_reg, i32 noundef %call.i, i32 noundef 28) #13
  br label %encx24j600_read_reg.exit

encx24j600_read_reg.exit:                         ; preds = %if.then4.i, %do.body.i.encx24j600_read_reg.exit_crit_edge, %if.end8.encx24j600_read_reg.exit_crit_edge
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool10.not = icmp eq i32 %25, 0
  br i1 %tobool10.not, label %encx24j600_read_reg.exit.if.end12_crit_edge, label %if.then11

encx24j600_read_reg.exit.if.end12_crit_edge:      ; preds = %encx24j600_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then11:                                        ; preds = %encx24j600_read_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @encx24j600_reset_hw_tx(ptr noundef %priv)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %encx24j600_read_reg.exit.if.end12_crit_edge
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 28, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end12.encx24j600_clr_bits.exit_crit_edge, label %do.body.i.i, !prof !244

if.end12.encx24j600_clr_bits.exit_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

do.body.i.i:                                      ; preds = %if.end12
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 4
  %and.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %do.body.i.i.encx24j600_clr_bits.exit_crit_edge, label %if.then6.i.i

do.body.i.i.encx24j600_clr_bits.exit_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_clr_bits.exit

if.then6.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.encx24j600_update_reg, i32 noundef %call.i.i.i, i32 noundef 28, i32 noundef 0, i32 noundef 8) #13
  br label %encx24j600_clr_bits.exit

encx24j600_clr_bits.exit:                         ; preds = %if.then6.i.i, %do.body.i.i.encx24j600_clr_bits.exit_crit_edge, %if.end12.encx24j600_clr_bits.exit_crit_edge
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 4
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i, align 4
  %call.i38 = call i32 @regmap_write(ptr noundef %35, i32 noundef 136, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool.not.i39 = icmp eq i32 %call.i38, 0
  br i1 %tobool.not.i39, label %encx24j600_clr_bits.exit.encx24j600_write_reg.exit_crit_edge, label %do.body.i42, !prof !244

encx24j600_clr_bits.exit.encx24j600_write_reg.exit_crit_edge: ; preds = %encx24j600_clr_bits.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit

do.body.i42:                                      ; preds = %encx24j600_clr_bits.exit
  %36 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable, align 4
  %and.i41 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool4.not.i = icmp eq i32 %and.i41, 0
  br i1 %tobool4.not.i, label %do.body.i42.encx24j600_write_reg.exit_crit_edge, label %if.then5.i

do.body.i42.encx24j600_write_reg.exit_crit_edge:  ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit

if.then5.i:                                       ; preds = %do.body.i42
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %33, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i38, i32 noundef 136, i32 noundef 0) #13
  br label %encx24j600_write_reg.exit

encx24j600_write_reg.exit:                        ; preds = %if.then5.i, %do.body.i42.encx24j600_write_reg.exit_crit_edge, %encx24j600_clr_bits.exit.encx24j600_write_reg.exit_crit_edge
  %tx_skb13 = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 3
  %38 = ptrtoint ptr %tx_skb13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_skb13, align 4
  %data14 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 19
  %40 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data14, align 4
  %len16 = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 6
  %42 = ptrtoint ptr %len16 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len16, align 4
  %ctx.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2
  %mutex.i = getelementptr inbounds %struct.encx24j600_priv, ptr %priv, i32 0, i32 2, i32 3
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #10
  %call.i43 = call i32 @regmap_encx24j600_spi_write(ptr noundef %ctx.i, i8 noundef zeroext 42, ptr noundef %41, i32 noundef %43) #10
  call void @mutex_unlock(ptr noundef %mutex.i) #10
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %46 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i, align 4
  %call.i45 = call i32 @regmap_write(ptr noundef %47, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool.not.i46 = icmp eq i32 %call.i45, 0
  br i1 %tobool.not.i46, label %encx24j600_write_reg.exit.encx24j600_write_reg.exit52_crit_edge, label %do.body.i50, !prof !244

encx24j600_write_reg.exit.encx24j600_write_reg.exit52_crit_edge: ; preds = %encx24j600_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit52

do.body.i50:                                      ; preds = %encx24j600_write_reg.exit
  %48 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable, align 4
  %and.i48 = and i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool4.not.i49 = icmp eq i32 %and.i48, 0
  br i1 %tobool4.not.i49, label %do.body.i50.encx24j600_write_reg.exit52_crit_edge, label %if.then5.i51

do.body.i50.encx24j600_write_reg.exit52_crit_edge: ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit52

if.then5.i51:                                     ; preds = %do.body.i50
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %45, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i45, i32 noundef 0, i32 noundef 0) #13
  br label %encx24j600_write_reg.exit52

encx24j600_write_reg.exit52:                      ; preds = %if.then5.i51, %do.body.i50.encx24j600_write_reg.exit52_crit_edge, %encx24j600_write_reg.exit.encx24j600_write_reg.exit52_crit_edge
  %50 = ptrtoint ptr %tx_skb13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_skb13, align 4
  %len19 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %len19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len19, align 4
  %54 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %priv, align 4
  %56 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i, align 4
  %conv1.i = and i32 %53, 65535
  %call.i54 = call i32 @regmap_write(ptr noundef %57, i32 noundef 2, i32 noundef %conv1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %encx24j600_write_reg.exit52.encx24j600_write_reg.exit61_crit_edge, label %do.body.i59, !prof !244

encx24j600_write_reg.exit52.encx24j600_write_reg.exit61_crit_edge: ; preds = %encx24j600_write_reg.exit52
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit61

do.body.i59:                                      ; preds = %encx24j600_write_reg.exit52
  %58 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %msg_enable, align 4
  %and.i57 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i57)
  %tobool4.not.i58 = icmp eq i32 %and.i57, 0
  br i1 %tobool4.not.i58, label %do.body.i59.encx24j600_write_reg.exit61_crit_edge, label %if.then5.i60

do.body.i59.encx24j600_write_reg.exit61_crit_edge: ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_write_reg.exit61

if.then5.i60:                                     ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %55, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.encx24j600_write_reg, i32 noundef %call.i54, i32 noundef 2, i32 noundef %conv1.i) #13
  br label %encx24j600_write_reg.exit61

encx24j600_write_reg.exit61:                      ; preds = %if.then5.i60, %do.body.i59.encx24j600_write_reg.exit61_crit_edge, %encx24j600_write_reg.exit52.encx24j600_write_reg.exit61_crit_edge
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 4
  %62 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i, align 4
  %call.i63 = call i32 @regmap_write(ptr noundef %63, i32 noundef 212, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %encx24j600_write_reg.exit61.encx24j600_cmd.exit_crit_edge, label %do.body.i68, !prof !244

encx24j600_write_reg.exit61.encx24j600_cmd.exit_crit_edge: ; preds = %encx24j600_write_reg.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit

do.body.i68:                                      ; preds = %encx24j600_write_reg.exit61
  %64 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %msg_enable, align 4
  %and.i66 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool3.not.i67 = icmp eq i32 %and.i66, 0
  br i1 %tobool3.not.i67, label %do.body.i68.encx24j600_cmd.exit_crit_edge, label %if.then4.i69

do.body.i68.encx24j600_cmd.exit_crit_edge:        ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_cmd.exit

if.then4.i69:                                     ; preds = %do.body.i68
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %61, ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.encx24j600_cmd, i32 noundef %call.i63, i32 noundef 212) #13
  br label %encx24j600_cmd.exit

encx24j600_cmd.exit:                              ; preds = %if.then4.i69, %do.body.i68.encx24j600_cmd.exit_crit_edge, %encx24j600_write_reg.exit61.encx24j600_cmd.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_encx24j600_spi_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encx24j600_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #10
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.114, i32 noundef 32) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @encx24j600_get_regs_len(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 160
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @encx24j600_get_regs(ptr noundef %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %version, align 4
  %lock = getelementptr i8, ptr %dev, i32 2308
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %regmap = getelementptr i8, ptr %dev, i32 2404
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %conv13 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val, align 4
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv13, ptr noundef nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %conv4 = trunc i32 %5 to i16
  %arrayidx = getelementptr i16, ptr %p, i32 %conv13
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv4, ptr %arrayidx, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  %add = add nuw nsw i32 %conv13, 2
  %cmp = icmp ult i32 %conv13, 158
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @encx24j600_get_msglevel(ptr nocapture noundef readonly %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2640
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @encx24j600_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %val) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 2640
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 207) #10
  %speed = getelementptr i8, ptr %dev, i32 2634
  %0 = ptrtoint ptr %speed to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %speed, align 2
  %conv = zext i16 %1 to i32
  %speed2 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %speed2, align 4
  %full_duplex = getelementptr i8, ptr %dev, i32 2631
  %3 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %full_duplex, align 1, !range !245
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %duplex, align 4
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %6 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %port, align 1
  %autoneg = getelementptr i8, ptr %dev, i32 2632
  %7 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %autoneg, align 4, !range !245
  %autoneg12 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %9 = ptrtoint ptr %autoneg12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %autoneg12, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @encx24j600_set_link_ksettings(ptr noundef %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %autoneg, align 1
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %conv = trunc i32 %3 to i16
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %duplex, align 4
  %hw_enabled.i = getelementptr i8, ptr %dev, i32 2630
  %6 = ptrtoint ptr %hw_enabled.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hw_enabled.i, align 2, !range !245
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body23.i

if.then.i:                                        ; preds = %entry
  %8 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.118)
  switch i16 %conv, label %do.body.i [
    i16 10, label %if.then.i.if.then5.i_crit_edge
    i16 100, label %if.then.i.if.then5.i_crit_edge5
  ]

if.then.i.if.then5.i_crit_edge5:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

if.then.i.if.then5.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.then.i.if.then5.i_crit_edge, %if.then.i.if.then5.i_crit_edge5
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp7.i = icmp eq i8 %1, 1
  %autoneg9.i = getelementptr i8, ptr %dev, i32 2632
  %frombool.i = zext i1 %cmp7.i to i8
  %9 = ptrtoint ptr %autoneg9.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool.i, ptr %autoneg9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp11.i = icmp eq i8 %5, 1
  %full_duplex.i = getelementptr i8, ptr %dev, i32 2631
  %frombool13.i = zext i1 %cmp11.i to i8
  %10 = ptrtoint ptr %full_duplex.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool13.i, ptr %full_duplex.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %conv)
  %cmp15.i = icmp eq i16 %conv, 100
  %conv17.i = zext i1 %cmp15.i to i16
  %speed18.i = getelementptr i8, ptr %dev, i32 2634
  %11 = ptrtoint ptr %speed18.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv17.i, ptr %speed18.i, align 2
  br label %encx24j600_setlink.exit

do.body.i:                                        ; preds = %if.then.i
  %msg_enable.i = getelementptr i8, ptr %dev, i32 2640
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i, align 4
  %and.i = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool19.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool19.not.i, label %do.body.i.encx24j600_setlink.exit_crit_edge, label %if.then20.i

do.body.i.encx24j600_setlink.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_setlink.exit

if.then20.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.115) #13
  br label %encx24j600_setlink.exit

do.body23.i:                                      ; preds = %entry
  %msg_enable24.i = getelementptr i8, ptr %dev, i32 2640
  %14 = ptrtoint ptr %msg_enable24.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable24.i, align 4
  %and25.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %do.body23.i.encx24j600_setlink.exit_crit_edge, label %if.then27.i

do.body23.i.encx24j600_setlink.exit_crit_edge:    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %encx24j600_setlink.exit

if.then27.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.116) #13
  br label %encx24j600_setlink.exit

encx24j600_setlink.exit:                          ; preds = %if.then27.i, %do.body23.i.encx24j600_setlink.exit_crit_edge, %if.then20.i, %do.body.i.encx24j600_setlink.exit_crit_edge, %if.then5.i
  %ret.0.i = phi i32 [ 0, %if.then5.i ], [ -95, %if.then20.i ], [ -95, %do.body.i.encx24j600_setlink.exit_crit_edge ], [ -16, %if.then27.i ], [ -16, %do.body23.i.encx24j600_setlink.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 108)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !50, !51, !52, !54, !56, !58, !60, !61, !62, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !78, !79, !80, !81, !83, !85, !87, !89, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !107, !108, !109, !110, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !133, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !219, !220, !222, !224, !226, !228, !230, !232, !234}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype341, !1, !"__UNIQUE_ID_debugtype341", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug342, !4, !"__UNIQUE_ID_debug342", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 29, i32 1}
!5 = !{ptr @__initcall__kmod_encx24j600__355_1125_encx24j600_spi_net_driver_init6, !6, !"__initcall__kmod_encx24j600__355_1125_encx24j600_spi_net_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1125, i32 1}
!7 = !{ptr @__exitcall_encx24j600_spi_net_driver_exit, !6, !"__exitcall_encx24j600_spi_net_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description356, !9, !"__UNIQUE_ID_description356", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1127, i32 1}
!10 = !{ptr @__UNIQUE_ID_author357, !11, !"__UNIQUE_ID_author357", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1128, i32 1}
!12 = !{ptr @__UNIQUE_ID_file358, !13, !"__UNIQUE_ID_file358", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1129, i32 1}
!14 = !{ptr @__UNIQUE_ID_license359, !13, !"__UNIQUE_ID_license359", i1 false, i1 false}
!15 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!16 = !{ptr @debug, !17, !"debug", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 27, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1116, i32 11}
!20 = !{ptr @encx24j600_spi_net_driver, !21, !"encx24j600_spi_net_driver", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1114, i32 26}
!22 = !{ptr @encx24j600_spi_id_table, !23, !"encx24j600_spi_id_table", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1108, i32 35}
!24 = !{ptr @encx24j600_spi_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1034, i32 2}
!26 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1038, i32 3}
!29 = !{ptr @encx24j600_spi_probe.__key.3, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1047, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1067, i32 3}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1078, i32 2}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 1081, i32 2}
!38 = !{ptr @encx24j600_netdev_ops, !39, !"encx24j600_netdev_ops", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 987, i32 36}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 776, i32 19}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 423, i32 4}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 169, i32 3}
!46 = !{ptr @__func__.encx24j600_cmd, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 294, i32 2}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @encx24j600_int_link_handler.__UNIQUE_ID_ddebug350, !48, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 276, i32 3}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 278, i32 3}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 231, i32 4}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 239, i32 4}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 138, i32 3}
!66 = !{ptr @__func__.encx24j600_read_phy, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 149, i32 3}
!69 = !{ptr @__func__.encx24j600_write_phy, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 127, i32 3}
!72 = !{ptr @__func__.encx24j600_update_reg, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__func__.encx24j600_write_reg, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 116, i32 3}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 319, i32 2}
!77 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @encx24j600_tx_complete.__UNIQUE_ID_ddebug351, !76, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!79 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__func__.encx24j600_rx_packets, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 371, i32 30}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 375, i32 4}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 76, i32 19}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 77, i32 2}
!89 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug345, !88, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 79, i32 2}
!93 = !{ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug346, !92, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 82, i32 2}
!96 = !{ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug347, !95, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 86, i32 2}
!99 = !{ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug348, !98, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 91, i32 2}
!102 = !{ptr @encx24j600_dump_rsv.__UNIQUE_ID_ddebug349, !101, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 336, i32 3}
!105 = !{ptr @encx24j600_receive_packet._rs, !104, !"_rs", i1 false, i1 false}
!106 = !{ptr @__func__.encx24j600_receive_packet, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @encx24j600_receive_packet._entry, !104, !"_entry", i1 false, i1 false}
!109 = !{ptr @encx24j600_receive_packet._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 344, i32 15}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 67, i32 2}
!114 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dump_packet.__UNIQUE_ID_ddebug343, !113, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 68, i32 2}
!118 = !{ptr @dump_packet.__UNIQUE_ID_ddebug344, !117, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!119 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 814, i32 3}
!122 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug352, !121, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 817, i32 3}
!126 = !{ptr @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug353, !125, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!127 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 821, i32 3}
!130 = !{ptr @encx24j600_set_multicast_list.__UNIQUE_ID_ddebug354, !129, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 733, i32 3}
!133 = !{ptr @.str.50, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 739, i32 2}
!135 = !{ptr @.str.51, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 895, i32 2}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 649, i32 32}
!139 = !{ptr @.str.53, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 552, i32 2}
!141 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @encx24j600_dump_config._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @encx24j600_dump_config._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 555, i32 2}
!146 = !{ptr @encx24j600_dump_config._entry.55, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @encx24j600_dump_config._entry_ptr.57, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 556, i32 2}
!150 = !{ptr @encx24j600_dump_config._entry.58, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @encx24j600_dump_config._entry_ptr.60, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 557, i32 2}
!154 = !{ptr @encx24j600_dump_config._entry.61, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @encx24j600_dump_config._entry_ptr.63, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.65, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 559, i32 2}
!158 = !{ptr @encx24j600_dump_config._entry.64, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @encx24j600_dump_config._entry_ptr.66, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 560, i32 2}
!162 = !{ptr @encx24j600_dump_config._entry.67, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @encx24j600_dump_config._entry_ptr.69, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 561, i32 2}
!166 = !{ptr @encx24j600_dump_config._entry.70, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @encx24j600_dump_config._entry_ptr.72, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 564, i32 2}
!170 = !{ptr @encx24j600_dump_config._entry.73, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @encx24j600_dump_config._entry_ptr.75, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 565, i32 2}
!174 = !{ptr @encx24j600_dump_config._entry.76, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @encx24j600_dump_config._entry_ptr.78, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 566, i32 2}
!178 = !{ptr @encx24j600_dump_config._entry.79, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @encx24j600_dump_config._entry_ptr.81, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 567, i32 2}
!182 = !{ptr @encx24j600_dump_config._entry.82, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @encx24j600_dump_config._entry_ptr.84, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 569, i32 2}
!186 = !{ptr @encx24j600_dump_config._entry.85, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @encx24j600_dump_config._entry_ptr.87, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 573, i32 2}
!190 = !{ptr @encx24j600_dump_config._entry.88, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @encx24j600_dump_config._entry_ptr.90, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.92, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 574, i32 2}
!194 = !{ptr @encx24j600_dump_config._entry.91, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @encx24j600_dump_config._entry_ptr.93, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 575, i32 2}
!198 = !{ptr @encx24j600_dump_config._entry.94, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @encx24j600_dump_config._entry_ptr.96, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 576, i32 2}
!202 = !{ptr @encx24j600_dump_config._entry.97, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @encx24j600_dump_config._entry_ptr.99, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.101, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 578, i32 2}
!206 = !{ptr @encx24j600_dump_config._entry.100, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @encx24j600_dump_config._entry_ptr.102, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.104, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 579, i32 2}
!210 = !{ptr @encx24j600_dump_config._entry.103, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @encx24j600_dump_config._entry_ptr.105, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.107, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 581, i32 2}
!214 = !{ptr @encx24j600_dump_config._entry.106, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @encx24j600_dump_config._entry_ptr.108, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.110, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 583, i32 2}
!218 = !{ptr @encx24j600_dump_config._entry.109, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @encx24j600_dump_config._entry_ptr.111, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.112, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 833, i32 2}
!222 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 837, i32 15}
!224 = !{ptr @encx24j600_ethtool_ops, !225, !"encx24j600_ethtool_ops", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 977, i32 33}
!226 = !{ptr @.str.114, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 929, i32 25}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 694, i32 4}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 700, i32 3}
!232 = !{ptr @.str.117, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/microchip/encx24j600.c", i32 105, i32 3}
!234 = !{ptr @__func__.encx24j600_read_reg, !233, !"<string literal>", i1 false, i1 false}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{!"branch_weights", i32 2000, i32 1}
!245 = !{i8 0, i8 2}
!246 = !{!"branch_weights", i32 1, i32 2000}
!247 = !{i64 2148305275, i64 2148305280, i64 2148305293, i64 2148305337, i64 2148305371, i64 2148305392}
!248 = !{i64 2156381663, i64 2156382171, i64 2156381700, i64 2156381756, i64 2156381790, i64 2156381814, i64 2156381855, i64 2156381876, i64 2156381904, i64 2156381938}
!249 = !{i64 2156378083}
!250 = !{i64 2156377925}
