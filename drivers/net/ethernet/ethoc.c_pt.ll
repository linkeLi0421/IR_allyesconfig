; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ethoc.c_pt.bc'
source_filename = "../drivers/net/ethernet/ethoc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.97 }
%union.anon.97 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ethoc_platform_data = type { [6 x i8], i8, i32, i8 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ethoc = type { ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.napi_struct, i32, %struct.spinlock, ptr, ptr, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.ifreq = type { %union.anon.104, %union.anon.105 }
%union.anon.104 = type { [16 x i8] }
%union.anon.105 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_buffer_size = internal constant [18 x i8] c"ethoc.buffer_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@buffer_size = internal global { i32, [28 x i8] } { i32 32768, [28 x i8] zeroinitializer }, align 32
@__param_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_buffer_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.97 { ptr @buffer_size } }, section "__param", align 4
@__UNIQUE_ID_buffer_sizetype349 = internal constant [31 x i8] c"ethoc.parmtype=buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_buffer_size350 = internal constant [50 x i8] c"ethoc.parm=buffer_size:DMA buffer allocation size\00", section ".modinfo", align 1
@__initcall__kmod_ethoc__359_1310_ethoc_driver_init6 = internal global ptr @ethoc_driver_init, section ".initcall6.init", align 4
@ethoc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ethoc_probe, ptr @ethoc_remove, ptr null, ptr @ethoc_suspend, ptr @ethoc_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ethoc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ethoc_driver_exit = internal global ptr @ethoc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author360 = internal constant [63 x i8] c"ethoc.author=Thierry Reding <thierry.reding@avionic-design.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description361 = internal constant [48 x i8] c"ethoc.description=OpenCores Ethernet MAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file362 = internal constant [38 x i8] c"ethoc.file=drivers/net/ethernet/ethoc\00", section ".modinfo", align 1
@__UNIQUE_ID_license363 = internal constant [21 x i8] c"ethoc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ethoc\00", [26 x i8] zeroinitializer }, align 32
@ethoc_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"opencores,ethoc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ethoc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1049, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cannot obtain I/O memory space\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ethoc_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/ethernet/ethoc.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr = internal global ptr @ethoc_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ethoc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cannot request I/O memory space\0A\00", [63 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.8 = internal global ptr @ethoc_probe._entry.6, section ".printk_index", align 4
@ethoc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot request memory space\0A\00", [35 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.11 = internal global ptr @ethoc_probe._entry.9, section ".printk_index", align 4
@ethoc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot remap I/O memory space\0A\00", [33 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.14 = internal global ptr @ethoc_probe._entry.12, section ".printk_index", align 4
@ethoc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 1103, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot remap memory space\0A\00", [37 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.17 = internal global ptr @ethoc_probe._entry.15, section ".printk_index", align 4
@ethoc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot allocate %dB buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.20 = internal global ptr @ethoc_probe._entry.18, section ".printk_index", align 4
@ethoc_probe.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.21, i8 1, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ethoc: num_tx: %d num_rx: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ethoc_probe.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 1, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"setting MII clkdiv to %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ethoc-mdio\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@ethoc_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1210, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register MDIO bus\0A\00", [35 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.27 = internal global ptr @ethoc_probe._entry.25, section ".printk_index", align 4
@ethoc_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to probe MDIO bus\0A\00", [38 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.30 = internal global ptr @ethoc_probe._entry.28, section ".printk_index", align 4
@ethoc_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @ethoc_open, ptr @ethoc_stop, ptr @ethoc_start_xmit, ptr null, ptr null, ptr null, ptr @ethoc_set_multicast_list, ptr @ethoc_set_mac_address, ptr null, ptr null, ptr @ethoc_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @ethoc_change_mtu, ptr null, ptr @ethoc_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@ethoc_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr @ethoc_get_regs_len, ptr @ethoc_get_regs, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethoc_get_ringparam, ptr @ethoc_set_ringparam, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_ts_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@ethoc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@ethoc_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register interface\0A\00", [34 x i8] zeroinitializer }, align 32
@ethoc_probe._entry_ptr.34 = internal global ptr @ethoc_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no PHY found\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@ethoc_open.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ethoc_open\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" resuming queue\0A\00", [47 x i8] zeroinitializer }, align 32
@ethoc_open.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.39, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" starting queue\0A\00", [47 x i8] zeroinitializer }, align 32
@ethoc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 756, ptr @.str.41, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I/O: %08lx Memory: %08lx-%08lx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ethoc_open._entry_ptr = internal global ptr @ethoc_open._entry, section ".printk_index", align 4
@ethoc_interrupt.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ethoc_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"packet dropped\0A\00", [16 x i8] zeroinitializer }, align 32
@ethoc_start_xmit.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ethoc_start_xmit\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stopping queue\0A\00", [16 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@ethoc_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 462, ptr @.str.48, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"low on memory - packet dropped\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethoc_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ethoc_rx._entry_ptr = internal global ptr @ethoc_rx._entry, section ".printk_index", align 4
@ethoc_update_rx_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX: frame too long\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ethoc_update_rx_stats\00", [42 x i8] zeroinitializer }, align 32
@ethoc_update_rx_stats._entry_ptr = internal global ptr @ethoc_update_rx_stats._entry, section ".printk_index", align 4
@ethoc_update_rx_stats._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"RX: frame too short\0A\00", [43 x i8] zeroinitializer }, align 32
@ethoc_update_rx_stats._entry_ptr.53 = internal global ptr @ethoc_update_rx_stats._entry.51, section ".printk_index", align 4
@ethoc_update_rx_stats._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX: dribble nibble\0A\00", [44 x i8] zeroinitializer }, align 32
@ethoc_update_rx_stats._entry_ptr.56 = internal global ptr @ethoc_update_rx_stats._entry.54, section ".printk_index", align 4
@ethoc_update_rx_stats._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RX: wrong CRC\0A\00", [17 x i8] zeroinitializer }, align 32
@ethoc_update_rx_stats._entry_ptr.59 = internal global ptr @ethoc_update_rx_stats._entry.57, section ".printk_index", align 4
@ethoc_update_rx_stats._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.50, ptr @.str.3, i32 403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RX: overrun\0A\00", [19 x i8] zeroinitializer }, align 32
@ethoc_update_rx_stats._entry_ptr.62 = internal global ptr @ethoc_update_rx_stats._entry.60, section ".printk_index", align 4
@ethoc_update_rx_stats._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.50, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RX: late collision\0A\00", [44 x i8] zeroinitializer }, align 32
@ethoc_update_rx_stats._entry_ptr.65 = internal global ptr @ethoc_update_rx_stats._entry.63, section ".printk_index", align 4
@ethoc_update_tx_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.3, i32 485, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TX: late collision\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ethoc_update_tx_stats\00", [42 x i8] zeroinitializer }, align 32
@ethoc_update_tx_stats._entry_ptr = internal global ptr @ethoc_update_tx_stats._entry, section ".printk_index", align 4
@ethoc_update_tx_stats._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TX: retransmit limit\0A\00", [42 x i8] zeroinitializer }, align 32
@ethoc_update_tx_stats._entry_ptr.70 = internal global ptr @ethoc_update_tx_stats._entry.68, section ".printk_index", align 4
@ethoc_update_tx_stats._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TX: underrun\0A\00", [18 x i8] zeroinitializer }, align 32
@ethoc_update_tx_stats._entry_ptr.73 = internal global ptr @ethoc_update_tx_stats._entry.71, section ".printk_index", align 4
@ethoc_update_tx_stats._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.3, i32 500, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TX: carrier sense lost\0A\00", [40 x i8] zeroinitializer }, align 32
@ethoc_update_tx_stats._entry_ptr.76 = internal global ptr @ethoc_update_tx_stats._entry.74, section ".printk_index", align 4
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 27, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"ethoc_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1299, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1305, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"ethoc_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1293, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1049, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1057, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1070, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1094, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1103, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1113, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1136, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1188, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1201, i32 21 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1202, i32 44 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1210, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1216, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"ethoc_netdev_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1009, i32 36 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"ethoc_ethtool_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 997, i32 33 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1229, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 1233, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 711, i32 43 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 719, i32 40 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 742, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 745, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 755, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 576, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 918, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 461, i32 6 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 380, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 386, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 392, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 397, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 403, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 412, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 485, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 490, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 495, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.291 = private constant [32 x i8] c"../drivers/net/ethernet/ethoc.c\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.291, i32 500, i32 3 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author360, ptr @__UNIQUE_ID_buffer_size350, ptr @__UNIQUE_ID_buffer_sizetype349, ptr @__UNIQUE_ID_description361, ptr @__UNIQUE_ID_file362, ptr @__UNIQUE_ID_license363, ptr @__exitcall_ethoc_driver_exit, ptr @__initcall__kmod_ethoc__359_1310_ethoc_driver_init6, ptr @__param_buffer_size, ptr @ethoc_driver_exit, ptr @ethoc_open._entry, ptr @ethoc_open._entry_ptr, ptr @ethoc_probe._entry, ptr @ethoc_probe._entry.12, ptr @ethoc_probe._entry.15, ptr @ethoc_probe._entry.18, ptr @ethoc_probe._entry.25, ptr @ethoc_probe._entry.28, ptr @ethoc_probe._entry.32, ptr @ethoc_probe._entry.6, ptr @ethoc_probe._entry.9, ptr @ethoc_probe._entry_ptr, ptr @ethoc_probe._entry_ptr.11, ptr @ethoc_probe._entry_ptr.14, ptr @ethoc_probe._entry_ptr.17, ptr @ethoc_probe._entry_ptr.20, ptr @ethoc_probe._entry_ptr.27, ptr @ethoc_probe._entry_ptr.30, ptr @ethoc_probe._entry_ptr.34, ptr @ethoc_probe._entry_ptr.8, ptr @ethoc_rx._entry, ptr @ethoc_rx._entry_ptr, ptr @ethoc_update_rx_stats._entry, ptr @ethoc_update_rx_stats._entry.51, ptr @ethoc_update_rx_stats._entry.54, ptr @ethoc_update_rx_stats._entry.57, ptr @ethoc_update_rx_stats._entry.60, ptr @ethoc_update_rx_stats._entry.63, ptr @ethoc_update_rx_stats._entry_ptr, ptr @ethoc_update_rx_stats._entry_ptr.53, ptr @ethoc_update_rx_stats._entry_ptr.56, ptr @ethoc_update_rx_stats._entry_ptr.59, ptr @ethoc_update_rx_stats._entry_ptr.62, ptr @ethoc_update_rx_stats._entry_ptr.65, ptr @ethoc_update_tx_stats._entry, ptr @ethoc_update_tx_stats._entry.68, ptr @ethoc_update_tx_stats._entry.71, ptr @ethoc_update_tx_stats._entry.74, ptr @ethoc_update_tx_stats._entry_ptr, ptr @ethoc_update_tx_stats._entry_ptr.70, ptr @ethoc_update_tx_stats._entry_ptr.73, ptr @ethoc_update_tx_stats._entry_ptr.76, ptr @buffer_size, ptr @ethoc_driver, ptr @.str, ptr @ethoc_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @ethoc_netdev_ops, ptr @ethoc_ethtool_ops, ptr @ethoc_probe.__key, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_rx_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_rx_stats._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_rx_stats._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_rx_stats._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_rx_stats._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_rx_stats._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_tx_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_tx_stats._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_tx_stats._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethoc_update_tx_stats._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ethoc_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ethoc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @ethoc_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %eth_clkfreq1 = getelementptr inbounds %struct.ethoc_platform_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %eth_clkfreq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eth_clkfreq1, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %3, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call2 = tail call ptr @alloc_etherdev_mqs(i32 noundef 344, i32 noundef 1, i32 noundef 1) #12
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %cond.end.out_crit_edge, label %if.end

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %cond.end
  %dev5 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133
  %parent = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 133, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #12
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #15
  br label %free

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call6, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %name = getelementptr inbounds %struct.resource, ptr %call6, i32 0, i32 2
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call13 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef %11) #12
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #15
  br label %free

if.end20:                                         ; preds = %if.end10
  %12 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call13, align 4
  %base_addr = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 5
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %base_addr, align 32
  %call22 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #12
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end20.if.end38_crit_edge, label %if.then24

if.end20.if.end38_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then24:                                        ; preds = %if.end20
  %15 = ptrtoint ptr %call22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call22, align 4
  %end.i403 = getelementptr inbounds %struct.resource, ptr %call22, i32 0, i32 1
  %17 = ptrtoint ptr %end.i403 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i403, align 4
  %sub.i404 = sub i32 1, %16
  %add.i405 = add i32 %sub.i404, %18
  %name28 = getelementptr inbounds %struct.resource, ptr %call22, i32 0, i32 2
  %19 = ptrtoint ptr %name28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name28, align 4
  %call29 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %16, i32 noundef %add.i405, ptr noundef %20) #12
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #15
  br label %free

if.end36:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %call29 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call29, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 4
  %23 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mem_start, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call29, i32 0, i32 1
  %24 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %end, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 3
  %26 = ptrtoint ptr %mem_end to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mem_end, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %if.end20.if.end38_crit_edge
  %mem.0 = phi ptr [ %call29, %if.end36 ], [ null, %if.end20.if.end38_crit_edge ]
  %call39 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %if.end38.free_crit_edge, label %if.end41

if.end38.free_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %free

if.end41:                                         ; preds = %if.end38
  %irq = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 64
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call39, ptr %irq, align 4
  %add.ptr.i = getelementptr i8, ptr %call2, i32 2304
  %netdev43 = getelementptr i8, ptr %call2, i32 2344
  %28 = ptrtoint ptr %netdev43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call2, ptr %netdev43, align 8
  %29 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base_addr, align 32
  %end.i406 = getelementptr inbounds %struct.resource, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %end.i406 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i406, align 4
  %33 = ptrtoint ptr %call13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call13, align 4
  %sub.i407 = add i32 %32, 1
  %add.i408 = sub i32 %sub.i407, %34
  %call47 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %30, i32 noundef %add.i408) #12
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call47, ptr %add.ptr.i, align 8
  %tobool49.not = icmp eq ptr %call47, null
  br i1 %tobool49.not, label %do.end53, label %if.end55

do.end53:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #15
  br label %free

if.end55:                                         ; preds = %if.end41
  %mem_end56 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 3
  %36 = ptrtoint ptr %mem_end56 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mem_end56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool57.not = icmp eq i32 %37, 0
  br i1 %tobool57.not, label %if.else, label %if.then58

if.then58:                                        ; preds = %if.end55
  %mem_start60 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 4
  %38 = ptrtoint ptr %mem_start60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mem_start60, align 4
  %end.i409 = getelementptr inbounds %struct.resource, ptr %mem.0, i32 0, i32 1
  %40 = ptrtoint ptr %end.i409 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %end.i409, align 4
  %42 = ptrtoint ptr %mem.0 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mem.0, align 4
  %sub.i410 = add i32 %41, 1
  %add.i411 = sub i32 %sub.i410, %43
  %call62 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %39, i32 noundef %add.i411) #12
  %membase = getelementptr i8, ptr %call2, i32 2308
  %44 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call62, ptr %membase, align 4
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %do.end68, label %if.then58.if.end85_crit_edge

if.then58.if.end85_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85

do.end68:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #15
  br label %free

if.else:                                          ; preds = %if.end55
  %45 = load i32, ptr @buffer_size, align 4
  %mem_start72 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 4
  %call.i = tail call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef %45, ptr noundef %mem_start72, i32 noundef 3264, i32 noundef 0) #12
  %membase74 = getelementptr i8, ptr %call2, i32 2308
  %46 = ptrtoint ptr %membase74 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %membase74, align 4
  %tobool76.not = icmp eq ptr %call.i, null
  br i1 %tobool76.not, label %do.end80, label %if.end82

do.end80:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %47 = load i32, ptr @buffer_size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %47) #15
  br label %free

if.end82:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %mem_start72 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mem_start72, align 4
  %50 = load i32, ptr @buffer_size, align 4
  %add = add i32 %50, %49
  %51 = ptrtoint ptr %mem_end56 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add, ptr %mem_end56, align 8
  br label %if.end85

if.end85:                                         ; preds = %if.end82, %if.then58.if.end85_crit_edge
  br i1 %tobool.not, label %cond.false89, label %cond.true87

cond.true87:                                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %big_endian = getelementptr inbounds %struct.ethoc_platform_data, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %big_endian, align 4, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool88 = icmp ne i8 %53, 0
  br label %cond.end93

cond.false89:                                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %call91 = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %55) #12
  br label %cond.end93

cond.end93:                                       ; preds = %cond.false89, %cond.true87
  %cond94.in = phi i1 [ %tobool88, %cond.true87 ], [ %call91, %cond.false89 ]
  %big_endian96 = getelementptr i8, ptr %call2, i32 2312
  %frombool = zext i1 %cond94.in to i8
  %56 = ptrtoint ptr %big_endian96 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %frombool, ptr %big_endian96, align 8
  %57 = ptrtoint ptr %mem_end56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mem_end56, align 8
  %mem_start98 = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 4
  %59 = ptrtoint ptr %mem_start98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mem_start98, align 4
  %sub = sub i32 %58, %60
  %add99 = add i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 198143, i32 %add99)
  %cmp100 = icmp ugt i32 %add99, 198143
  %div = udiv i32 %add99, 1536
  %cond105 = select i1 %cmp100, i32 128, i32 %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %cond105)
  %cmp106 = icmp ult i32 %cond105, 4
  br i1 %cmp106, label %cond.end93.free_crit_edge, label %if.end109

cond.end93.free_crit_edge:                        ; preds = %cond.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %free

if.end109:                                        ; preds = %cond.end93
  %num_bd110 = getelementptr i8, ptr %call2, i32 2316
  %61 = ptrtoint ptr %num_bd110 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %cond105, ptr %num_bd110, align 4
  %62 = lshr i32 %cond105, 1
  %63 = tail call i32 @llvm.ctlz.i32(i32 %62, i1 true) #12, !range !164
  %sub.i.i.op.i = xor i32 %63, 31
  %sub.i.i.op.op.i = shl nuw i32 1, %sub.i.i.op.i
  %num_tx = getelementptr i8, ptr %call2, i32 2320
  %64 = ptrtoint ptr %num_tx to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %sub.i.i.op.op.i, ptr %num_tx, align 8
  %sub135 = sub i32 %cond105, %sub.i.i.op.op.i
  %num_rx = getelementptr i8, ptr %call2, i32 2332
  %65 = ptrtoint ptr %num_rx to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub135, ptr %num_rx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ethoc_probe.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ethoc_probe, %if.then143)) #12
          to label %devm_kcalloc.exit [label %if.then143], !srcloc !165

if.then143:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_tx, align 8
  %68 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_rx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ethoc_probe.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %67, i32 noundef %69) #12
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.then143, %if.end109
  %70 = shl nuw nsw i32 %cond105, 2
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %70, i32 noundef 3520) #12
  %vma = getelementptr i8, ptr %call2, i32 2340
  %71 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call5.i.i, ptr %vma, align 4
  %tobool153.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool153.not, label %devm_kcalloc.exit.free_crit_edge, label %if.end155

devm_kcalloc.exit.free_crit_edge:                 ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %free

if.end155:                                        ; preds = %devm_kcalloc.exit
  br i1 %tobool.not, label %if.else159, label %if.then157

if.then157:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_addr_mod(ptr noundef nonnull %call2, i32 noundef 0, ptr noundef nonnull %1, i32 noundef 6) #12
  %phy_id = getelementptr inbounds %struct.ethoc_platform_data, ptr %1, i32 0, i32 1
  %72 = ptrtoint ptr %phy_id to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %phy_id, align 2
  br label %if.end164

if.else159:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  %of_node161 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %74 = ptrtoint ptr %of_node161 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %of_node161, align 8
  %call162 = tail call i32 @of_get_ethdev_address(ptr noundef %75, ptr noundef nonnull %call2) #12
  br label %if.end164

if.end164:                                        ; preds = %if.else159, %if.then157
  %.sink = phi i8 [ -1, %if.else159 ], [ %73, %if.then157 ]
  %76 = getelementptr i8, ptr %call2, i32 2632
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.sink, ptr %76, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 86
  %78 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_addr, align 64
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = and i32 %81, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.i.not.i = icmp eq i32 %82, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end164.if.then166_crit_edge

if.end164.if.then166_crit_edge:                   ; preds = %if.end164
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then166

is_valid_ether_addr.exit:                         ; preds = %if.end164
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %84 to i32
  %or.i.i = or i32 %81, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then166_crit_edge, label %is_valid_ether_addr.exit.if.end170_crit_edge

is_valid_ether_addr.exit.if.end170_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end170

is_valid_ether_addr.exit.if.then166_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then166

if.then166:                                       ; preds = %is_valid_ether_addr.exit.if.then166_crit_edge, %if.end164.if.then166_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #12
  %85 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %86 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %87 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %88 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %89 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %90 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %91 = ptrtoint ptr %big_endian96 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %big_endian96, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i.i = icmp eq i8 %92, 0
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %94, i32 64
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #12
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i

if.else.i.i:                                      ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #14
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i

ethoc_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i413 = phi i32 [ %95, %if.then.i.i ], [ %96, %if.else.i.i ]
  %shr.i = lshr i32 %retval.0.i.i413, 24
  %conv.i = trunc i32 %shr.i to i8
  %97 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv.i, ptr %86, align 1
  %shr2.i = lshr i32 %retval.0.i.i413, 16
  %conv4.i = trunc i32 %shr2.i to i8
  %98 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv4.i, ptr %87, align 1
  %shr6.i = lshr i32 %retval.0.i.i413, 8
  %conv8.i = trunc i32 %shr6.i to i8
  %99 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv8.i, ptr %88, align 1
  %conv12.i = trunc i32 %retval.0.i.i413 to i8
  %100 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv12.i, ptr %89, align 1
  %101 = ptrtoint ptr %big_endian96 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %big_endian96, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i2.i = icmp eq i8 %102, 0
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i3.i = getelementptr i8, ptr %104, i32 68
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i3.i) #12
  br i1 %tobool.not.i2.i, label %if.else.i5.i, label %if.then.i4.i

if.then.i4.i:                                     ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_get_mac_address.exit

if.else.i5.i:                                     ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %106 = tail call i32 @llvm.bswap.i32(i32 %105) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_get_mac_address.exit

ethoc_get_mac_address.exit:                       ; preds = %if.else.i5.i, %if.then.i4.i
  %retval.0.i6.i = phi i32 [ %105, %if.then.i4.i ], [ %106, %if.else.i5.i ]
  %shr15.i = lshr i32 %retval.0.i6.i, 8
  %conv17.i = trunc i32 %shr15.i to i8
  %107 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv17.i, ptr %addr, align 1
  %conv21.i = trunc i32 %retval.0.i6.i to i8
  %108 = ptrtoint ptr %85 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv21.i, ptr %85, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call2, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #12
  br label %if.end170

if.end170:                                        ; preds = %ethoc_get_mac_address.exit, %is_valid_ether_addr.exit.if.end170_crit_edge
  %109 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev_addr, align 64
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  %113 = and i32 %112, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool.i.not.i414 = icmp eq i32 %113, 0
  br i1 %tobool.i.not.i414, label %is_valid_ether_addr.exit420, label %if.end170.if.then173_crit_edge

if.end170.if.then173_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then173

is_valid_ether_addr.exit420:                      ; preds = %if.end170
  %add.ptr.i.i415 = getelementptr i8, ptr %110, i32 4
  %114 = ptrtoint ptr %add.ptr.i.i415 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %add.ptr.i.i415, align 2
  %conv.i.i416 = zext i16 %115 to i32
  %or.i.i417 = or i32 %112, %conv.i.i416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i417)
  %cmp.i.i418.not = icmp eq i32 %or.i.i417, 0
  br i1 %cmp.i.i418.not, label %is_valid_ether_addr.exit420.if.then173_crit_edge, label %is_valid_ether_addr.exit420.if.end174_crit_edge

is_valid_ether_addr.exit420.if.end174_crit_edge:  ; preds = %is_valid_ether_addr.exit420
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end174

is_valid_ether_addr.exit420.if.then173_crit_edge: ; preds = %is_valid_ether_addr.exit420
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then173

if.then173:                                       ; preds = %is_valid_ether_addr.exit420.if.then173_crit_edge, %if.end170.if.then173_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #12
  %116 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %117 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %addr.i, align 1
  %119 = and i8 %118, -4
  %120 = or i8 %119, 2
  store i8 %120, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call2, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #12
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 55
  %121 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #12
  br label %if.end174

if.end174:                                        ; preds = %if.then173, %is_valid_ether_addr.exit420.if.end174_crit_edge
  call fastcc void @ethoc_do_set_mac_address(ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool175.not = icmp eq i32 %cond, 0
  br i1 %tobool175.not, label %if.then176, label %if.end174.if.then187_crit_edge

if.end174.if.then187_crit_edge:                   ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then187

if.then176:                                       ; preds = %if.end174
  %call178 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #12
  %cmp.i = icmp ugt ptr %call178, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then176.if.end212_crit_edge, label %if.end185

if.then176.if.end212_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end212

if.end185:                                        ; preds = %if.then176
  %clk181 = getelementptr i8, ptr %call2, i32 2628
  %122 = ptrtoint ptr %clk181 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call178, ptr %clk181, align 4
  call fastcc void @clk_prepare_enable(ptr noundef %call178)
  %call183 = call i32 @clk_get_rate(ptr noundef %call178) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool186.not = icmp eq i32 %call183, 0
  br i1 %tobool186.not, label %if.end185.if.end212_crit_edge, label %if.end185.if.then187_crit_edge

if.end185.if.then187_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then187

if.end185.if.end212_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end212

if.then187:                                       ; preds = %if.end185.if.then187_crit_edge, %if.end174.if.then187_crit_edge
  %eth_clkfreq.1442 = phi i32 [ %call183, %if.end185.if.then187_crit_edge ], [ %cond, %if.end174.if.then187_crit_edge ]
  %div188 = udiv i32 %eth_clkfreq.1442, 2500000
  %add189 = add nuw nsw i32 %div188, 1
  %and = and i32 %add189, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool190.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool190.not, i32 2, i32 %and
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ethoc_probe.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ethoc_probe, %if.then205)) #12
          to label %do.end209 [label %if.then205], !srcloc !165

if.then205:                                       ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ethoc_probe.__UNIQUE_ID_ddebug358, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %spec.store.select) #12
  br label %do.end209

do.end209:                                        ; preds = %if.then205, %if.then187
  %123 = ptrtoint ptr %big_endian96 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %big_endian96, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i = icmp eq i8 %124, 0
  %125 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %126, i32 40
  %127 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #14
  %128 = call i32 @llvm.bswap.i32(i32 %127) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i421 = phi i32 [ %127, %if.then.i ], [ %128, %if.else.i ]
  %and211 = and i32 %retval.0.i421, 256
  %or = or i32 %and211, %spec.store.select
  %129 = ptrtoint ptr %big_endian96 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %big_endian96, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool.not.i423 = icmp eq i8 %130, 0
  br i1 %tobool.not.i423, label %if.else.i426, label %do.body.i

do.body.i:                                        ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  call void @arm_heavy_mb() #12
  %131 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i424 = getelementptr i8, ptr %132, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i424, i32 %or) #12, !srcloc !169
  br label %if.end212

if.else.i426:                                     ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i425 = getelementptr i8, ptr %134, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  call void @arm_heavy_mb() #12
  %135 = call i32 @llvm.bswap.i32(i32 %or) #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i425, i32 %135) #12, !srcloc !169
  br label %if.end212

if.end212:                                        ; preds = %if.else.i426, %do.body.i, %if.end185.if.end212_crit_edge, %if.then176.if.end212_crit_edge
  %call.i427 = call ptr @mdiobus_alloc_size(i32 noundef 0) #12
  %mdio = getelementptr i8, ptr %call2, i32 2624
  %136 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i427, ptr %mdio, align 8
  %tobool215.not = icmp eq ptr %call.i427, null
  br i1 %tobool215.not, label %if.end212.free2_crit_edge, label %if.end217

if.end212.free2_crit_edge:                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #14
  br label %free2

if.end217:                                        ; preds = %if.end212
  %name219 = getelementptr inbounds %struct.mii_bus, ptr %call.i427, i32 0, i32 1
  %137 = ptrtoint ptr %name219 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @.str.23, ptr %name219, align 4
  %138 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mdio, align 8
  %id = getelementptr inbounds %struct.mii_bus, ptr %139, i32 0, i32 2
  %name223 = getelementptr inbounds %struct.mii_bus, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %name223 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name223, align 4
  %id224 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %142 = ptrtoint ptr %id224 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %id224, align 4
  %call225 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.24, ptr noundef %141, i32 noundef %143)
  %144 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mdio, align 8
  %read = getelementptr inbounds %struct.mii_bus, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr @ethoc_mdio_read, ptr %read, align 4
  %147 = load ptr, ptr %mdio, align 8
  %write = getelementptr inbounds %struct.mii_bus, ptr %147, i32 0, i32 5
  %148 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @ethoc_mdio_write, ptr %write, align 8
  %149 = load ptr, ptr %mdio, align 8
  %priv229 = getelementptr inbounds %struct.mii_bus, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %priv229 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %add.ptr.i, ptr %priv229, align 8
  %151 = load ptr, ptr %mdio, align 8
  %call231 = call i32 @__mdiobus_register(ptr noundef %151, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call231)
  %tobool232.not = icmp eq i32 %call231, 0
  br i1 %tobool232.not, label %if.end238, label %do.end236

do.end236:                                        ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.26) #15
  br label %free3

if.end238:                                        ; preds = %if.end217
  %152 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %76, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %153)
  %cmp.not.i = icmp eq i8 %153, -1
  br i1 %cmp.not.i, label %if.else.i430, label %if.then.i429

if.then.i429:                                     ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i428 = sext i8 %153 to i32
  %154 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mdio, align 8
  %call4.i = call ptr @mdiobus_get_phy(ptr noundef %155, i32 noundef %conv.i428) #12
  br label %if.end.i

if.else.i430:                                     ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #14
  %156 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %mdio, align 8
  %call6.i = call ptr @phy_find_first(ptr noundef %157) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i430, %if.then.i429
  %phy.0.i = phi ptr [ %call4.i, %if.then.i429 ], [ %call6.i, %if.else.i430 ]
  %tobool.not.i431 = icmp eq ptr %phy.0.i, null
  br i1 %tobool.not.i431, label %if.then7.i, label %if.end10.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call9.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev5, i32 noundef -6, ptr noundef nonnull @.str.35) #12
  br label %ethoc_mdio_probe.exit

if.end10.i:                                       ; preds = %if.end.i
  %old_duplex.i = getelementptr i8, ptr %call2, i32 2640
  %158 = ptrtoint ptr %old_duplex.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 -1, ptr %old_duplex.i, align 8
  %old_link.i = getelementptr i8, ptr %call2, i32 2636
  %159 = ptrtoint ptr %old_link.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %old_link.i, align 4
  %call11.i = call i32 @phy_connect_direct(ptr noundef nonnull %call2, ptr noundef nonnull %phy.0.i, ptr noundef nonnull @ethoc_mdio_poll, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %ethoc_mdio_probe.exit.thread, label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev5, i32 noundef %call11.i, ptr noundef nonnull @.str.36) #12
  br label %ethoc_mdio_probe.exit

ethoc_mdio_probe.exit.thread:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %call17.i = call i32 @phy_set_max_speed(ptr noundef nonnull %phy.0.i, i32 noundef 100) #12
  br label %if.end246

ethoc_mdio_probe.exit:                            ; preds = %if.then13.i, %if.then7.i
  %retval.0.i432 = phi i32 [ %call15.i, %if.then13.i ], [ %call9.i, %if.then7.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i432)
  %tobool240.not = icmp eq i32 %retval.0.i432, 0
  br i1 %tobool240.not, label %ethoc_mdio_probe.exit.if.end246_crit_edge, label %do.end244

ethoc_mdio_probe.exit.if.end246_crit_edge:        ; preds = %ethoc_mdio_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end246

do.end244:                                        ; preds = %ethoc_mdio_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.29) #15
  br label %error

if.end246:                                        ; preds = %ethoc_mdio_probe.exit.if.end246_crit_edge, %ethoc_mdio_probe.exit.thread
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 16
  %160 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr @ethoc_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 115
  %161 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 50, ptr %watchdog_timeo, align 4
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call2, i32 0, i32 44
  %162 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @ethoc_ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call2, i32 2352
  call void @netif_napi_add(ptr noundef nonnull %call2, ptr noundef %napi, ptr noundef nonnull @ethoc_poll, i32 noundef 64) #12
  %lock = getelementptr i8, ptr %call2, i32 2580
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @ethoc_probe.__key, i16 noundef signext 3) #12
  %call252 = call i32 @register_netdev(ptr noundef nonnull %call2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %cmp253 = icmp slt i32 %call252, 0
  br i1 %cmp253, label %do.end258, label %if.end246.out_crit_edge

if.end246.out_crit_edge:                          ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end258:                                        ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev5, ptr noundef nonnull @.str.33) #15
  call void @__netif_napi_del(ptr noundef %napi) #12
  call void @synchronize_net() #12
  br label %error

error:                                            ; preds = %do.end258, %do.end244
  %ret.0 = phi i32 [ %retval.0.i432, %do.end244 ], [ %call252, %do.end258 ]
  %163 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mdio, align 8
  call void @mdiobus_unregister(ptr noundef %164) #12
  br label %free3

free3:                                            ; preds = %error, %do.end236
  %ret.1 = phi i32 [ %call231, %do.end236 ], [ %ret.0, %error ]
  %165 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mdio, align 8
  call void @mdiobus_free(ptr noundef %166) #12
  br label %free2

free2:                                            ; preds = %free3, %if.end212.free2_crit_edge
  %ret.2 = phi i32 [ %ret.1, %free3 ], [ -12, %if.end212.free2_crit_edge ]
  %clk264 = getelementptr i8, ptr %call2, i32 2628
  %167 = ptrtoint ptr %clk264 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %clk264, align 4
  call void @clk_disable(ptr noundef %168) #12
  call void @clk_unprepare(ptr noundef %168) #12
  br label %free

free:                                             ; preds = %free2, %devm_kcalloc.exit.free_crit_edge, %cond.end93.free_crit_edge, %do.end80, %do.end68, %do.end53, %if.end38.free_crit_edge, %do.end34, %do.end18, %do.end
  %ret.3 = phi i32 [ %call39, %if.end38.free_crit_edge ], [ %ret.2, %free2 ], [ -6, %do.end68 ], [ -12, %do.end80 ], [ -6, %do.end53 ], [ -6, %do.end34 ], [ -6, %do.end18 ], [ -6, %do.end ], [ -19, %cond.end93.free_crit_edge ], [ -12, %devm_kcalloc.exit.free_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call2) #12
  br label %out

out:                                              ; preds = %free, %if.end246.out_crit_edge, %cond.end.out_crit_edge
  %ret.4 = phi i32 [ %ret.3, %free ], [ %call252, %if.end246.out_crit_edge ], [ -12, %cond.end.out_crit_edge ]
  ret i32 %ret.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then:                                          ; preds = %entry
  %napi = getelementptr i8, ptr %1, i32 2352
  tail call void @__netif_napi_del(ptr noundef %napi) #12
  tail call void @synchronize_net() #12
  %phydev = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %3) #12
  %mdio = getelementptr i8, ptr %1, i32 2624
  %4 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %if.then3

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mdiobus_unregister(ptr noundef nonnull %5) #12
  %6 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdio, align 8
  tail call void @mdiobus_free(ptr noundef %7) #12
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then.if.end_crit_edge
  %clk = getelementptr i8, ptr %1, i32 2628
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #12
  tail call void @clk_unprepare(ptr noundef %9) #12
  tail call void @unregister_netdev(ptr noundef nonnull %1) #12
  tail call void @free_netdev(ptr noundef nonnull %1) #12
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ethoc_suspend(ptr nocapture noundef readnone %pdev, [1 x i32] %state.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ethoc_resume(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ethoc_do_set_mac_address(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %arrayidx = getelementptr i8, ptr %1, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 %conv, 24
  %arrayidx1 = getelementptr i8, ptr %1, i32 3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %shl3 = shl nuw nsw i32 %conv2, 16
  %or = or i32 %shl3, %shl
  %arrayidx4 = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %7 to i32
  %shl6 = shl nuw nsw i32 %conv5, 8
  %or7 = or i32 %or, %shl6
  %arrayidx8 = getelementptr i8, ptr %1, i32 5
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i32
  %or11 = or i32 %or7, %conv9
  %big_endian.i = getelementptr i8, ptr %dev, i32 2312
  %10 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %or11) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %or11) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %16) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i, %do.body.i
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %1, align 1
  %conv13 = zext i8 %18 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %arrayidx15 = getelementptr i8, ptr %1, i32 1
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %20 to i32
  %or18 = or i32 %shl14, %conv16
  %21 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i28 = icmp eq i8 %22, 0
  br i1 %tobool.not.i28, label %if.else.i32, label %do.body.i30

do.body.i30:                                      ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i29 = getelementptr i8, ptr %24, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %or18) #12, !srcloc !169
  br label %ethoc_write.exit33

if.else.i32:                                      ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i31 = getelementptr i8, ptr %26, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %or18) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i31, i32 %27) #12, !srcloc !169
  br label %ethoc_write.exit33

ethoc_write.exit33:                               ; preds = %if.else.i32, %do.body.i30
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @clk_unprepare(ptr noundef %clk) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %phy, 31
  %and2 = shl i32 %reg, 8
  %shl3 = and i32 %and2, 7936
  %or = or i32 %shl3, %and
  %big_endian.i = getelementptr inbounds %struct.ethoc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr3.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i, %do.body.i
  %9 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i14 = icmp eq i8 %10, 0
  br i1 %tobool.not.i14, label %if.else.i18, label %do.body.i16

do.body.i16:                                      ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr.i15 = getelementptr i8, ptr %12, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 2) #12, !srcloc !169
  br label %ethoc_write.exit19

if.else.i18:                                      ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr3.i17 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i17, i32 33554432) #12, !srcloc !169
  br label %ethoc_write.exit19

ethoc_write.exit19:                               ; preds = %if.else.i18, %do.body.i16
  %15 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i21 = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr3.i22 = getelementptr i8, ptr %18, i32 60
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i22) #12
  br i1 %tobool.not.i21, label %if.else.i23, label %if.then.i

if.then.i:                                        ; preds = %ethoc_write.exit19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i23:                                      ; preds = %ethoc_write.exit19
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i23, %if.then.i
  %retval.0.i = phi i32 [ %19, %if.then.i ], [ %20, %if.else.i23 ]
  %and4 = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %ethoc_read.exit.if.then_crit_edge, label %for.inc

ethoc_read.exit.if.then_crit_edge:                ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ethoc_read.exit.4.if.then_crit_edge, %ethoc_read.exit.3.if.then_crit_edge, %ethoc_read.exit.2.if.then_crit_edge, %ethoc_read.exit.1.if.then_crit_edge, %ethoc_read.exit.if.then_crit_edge
  %21 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i25 = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 8
  %add.ptr3.i26 = getelementptr i8, ptr %24, i32 56
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i26) #12
  br i1 %tobool.not.i25, label %if.else.i28, label %if.then.i27

if.then.i27:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit30

if.else.i28:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit30

ethoc_read.exit30:                                ; preds = %if.else.i28, %if.then.i27
  %retval.0.i29 = phi i32 [ %25, %if.then.i27 ], [ %26, %if.else.i28 ]
  %27 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i32 = icmp eq i8 %28, 0
  br i1 %tobool.not.i32, label %if.else.i36, label %do.body.i34

do.body.i34:                                      ; preds = %ethoc_read.exit30
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %add.ptr.i33 = getelementptr i8, ptr %30, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #12, !srcloc !169
  br label %cleanup6

if.else.i36:                                      ; preds = %ethoc_read.exit30
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %add.ptr3.i35 = getelementptr i8, ptr %32, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i35, i32 0) #12, !srcloc !169
  br label %cleanup6

for.inc:                                          ; preds = %ethoc_read.exit
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %33 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i21.1 = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %add.ptr3.i22.1 = getelementptr i8, ptr %36, i32 60
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i22.1) #12
  br i1 %tobool.not.i21.1, label %if.else.i23.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.1

if.else.i23.1:                                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.1

ethoc_read.exit.1:                                ; preds = %if.else.i23.1, %if.then.i.1
  %retval.0.i.1 = phi i32 [ %37, %if.then.i.1 ], [ %38, %if.else.i23.1 ]
  %and4.1 = and i32 %retval.0.i.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1)
  %tobool.not.1 = icmp eq i32 %and4.1, 0
  br i1 %tobool.not.1, label %ethoc_read.exit.1.if.then_crit_edge, label %for.inc.1

ethoc_read.exit.1.if.then_crit_edge:              ; preds = %ethoc_read.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.1:                                        ; preds = %ethoc_read.exit.1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %39 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i21.2 = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %add.ptr3.i22.2 = getelementptr i8, ptr %42, i32 60
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i22.2) #12
  br i1 %tobool.not.i21.2, label %if.else.i23.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.2

if.else.i23.2:                                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.2

ethoc_read.exit.2:                                ; preds = %if.else.i23.2, %if.then.i.2
  %retval.0.i.2 = phi i32 [ %43, %if.then.i.2 ], [ %44, %if.else.i23.2 ]
  %and4.2 = and i32 %retval.0.i.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.2)
  %tobool.not.2 = icmp eq i32 %and4.2, 0
  br i1 %tobool.not.2, label %ethoc_read.exit.2.if.then_crit_edge, label %for.inc.2

ethoc_read.exit.2.if.then_crit_edge:              ; preds = %ethoc_read.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.2:                                        ; preds = %ethoc_read.exit.2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %45 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i21.3 = icmp eq i8 %46, 0
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %add.ptr3.i22.3 = getelementptr i8, ptr %48, i32 60
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i22.3) #12
  br i1 %tobool.not.i21.3, label %if.else.i23.3, label %if.then.i.3

if.then.i.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.3

if.else.i23.3:                                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.3

ethoc_read.exit.3:                                ; preds = %if.else.i23.3, %if.then.i.3
  %retval.0.i.3 = phi i32 [ %49, %if.then.i.3 ], [ %50, %if.else.i23.3 ]
  %and4.3 = and i32 %retval.0.i.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.3)
  %tobool.not.3 = icmp eq i32 %and4.3, 0
  br i1 %tobool.not.3, label %ethoc_read.exit.3.if.then_crit_edge, label %for.inc.3

ethoc_read.exit.3.if.then_crit_edge:              ; preds = %ethoc_read.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.3:                                        ; preds = %ethoc_read.exit.3
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %51 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i21.4 = icmp eq i8 %52, 0
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 8
  %add.ptr3.i22.4 = getelementptr i8, ptr %54, i32 60
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i22.4) #12
  br i1 %tobool.not.i21.4, label %if.else.i23.4, label %if.then.i.4

if.then.i.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.4

if.else.i23.4:                                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.4

ethoc_read.exit.4:                                ; preds = %if.else.i23.4, %if.then.i.4
  %retval.0.i.4 = phi i32 [ %55, %if.then.i.4 ], [ %56, %if.else.i23.4 ]
  %and4.4 = and i32 %retval.0.i.4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.4)
  %tobool.not.4 = icmp eq i32 %and4.4, 0
  br i1 %tobool.not.4, label %ethoc_read.exit.4.if.then_crit_edge, label %for.inc.4

ethoc_read.exit.4.if.then_crit_edge:              ; preds = %ethoc_read.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.inc.4:                                        ; preds = %ethoc_read.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  br label %cleanup6

cleanup6:                                         ; preds = %for.inc.4, %if.else.i36, %do.body.i34
  %retval.2 = phi i32 [ %retval.0.i29, %if.else.i36 ], [ %retval.0.i29, %do.body.i34 ], [ -16, %for.inc.4 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %phy, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %and = and i32 %phy, 31
  %and2 = shl i32 %reg, 8
  %shl3 = and i32 %and2, 7936
  %or = or i32 %shl3, %and
  %big_endian.i = getelementptr inbounds %struct.ethoc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr3.i = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %8 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i, %do.body.i
  %conv = zext i16 %val to i32
  %9 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i14 = icmp eq i8 %10, 0
  br i1 %tobool.not.i14, label %if.else.i18, label %do.body.i16

do.body.i16:                                      ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %add.ptr.i15 = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %conv) #12, !srcloc !169
  br label %ethoc_write.exit19

if.else.i18:                                      ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %add.ptr3.i17 = getelementptr i8, ptr %14, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i17, i32 %15) #12, !srcloc !169
  br label %ethoc_write.exit19

ethoc_write.exit19:                               ; preds = %if.else.i18, %do.body.i16
  %16 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i21 = icmp eq i8 %17, 0
  br i1 %tobool.not.i21, label %if.else.i25, label %do.body.i23

do.body.i23:                                      ; preds = %ethoc_write.exit19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %add.ptr.i22 = getelementptr i8, ptr %19, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 4) #12, !srcloc !169
  br label %ethoc_write.exit26

if.else.i25:                                      ; preds = %ethoc_write.exit19
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %add.ptr3.i24 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i24, i32 67108864) #12, !srcloc !169
  br label %ethoc_write.exit26

ethoc_write.exit26:                               ; preds = %if.else.i25, %do.body.i23
  %22 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i28 = icmp eq i8 %23, 0
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %add.ptr3.i29 = getelementptr i8, ptr %25, i32 60
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i29) #12
  br i1 %tobool.not.i28, label %if.else.i30, label %if.then.i

if.then.i:                                        ; preds = %ethoc_write.exit26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i30:                                      ; preds = %ethoc_write.exit26
  call void @__sanitizer_cov_trace_pc() #14
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i30, %if.then.i
  %retval.0.i = phi i32 [ %26, %if.then.i ], [ %27, %if.else.i30 ]
  %and5 = and i32 %retval.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %ethoc_read.exit.if.then_crit_edge, label %if.end

ethoc_read.exit.if.then_crit_edge:                ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ethoc_read.exit.4.if.then_crit_edge, %ethoc_read.exit.3.if.then_crit_edge, %ethoc_read.exit.2.if.then_crit_edge, %ethoc_read.exit.1.if.then_crit_edge, %ethoc_read.exit.if.then_crit_edge
  %28 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i32 = icmp eq i8 %29, 0
  br i1 %tobool.not.i32, label %if.else.i36, label %do.body.i34

do.body.i34:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %add.ptr.i33 = getelementptr i8, ptr %31, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 0) #12, !srcloc !169
  br label %cleanup6

if.else.i36:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %add.ptr3.i35 = getelementptr i8, ptr %33, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i35, i32 0) #12, !srcloc !169
  br label %cleanup6

if.end:                                           ; preds = %ethoc_read.exit
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %34 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i28.1 = icmp eq i8 %35, 0
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %add.ptr3.i29.1 = getelementptr i8, ptr %37, i32 60
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i29.1) #12
  br i1 %tobool.not.i28.1, label %if.else.i30.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.1

if.else.i30.1:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.1

ethoc_read.exit.1:                                ; preds = %if.else.i30.1, %if.then.i.1
  %retval.0.i.1 = phi i32 [ %38, %if.then.i.1 ], [ %39, %if.else.i30.1 ]
  %and5.1 = and i32 %retval.0.i.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1)
  %tobool.not.1 = icmp eq i32 %and5.1, 0
  br i1 %tobool.not.1, label %ethoc_read.exit.1.if.then_crit_edge, label %if.end.1

ethoc_read.exit.1.if.then_crit_edge:              ; preds = %ethoc_read.exit.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.1:                                         ; preds = %ethoc_read.exit.1
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %40 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i28.2 = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 8
  %add.ptr3.i29.2 = getelementptr i8, ptr %43, i32 60
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i29.2) #12
  br i1 %tobool.not.i28.2, label %if.else.i30.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.2

if.else.i30.2:                                    ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #14
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.2

ethoc_read.exit.2:                                ; preds = %if.else.i30.2, %if.then.i.2
  %retval.0.i.2 = phi i32 [ %44, %if.then.i.2 ], [ %45, %if.else.i30.2 ]
  %and5.2 = and i32 %retval.0.i.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2)
  %tobool.not.2 = icmp eq i32 %and5.2, 0
  br i1 %tobool.not.2, label %ethoc_read.exit.2.if.then_crit_edge, label %if.end.2

ethoc_read.exit.2.if.then_crit_edge:              ; preds = %ethoc_read.exit.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.2:                                         ; preds = %ethoc_read.exit.2
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %46 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i28.3 = icmp eq i8 %47, 0
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %add.ptr3.i29.3 = getelementptr i8, ptr %49, i32 60
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i29.3) #12
  br i1 %tobool.not.i28.3, label %if.else.i30.3, label %if.then.i.3

if.then.i.3:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.3

if.else.i30.3:                                    ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #14
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.3

ethoc_read.exit.3:                                ; preds = %if.else.i30.3, %if.then.i.3
  %retval.0.i.3 = phi i32 [ %50, %if.then.i.3 ], [ %51, %if.else.i30.3 ]
  %and5.3 = and i32 %retval.0.i.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3)
  %tobool.not.3 = icmp eq i32 %and5.3, 0
  br i1 %tobool.not.3, label %ethoc_read.exit.3.if.then_crit_edge, label %if.end.3

ethoc_read.exit.3.if.then_crit_edge:              ; preds = %ethoc_read.exit.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.3:                                         ; preds = %ethoc_read.exit.3
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  %52 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i28.4 = icmp eq i8 %53, 0
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 8
  %add.ptr3.i29.4 = getelementptr i8, ptr %55, i32 60
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i29.4) #12
  br i1 %tobool.not.i28.4, label %if.else.i30.4, label %if.then.i.4

if.then.i.4:                                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.4

if.else.i30.4:                                    ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #14
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.4

ethoc_read.exit.4:                                ; preds = %if.else.i30.4, %if.then.i.4
  %retval.0.i.4 = phi i32 [ %56, %if.then.i.4 ], [ %57, %if.else.i30.4 ]
  %and5.4 = and i32 %retval.0.i.4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.4)
  %tobool.not.4 = icmp eq i32 %and5.4, 0
  br i1 %tobool.not.4, label %ethoc_read.exit.4.if.then_crit_edge, label %if.end.4

ethoc_read.exit.4.if.then_crit_edge:              ; preds = %ethoc_read.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.end.4:                                         ; preds = %ethoc_read.exit.4
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #12
  br label %cleanup6

cleanup6:                                         ; preds = %if.end.4, %if.else.i36, %do.body.i34
  %retval.2 = phi i32 [ 0, %do.body.i34 ], [ 0, %if.else.i36 ], [ -16, %if.end.4 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -48
  %netdev = getelementptr i8, ptr %napi, i32 -8
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp127.i = icmp sgt i32 %budget, 0
  br i1 %cmp127.i, label %for.body.lr.ph.i, label %ethoc_rx.exit.thread

ethoc_rx.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %num_tx.i = getelementptr i8, ptr %1, i32 2320
  %cur_rx.i = getelementptr i8, ptr %1, i32 2336
  %big_endian.i.i.i = getelementptr i8, ptr %1, i32 2312
  %netdev1.i.i = getelementptr i8, ptr %1, i32 2344
  %vma.i = getelementptr i8, ptr %1, i32 2340
  %stats.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %num_rx.i = getelementptr i8, ptr %1, i32 2332
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.0128.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc44.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %num_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx.i, align 8
  %6 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur_rx.i, align 8
  %add.i = add i32 %7, %5
  %mul.i.i = shl i32 %add.i, 3
  %add.i.i = add i32 %mul.i.i, 1024
  %8 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i.i = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %11, i32 %add.i.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #12
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i.i

if.else.i.i.i:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i.i

ethoc_read.exit.i.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %12, %if.then.i.i.i ], [ %13, %if.else.i.i.i ]
  %14 = or i32 %add.i.i, 4
  %15 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i8.i.i = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr3.i9.i.i = getelementptr i8, ptr %18, i32 %14
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i9.i.i) #12
  br i1 %tobool.not.i8.i.i, label %if.else.i11.i.i, label %if.then.i10.i.i

if.then.i10.i.i:                                  ; preds = %ethoc_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read_bd.exit.i

if.else.i11.i.i:                                  ; preds = %ethoc_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read_bd.exit.i

ethoc_read_bd.exit.i:                             ; preds = %if.else.i11.i.i, %if.then.i10.i.i
  %retval.0.i12.i.i = phi i32 [ %19, %if.then.i10.i.i ], [ %20, %if.else.i11.i.i ]
  %and.i = and i32 %retval.0.i.i.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ethoc_read_bd.exit.i.if.end6.i_crit_edge, label %if.then.i

ethoc_read_bd.exit.i.if.end6.i_crit_edge:         ; preds = %ethoc_read_bd.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.then.i:                                        ; preds = %ethoc_read_bd.exit.i
  %21 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i78.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i78.i, label %if.else.i.i80.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 12) #12, !srcloc !169
  br label %ethoc_ack_irq.exit.i

if.else.i.i80.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr3.i.i79.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i79.i, i32 201326592) #12, !srcloc !169
  br label %ethoc_ack_irq.exit.i

ethoc_ack_irq.exit.i:                             ; preds = %if.else.i.i80.i, %do.body.i.i.i
  %27 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i84.i = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr3.i.i85.i = getelementptr i8, ptr %30, i32 %add.i.i
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i85.i) #12
  br i1 %tobool.not.i.i84.i, label %if.else.i.i87.i, label %if.then.i.i86.i

if.then.i.i86.i:                                  ; preds = %ethoc_ack_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i91.i

if.else.i.i87.i:                                  ; preds = %ethoc_ack_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i91.i

ethoc_read.exit.i91.i:                            ; preds = %if.else.i.i87.i, %if.then.i.i86.i
  %retval.0.i.i88.i = phi i32 [ %31, %if.then.i.i86.i ], [ %32, %if.else.i.i87.i ]
  %33 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i8.i89.i = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr3.i9.i90.i = getelementptr i8, ptr %36, i32 %14
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i9.i90.i) #12
  br i1 %tobool.not.i8.i89.i, label %if.else.i11.i93.i, label %if.then.i10.i92.i

if.then.i10.i92.i:                                ; preds = %ethoc_read.exit.i91.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read_bd.exit96.i

if.else.i11.i93.i:                                ; preds = %ethoc_read.exit.i91.i
  call void @__sanitizer_cov_trace_pc() #14
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read_bd.exit96.i

ethoc_read_bd.exit96.i:                           ; preds = %if.else.i11.i93.i, %if.then.i10.i92.i
  %retval.0.i12.i94.i = phi i32 [ %37, %if.then.i10.i92.i ], [ %38, %if.else.i11.i93.i ]
  %and3.i = and i32 %retval.0.i.i88.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %ethoc_read_bd.exit96.i.if.end6.i_crit_edge, label %ethoc_read_bd.exit96.i.for.body.lr.ph.i17_crit_edge

ethoc_read_bd.exit96.i.for.body.lr.ph.i17_crit_edge: ; preds = %ethoc_read_bd.exit96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i17

ethoc_read_bd.exit96.i.if.end6.i_crit_edge:       ; preds = %ethoc_read_bd.exit96.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6.i

if.end6.i:                                        ; preds = %ethoc_read_bd.exit96.i.if.end6.i_crit_edge, %ethoc_read_bd.exit.i.if.end6.i_crit_edge
  %bd.sroa.18.0.i = phi i32 [ %retval.0.i12.i.i, %ethoc_read_bd.exit.i.if.end6.i_crit_edge ], [ %retval.0.i12.i94.i, %ethoc_read_bd.exit96.i.if.end6.i_crit_edge ]
  %bd.sroa.0.0.i = phi i32 [ %retval.0.i.i.i, %ethoc_read_bd.exit.i.if.end6.i_crit_edge ], [ %retval.0.i.i88.i, %ethoc_read_bd.exit96.i.if.end6.i_crit_edge ]
  %39 = ptrtoint ptr %netdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %netdev1.i.i, align 8
  %and.i.i = and i32 %bd.sroa.0.0.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end6.i.if.end.i.i_crit_edge, label %do.end.i.i

if.end6.i.if.end.i.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.49) #15
  %rx_length_errors.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 10
  %41 = ptrtoint ptr %rx_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rx_length_errors.i.i, align 8
  %inc.i.i = add i32 %42, 1
  store i32 %inc.i.i, ptr %rx_length_errors.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end6.i.if.end.i.i_crit_edge
  %ret.0.i.i = phi i32 [ 1, %do.end.i.i ], [ 0, %if.end6.i.if.end.i.i_crit_edge ]
  %and5.i.i = and i32 %bd.sroa.0.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i)
  %tobool6.not.i.i = icmp eq i32 %and5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end.i.i.if.end16.i.i_crit_edge, label %do.end10.i.i

if.end.i.i.if.end16.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16.i.i

do.end10.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev11.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11.i.i, ptr noundef nonnull @.str.52) #15
  %rx_length_errors13.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 10
  %43 = ptrtoint ptr %rx_length_errors13.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %rx_length_errors13.i.i, align 8
  %inc14.i.i = add i32 %44, 1
  store i32 %inc14.i.i, ptr %rx_length_errors13.i.i, align 8
  %inc15.i.i = add nuw nsw i32 %ret.0.i.i, 1
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %do.end10.i.i, %if.end.i.i.if.end16.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %inc15.i.i, %do.end10.i.i ], [ %ret.0.i.i, %if.end.i.i.if.end16.i.i_crit_edge ]
  %and18.i.i = and i32 %bd.sroa.0.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end16.i.i.if.end27.i.i_crit_edge, label %do.end23.i.i

if.end16.i.i.if.end27.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27.i.i

do.end23.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev24.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24.i.i, ptr noundef nonnull @.str.55) #15
  %rx_frame_errors.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 13
  %45 = ptrtoint ptr %rx_frame_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rx_frame_errors.i.i, align 4
  %inc26.i.i = add i32 %46, 1
  store i32 %inc26.i.i, ptr %rx_frame_errors.i.i, align 4
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %do.end23.i.i, %if.end16.i.i.if.end27.i.i_crit_edge
  %and29.i.i = and i32 %bd.sroa.0.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  br i1 %tobool30.not.i.i, label %if.end27.i.i.if.end39.i.i_crit_edge, label %do.end34.i.i

if.end27.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i.i

do.end34.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev35.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35.i.i, ptr noundef nonnull @.str.58) #15
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 12
  %47 = ptrtoint ptr %rx_crc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_crc_errors.i.i, align 8
  %inc37.i.i = add i32 %48, 1
  store i32 %inc37.i.i, ptr %rx_crc_errors.i.i, align 8
  %inc38.i.i = add nuw nsw i32 %ret.1.i.i, 1
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %do.end34.i.i, %if.end27.i.i.if.end39.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %inc38.i.i, %do.end34.i.i ], [ %ret.1.i.i, %if.end27.i.i.if.end39.i.i_crit_edge ]
  %and41.i.i = and i32 %bd.sroa.0.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i.i)
  %tobool42.not.i.i = icmp eq i32 %and41.i.i, 0
  br i1 %tobool42.not.i.i, label %if.end39.i.i.if.end51.i.i_crit_edge, label %do.end46.i.i

if.end39.i.i.if.end51.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51.i.i

do.end46.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev47.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev47.i.i, ptr noundef nonnull @.str.61) #15
  %rx_over_errors.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 11
  %49 = ptrtoint ptr %rx_over_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rx_over_errors.i.i, align 4
  %inc49.i.i = add i32 %50, 1
  store i32 %inc49.i.i, ptr %rx_over_errors.i.i, align 4
  %inc50.i.i = add nuw nsw i32 %ret.2.i.i, 1
  br label %if.end51.i.i

if.end51.i.i:                                     ; preds = %do.end46.i.i, %if.end39.i.i.if.end51.i.i_crit_edge
  %ret.3.i.i = phi i32 [ %inc50.i.i, %do.end46.i.i ], [ %ret.2.i.i, %if.end39.i.i.if.end51.i.i_crit_edge ]
  %and53.i.i = and i32 %bd.sroa.0.0.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end51.i.i.if.end58.i.i_crit_edge, label %if.then55.i.i

if.end51.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58.i.i

if.then55.i.i:                                    ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %rx_missed_errors.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 15
  %51 = ptrtoint ptr %rx_missed_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_missed_errors.i.i, align 4
  %inc57.i.i = add i32 %52, 1
  store i32 %inc57.i.i, ptr %rx_missed_errors.i.i, align 4
  br label %if.end58.i.i

if.end58.i.i:                                     ; preds = %if.then55.i.i, %if.end51.i.i.if.end58.i.i_crit_edge
  %and60.i.i = and i32 %bd.sroa.0.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i.i)
  %tobool61.not.i.i = icmp eq i32 %and60.i.i, 0
  br i1 %tobool61.not.i.i, label %ethoc_update_rx_stats.exit.i, label %ethoc_update_rx_stats.exit.thread.i

ethoc_update_rx_stats.exit.thread.i:              ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev66.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev66.i.i, ptr noundef nonnull @.str.64) #15
  %collisions.i.i = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 9
  %53 = ptrtoint ptr %collisions.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %collisions.i.i, align 4
  %inc68.i.i = add i32 %54, 1
  store i32 %inc68.i.i, ptr %collisions.i.i, align 4
  br label %if.end30.i

ethoc_update_rx_stats.exit.i:                     ; preds = %if.end58.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3.i.i)
  %cmp8.i = icmp eq i32 %ret.3.i.i, 0
  br i1 %cmp8.i, label %if.then9.i, label %ethoc_update_rx_stats.exit.i.if.end30.i_crit_edge

ethoc_update_rx_stats.exit.i.if.end30.i_crit_edge: ; preds = %ethoc_update_rx_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30.i

if.then9.i:                                       ; preds = %ethoc_update_rx_stats.exit.i
  %shr.i = lshr i32 %bd.sroa.0.0.i, 16
  %add.i.i.i = add nsw i32 %shr.i, -2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i.i, i32 noundef 2592) #12
  %tobool.not.i.i97.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i97.i, label %if.else.i, label %cleanup.i

if.else.i:                                        ; preds = %if.then9.i
  %call21.i = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.else.i.cleanup.thread.i_crit_edge, label %do.end.i

if.else.i.cleanup.thread.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev24.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev24.i, ptr noundef nonnull @.str.46) #15
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %do.end.i, %if.else.i.cleanup.thread.i_crit_edge
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %55 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_dropped.i, align 8
  %inc27.i = add i32 %56, 1
  store i32 %inc27.i, ptr %rx_dropped.i, align 8
  br label %for.body.lr.ph.i17

cleanup.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = add nsw i32 %shr.i, -4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %58, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %60, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %61 = ptrtoint ptr %vma.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vma.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %62, i32 %add.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i, align 4
  %call16.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.i) #12
  tail call void @mmiocpy(ptr noundef %call16.i, ptr noundef %64, i32 noundef %sub.i) #12
  %call17.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %1) #12
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %65 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %call17.i, ptr %protocol.i, align 8
  %66 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %67, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %68 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_bytes.i, align 8
  %add19.i = add i32 %69, %sub.i
  store i32 %add19.i, ptr %rx_bytes.i, align 8
  %call20.i = tail call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i.i) #12
  br label %if.end30.i

if.end30.i:                                       ; preds = %cleanup.i, %ethoc_update_rx_stats.exit.i.if.end30.i_crit_edge, %ethoc_update_rx_stats.exit.thread.i
  %and32.i = and i32 %bd.sroa.0.0.i, -33024
  %or.i = or i32 %and32.i, 32768
  %70 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i102.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i.i102.i, label %if.else.i.i106.i, label %do.body.i.i104.i

do.body.i.i104.i:                                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %72 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i.i103.i = getelementptr i8, ptr %73, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103.i, i32 %or.i) #12, !srcloc !169
  br label %ethoc_write.exit.i.i

if.else.i.i106.i:                                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr3.i.i105.i = getelementptr i8, ptr %75, i32 %add.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %76 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i105.i, i32 %76) #12, !srcloc !169
  br label %ethoc_write.exit.i.i

ethoc_write.exit.i.i:                             ; preds = %if.else.i.i106.i, %do.body.i.i104.i
  %77 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i7.i.i = icmp eq i8 %78, 0
  br i1 %tobool.not.i7.i.i, label %if.else.i11.i108.i, label %do.body.i9.i.i

do.body.i9.i.i:                                   ; preds = %ethoc_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %79 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i8.i.i = getelementptr i8, ptr %80, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %bd.sroa.18.0.i) #12, !srcloc !169
  br label %for.inc.i

if.else.i11.i108.i:                               ; preds = %ethoc_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr3.i10.i.i = getelementptr i8, ptr %82, i32 %14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %83 = tail call i32 @llvm.bswap.i32(i32 %bd.sroa.18.0.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i10.i.i, i32 %83) #12, !srcloc !169
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i11.i108.i, %do.body.i9.i.i
  %84 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_rx.i, align 8
  %inc35.i = add i32 %85, 1
  %86 = ptrtoint ptr %num_rx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %num_rx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc35.i, i32 %87)
  %cmp36.i = icmp eq i32 %inc35.i, %87
  %spec.store.select.i = select i1 %cmp36.i, i32 0, i32 %inc35.i
  %88 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.store.select.i, ptr %cur_rx.i, align 8
  %inc44.i = add nuw nsw i32 %count.0128.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, %budget
  br i1 %exitcond.not.i, label %for.inc.i.for.body.lr.ph.i17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.inc.i.for.body.lr.ph.i17_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.lr.ph.i17

for.body.lr.ph.i17:                               ; preds = %for.inc.i.for.body.lr.ph.i17_crit_edge, %cleanup.thread.i, %ethoc_read_bd.exit96.i.for.body.lr.ph.i17_crit_edge
  %count.0126.i = phi i32 [ %count.0128.i, %cleanup.thread.i ], [ %count.0128.i, %ethoc_read_bd.exit96.i.for.body.lr.ph.i17_crit_edge ], [ %budget, %for.inc.i.for.body.lr.ph.i17_crit_edge ]
  %89 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %netdev, align 8
  %add.ptr.i.i13 = getelementptr i8, ptr %90, i32 2304
  %dty_tx.i = getelementptr i8, ptr %90, i32 2328
  %num_tx.i14 = getelementptr i8, ptr %90, i32 2320
  %big_endian.i.i.i15 = getelementptr i8, ptr %90, i32 2312
  %cur_tx.i = getelementptr i8, ptr %90, i32 2324
  %netdev1.i.i16 = getelementptr i8, ptr %90, i32 2344
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.inc.i45.for.body.i24_crit_edge, %for.body.lr.ph.i17
  %count.076.i = phi i32 [ 0, %for.body.lr.ph.i17 ], [ %inc15.i, %for.inc.i45.for.body.i24_crit_edge ]
  %91 = ptrtoint ptr %dty_tx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dty_tx.i, align 8
  %93 = ptrtoint ptr %num_tx.i14 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %num_tx.i14, align 8
  %sub.i18 = add i32 %94, 536870911
  %and.i19 = and i32 %sub.i18, %92
  %mul.i.i20 = shl i32 %and.i19, 3
  %add.i.i21 = add i32 %mul.i.i20, 1024
  %95 = ptrtoint ptr %big_endian.i.i.i15 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %big_endian.i.i.i15, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool.not.i.i.i22 = icmp eq i8 %96, 0
  %97 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i.i13, align 8
  %add.ptr3.i.i.i23 = getelementptr i8, ptr %98, i32 %add.i.i21
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i23) #12
  br i1 %tobool.not.i.i.i22, label %if.else.i.i.i26, label %if.then.i.i.i25

if.then.i.i.i25:                                  ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i.i30

if.else.i.i.i26:                                  ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #14
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i.i30

ethoc_read.exit.i.i30:                            ; preds = %if.else.i.i.i26, %if.then.i.i.i25
  %retval.0.i.i.i27 = phi i32 [ %99, %if.then.i.i.i25 ], [ %100, %if.else.i.i.i26 ]
  %101 = or i32 %add.i.i21, 4
  %102 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %add.ptr.i.i13, align 8
  %add.ptr3.i9.i.i28 = getelementptr i8, ptr %103, i32 %101
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i9.i.i28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %and2.i = and i32 %retval.0.i.i.i27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i29 = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i29, label %lor.lhs.false.i, label %ethoc_read.exit.i.i30.if.then.i31_crit_edge

ethoc_read.exit.i.i30.if.then.i31_crit_edge:      ; preds = %ethoc_read.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i31

lor.lhs.false.i:                                  ; preds = %ethoc_read.exit.i.i30
  %105 = ptrtoint ptr %dty_tx.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dty_tx.i, align 8
  %107 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %cur_tx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %106, i32 %108)
  %cmp4.i = icmp eq i32 %106, %108
  br i1 %cmp4.i, label %lor.lhs.false.i.if.then.i31_crit_edge, label %lor.lhs.false.i.if.end13.i_crit_edge

lor.lhs.false.i.if.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

lor.lhs.false.i.if.then.i31_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i31

if.then.i31:                                      ; preds = %lor.lhs.false.i.if.then.i31_crit_edge, %ethoc_read.exit.i.i30.if.then.i31_crit_edge
  %109 = ptrtoint ptr %big_endian.i.i.i15 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %big_endian.i.i.i15, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i45.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i.i45.i, label %if.else.i.i47.i, label %do.body.i.i.i33

do.body.i.i.i33:                                  ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %111 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %add.ptr.i.i13, align 8
  %add.ptr.i.i.i32 = getelementptr i8, ptr %112, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i32, i32 3) #12, !srcloc !169
  br label %ethoc_ack_irq.exit.i34

if.else.i.i47.i:                                  ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %add.ptr.i.i13, align 8
  %add.ptr3.i.i46.i = getelementptr i8, ptr %114, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i46.i, i32 50331648) #12, !srcloc !169
  br label %ethoc_ack_irq.exit.i34

ethoc_ack_irq.exit.i34:                           ; preds = %if.else.i.i47.i, %do.body.i.i.i33
  %115 = ptrtoint ptr %big_endian.i.i.i15 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %big_endian.i.i.i15, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i51.i = icmp eq i8 %116, 0
  %117 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %add.ptr.i.i13, align 8
  %add.ptr3.i.i52.i = getelementptr i8, ptr %118, i32 %add.i.i21
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i52.i) #12
  br i1 %tobool.not.i.i51.i, label %if.else.i.i54.i, label %if.then.i.i53.i

if.then.i.i53.i:                                  ; preds = %ethoc_ack_irq.exit.i34
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i58.i

if.else.i.i54.i:                                  ; preds = %ethoc_ack_irq.exit.i34
  call void @__sanitizer_cov_trace_pc() #14
  %120 = tail call i32 @llvm.bswap.i32(i32 %119) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i58.i

ethoc_read.exit.i58.i:                            ; preds = %if.else.i.i54.i, %if.then.i.i53.i
  %retval.0.i.i55.i = phi i32 [ %119, %if.then.i.i53.i ], [ %120, %if.else.i.i54.i ]
  %121 = ptrtoint ptr %add.ptr.i.i13 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i.i13, align 8
  %add.ptr3.i9.i57.i = getelementptr i8, ptr %122, i32 %101
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i9.i57.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  %and6.i = and i32 %retval.0.i.i55.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false8.i, label %ethoc_read.exit.i58.i.for.end.i_crit_edge

ethoc_read.exit.i58.i.for.end.i_crit_edge:        ; preds = %ethoc_read.exit.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

lor.lhs.false8.i:                                 ; preds = %ethoc_read.exit.i58.i
  %124 = ptrtoint ptr %dty_tx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dty_tx.i, align 8
  %126 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cur_tx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %127)
  %cmp11.i = icmp eq i32 %125, %127
  br i1 %cmp11.i, label %lor.lhs.false8.i.for.end.i_crit_edge, label %lor.lhs.false8.i.if.end13.i_crit_edge

lor.lhs.false8.i.if.end13.i_crit_edge:            ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i

lor.lhs.false8.i.for.end.i_crit_edge:             ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

if.end13.i:                                       ; preds = %lor.lhs.false8.i.if.end13.i_crit_edge, %lor.lhs.false.i.if.end13.i_crit_edge
  %bd.sroa.0.0.i35 = phi i32 [ %retval.0.i.i55.i, %lor.lhs.false8.i.if.end13.i_crit_edge ], [ %retval.0.i.i.i27, %lor.lhs.false.i.if.end13.i_crit_edge ]
  %128 = ptrtoint ptr %netdev1.i.i16 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %netdev1.i.i16, align 8
  %and.i.i36 = and i32 %bd.sroa.0.0.i35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.end13.i.if.end.i.i41_crit_edge, label %do.end.i.i40

if.end13.i.if.end.i.i41_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i41

do.end.i.i40:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev2.i.i38 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i38, ptr noundef nonnull @.str.66) #15
  %tx_window_errors.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 20
  %130 = ptrtoint ptr %tx_window_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %tx_window_errors.i.i, align 8
  %inc.i.i39 = add i32 %131, 1
  store i32 %inc.i.i39, ptr %tx_window_errors.i.i, align 8
  br label %if.end.i.i41

if.end.i.i41:                                     ; preds = %do.end.i.i40, %if.end13.i.if.end.i.i41_crit_edge
  %and4.i.i = and i32 %bd.sroa.0.0.i35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i41.if.end13.i.i_crit_edge, label %do.end9.i.i

if.end.i.i41.if.end13.i.i_crit_edge:              ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.i.i

do.end9.i.i:                                      ; preds = %if.end.i.i41
  call void @__sanitizer_cov_trace_pc() #14
  %dev10.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i.i, ptr noundef nonnull @.str.69) #15
  %tx_aborted_errors.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 16
  %132 = ptrtoint ptr %tx_aborted_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %tx_aborted_errors.i.i, align 8
  %inc12.i.i = add i32 %133, 1
  store i32 %inc12.i.i, ptr %tx_aborted_errors.i.i, align 8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %do.end9.i.i, %if.end.i.i41.if.end13.i.i_crit_edge
  %and15.i.i = and i32 %bd.sroa.0.0.i35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end13.i.i.if.end24.i.i_crit_edge, label %do.end20.i.i

if.end13.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i.i

do.end20.i.i:                                     ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev21.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i.i, ptr noundef nonnull @.str.72) #15
  %tx_fifo_errors.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 18
  %134 = ptrtoint ptr %tx_fifo_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tx_fifo_errors.i.i, align 8
  %inc23.i.i = add i32 %135, 1
  store i32 %inc23.i.i, ptr %tx_fifo_errors.i.i, align 8
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %do.end20.i.i, %if.end13.i.i.if.end24.i.i_crit_edge
  %and26.i.i = and i32 %bd.sroa.0.0.i35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end24.i.i.if.end35.i.i_crit_edge, label %do.end31.i.i

if.end24.i.i.if.end35.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35.i.i

do.end31.i.i:                                     ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dev32.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i.i, ptr noundef nonnull @.str.75) #15
  %tx_carrier_errors.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 17
  %136 = ptrtoint ptr %tx_carrier_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tx_carrier_errors.i.i, align 4
  %inc34.i.i = add i32 %137, 1
  store i32 %inc34.i.i, ptr %tx_carrier_errors.i.i, align 4
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %do.end31.i.i, %if.end24.i.i.if.end35.i.i_crit_edge
  %and37.i.i = and i32 %bd.sroa.0.0.i35, 511
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %tobool38.not.i.i, label %if.end35.i.i.for.inc.i45_crit_edge, label %if.then39.i.i

if.end35.i.i.for.inc.i45_crit_edge:               ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i45

if.then39.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 5
  %138 = ptrtoint ptr %tx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %tx_errors.i.i, align 4
  %inc41.i.i = add i32 %139, 1
  store i32 %inc41.i.i, ptr %tx_errors.i.i, align 4
  br label %for.inc.i45

for.inc.i45:                                      ; preds = %if.then39.i.i, %if.end35.i.i.for.inc.i45_crit_edge
  %shr.i.i = lshr i32 %bd.sroa.0.0.i35, 4
  %and44.i.i = and i32 %shr.i.i, 15
  %collisions.i.i42 = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 9
  %140 = ptrtoint ptr %collisions.i.i42 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %collisions.i.i42, align 4
  %add.i64.i = add i32 %141, %and44.i.i
  store i32 %add.i64.i, ptr %collisions.i.i42, align 4
  %shr47.i.i = lshr i32 %bd.sroa.0.0.i35, 16
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 3
  %142 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %tx_bytes.i.i, align 4
  %add49.i.i = add i32 %143, %shr47.i.i
  store i32 %add49.i.i, ptr %tx_bytes.i.i, align 4
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %129, i32 0, i32 36, i32 1
  %144 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tx_packets.i.i, align 4
  %inc51.i.i = add i32 %145, 1
  store i32 %inc51.i.i, ptr %tx_packets.i.i, align 4
  %146 = ptrtoint ptr %dty_tx.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %dty_tx.i, align 8
  %inc.i43 = add i32 %147, 1
  store i32 %inc.i43, ptr %dty_tx.i, align 8
  %inc15.i = add nuw nsw i32 %count.076.i, 1
  %exitcond.not.i44 = icmp eq i32 %inc15.i, %budget
  br i1 %exitcond.not.i44, label %for.inc.i45.for.end.i_crit_edge, label %for.inc.i45.for.body.i24_crit_edge

for.inc.i45.for.body.i24_crit_edge:               ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i24

for.inc.i45.for.end.i_crit_edge:                  ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i45.for.end.i_crit_edge, %lor.lhs.false8.i.for.end.i_crit_edge, %ethoc_read.exit.i58.i.for.end.i_crit_edge, %ethoc_rx.exit.thread
  %148 = phi ptr [ %3, %ethoc_rx.exit.thread ], [ %90, %ethoc_read.exit.i58.i.for.end.i_crit_edge ], [ %90, %lor.lhs.false8.i.for.end.i_crit_edge ], [ %90, %for.inc.i45.for.end.i_crit_edge ]
  %count.0126.i51 = phi i32 [ 0, %ethoc_rx.exit.thread ], [ %count.0126.i, %ethoc_read.exit.i58.i.for.end.i_crit_edge ], [ %count.0126.i, %lor.lhs.false8.i.for.end.i_crit_edge ], [ %count.0126.i, %for.inc.i45.for.end.i_crit_edge ]
  %count.0.lcssa.i = phi i32 [ 0, %ethoc_rx.exit.thread ], [ %budget, %for.inc.i45.for.end.i_crit_edge ], [ %count.076.i, %lor.lhs.false8.i.for.end.i_crit_edge ], [ %count.076.i, %ethoc_read.exit.i58.i.for.end.i_crit_edge ]
  %cur_tx16.i = getelementptr i8, ptr %148, i32 2324
  %149 = ptrtoint ptr %cur_tx16.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %cur_tx16.i, align 4
  %dty_tx17.i = getelementptr i8, ptr %148, i32 2328
  %151 = ptrtoint ptr %dty_tx17.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dty_tx17.i, align 8
  %sub18.i = sub i32 %150, %152
  %num_tx19.i = getelementptr i8, ptr %148, i32 2320
  %153 = ptrtoint ptr %num_tx19.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_tx19.i, align 8
  %div43.i = lshr i32 %154, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub18.i, i32 %div43.i)
  %cmp20.not.i = icmp ugt i32 %sub18.i, %div43.i
  br i1 %cmp20.not.i, label %for.end.i.ethoc_tx.exit_crit_edge, label %if.then21.i

for.end.i.ethoc_tx.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ethoc_tx.exit

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %148, i32 0, i32 103
  %155 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %156) #12
  br label %ethoc_tx.exit

ethoc_tx.exit:                                    ; preds = %if.then21.i, %for.end.i.ethoc_tx.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0126.i51, i32 %budget)
  %cmp = icmp slt i32 %count.0126.i51, %budget
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i, i32 %budget)
  %cmp3 = icmp slt i32 %count.0.lcssa.i, %budget
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %ethoc_tx.exit.if.end_crit_edge

ethoc_tx.exit.if.end_crit_edge:                   ; preds = %ethoc_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %ethoc_tx.exit
  %call4 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %count.0126.i51) #12
  %big_endian.i.i = getelementptr i8, ptr %napi, i32 -40
  %157 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i.i46 = icmp eq i8 %158, 0
  %159 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %add.ptr, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %160, i32 8
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #12
  br i1 %tobool.not.i.i46, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i

if.else.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %162 = tail call i32 @llvm.bswap.i32(i32 %161) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i

ethoc_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %161, %if.then.i.i ], [ %162, %if.else.i.i ]
  %or.i47 = or i32 %retval.0.i.i, 15
  %163 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i4.i = icmp eq i8 %164, 0
  br i1 %tobool.not.i4.i, label %if.else.i6.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %165 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %add.ptr, align 8
  %add.ptr.i.i48 = getelementptr i8, ptr %166, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %or.i47) #12, !srcloc !169
  br label %if.end

if.else.i6.i:                                     ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %add.ptr, align 8
  %add.ptr3.i5.i = getelementptr i8, ptr %168, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %169 = tail call i32 @llvm.bswap.i32(i32 %or.i47) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i5.i, i32 %169) #12, !srcloc !169
  br label %if.end

if.end:                                           ; preds = %if.else.i6.i, %do.body.i.i, %ethoc_tx.exit.if.end_crit_edge
  ret i32 %count.0126.i51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_alloc_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mdiobus_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_find_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethoc_mdio_poll(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %old_link = getelementptr i8, ptr %dev, i32 2636
  %2 = ptrtoint ptr %old_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old_link, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %bf.cast)
  %cmp.not = icmp eq i32 %3, %bf.cast
  br i1 %cmp.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  %old_duplex = getelementptr i8, ptr %dev, i32 2640
  %5 = ptrtoint ptr %old_duplex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old_duplex, align 8
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8.not = icmp eq i32 %6, %8
  br i1 %cmp8.not, label %if.end.cleanup_crit_edge, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  %9 = ptrtoint ptr %old_link to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %bf.cast, ptr %old_link, align 4
  %old_duplex39 = getelementptr i8, ptr %dev, i32 2640
  %10 = ptrtoint ptr %old_duplex39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old_duplex39, align 8
  %duplex40 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %duplex40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duplex40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp8.not41 = icmp eq i32 %11, %13
  br i1 %cmp8.not41, label %if.end.thread.if.end14_crit_edge, label %if.end.thread.if.then9_crit_edge

if.end.thread.if.then9_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.end.thread.if.end14_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then9:                                         ; preds = %if.end.thread.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %14 = phi i32 [ %13, %if.end.thread.if.then9_crit_edge ], [ %8, %if.end.if.then9_crit_edge ]
  %duplex44 = phi ptr [ %duplex40, %if.end.thread.if.then9_crit_edge ], [ %duplex, %if.end.if.then9_crit_edge ]
  %old_duplex42 = phi ptr [ %old_duplex39, %if.end.thread.if.then9_crit_edge ], [ %old_duplex, %if.end.if.then9_crit_edge ]
  %15 = ptrtoint ptr %old_duplex42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %old_duplex42, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.thread.if.end14_crit_edge
  %duplex43 = phi ptr [ %duplex44, %if.then9 ], [ %duplex40, %if.end.thread.if.end14_crit_edge ]
  %big_endian.i = getelementptr i8, ptr %dev, i32 2312
  %16 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %20, %if.then.i ], [ %21, %if.else.i ]
  %22 = ptrtoint ptr %duplex43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %duplex43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp17 = icmp eq i32 %23, 1
  %and = and i32 %retval.0.i, -1025
  %masksel = select i1 %cmp17, i32 1024, i32 0
  %mode.0 = or i32 %masksel, %and
  %24 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i37 = icmp eq i8 %25, 0
  br i1 %tobool.not.i37, label %if.else.i38, label %do.body.i

do.body.i:                                        ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %mode.0) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i38:                                      ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %30 = tail call i32 @llvm.bswap.i32(i32 %mode.0) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %30) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i38, %do.body.i
  tail call void @phy_print_status(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %ethoc_write.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @ethoc_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %napi = getelementptr i8, ptr %dev, i32 2352
  tail call void @napi_enable(ptr noundef %napi) #12
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mem_start, align 4
  tail call fastcc void @ethoc_init_ring(ptr noundef %add.ptr.i, i32 noundef %3)
  %big_endian.i.i.i = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i.i = icmp eq i8 %5, 0
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #12
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i.i

ethoc_read.exit.i.i:                              ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %8, %if.then.i.i.i ], [ %9, %if.else.i.i.i ]
  %and.i.i = and i32 %retval.0.i.i.i, -4
  %10 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i4.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i4.i.i, label %if.else.i5.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %ethoc_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %and.i.i) #12, !srcloc !169
  br label %ethoc_disable_rx_and_tx.exit.i

if.else.i5.i.i:                                   ; preds = %ethoc_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %16 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %16) #12, !srcloc !169
  br label %ethoc_disable_rx_and_tx.exit.i

ethoc_disable_rx_and_tx.exit.i:                   ; preds = %if.else.i5.i.i, %do.body.i.i.i
  %17 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i = icmp eq i8 %18, 0
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %ethoc_disable_rx_and_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i

if.else.i.i:                                      ; preds = %ethoc_disable_rx_and_tx.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i

ethoc_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %21, %if.then.i.i ], [ %22, %if.else.i.i ]
  %or.i = or i32 %retval.0.i.i, 40960
  %23 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i2.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i2.i, label %if.else.i3.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %or.i) #12, !srcloc !169
  br label %ethoc_write.exit.i

if.else.i3.i:                                     ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #12, !srcloc !169
  br label %ethoc_write.exit.i

ethoc_write.exit.i:                               ; preds = %if.else.i3.i, %do.body.i.i
  %30 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i5.i = icmp eq i8 %31, 0
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %add.ptr.i, align 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #12
  br i1 %tobool.not.i5.i, label %if.else.i7.i, label %if.then.i6.i

if.then.i6.i:                                     ; preds = %ethoc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit9.i

if.else.i7.i:                                     ; preds = %ethoc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit9.i

ethoc_read.exit9.i:                               ; preds = %if.else.i7.i, %if.then.i6.i
  %retval.0.i8.i = phi i32 [ %34, %if.then.i6.i ], [ %35, %if.else.i7.i ]
  %or2.i = or i32 %retval.0.i8.i, 1024
  %36 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i11.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i11.i, label %if.else.i13.i, label %do.body.i12.i

do.body.i12.i:                                    ; preds = %ethoc_read.exit9.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %or2.i) #12, !srcloc !169
  br label %ethoc_write.exit14.i

if.else.i13.i:                                    ; preds = %ethoc_read.exit9.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %42 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %42) #12, !srcloc !169
  br label %ethoc_write.exit14.i

ethoc_write.exit14.i:                             ; preds = %if.else.i13.i, %do.body.i12.i
  %43 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i16.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i16.i, label %if.else.i18.i, label %do.body.i17.i

do.body.i17.i:                                    ; preds = %ethoc_write.exit14.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 21) #12, !srcloc !169
  br label %ethoc_write.exit19.i

if.else.i18.i:                                    ; preds = %ethoc_write.exit14.i
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %48, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 352321536) #12, !srcloc !169
  br label %ethoc_write.exit19.i

ethoc_write.exit19.i:                             ; preds = %if.else.i18.i, %do.body.i17.i
  %49 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i.i21.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i.i21.i, label %if.else.i.i23.i, label %do.body.i.i22.i

do.body.i.i22.i:                                  ; preds = %ethoc_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 127) #12, !srcloc !169
  br label %ethoc_ack_irq.exit.i

if.else.i.i23.i:                                  ; preds = %ethoc_write.exit19.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i.i = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 2130706432) #12, !srcloc !169
  br label %ethoc_ack_irq.exit.i

ethoc_ack_irq.exit.i:                             ; preds = %if.else.i.i23.i, %do.body.i.i22.i
  %55 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i25.i = icmp eq i8 %56, 0
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i26.i = getelementptr i8, ptr %58, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i26.i) #12
  br i1 %tobool.not.i.i25.i, label %if.else.i.i28.i, label %if.then.i.i27.i

if.then.i.i27.i:                                  ; preds = %ethoc_ack_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i31.i

if.else.i.i28.i:                                  ; preds = %ethoc_ack_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i31.i

ethoc_read.exit.i31.i:                            ; preds = %if.else.i.i28.i, %if.then.i.i27.i
  %retval.0.i.i29.i = phi i32 [ %59, %if.then.i.i27.i ], [ %60, %if.else.i.i28.i ]
  %or.i.i = or i32 %retval.0.i.i29.i, 127
  %61 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i4.i30.i = icmp eq i8 %62, 0
  br i1 %tobool.not.i4.i30.i, label %if.else.i6.i.i, label %do.body.i.i33.i

do.body.i.i33.i:                                  ; preds = %ethoc_read.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %63 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i32.i = getelementptr i8, ptr %64, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %or.i.i) #12, !srcloc !169
  br label %ethoc_enable_irq.exit.i

if.else.i6.i.i:                                   ; preds = %ethoc_read.exit.i31.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i5.i.i = getelementptr i8, ptr %66, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i5.i.i, i32 %67) #12, !srcloc !169
  br label %ethoc_enable_irq.exit.i

ethoc_enable_irq.exit.i:                          ; preds = %if.else.i6.i.i, %do.body.i.i33.i
  %68 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i.i35.i = icmp eq i8 %69, 0
  %70 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr.i, align 8
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #12
  br i1 %tobool.not.i.i35.i, label %if.else.i.i37.i, label %if.then.i.i36.i

if.then.i.i36.i:                                  ; preds = %ethoc_enable_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i41.i

if.else.i.i37.i:                                  ; preds = %ethoc_enable_irq.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i41.i

ethoc_read.exit.i41.i:                            ; preds = %if.else.i.i37.i, %if.then.i.i36.i
  %retval.0.i.i38.i = phi i32 [ %72, %if.then.i.i36.i ], [ %73, %if.else.i.i37.i ]
  %or.i39.i = or i32 %retval.0.i.i38.i, 3
  %74 = ptrtoint ptr %big_endian.i.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %big_endian.i.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i4.i40.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i4.i40.i, label %if.else.i5.i43.i, label %do.body.i.i42.i

do.body.i.i42.i:                                  ; preds = %ethoc_read.exit.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %76 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %or.i39.i) #12, !srcloc !169
  br label %ethoc_reset.exit

if.else.i5.i43.i:                                 ; preds = %ethoc_read.exit.i41.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i39.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %80) #12, !srcloc !169
  br label %ethoc_reset.exit

ethoc_reset.exit:                                 ; preds = %if.else.i5.i43.i, %do.body.i.i42.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %81 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %82, i32 0, i32 13
  %83 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.body13, label %do.body

do.body:                                          ; preds = %ethoc_reset.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ethoc_open.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ethoc_open, %if.then10)) #12
          to label %do.end [label %if.then10], !srcloc !165

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ethoc_open.__UNIQUE_ID_ddebug352, ptr noundef %dev11, ptr noundef nonnull @.str.38) #12
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %85 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %86) #12
  br label %if.end30

do.body13:                                        ; preds = %ethoc_reset.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ethoc_open.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ethoc_open, %if.then25)) #12
          to label %do.end29 [label %if.then25], !srcloc !165

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ethoc_open.__UNIQUE_ID_ddebug353, ptr noundef %dev26, ptr noundef nonnull @.str.39) #12
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %87 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i65 = getelementptr inbounds %struct.netdev_queue, ptr %88, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i65) #12
  br label %if.end30

if.end30:                                         ; preds = %do.end29, %do.end
  %old_link = getelementptr i8, ptr %dev, i32 2636
  %89 = ptrtoint ptr %old_link to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %old_link, align 4
  %old_duplex = getelementptr i8, ptr %dev, i32 2640
  %90 = ptrtoint ptr %old_duplex to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 -1, ptr %old_duplex, align 8
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %91 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %92) #12
  %msg_enable = getelementptr i8, ptr %dev, i32 2576
  %93 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %msg_enable, align 8
  %and = and i32 %94, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %if.end30.cleanup_crit_edge, label %do.end35

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %dev36 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  %base_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 5
  %95 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %base_addr, align 32
  %97 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mem_start, align 4
  %mem_end = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 3
  %99 = ptrtoint ptr %mem_end to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mem_end, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev36, ptr noundef nonnull @.str.40, i32 noundef %96, i32 noundef %98, i32 noundef %100) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %napi = getelementptr i8, ptr %dev, i32 2352
  tail call void @napi_disable(ptr noundef %napi) #12
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @phy_stop(ptr noundef nonnull %1) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %big_endian.i.i = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i

ethoc_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %6, %if.then.i.i ], [ %7, %if.else.i.i ]
  %and.i = and i32 %retval.0.i.i, -4
  %8 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i4.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i4.i, label %if.else.i5.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %and.i) #12, !srcloc !169
  br label %ethoc_disable_rx_and_tx.exit

if.else.i5.i:                                     ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %14) #12, !srcloc !169
  br label %ethoc_disable_rx_and_tx.exit

ethoc_disable_rx_and_tx.exit:                     ; preds = %if.else.i5.i, %do.body.i.i
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %16, ptr noundef %dev) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %if.then4, label %ethoc_disable_rx_and_tx.exit.if.end5_crit_edge

ethoc_disable_rx_and_tx.exit.if.end5_crit_edge:   ; preds = %ethoc_disable_rx_and_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then4:                                         ; preds = %ethoc_disable_rx_and_tx.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %ethoc_disable_rx_and_tx.exit.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1)
  %cmp.i.i = icmp ult i32 %1, 64
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end_crit_edge, !prof !171

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub nuw nsw i32 64, %1
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %if.then

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !172

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #12, !srcloc !173
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %6 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %7, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end

if.then:                                          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %8 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_errors, align 4
  br label %out_no_free

if.end:                                           ; preds = %__skb_put.exit.i.i, %entry.if.end_crit_edge
  %10 = phi i32 [ %add.i.i.i, %__skb_put.exit.i.i ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %10)
  %cmp = icmp ugt i32 %10, 1536
  br i1 %cmp, label %if.then5, label %if.end9, !prof !171

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %tx_errors7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %11 = ptrtoint ptr %tx_errors7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_errors7, align 4
  %inc8 = add i32 %12, 1
  store i32 %inc8, ptr %tx_errors7, align 4
  br label %out

if.end9:                                          ; preds = %if.end
  %cur_tx = getelementptr i8, ptr %dev, i32 2324
  %13 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cur_tx, align 4
  %num_tx = getelementptr i8, ptr %dev, i32 2320
  %15 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx, align 8
  %rem = urem i32 %14, %16
  %lock = getelementptr i8, ptr %dev, i32 2580
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %17 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cur_tx, align 4
  %inc11 = add i32 %18, 1
  store i32 %inc11, ptr %cur_tx, align 4
  %mul.i = shl i32 %rem, 3
  %add.i = add i32 %mul.i, 1024
  %big_endian.i.i = getelementptr i8, ptr %dev, i32 2312
  %19 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %22, i32 %add.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #12
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i74

if.then.i.i74:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i

if.else.i.i:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i

ethoc_read.exit.i:                                ; preds = %if.else.i.i, %if.then.i.i74
  %retval.0.i.i75 = phi i32 [ %23, %if.then.i.i74 ], [ %24, %if.else.i.i ]
  %25 = or i32 %add.i, 4
  %26 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i8.i = icmp eq i8 %27, 0
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i9.i = getelementptr i8, ptr %29, i32 %25
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i9.i) #12
  br i1 %tobool.not.i8.i, label %if.else.i11.i, label %if.then.i10.i

if.then.i10.i:                                    ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read_bd.exit

if.else.i11.i:                                    ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read_bd.exit

ethoc_read_bd.exit:                               ; preds = %if.else.i11.i, %if.then.i10.i
  %retval.0.i12.i = phi i32 [ %30, %if.then.i10.i ], [ %31, %if.else.i11.i ]
  %32 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %33)
  %cmp13 = icmp ult i32 %33, 64
  br i1 %cmp13, label %if.then20, label %if.else, !prof !171

if.then20:                                        ; preds = %ethoc_read_bd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %retval.0.i.i75, 4096
  br label %if.end22

if.else:                                          ; preds = %ethoc_read_bd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %retval.0.i.i75, -4097
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then20 ]
  %vma = getelementptr i8, ptr %dev, i32 2340
  %34 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vma, align 4
  %arrayidx = getelementptr ptr, ptr %35, i32 %rem
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  tail call void @mmiocpy(ptr noundef %37, ptr noundef %39, i32 noundef %33) #12
  %and25 = and i32 %storemerge, 65024
  %40 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len1.i.i, align 4
  %shl = shl i32 %41, 16
  %or29 = or i32 %shl, %and25
  %42 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i79 = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i79, label %if.else.i.i81, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %45, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or29) #12, !srcloc !169
  br label %ethoc_write.exit.i

if.else.i.i81:                                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i80 = getelementptr i8, ptr %47, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %or29) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i80, i32 %48) #12, !srcloc !169
  br label %ethoc_write.exit.i

ethoc_write.exit.i:                               ; preds = %if.else.i.i81, %do.body.i.i
  %49 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i7.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i7.i, label %if.else.i11.i83, label %do.body.i9.i

do.body.i9.i:                                     ; preds = %ethoc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %52, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %retval.0.i12.i) #12, !srcloc !169
  br label %ethoc_write_bd.exit

if.else.i11.i83:                                  ; preds = %ethoc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i10.i = getelementptr i8, ptr %54, i32 %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %55 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i12.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i10.i, i32 %55) #12, !srcloc !169
  br label %ethoc_write_bd.exit

ethoc_write_bd.exit:                              ; preds = %if.else.i11.i83, %do.body.i9.i
  %or31 = or i32 %or29, 32768
  %56 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i.i87 = icmp eq i8 %57, 0
  br i1 %tobool.not.i.i87, label %if.else.i.i91, label %do.body.i.i89

do.body.i.i89:                                    ; preds = %ethoc_write_bd.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %58 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i88 = getelementptr i8, ptr %59, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i88, i32 %or31) #12, !srcloc !169
  br label %ethoc_write.exit.i94

if.else.i.i91:                                    ; preds = %ethoc_write_bd.exit
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i90 = getelementptr i8, ptr %61, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %62 = tail call i32 @llvm.bswap.i32(i32 %or31) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i90, i32 %62) #12, !srcloc !169
  br label %ethoc_write.exit.i94

ethoc_write.exit.i94:                             ; preds = %if.else.i.i91, %do.body.i.i89
  %63 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %big_endian.i.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i7.i93 = icmp eq i8 %64, 0
  br i1 %tobool.not.i7.i93, label %if.else.i11.i98, label %do.body.i9.i96

do.body.i9.i96:                                   ; preds = %ethoc_write.exit.i94
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %65 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i8.i95 = getelementptr i8, ptr %66, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i95, i32 %retval.0.i12.i) #12, !srcloc !169
  br label %ethoc_write_bd.exit99

if.else.i11.i98:                                  ; preds = %ethoc_write.exit.i94
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i10.i97 = getelementptr i8, ptr %68, i32 %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %69 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i12.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i10.i97, i32 %69) #12, !srcloc !169
  br label %ethoc_write_bd.exit99

ethoc_write_bd.exit99:                            ; preds = %if.else.i11.i98, %do.body.i9.i96
  %70 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cur_tx, align 4
  %dty_tx = getelementptr i8, ptr %dev, i32 2328
  %72 = ptrtoint ptr %dty_tx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dty_tx, align 8
  %74 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_tx, align 8
  %add = add i32 %75, %73
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %add)
  %cmp34 = icmp eq i32 %71, %add
  br i1 %cmp34, label %do.body, label %ethoc_write_bd.exit99.if.end47_crit_edge

ethoc_write_bd.exit99.if.end47_crit_edge:         ; preds = %ethoc_write_bd.exit99
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

do.body:                                          ; preds = %ethoc_write_bd.exit99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ethoc_start_xmit.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ethoc_start_xmit, %if.then44)) #12
          to label %do.end [label %if.then44], !srcloc !165

if.then44:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev45 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ethoc_start_xmit.__UNIQUE_ID_ddebug354, ptr noundef %dev45, ptr noundef nonnull @.str.45) #12
  br label %do.end

do.end:                                           ; preds = %if.then44, %do.body
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %76 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %77, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #12
  br label %if.end47

if.end47:                                         ; preds = %do.end, %ethoc_write_bd.exit99.if.end47_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %78 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tx_flags.i, align 1
  %82 = and i8 %81, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool.not.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i, label %if.end47.out_crit_edge, label %if.then.i

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then.i:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #12
  br label %out

out:                                              ; preds = %if.then.i, %if.end47.out_crit_edge, %if.then5
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %out_no_free

out_no_free:                                      ; preds = %out, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethoc_set_multicast_list(ptr noundef readonly %dev) #2 align 64 {
entry:
  %hash = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %big_endian.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hash) #12
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %hash, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and2 = and i32 %retval.0.i, -169
  %and = shl i32 %8, 4
  %9 = and i32 %and, 128
  %mode.0 = or i32 %9, %and2
  %and4 = shl i32 %8, 2
  %10 = and i32 %and4, 8
  %11 = or i32 %mode.0, %10
  %and12 = lshr i32 %8, 3
  %12 = and i32 %and12, 32
  %13 = or i32 %11, %12
  %mode.2 = xor i32 %13, 8
  %14 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i99 = icmp eq i8 %15, 0
  br i1 %tobool.not.i99, label %if.else.i100, label %do.body.i

do.body.i:                                        ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %mode.2) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i100:                                     ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %20 = tail call i32 @llvm.bswap.i32(i32 %mode.2) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %20) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i100, %do.body.i
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 8
  %and20 = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %hash, align 8
  %arrayidx23 = getelementptr inbounds [2 x i32], ptr %hash, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %arrayidx23, align 4
  br label %if.end65

if.else24:                                        ; preds = %ethoc_write.exit
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %25 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %25)
  %ha.0114 = load ptr, ptr %mc, align 4
  %cmp.not115 = icmp eq ptr %ha.0114, %mc
  br i1 %cmp.not115, label %if.else24.if.end65_crit_edge, label %if.else24.cond.end_crit_edge

if.else24.cond.end_crit_edge:                     ; preds = %if.else24
  br label %cond.end

if.else24.if.end65_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.else24.cond.end_crit_edge
  %ha.0116 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0114, %if.else24.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0116, i32 0, i32 2
  %call28 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #16
  %26 = and i32 %call28, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %28 to i32
  %shr53 = lshr i32 %conv2.i.i, 2
  %and55 = and i32 %shr53, 31
  %shl56 = shl nuw i32 1, %and55
  %29 = lshr i32 %conv2.i.i, 7
  %arrayidx58 = getelementptr [2 x i32], ptr %hash, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx58, align 4
  %or59 = or i32 %shl56, %31
  store i32 %or59, ptr %arrayidx58, align 4
  %32 = ptrtoint ptr %ha.0116 to i32
  call void @__asan_load4_noabort(i32 %32)
  %ha.0 = load ptr, ptr %ha.0116, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %cond.end.if.end65_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.end.if.end65_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end65

if.end65:                                         ; preds = %cond.end.if.end65_crit_edge, %if.else24.if.end65_crit_edge, %if.then22
  %33 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash, align 8
  %35 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i102 = icmp eq i8 %36, 0
  br i1 %tobool.not.i102, label %if.else.i105, label %do.body.i104

do.body.i104:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i103 = getelementptr i8, ptr %38, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %34) #12, !srcloc !169
  br label %ethoc_write.exit106

if.else.i105:                                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %40, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %41 = tail call i32 @llvm.bswap.i32(i32 %34) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %41) #12, !srcloc !169
  br label %ethoc_write.exit106

ethoc_write.exit106:                              ; preds = %if.else.i105, %do.body.i104
  %arrayidx67 = getelementptr inbounds [2 x i32], ptr %hash, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx67, align 4
  %44 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i108 = icmp eq i8 %45, 0
  br i1 %tobool.not.i108, label %if.else.i112, label %do.body.i110

do.body.i110:                                     ; preds = %ethoc_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i109 = getelementptr i8, ptr %47, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %43) #12, !srcloc !169
  br label %ethoc_write.exit113

if.else.i112:                                     ; preds = %ethoc_write.exit106
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i111 = getelementptr i8, ptr %49, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %50 = tail call i32 @llvm.bswap.i32(i32 %43) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i111, i32 %50) #12, !srcloc !169
  br label %ethoc_write.exit113

ethoc_write.exit113:                              ; preds = %if.else.i112, %do.body.i110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hash) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #12
  tail call fastcc void @ethoc_do_set_mac_address(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_ioctl(ptr noundef %dev, ptr noundef %ifr, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ifr_ifru.i = getelementptr inbounds %struct.ifreq, ptr %ifr, i32 0, i32 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 35143, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 35143
  br i1 %cmp.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %2 = ptrtoint ptr %ifr_ifru.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ifr_ifru.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %3)
  %cmp4 = icmp ugt i16 %3, 31
  br i1 %cmp4, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  %conv = zext i16 %3 to i32
  %mdio8 = getelementptr i8, ptr %dev, i32 2624
  %4 = ptrtoint ptr %mdio8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdio8, align 8
  %call11 = tail call ptr @mdiobus_get_phy(ptr noundef %5, i32 noundef %conv) #12
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %6 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phydev, align 16
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.end7.if.end14_crit_edge
  %phy.0 = phi ptr [ %call11, %if.end7.if.end14_crit_edge ], [ %7, %if.else ]
  %call15 = tail call i32 @phy_mii_ioctl(ptr noundef %phy.0, ptr noundef %ifr, i32 noundef %cmd) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -34, %if.then3.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ethoc_change_mtu(ptr nocapture noundef readnone %dev, i32 noundef %new_mtu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethoc_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %big_endian.i = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %ethoc_read.exit.if.end_crit_edge, label %if.then, !prof !171

ethoc_read.exit.if.end_crit_edge:                 ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call4 = tail call i32 @ethoc_interrupt(i32 noundef %7, ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %ethoc_read.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_id, i32 2304
  %big_endian.i = getelementptr i8, ptr %dev_id, i32 2312
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i36 = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i38 = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i39 = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i39) #12
  br i1 %tobool.not.i38, label %if.else.i41, label %if.then.i40

if.then.i40:                                      ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit43

if.else.i41:                                      ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit43

ethoc_read.exit43:                                ; preds = %if.else.i41, %if.then.i40
  %retval.0.i42 = phi i32 [ %10, %if.then.i40 ], [ %11, %if.else.i41 ]
  %and = and i32 %retval.0.i42, %retval.0.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %ethoc_read.exit43.cleanup_crit_edge, label %if.end, !prof !171

ethoc_read.exit43.cleanup_crit_edge:              ; preds = %ethoc_read.exit43
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %ethoc_read.exit43
  %12 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and) #12, !srcloc !169
  br label %ethoc_ack_irq.exit

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %18) #12, !srcloc !169
  br label %ethoc_ack_irq.exit

ethoc_ack_irq.exit:                               ; preds = %if.else.i.i, %do.body.i.i
  %and4 = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %ethoc_ack_irq.exit.if.end18_crit_edge, label %do.body

ethoc_ack_irq.exit.if.end18_crit_edge:            ; preds = %ethoc_ack_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

do.body:                                          ; preds = %ethoc_ack_irq.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ethoc_interrupt.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ethoc_interrupt, %if.then15)) #12
          to label %do.end [label %if.then15], !srcloc !165

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev16 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 133
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ethoc_interrupt.__UNIQUE_ID_ddebug351, ptr noundef %dev16, ptr noundef nonnull @.str.43) #12
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %19 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %20, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %if.end18

if.end18:                                         ; preds = %do.end, %ethoc_ack_irq.exit.if.end18_crit_edge
  %and19 = and i32 %and, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %if.then21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  %21 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i45 = icmp eq i8 %22, 0
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i.i46 = getelementptr i8, ptr %24, i32 8
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i46) #12
  br i1 %tobool.not.i.i45, label %if.else.i.i47, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit.i

if.else.i.i47:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #14
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit.i

ethoc_read.exit.i:                                ; preds = %if.else.i.i47, %if.then.i.i
  %retval.0.i.i = phi i32 [ %25, %if.then.i.i ], [ %26, %if.else.i.i47 ]
  %and.i = and i32 %retval.0.i.i, -16
  %27 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i2.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i2.i, label %if.else.i4.i, label %do.body.i.i49

do.body.i.i49:                                    ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i48 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %and.i) #12, !srcloc !169
  br label %ethoc_disable_irq.exit

if.else.i4.i:                                     ; preds = %ethoc_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i3.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %and.i) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i3.i, i32 %33) #12, !srcloc !169
  br label %ethoc_disable_irq.exit

ethoc_disable_irq.exit:                           ; preds = %if.else.i4.i, %do.body.i.i49
  %napi = getelementptr i8, ptr %dev_id, i32 2352
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #12
  br i1 %call.i, label %if.then.i50, label %ethoc_disable_irq.exit.cleanup_crit_edge

ethoc_disable_irq.exit.cleanup_crit_edge:         ; preds = %ethoc_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i50:                                      ; preds = %ethoc_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__napi_schedule(ptr noundef %napi) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i50, %ethoc_disable_irq.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %ethoc_read.exit43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ethoc_read.exit43.cleanup_crit_edge ], [ 1, %if.end18.cleanup_crit_edge ], [ 1, %ethoc_disable_irq.exit.cleanup_crit_edge ], [ 1, %if.then.i50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ethoc_init_ring(ptr noundef %dev, i32 noundef %mem_start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_tx = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cur_tx, align 4
  %dty_tx = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %dty_tx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dty_tx, align 8
  %cur_rx = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cur_rx, align 8
  %num_tx = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_tx, align 8
  %big_endian.i = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %add.ptr3.i = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %11 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %11) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i, %do.body.i
  %membase = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %14 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24.not = icmp eq i32 %15, 0
  br i1 %cmp24.not, label %ethoc_write.exit.for.cond8.preheader_crit_edge, label %for.body.lr.ph

ethoc_write.exit.for.cond8.preheader_crit_edge:   ; preds = %ethoc_write.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %ethoc_write.exit
  %vma6 = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 9
  br label %for.body

for.cond8.preheader:                              ; preds = %ethoc_write_bd.exit.for.cond8.preheader_crit_edge, %ethoc_write.exit.for.cond8.preheader_crit_edge
  %bd.sroa.11.0.lcssa = phi i32 [ %mem_start, %ethoc_write.exit.for.cond8.preheader_crit_edge ], [ %add, %ethoc_write_bd.exit.for.cond8.preheader_crit_edge ]
  %vma.0.lcssa = phi ptr [ %13, %ethoc_write.exit.for.cond8.preheader_crit_edge ], [ %add.ptr, %ethoc_write_bd.exit.for.cond8.preheader_crit_edge ]
  %num_rx = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 7
  %16 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp930.not = icmp eq i32 %17, 0
  br i1 %cmp930.not, label %for.cond8.preheader.for.end29_crit_edge, label %for.body10.lr.ph

for.cond8.preheader.for.end29_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end29

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %vma22 = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 9
  br label %for.body10

for.body:                                         ; preds = %ethoc_write_bd.exit.for.body_crit_edge, %for.body.lr.ph
  %18 = phi i32 [ %15, %for.body.lr.ph ], [ %38, %ethoc_write_bd.exit.for.body_crit_edge ]
  %vma.028 = phi ptr [ %13, %for.body.lr.ph ], [ %add.ptr, %ethoc_write_bd.exit.for.body_crit_edge ]
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %ethoc_write_bd.exit.for.body_crit_edge ]
  %bd.sroa.0.026 = phi i32 [ 18432, %for.body.lr.ph ], [ %spec.select, %ethoc_write_bd.exit.for.body_crit_edge ]
  %bd.sroa.11.025 = phi i32 [ %mem_start, %for.body.lr.ph ], [ %add, %ethoc_write_bd.exit.for.body_crit_edge ]
  %sub = add i32 %18, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.027, i32 %sub)
  %cmp3 = icmp eq i32 %i.027, %sub
  %or = or i32 %bd.sroa.0.026, 8192
  %spec.select = select i1 %cmp3, i32 %or, i32 %bd.sroa.0.026
  %mul.i = shl i32 %i.027, 3
  %add.i = add i32 %mul.i, 1024
  %19 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %spec.select) #12, !srcloc !169
  br label %ethoc_write.exit.i

if.else.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %24, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %spec.select) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %25) #12, !srcloc !169
  br label %ethoc_write.exit.i

ethoc_write.exit.i:                               ; preds = %if.else.i.i, %do.body.i.i
  %26 = or i32 %add.i, 4
  %27 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i7.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i7.i, label %if.else.i11.i, label %do.body.i9.i

do.body.i9.i:                                     ; preds = %ethoc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %add.ptr.i8.i = getelementptr i8, ptr %30, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %bd.sroa.11.025) #12, !srcloc !169
  br label %ethoc_write_bd.exit

if.else.i11.i:                                    ; preds = %ethoc_write.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %add.ptr3.i10.i = getelementptr i8, ptr %32, i32 %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %33 = tail call i32 @llvm.bswap.i32(i32 %bd.sroa.11.025) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i10.i, i32 %33) #12, !srcloc !169
  br label %ethoc_write_bd.exit

ethoc_write_bd.exit:                              ; preds = %if.else.i11.i, %do.body.i9.i
  %add = add i32 %bd.sroa.11.025, 1536
  %34 = ptrtoint ptr %vma6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vma6, align 4
  %arrayidx = getelementptr ptr, ptr %35, i32 %i.027
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %vma.028, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %vma.028, i32 1536
  %inc = add nuw i32 %i.027, 1
  %37 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_tx, align 8
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %ethoc_write_bd.exit.for.body_crit_edge, label %ethoc_write_bd.exit.for.cond8.preheader_crit_edge

ethoc_write_bd.exit.for.cond8.preheader_crit_edge: ; preds = %ethoc_write_bd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond8.preheader

ethoc_write_bd.exit.for.body_crit_edge:           ; preds = %ethoc_write_bd.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body10:                                       ; preds = %ethoc_write_bd.exit16.for.body10_crit_edge, %for.body10.lr.ph
  %39 = phi i32 [ %17, %for.body10.lr.ph ], [ %63, %ethoc_write_bd.exit16.for.body10_crit_edge ]
  %vma.134 = phi ptr [ %vma.0.lcssa, %for.body10.lr.ph ], [ %add.ptr26, %ethoc_write_bd.exit16.for.body10_crit_edge ]
  %i.133 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc28, %ethoc_write_bd.exit16.for.body10_crit_edge ]
  %bd.sroa.0.232 = phi i32 [ 49152, %for.body10.lr.ph ], [ %spec.select23, %ethoc_write_bd.exit16.for.body10_crit_edge ]
  %bd.sroa.11.131 = phi i32 [ %bd.sroa.11.0.lcssa, %for.body10.lr.ph ], [ %add21, %ethoc_write_bd.exit16.for.body10_crit_edge ]
  %sub12 = add i32 %39, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.133, i32 %sub12)
  %cmp13 = icmp eq i32 %i.133, %sub12
  %or16 = or i32 %bd.sroa.0.232, 8192
  %spec.select23 = select i1 %cmp13, i32 %or16, i32 %bd.sroa.0.232
  %40 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_tx, align 8
  %add19 = add i32 %41, %i.133
  %mul.i1 = shl i32 %add19, 3
  %add.i2 = add i32 %mul.i1, 1024
  %42 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i4 = icmp eq i8 %43, 0
  br i1 %tobool.not.i.i4, label %if.else.i.i8, label %do.body.i.i6

do.body.i.i6:                                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %add.ptr.i.i5 = getelementptr i8, ptr %45, i32 %add.i2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i5, i32 %spec.select23) #12, !srcloc !169
  br label %ethoc_write.exit.i11

if.else.i.i8:                                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  %add.ptr3.i.i7 = getelementptr i8, ptr %47, i32 %add.i2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %spec.select23) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i7, i32 %48) #12, !srcloc !169
  br label %ethoc_write.exit.i11

ethoc_write.exit.i11:                             ; preds = %if.else.i.i8, %do.body.i.i6
  %49 = or i32 %add.i2, 4
  %50 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i7.i10 = icmp eq i8 %51, 0
  br i1 %tobool.not.i7.i10, label %if.else.i11.i15, label %do.body.i9.i13

do.body.i9.i13:                                   ; preds = %ethoc_write.exit.i11
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %add.ptr.i8.i12 = getelementptr i8, ptr %53, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i12, i32 %bd.sroa.11.131) #12, !srcloc !169
  br label %ethoc_write_bd.exit16

if.else.i11.i15:                                  ; preds = %ethoc_write.exit.i11
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 8
  %add.ptr3.i10.i14 = getelementptr i8, ptr %55, i32 %49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %56 = tail call i32 @llvm.bswap.i32(i32 %bd.sroa.11.131) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i10.i14, i32 %56) #12, !srcloc !169
  br label %ethoc_write_bd.exit16

ethoc_write_bd.exit16:                            ; preds = %if.else.i11.i15, %do.body.i9.i13
  %add21 = add i32 %bd.sroa.11.131, 1536
  %57 = ptrtoint ptr %vma22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %vma22, align 4
  %59 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_tx, align 8
  %add24 = add i32 %60, %i.133
  %arrayidx25 = getelementptr ptr, ptr %58, i32 %add24
  %61 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %vma.134, ptr %arrayidx25, align 4
  %add.ptr26 = getelementptr i8, ptr %vma.134, i32 1536
  %inc28 = add nuw i32 %i.133, 1
  %62 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_rx, align 4
  %cmp9 = icmp ult i32 %inc28, %63
  br i1 %cmp9, label %ethoc_write_bd.exit16.for.body10_crit_edge, label %ethoc_write_bd.exit16.for.end29_crit_edge

ethoc_write_bd.exit16.for.end29_crit_edge:        ; preds = %ethoc_write_bd.exit16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end29

ethoc_write_bd.exit16.for.body10_crit_edge:       ; preds = %ethoc_write_bd.exit16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body10

for.end29:                                        ; preds = %ethoc_write_bd.exit16.for.end29_crit_edge, %for.cond8.preheader.for.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ethoc_disable_irq(ptr nocapture noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %big_endian.i = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  %and = and i32 %retval.0.i, -16
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i2 = icmp eq i8 %7, 0
  br i1 %tobool.not.i2, label %if.else.i4, label %do.body.i

do.body.i:                                        ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i4:                                       ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %add.ptr3.i3 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i3, i32 %12) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i4, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ethoc_disable_rx_and_tx(ptr nocapture noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %big_endian.i = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  %and = and i32 %retval.0.i, -4
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i4 = icmp eq i8 %7, 0
  br i1 %tobool.not.i4, label %if.else.i5, label %do.body.i

do.body.i:                                        ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %and) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i5:                                       ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %and) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i5, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ethoc_enable_irq(ptr nocapture noundef readonly %dev, i32 noundef %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %big_endian.i = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %add.ptr3.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  %or = or i32 %retval.0.i, %mask
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i4 = icmp eq i8 %7, 0
  br i1 %tobool.not.i4, label %if.else.i6, label %do.body.i

do.body.i:                                        ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i6:                                       ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %add.ptr3.i5 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i5, i32 %12) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i6, %do.body.i
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ethoc_enable_rx_and_tx(ptr nocapture noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %big_endian.i = getelementptr inbounds %struct.ethoc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  %or = or i32 %retval.0.i, 3
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i4 = icmp eq i8 %7, 0
  br i1 %tobool.not.i4, label %if.else.i5, label %do.body.i

do.body.i:                                        ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !168
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or) #12, !srcloc !169
  br label %ethoc_write.exit

if.else.i5:                                       ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !170
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #12, !srcloc !169
  br label %ethoc_write.exit

ethoc_write.exit:                                 ; preds = %if.else.i5, %do.body.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_mii_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ethoc_get_regs_len(ptr nocapture noundef readnone %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ethoc_get_regs(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %regs, ptr nocapture noundef writeonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %version = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %version, align 4
  %big_endian.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body

for.body:                                         ; preds = %ethoc_read.exit.for.body_crit_edge, %entry
  %i.05 = phi i32 [ 0, %entry ], [ %inc, %ethoc_read.exit.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.05, 2
  %1 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %big_endian.i, align 8, !range !163
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %4, i32 %mul
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !166
  br label %ethoc_read.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !167
  br label %ethoc_read.exit

ethoc_read.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %5, %if.then.i ], [ %6, %if.else.i ]
  %arrayidx = getelementptr i32, ptr %p, i32 %i.05
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %ethoc_read.exit.for.body_crit_edge

ethoc_read.exit.for.body_crit_edge:               ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %ethoc_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_nway_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ethoc_get_ringparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %num_bd = getelementptr i8, ptr %dev, i32 2316
  %0 = ptrtoint ptr %num_bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_bd, align 4
  %sub = add i32 %1, -1
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %rx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 2
  %3 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 3
  %4 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %5 = load i32, ptr %num_bd, align 4
  %sub2 = add i32 %5, -1
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub2, ptr %tx_max_pending, align 4
  %num_rx = getelementptr i8, ptr %dev, i32 2332
  %7 = ptrtoint ptr %num_rx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_rx, align 4
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %9 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rx_pending, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %10 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %11 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_jumbo_pending, align 4
  %num_tx = getelementptr i8, ptr %dev, i32 2320
  %12 = ptrtoint ptr %num_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx, align 8
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %14 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ethoc_set_ringparam(ptr noundef %dev, ptr nocapture noundef readonly %ring, ptr nocapture noundef readnone %kernel_ring, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 8
  %0 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %add = add i32 %3, %1
  %num_bd = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %num_bd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_bd, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp5 = icmp ugt i32 %add, %5
  br i1 %cmp5, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 6
  %6 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.lhs.false6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %if.end
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ring, i32 0, i32 7
  %8 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %if.end9, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end9.cond.end28_crit_edge, label %if.then11

if.end9.cond.end28_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @netif_tx_disable(ptr noundef %dev)
  tail call fastcc void @ethoc_disable_rx_and_tx(ptr noundef %add.ptr.i)
  tail call fastcc void @ethoc_disable_irq(ptr noundef %add.ptr.i)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %13) #12
  br label %cond.end28

cond.end28:                                       ; preds = %if.then11, %if.end9.cond.end28_crit_edge
  %14 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_pending, align 4
  %16 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 true) #12, !range !164
  %sub.i.i.op.i = xor i32 %16, 31
  %cond29 = shl nuw i32 1, %sub.i.i.op.i
  %num_tx = getelementptr i8, ptr %dev, i32 2320
  %17 = ptrtoint ptr %num_tx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond29, ptr %num_tx, align 8
  %18 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_pending, align 4
  %num_rx = getelementptr i8, ptr %dev, i32 2332
  %20 = ptrtoint ptr %num_rx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %num_rx, align 4
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %21 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mem_start, align 4
  tail call fastcc void @ethoc_init_ring(ptr noundef %add.ptr.i, i32 noundef %22)
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i, align 4
  %and1.i.i63 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i63)
  %tobool.i64.not = icmp eq i32 %and1.i.i63, 0
  br i1 %tobool.i64.not, label %cond.end28.cleanup_crit_edge, label %if.then33

cond.end28.cleanup_crit_edge:                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then33:                                        ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @ethoc_enable_irq(ptr noundef %add.ptr.i, i32 noundef 15)
  tail call fastcc void @ethoc_enable_rx_and_tx(ptr noundef %add.ptr.i)
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %25 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %26) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %cond.end28.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then33 ], [ 0, %cond.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_ts_info(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netif_tx_disable(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !153) #12
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu1, align 4
  %tx_global_lock = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock) #12
  %num_tx_queues = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %4 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_tx_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp13.not = icmp eq i32 %5, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i, align 128
  %_xmit_lock.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #12
  %xmit_lock_owner.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014, i32 11
  %8 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 %3, ptr %xmit_lock_owner.i, align 4
  %state.i = getelementptr %struct.netdev_queue, ptr %7, i32 %i.014, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #12
  %9 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #12
  %inc = add nuw i32 %i.014, 1
  %10 = ptrtoint ptr %num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_tx_queues, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock) #12
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !58, !60, !62, !63, !64, !66, !67, !68, !70, !71, !73, !74, !75, !77, !79, !81, !83, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !105, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151}
!llvm.named.register.sp = !{!153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__param_buffer_size, !1, !"__param_buffer_size", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ethoc.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_buffer_sizetype349, !1, !"__UNIQUE_ID_buffer_sizetype349", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_buffer_size350, !4, !"__UNIQUE_ID_buffer_size350", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ethoc.c", i32 29, i32 1}
!5 = !{ptr @__initcall__kmod_ethoc__359_1310_ethoc_driver_init6, !6, !"__initcall__kmod_ethoc__359_1310_ethoc_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/ethoc.c", i32 1310, i32 1}
!7 = !{ptr @__exitcall_ethoc_driver_exit, !6, !"__exitcall_ethoc_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author360, !9, !"__UNIQUE_ID_author360", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ethoc.c", i32 1312, i32 1}
!10 = !{ptr @__UNIQUE_ID_description361, !11, !"__UNIQUE_ID_description361", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ethoc.c", i32 1313, i32 1}
!12 = !{ptr @__UNIQUE_ID_file362, !13, !"__UNIQUE_ID_file362", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ethoc.c", i32 1314, i32 1}
!14 = !{ptr @__UNIQUE_ID_license363, !13, !"__UNIQUE_ID_license363", i1 false, i1 false}
!15 = !{ptr @__param_str_buffer_size, !1, !"__param_str_buffer_size", i1 false, i1 false}
!16 = !{ptr @buffer_size, !17, !"buffer_size", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/ethoc.c", i32 27, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/ethoc.c", i32 1305, i32 11}
!20 = !{ptr @ethoc_driver, !21, !"ethoc_driver", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/ethoc.c", i32 1299, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/ethoc.c", i32 1049, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ethoc_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ethoc_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/ethoc.c", i32 1057, i32 3}
!32 = !{ptr @ethoc_probe._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ethoc_probe._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/ethoc.c", i32 1070, i32 4}
!36 = !{ptr @ethoc_probe._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ethoc_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/ethoc.c", i32 1094, i32 3}
!40 = !{ptr @ethoc_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ethoc_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ethoc.c", i32 1103, i32 4}
!44 = !{ptr @ethoc_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ethoc_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ethoc.c", i32 1113, i32 4}
!48 = !{ptr @ethoc_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @ethoc_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/ethoc.c", i32 1136, i32 2}
!52 = !{ptr @ethoc_probe.__UNIQUE_ID_ddebug357, !51, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/ethoc.c", i32 1188, i32 3}
!55 = !{ptr @ethoc_probe.__UNIQUE_ID_ddebug358, !54, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/ethoc.c", i32 1201, i32 21}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/ethoc.c", i32 1202, i32 44}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/ethoc.c", i32 1210, i32 3}
!62 = !{ptr @ethoc_probe._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ethoc_probe._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/ethoc.c", i32 1216, i32 3}
!66 = !{ptr @ethoc_probe._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ethoc_probe._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @ethoc_probe.__key, !69, !"__key", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/ethoc.c", i32 1229, i32 2}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/ethoc.c", i32 1233, i32 3}
!73 = !{ptr @ethoc_probe._entry.32, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @ethoc_probe._entry_ptr.34, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/ethoc.c", i32 711, i32 43}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/ethoc.c", i32 719, i32 40}
!79 = !{ptr @ethoc_netdev_ops, !80, !"ethoc_netdev_ops", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/ethoc.c", i32 1009, i32 36}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/ethoc.c", i32 742, i32 3}
!83 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @ethoc_open.__UNIQUE_ID_ddebug352, !82, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/ethoc.c", i32 745, i32 3}
!87 = !{ptr @ethoc_open.__UNIQUE_ID_ddebug353, !86, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/ethoc.c", i32 755, i32 3}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ethoc_open._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ethoc_open._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/ethoc.c", i32 576, i32 3}
!95 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ethoc_interrupt.__UNIQUE_ID_ddebug351, !94, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/ethoc.c", i32 918, i32 3}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @ethoc_start_xmit.__UNIQUE_ID_ddebug354, !98, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!101 = !{ptr @ethoc_ethtool_ops, !102, !"ethoc_ethtool_ops", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/ethoc.c", i32 997, i32 33}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/ethoc.c", i32 461, i32 6}
!105 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @ethoc_rx._entry, !104, !"_entry", i1 false, i1 false}
!108 = !{ptr @ethoc_rx._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/ethoc.c", i32 380, i32 3}
!111 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ethoc_update_rx_stats._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @ethoc_update_rx_stats._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/ethoc.c", i32 386, i32 3}
!116 = !{ptr @ethoc_update_rx_stats._entry.51, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @ethoc_update_rx_stats._entry_ptr.53, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/ethoc.c", i32 392, i32 3}
!120 = !{ptr @ethoc_update_rx_stats._entry.54, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @ethoc_update_rx_stats._entry_ptr.56, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/ethoc.c", i32 397, i32 3}
!124 = !{ptr @ethoc_update_rx_stats._entry.57, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @ethoc_update_rx_stats._entry_ptr.59, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/ethoc.c", i32 403, i32 3}
!128 = !{ptr @ethoc_update_rx_stats._entry.60, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @ethoc_update_rx_stats._entry_ptr.62, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/ethoc.c", i32 412, i32 3}
!132 = !{ptr @ethoc_update_rx_stats._entry.63, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @ethoc_update_rx_stats._entry_ptr.65, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/ethoc.c", i32 485, i32 3}
!136 = !{ptr @.str.67, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @ethoc_update_tx_stats._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @ethoc_update_tx_stats._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/ethoc.c", i32 490, i32 3}
!141 = !{ptr @ethoc_update_tx_stats._entry.68, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @ethoc_update_tx_stats._entry_ptr.70, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.72, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/ethoc.c", i32 495, i32 3}
!145 = !{ptr @ethoc_update_tx_stats._entry.71, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @ethoc_update_tx_stats._entry_ptr.73, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/ethoc.c", i32 500, i32 3}
!149 = !{ptr @ethoc_update_tx_stats._entry.74, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @ethoc_update_tx_stats._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @ethoc_match, !152, !"ethoc_match", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/ethoc.c", i32 1293, i32 34}
!153 = !{!"sp"}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{i8 0, i8 2}
!164 = !{i32 0, i32 33}
!165 = !{i64 2148352163, i64 2148352168, i64 2148352181, i64 2148352225, i64 2148352259, i64 2148352280}
!166 = !{i64 2156586020}
!167 = !{i64 2153787995}
!168 = !{i64 2156586443}
!169 = !{i64 6247228}
!170 = !{i64 2153789350}
!171 = !{!"branch_weights", i32 1, i32 2000}
!172 = !{!"branch_weights", i32 2000, i32 1}
!173 = !{i64 2154611089, i64 2154611577, i64 2154611126, i64 2154611182, i64 2154611216, i64 2154611240, i64 2154611281, i64 2154611302, i64 2154611330, i64 2154611364}
