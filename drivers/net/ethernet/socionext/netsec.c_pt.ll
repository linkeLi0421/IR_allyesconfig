; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/socionext/netsec.c_pt.bc'
source_filename = "../drivers/net/ethernet/socionext/netsec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.165 }
%struct.atomic_t = type { i32 }
%union.anon.165 = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.170, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.191, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.170 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.191 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.netsec_priv = type { [2 x %struct.netsec_desc_ring], %struct.ethtool_coalesce, ptr, %struct.spinlock, %struct.napi_struct, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, [95 x i8] }
%struct.netsec_desc_ring = type { i32, ptr, ptr, i16, i16, i16, ptr, [104 x i8], %struct.xdp_rxq_info, %struct.spinlock, [84 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.xdp_frame_bulk = type { i32, ptr, [16 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netsec_desc = type { %union.anon.192, i32, ptr, i16, i8 }
%union.anon.192 = type { ptr }
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
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.page_pool_params = type { i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.163, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.163 = type { %struct.atomic_t }
%struct.netsec_de = type { i32, i32, i32, i32 }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.113 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { %struct.anon.115, [0 x %struct.sock_filter] }
%struct.anon.115 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.netdev_bpf = type { i32, %union.anon.175 }
%union.anon.175 = type { %struct.anon.176 }
%struct.anon.176 = type { i32, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }

@__initcall__kmod_netsec__706_2206_netsec_driver_init6 = internal global ptr @netsec_driver_init, section ".initcall6.init", align 4
@netsec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @netsec_probe, ptr @netsec_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @netsec_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netsec_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_netsec_driver_exit = internal global ptr @netsec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author707 = internal constant [54 x i8] c"netsec.author=Jassi Brar <jaswinder.singh@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author708 = internal constant [57 x i8] c"netsec.author=Ard Biesheuvel <ard.biesheuvel@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description709 = internal constant [42 x i8] c"netsec.description=NETSEC Ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file710 = internal constant [50 x i8] c"netsec.file=drivers/net/ethernet/socionext/netsec\00", section ".modinfo", align 1
@__UNIQUE_ID_license711 = internal constant [19 x i8] c"netsec.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"netsec\00", [25 x i8] zeroinitializer }, align 32
@netsec_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,synquacer-netsec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@netsec_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netsec_runtime_suspend, ptr @netsec_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@netsec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1989, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No MMIO resource found.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"netsec_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/socionext/netsec.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr = internal global ptr @netsec_probe._entry, section ".printk_index", align 4
@netsec_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1995, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No EEPROM resource found.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.9 = internal global ptr @netsec_probe._entry.6, section ".printk_index", align 4
@netsec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&priv->reglock\00", [17 x i8] zeroinitializer }, align 32
@netsec_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2022, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devm_ioremap() failed\0A\00", [41 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.13 = internal global ptr @netsec_probe._entry.11, section ".printk_index", align 4
@netsec_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 2030, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"devm_ioremap() failed for EEPROM\0A\00", [62 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.16 = internal global ptr @netsec_probe._entry.14, section ".printk_index", align 4
@netsec_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 2051, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No MAC address found, using random\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.20 = internal global ptr @netsec_probe._entry.17, section ".printk_index", align 4
@netsec_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2065, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing PHY reference clock frequency\0A\00", [57 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.23 = internal global ptr @netsec_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-frame-size\00", [17 x i8] zeroinitializer }, align 32
@netsec_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 2094, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hardware revision %d.%d\0A\00", [39 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.27 = internal global ptr @netsec_probe._entry.25, section ".printk_index", align 4
@netsec_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @netsec_netdev_init, ptr @netsec_netdev_uninit, ptr @netsec_netdev_open, ptr @netsec_netdev_stop, ptr @netsec_netdev_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @phy_do_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netsec_netdev_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netsec_xdp, ptr @netsec_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netsec_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @netsec_et_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @netsec_et_get_msglevel, ptr @netsec_et_set_msglevel, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @netsec_et_get_coalesce, ptr @netsec_et_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @phy_ethtool_get_link_ksettings, ptr @phy_ethtool_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@netsec_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 2112, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to set DMA mask\0A\00", [40 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.30 = internal global ptr @netsec_probe._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"register_netdev() failed\0A\00", [38 x i8] zeroinitializer }, align 32
@netsec_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 2132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init failed\0A\00", [19 x i8] zeroinitializer }, align 32
@netsec_probe._entry_ptr.34 = internal global ptr @netsec_probe._entry.32, section ".printk_index", align 4
@netsec_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 1850, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing required property 'phy-mode'\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netsec_of_probe\00", [16 x i8] zeroinitializer }, align 32
@netsec_of_probe._entry_ptr = internal global ptr @netsec_of_probe._entry, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@netsec_of_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 1856, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"missing required property 'phy-handle'\0A\00", [56 x i8] zeroinitializer }, align 32
@netsec_of_probe._entry_ptr.40 = internal global ptr @netsec_of_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"phy_ref_clk not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.45, i32 45, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s has invalid PHY address\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_mdio_parse_addr\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/of_mdio.h\00", [40 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr = internal global ptr @of_mdio_parse_addr._entry, section ".printk_index", align 4
@of_mdio_parse_addr._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.44, ptr @.str.45, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s PHY address %i is too large\0A\00", [32 x i8] zeroinitializer }, align 32
@of_mdio_parse_addr._entry_ptr.48 = internal global ptr @of_mdio_parse_addr._entry.46, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: rx fail err(%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.netsec_process_rx = private unnamed_addr constant [18 x i8] c"netsec_process_rx\00", align 1
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rx failed to build skb\0A\00", [40 x i8] zeroinitializer }, align 32
@bpf_master_redirect_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.55 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Driver BUG: missing reserved tailroom\00", [58 x i8] zeroinitializer }, align 32
@__func__.xdp_update_frame_from_buff = private unnamed_addr constant [27 x i8] c"xdp_update_frame_from_buff\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@__tracepoint_xdp_exception = external dso_local global %struct.tracepoint, align 4
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/trace/events/xdp.h\00", [37 x i8] zeroinitializer }, align 32
@trace_xdp_exception.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@netsec_netdev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&priv->desc_ring[NETSEC_RING_TX].lock\00", [58 x i8] zeroinitializer }, align 32
@netsec_netdev_init.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&priv->desc_ring[NETSEC_RING_RX].lock\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"netdevice: %s%s: %s: timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@__func__.netsec_wait_while_busy = private unnamed_addr constant [23 x i8] c"netsec_wait_while_busy\00", align 1
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (uninitialized)\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" (unregistering)\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (unregistered)\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (released)\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" (dummy)\00", [23 x i8] zeroinitializer }, align 32
@netdev_reg_state.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netdevice.h\00", [38 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: unknown reg_state %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" (unknown)\00", [21 x i8] zeroinitializer }, align 32
@__func__.netsec_mac_wait_while_busy = private unnamed_addr constant [27 x i8] c"netsec_mac_wait_while_busy\00", align 1
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: failed to load microcode (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@__func__.netsec_reset_hardware = private unnamed_addr constant [22 x i8] c"netsec_reset_hardware\00", align 1
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"microengine start failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: fail setup ring\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.netsec_netdev_open = private unnamed_addr constant [19 x i8] c"netsec_netdev_open\00", align 1
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"missing PHY\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy_connect_direct() failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@netsec_netdev_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 1151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014%s %s Tx queue full\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netsec_netdev_start_xmit\00", [39 x i8] zeroinitializer }, align 32
@netsec_netdev_start_xmit._entry_ptr = internal global ptr @netsec_netdev_start_xmit._entry, section ".printk_index", align 4
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: DMA mapping failed\0A\00", [40 x i8] zeroinitializer }, align 32
@netsec_xdp_setup.__msg = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"netsec: Jumbo frames not supported on XDP\00", [54 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SNI NETSEC MDIO\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@netsec_register_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 1940, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Upgrade f/w for mdio subnode!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netsec_register_mdio\00", [43 x i8] zeroinitializer }, align 32
@netsec_register_mdio._entry_ptr = internal global ptr @netsec_register_mdio._entry, section ".printk_index", align 4
@netsec_register_mdio._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 1947, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mdiobus register err(%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@netsec_register_mdio._entry_ptr.92 = internal global ptr @netsec_register_mdio._entry.90, section ".printk_index", align 4
@netsec_register_mdio._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 1955, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@netsec_register_mdio._entry_ptr.94 = internal global ptr @netsec_register_mdio._entry.93, section ".printk_index", align 4
@netsec_register_mdio._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.89, ptr @.str.3, i32 1962, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get_phy_device err(%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@netsec_register_mdio._entry_ptr.97 = internal global ptr @netsec_register_mdio._entry.95, section ".printk_index", align 4
@netsec_register_mdio._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.89, ptr @.str.3, i32 1971, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"phy_device_register err(%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@netsec_register_mdio._entry_ptr.100 = internal global ptr @netsec_register_mdio._entry.98, section ".printk_index", align 4
@switch.table.netsec_mac_wait_while_busy = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], [40 x i8] zeroinitializer }, align 32
@switch.table.netsec_wait_while_busy = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"netsec_driver\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2196, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2200, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"netsec_dt_ids\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2182, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [14 x i8] c"netsec_pm_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2178, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1989, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1995, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2009, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2022, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2030, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2051, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2065, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2076, i32 45 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2093, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [18 x i8] c"netsec_netdev_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1829, i32 36 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"netsec_ethtool_ops\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 596, i32 33 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2112, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2116, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 2132, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1850, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1854, i32 53 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1856, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1865, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 43, i32 33 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 45, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [27 x i8] c"../include/linux/of_mdio.h\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 51, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 695, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 723, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 997, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1043, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 613, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 271, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [21 x i8] c"../include/net/xdp.h\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 200, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 326, i32 6 }
@___asan_gen_.279 = private unnamed_addr constant [30 x i8] c"../include/trace/events/xdp.h\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 28, i32 1 }
@___asan_gen_.282 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 108, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1730, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1731, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 378, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4963, i32 10 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4975, i32 36 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4976, i32 33 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4977, i32 36 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4978, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4979, i32 31 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4980, i32 28 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4983, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 4984, i32 9 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1449, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1464, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1624, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1632, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1640, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1649, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1150, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1179, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1799, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1922, i32 37 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1924, i32 14 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1933, i32 44 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1940, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1947, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1955, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1962, i32 4 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [43 x i8] c"../drivers/net/ethernet/socionext/netsec.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1970, i32 4 }
@___asan_gen_.401 = private unnamed_addr constant [40 x i8] c"switch.table.netsec_mac_wait_while_busy\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [36 x i8] c"switch.table.netsec_wait_while_busy\00", align 1
@llvm.compiler.used = appending global [129 x ptr] [ptr @__UNIQUE_ID_author707, ptr @__UNIQUE_ID_author708, ptr @__UNIQUE_ID_description709, ptr @__UNIQUE_ID_file710, ptr @__UNIQUE_ID_license711, ptr @__exitcall_netsec_driver_exit, ptr @__initcall__kmod_netsec__706_2206_netsec_driver_init6, ptr @netsec_driver_exit, ptr @netsec_netdev_start_xmit._entry, ptr @netsec_netdev_start_xmit._entry_ptr, ptr @netsec_of_probe._entry, ptr @netsec_of_probe._entry.38, ptr @netsec_of_probe._entry_ptr, ptr @netsec_of_probe._entry_ptr.40, ptr @netsec_probe._entry, ptr @netsec_probe._entry.11, ptr @netsec_probe._entry.14, ptr @netsec_probe._entry.17, ptr @netsec_probe._entry.21, ptr @netsec_probe._entry.25, ptr @netsec_probe._entry.28, ptr @netsec_probe._entry.32, ptr @netsec_probe._entry.6, ptr @netsec_probe._entry_ptr, ptr @netsec_probe._entry_ptr.13, ptr @netsec_probe._entry_ptr.16, ptr @netsec_probe._entry_ptr.20, ptr @netsec_probe._entry_ptr.23, ptr @netsec_probe._entry_ptr.27, ptr @netsec_probe._entry_ptr.30, ptr @netsec_probe._entry_ptr.34, ptr @netsec_probe._entry_ptr.9, ptr @netsec_register_mdio._entry, ptr @netsec_register_mdio._entry.90, ptr @netsec_register_mdio._entry.93, ptr @netsec_register_mdio._entry.95, ptr @netsec_register_mdio._entry.98, ptr @netsec_register_mdio._entry_ptr, ptr @netsec_register_mdio._entry_ptr.100, ptr @netsec_register_mdio._entry_ptr.92, ptr @netsec_register_mdio._entry_ptr.94, ptr @netsec_register_mdio._entry_ptr.97, ptr @of_mdio_parse_addr._entry, ptr @of_mdio_parse_addr._entry.46, ptr @of_mdio_parse_addr._entry_ptr, ptr @of_mdio_parse_addr._entry_ptr.48, ptr @netsec_driver, ptr @.str, ptr @netsec_dt_ids, ptr @netsec_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @netsec_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @netsec_netdev_ops, ptr @netsec_ethtool_ops, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @netsec_netdev_init.__key, ptr @.str.62, ptr @netsec_netdev_init.__key.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @netsec_xdp_setup.__msg, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.96, ptr @.str.99, ptr @switch.table.netsec_mac_wait_while_busy, ptr @switch.table.netsec_wait_while_busy], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_of_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_mdio_parse_addr._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_netdev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_netdev_init.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_netdev_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_xdp_setup.__msg to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_register_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_register_mdio._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_register_mdio._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_register_mdio._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netsec_register_mdio._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netsec_mac_wait_while_busy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netsec_wait_while_busy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @netsec_driver, ptr noundef null) #18
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @netsec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @platform_driver_unregister(ptr noundef nonnull @netsec_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %phy_addr = alloca i32, align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_addr) #18
  %0 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %phy_addr, align 4
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #18
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #18
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %dev7 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev7, ptr noundef nonnull @.str.7) #21
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call12 = tail call ptr @alloc_etherdev_mqs(i32 noundef 1280, i32 noundef 1, i32 noundef 1) #18
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %add.ptr.i = getelementptr i8, ptr %call12, i32 2304
  %reglock = getelementptr i8, ptr %call12, i32 3168
  tail call void @__raw_spin_lock_init(ptr noundef %reglock, ptr noundef nonnull @.str.10, ptr noundef nonnull @netsec_probe.__key, i16 noundef signext 3) #18
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 133, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev21, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %irq23 = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 64
  %3 = ptrtoint ptr %irq23 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call9, ptr %irq23, align 4
  %dev25 = getelementptr i8, ptr %call12, i32 3468
  %4 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev21, ptr %dev25, align 4
  %ndev26 = getelementptr i8, ptr %call12, i32 3444
  %5 = ptrtoint ptr %ndev26 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call12, ptr %ndev26, align 4
  %msg_enable = getelementptr i8, ptr %call12, i32 3476
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 8327, ptr %msg_enable, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %8
  %add.i = add i32 %sub.i, %10
  %call29 = tail call ptr @devm_ioremap(ptr noundef %dev21, i32 noundef %8, i32 noundef %add.i) #18
  %ioaddr = getelementptr i8, ptr %call12, i32 3460
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %ioaddr, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.12) #21
  br label %free_ndev

if.end37:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call1, align 4
  %end.i274 = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %end.i274 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i274, align 4
  %sub.i275 = sub i32 1, %13
  %add.i276 = add i32 %sub.i275, %15
  %call41 = tail call ptr @devm_ioremap(ptr noundef %dev21, i32 noundef %13, i32 noundef %add.i276) #18
  %eeprom_base = getelementptr i8, ptr %call12, i32 3464
  %16 = ptrtoint ptr %eeprom_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call41, ptr %eeprom_base, align 8
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %do.end47, label %if.end49

do.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.15) #21
  br label %free_ndev

if.end49:                                         ; preds = %if.end37
  %call51 = tail call i32 @device_get_ethdev_address(ptr noundef %dev21, ptr noundef nonnull %call12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end49.if.end95_crit_edge, label %land.lhs.true

if.end49.if.end95_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end95

land.lhs.true:                                    ; preds = %if.end49
  %17 = ptrtoint ptr %eeprom_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %eeprom_base, align 8
  %tobool54.not = icmp eq ptr %18, null
  br i1 %tobool54.not, label %land.lhs.true.if.end95_crit_edge, label %if.then55

land.lhs.true.if.end95_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end95

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #18
  %19 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %20 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %21 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %22 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %23 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %add.ptr57 = getelementptr i8, ptr %18, i32 3
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr57) #18, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !221
  %25 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %addr, align 1
  %add.ptr62 = getelementptr i8, ptr %18, i32 2
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #18, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !222
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %19, align 1
  %add.ptr69 = getelementptr i8, ptr %18, i32 1
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr69) #18, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !223
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %20, align 1
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #18, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !224
  %31 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %21, align 1
  %add.ptr83 = getelementptr i8, ptr %18, i32 7
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr83) #18, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !225
  %33 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %22, align 1
  %add.ptr90 = getelementptr i8, ptr %18, i32 6
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr90) #18, !srcloc !220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !226
  %35 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %23, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call12, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #18
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #18
  br label %if.end95

if.end95:                                         ; preds = %if.then55, %land.lhs.true.if.end95_crit_edge, %if.end49.if.end95_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 86
  %36 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_addr, align 64
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end95.do.end100_crit_edge

if.end95.do.end100_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end100

is_valid_ether_addr.exit:                         ; preds = %if.end95
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %or.i.i = or i32 %39, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.end100_crit_edge, label %is_valid_ether_addr.exit.if.end102_crit_edge

is_valid_ether_addr.exit.if.end102_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end102

is_valid_ether_addr.exit.do.end100_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end100

do.end100:                                        ; preds = %is_valid_ether_addr.exit.do.end100_crit_edge, %if.end95.do.end100_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21, ptr noundef nonnull @.str.18) #21
  call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call12)
  br label %if.end102

if.end102:                                        ; preds = %do.end100, %is_valid_ether_addr.exit.if.end102_crit_edge
  %tobool.not.i = icmp eq ptr %dev21, null
  br i1 %tobool.not.i, label %if.end102.free_ndev_crit_edge, label %dev_of_node.exit

if.end102.free_ndev_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_ndev

dev_of_node.exit:                                 ; preds = %if.end102
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %43 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node.i, align 8
  %tobool105.not = icmp eq ptr %44, null
  br i1 %tobool105.not, label %dev_of_node.exit.free_ndev_crit_edge, label %if.end109

dev_of_node.exit.free_ndev_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_ndev

if.end109:                                        ; preds = %dev_of_node.exit
  %call107 = call fastcc i32 @netsec_of_probe(ptr noundef %pdev, ptr noundef %add.ptr.i, ptr noundef nonnull %phy_addr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool110.not = icmp eq i32 %call107, 0
  br i1 %tobool110.not, label %if.end112, label %if.end109.free_ndev_crit_edge

if.end109.free_ndev_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #20
  br label %free_ndev

if.end112:                                        ; preds = %if.end109
  %45 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_addr, align 4
  %phy_addr113 = getelementptr i8, ptr %call12, i32 3484
  %47 = ptrtoint ptr %phy_addr113 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %phy_addr113, align 4
  %freq = getelementptr i8, ptr %call12, i32 3480
  %48 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool114.not = icmp eq i32 %49, 0
  br i1 %tobool114.not, label %do.end118, label %if.end120

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %dev21, ptr noundef nonnull @.str.22) #21
  br label %free_ndev

if.end120:                                        ; preds = %if.end112
  %rx_coalesce_usecs = getelementptr i8, ptr %call12, i32 3076
  %50 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 500, ptr %rx_coalesce_usecs, align 4
  %rx_max_coalesced_frames = getelementptr i8, ptr %call12, i32 3080
  %51 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 8, ptr %rx_max_coalesced_frames, align 8
  %tx_coalesce_usecs = getelementptr i8, ptr %call12, i32 3092
  %52 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 500, ptr %tx_coalesce_usecs, align 4
  %tx_max_coalesced_frames = getelementptr i8, ptr %call12, i32 3096
  %53 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 8, ptr %tx_max_coalesced_frames, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 31
  %call.i = call i32 @device_property_read_u32_array(ptr noundef nonnull %dev21, ptr noundef nonnull @.str.24, ptr noundef %max_mtu, i32 noundef 1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp126 = icmp slt i32 %call.i, 0
  br i1 %cmp126, label %if.then127, label %if.end120.if.end129_crit_edge

if.end120.if.end129_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end129

if.then127:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #20
  %54 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1500, ptr %max_mtu, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end120.if.end129_crit_edge
  call void @pm_runtime_enable(ptr noundef nonnull %dev21) #18
  %call.i277 = call i32 @__pm_runtime_resume(ptr noundef nonnull %dev21, i32 noundef 4) #18
  %55 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i278 = getelementptr i8, ptr %56, i32 560
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #18, !srcloc !227
  %58 = call i32 @llvm.bswap.i32(i32 %57) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %and = and i32 %58, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 327680, i32 %and)
  %cmp134.not = icmp eq i32 %and, 327680
  br i1 %cmp134.not, label %do.end139, label %if.end129.pm_disable_crit_edge

if.end129.pm_disable_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #20
  br label %pm_disable

do.end139:                                        ; preds = %if.end129
  %shr = lshr i32 %58, 16
  %and141 = and i32 %58, 65535
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %dev21, ptr noundef nonnull @.str.26, i32 noundef %shr, i32 noundef %and141) #21
  %napi = getelementptr i8, ptr %call12, i32 3216
  call void @netif_napi_add(ptr noundef nonnull %call12, ptr noundef %napi, ptr noundef nonnull @netsec_napi_poll, i32 noundef 64) #18
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 16
  %59 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @netsec_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 44
  %60 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @netsec_ethtool_ops, ptr %ethtool_ops, align 16
  %features = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 23
  %61 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features, align 16
  %or = or i64 %62, 1099511629874
  store i64 %or, ptr %features, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 24
  %63 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %or, ptr %hw_features, align 8
  %rx_cksum_offload_flag = getelementptr i8, ptr %call12, i32 3488
  %64 = ptrtoint ptr %rx_cksum_offload_flag to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %rx_cksum_offload_flag, align 32
  %call143 = call fastcc i32 @netsec_register_mdio(ptr noundef %add.ptr.i, i32 noundef %46)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %if.end146, label %do.end139.unreg_napi_crit_edge

do.end139.unreg_napi_crit_edge:                   ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #20
  br label %unreg_napi

if.end146:                                        ; preds = %do.end139
  %call148 = call fastcc i32 @dma_set_mask_and_coherent(ptr noundef nonnull %dev21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end146.if.end155_crit_edge, label %do.end153

if.end146.if.end155_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end155

do.end153:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef nonnull %dev21, ptr noundef nonnull @.str.29) #21
  br label %if.end155

if.end155:                                        ; preds = %do.end153, %if.end146.if.end155_crit_edge
  %call156 = call i32 @register_netdev(ptr noundef nonnull %call12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %if.end167, label %do.body159

do.body159:                                       ; preds = %if.end155
  %65 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %msg_enable, align 4
  %and161 = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body159.unreg_mii_crit_edge, label %if.then163

do.body159.unreg_mii_crit_edge:                   ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #20
  br label %unreg_mii

if.then163:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #20
  call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call12, ptr noundef nonnull @.str.31) #21
  br label %unreg_mii

if.end167:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #20
  %call.i279 = call i32 @__pm_runtime_idle(ptr noundef nonnull %dev21, i32 noundef 4) #18
  br label %cleanup

unreg_mii:                                        ; preds = %if.then163, %do.body159.unreg_mii_crit_edge
  call fastcc void @netsec_unregister_mdio(ptr noundef %add.ptr.i)
  br label %unreg_napi

unreg_napi:                                       ; preds = %unreg_mii, %do.end139.unreg_napi_crit_edge
  %ret.1 = phi i32 [ %call143, %do.end139.unreg_napi_crit_edge ], [ %call156, %unreg_mii ]
  call void @__netif_napi_del(ptr noundef %napi) #18
  call void @synchronize_net() #18
  br label %pm_disable

pm_disable:                                       ; preds = %unreg_napi, %if.end129.pm_disable_crit_edge
  %ret.2 = phi i32 [ %ret.1, %unreg_napi ], [ -19, %if.end129.pm_disable_crit_edge ]
  %call.i280 = call i32 @__pm_runtime_idle(ptr noundef nonnull %dev21, i32 noundef 4) #18
  call void @__pm_runtime_disable(ptr noundef nonnull %dev21, i1 noundef zeroext true) #18
  br label %free_ndev

free_ndev:                                        ; preds = %pm_disable, %do.end118, %if.end109.free_ndev_crit_edge, %dev_of_node.exit.free_ndev_crit_edge, %if.end102.free_ndev_crit_edge, %do.end47, %do.end35
  %ret.3 = phi i32 [ %call107, %if.end109.free_ndev_crit_edge ], [ %ret.2, %pm_disable ], [ -19, %do.end118 ], [ -6, %do.end47 ], [ -6, %do.end35 ], [ -19, %dev_of_node.exit.free_ndev_crit_edge ], [ -19, %if.end102.free_ndev_crit_edge ]
  call void @free_netdev(ptr noundef nonnull %call12) #18
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21, ptr noundef nonnull @.str.33) #21
  br label %cleanup

cleanup:                                          ; preds = %free_ndev, %if.end167, %if.end11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ %ret.3, %free_ndev ], [ 0, %if.end167 ], [ -19, %do.end6 ], [ -19, %do.end ], [ %call9, %if.end8.cleanup_crit_edge ], [ -12, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_addr) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndev, align 4
  tail call void @unregister_netdev(ptr noundef %3) #18
  %phydev1.i = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %phydev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev1.i, align 4
  %dev.i = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %entry.dev_of_node.exit.i_crit_edge, label %if.end.i.i

entry.dev_of_node.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_of_node.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 27
  %8 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i.i, align 8
  %phi.cmp.i = icmp ne ptr %9, null
  br label %dev_of_node.exit.i

dev_of_node.exit.i:                               ; preds = %if.end.i.i, %entry.dev_of_node.exit.i_crit_edge
  %retval.0.i.i = phi i1 [ %phi.cmp.i, %if.end.i.i ], [ false, %entry.dev_of_node.exit.i_crit_edge ]
  %tobool2.not.i = icmp eq ptr %5, null
  %or.cond.i = select i1 %retval.0.i.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %dev_of_node.exit.i.netsec_unregister_mdio.exit_crit_edge, label %if.then.i

dev_of_node.exit.i.netsec_unregister_mdio.exit_crit_edge: ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_unregister_mdio.exit

if.then.i:                                        ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_device_remove(ptr noundef nonnull %5) #18
  tail call void @phy_device_free(ptr noundef nonnull %5) #18
  br label %netsec_unregister_mdio.exit

netsec_unregister_mdio.exit:                      ; preds = %if.then.i, %dev_of_node.exit.i.netsec_unregister_mdio.exit_crit_edge
  %mii_bus.i = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %mii_bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mii_bus.i, align 128
  tail call void @mdiobus_unregister(ptr noundef %11) #18
  %napi = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 4
  tail call void @__netif_napi_del(ptr noundef %napi) #18
  tail call void @synchronize_net() #18
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #18
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 4
  tail call void @free_netdev(ptr noundef %13) #18
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #18
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #18
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #18
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_of_probe(ptr noundef %pdev, ptr noundef %priv, ptr nocapture noundef writeonly %phy_addr) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %phy_interface = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 5
  %call = tail call i32 @of_get_phy_mode(ptr noundef %1, ptr noundef %phy_interface) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #18
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.37, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #18
  %phy_np47 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %phy_np47 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %phy_np47, align 8
  br label %do.end10

of_parse_phandle.exit:                            ; preds = %if.end
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #18
  %phy_np = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 7
  %8 = ptrtoint ptr %phy_np to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %phy_np, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %of_parse_phandle.exit.do.end10_crit_edge, label %if.end12

of_parse_phandle.exit.do.end10_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end10

do.end10:                                         ; preds = %of_parse_phandle.exit.do.end10_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #21
  br label %cleanup

if.end12:                                         ; preds = %of_parse_phandle.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #18
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %addr.i, align 4, !annotation !229
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %7, ptr noundef nonnull @.str.42, ptr noundef nonnull %addr.i, i32 noundef 1, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i43

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %full_name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef %11) #21
  br label %of_mdio_parse_addr.exit

if.end.i43:                                       ; preds = %if.end12
  %12 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %13)
  %cmp1.i = icmp ugt i32 %13, 31
  br i1 %cmp1.i, label %do.end5.i, label %if.end.i43.of_mdio_parse_addr.exit_crit_edge

if.end.i43.of_mdio_parse_addr.exit_crit_edge:     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #20
  br label %of_mdio_parse_addr.exit

do.end5.i:                                        ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #20
  %full_name6.i = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %full_name6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %full_name6.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef %15, i32 noundef %13) #21
  br label %of_mdio_parse_addr.exit

of_mdio_parse_addr.exit:                          ; preds = %do.end5.i, %if.end.i43.of_mdio_parse_addr.exit_crit_edge, %do.end.i
  %retval.0.i44 = phi i32 [ %call.i.i.i, %do.end.i ], [ -22, %do.end5.i ], [ %13, %if.end.i43.of_mdio_parse_addr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #18
  %16 = ptrtoint ptr %phy_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i44, ptr %phy_addr, align 4
  %call17 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #18
  %clk = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 13
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %clk, align 16
  %cmp.i45 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then20, label %if.end25

if.then20:                                        ; preds = %of_mdio_parse_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %call17 to i32
  %call24 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %18, ptr noundef nonnull @.str.41) #18
  br label %cleanup

if.end25:                                         ; preds = %of_mdio_parse_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call27 = call i32 @clk_get_rate(ptr noundef %call17) #18
  %freq = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 15
  %19 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call27, ptr %freq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then20, %do.end10, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call24, %if.then20 ], [ 0, %if.end25 ], [ -22, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_napi_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %xdp.i = alloca %struct.xdp_buff, align 4
  %bq.i.i = alloca %struct.xdp_frame_bulk, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -912
  %ndev1.i = getelementptr i8, ptr %napi, i32 228
  %0 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %bq.i.i) #18
  %2 = call ptr @memset(ptr %bq.i.i, i32 255, i32 72)
  %tail2.i.i = getelementptr i8, ptr %napi, i32 -898
  %3 = ptrtoint ptr %tail2.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %tail2.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %lock.i.i = getelementptr i8, ptr %napi, i32 -656
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i) #18
  %xa.i.i.i = getelementptr inbounds %struct.xdp_frame_bulk, ptr %bq.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %xa.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %xa.i.i.i, align 4
  %vaddr.i.i = getelementptr i8, ptr %napi, i32 -904
  %6 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vaddr.i.i, align 8
  %mul.i.i = shl nuw nsw i32 %conv.i.i, 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !230
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #18
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 696, ptr noundef nonnull @.str.50) #18
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %tobool.not102.i.i = icmp sgt i32 %13, -1
  br i1 %tobool.not102.i.i, label %while.body.lr.ph.i.i, label %rcu_read_lock.exit.i.i.while.end.i.i_crit_edge

rcu_read_lock.exit.i.i.while.end.i.i_crit_edge:   ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %rcu_read_lock.exit.i.i
  %desc4.i.i = getelementptr i8, ptr %napi, i32 -908
  %dev.i.i = getelementptr i8, ptr %napi, i32 252
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %next.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %14 = phi i32 [ %13, %while.body.lr.ph.i.i ], [ %42, %next.i.i.while.body.i.i_crit_edge ]
  %entry1.0107.i.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i.i ], [ %add.ptr43.i.i, %next.i.i.while.body.i.i_crit_edge ]
  %tail.0105.i.i = phi i32 [ %conv.i.i, %while.body.lr.ph.i.i ], [ %conv40.i.i, %next.i.i.while.body.i.i_crit_edge ]
  %bytes.0104.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %bytes.1.i.i, %next.i.i.while.body.i.i_crit_edge ]
  %cnt.0103.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i, %next.i.i.while.body.i.i_crit_edge ]
  %15 = ptrtoint ptr %desc4.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc4.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.netsec_desc, ptr %16, i32 %tail.0105.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !231
  %buf_type.i.i = getelementptr %struct.netsec_desc, ptr %16, i32 %tail.0105.i.i, i32 4
  %17 = ptrtoint ptr %buf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp9.not.i.i = icmp eq i8 %18, 1
  br i1 %cmp9.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %dma_addr.i.i = getelementptr %struct.netsec_desc, ptr %16, i32 %tail.0105.i.i, i32 1
  %21 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr.i.i, align 4
  %len.i.i = getelementptr %struct.netsec_desc, ptr %16, i32 %tail.0105.i.i, i32 3
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %len.i.i, align 4
  %conv11.i.i = zext i16 %24 to i32
  call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %22, i32 noundef %conv11.i.i, i32 noundef 1, i32 noundef 0) #18
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %25 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool12.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool12.not.i.i, label %if.end.i.i.next.i.i_crit_edge, label %if.end14.i.i

if.end.i.i.next.i.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %next.i.i

if.end14.i.i:                                     ; preds = %if.end.i.i
  %26 = ptrtoint ptr %buf_type.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf_type.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp17.i.i = icmp eq i8 %27, 0
  %28 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx5.i.i, align 4
  br i1 %cmp17.i.i, label %if.then19.i.i, label %if.else.i.i

if.then19.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %len20.i.i = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %len20.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len20.i.i, align 4
  %add.i.i = add i32 %31, %bytes.0104.i.i
  call void @consume_skb(ptr noundef %29) #18
  br label %next.i.i

if.else.i.i:                                      ; preds = %if.end14.i.i
  %len21.i.i = getelementptr inbounds %struct.xdp_frame, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %len21.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %len21.i.i, align 4
  %conv22.i.i = zext i16 %33 to i32
  %add23.i.i = add i32 %bytes.0104.i.i, %conv22.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp26.i.i = icmp eq i8 %27, 1
  br i1 %cmp26.i.i, label %if.then28.i.i, label %if.else29.i.i

if.then28.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @xdp_return_frame_rx_napi(ptr noundef %29) #18
  br label %next.i.i

if.else29.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @xdp_return_frame_bulk(ptr noundef %29, ptr noundef nonnull %bq.i.i) #18
  br label %next.i.i

next.i.i:                                         ; preds = %if.else29.i.i, %if.then28.i.i, %if.then19.i.i, %if.end.i.i.next.i.i_crit_edge
  %bytes.1.i.i = phi i32 [ %add.i.i, %if.then19.i.i ], [ %add23.i.i, %if.then28.i.i ], [ %add23.i.i, %if.else29.i.i ], [ %bytes.0104.i.i, %if.end.i.i.next.i.i_crit_edge ]
  %34 = call ptr @memset(ptr %arrayidx5.i.i, i32 0, i32 15)
  %35 = ptrtoint ptr %entry1.0107.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2147483648, ptr %entry1.0107.i.i, align 4
  %36 = trunc i32 %tail.0105.i.i to i16
  %37 = add i16 %36, 1
  %conv37.i.i = and i16 %37, 255
  %38 = ptrtoint ptr %tail2.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv37.i.i, ptr %tail2.i.i, align 2
  %conv40.i.i = zext i16 %conv37.i.i to i32
  %39 = ptrtoint ptr %vaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vaddr.i.i, align 8
  %mul42.i.i = shl nuw nsw i32 %conv40.i.i, 4
  %add.ptr43.i.i = getelementptr i8, ptr %40, i32 %mul42.i.i
  %inc.i.i = add nuw nsw i32 %cnt.0103.i.i, 1
  %41 = ptrtoint ptr %add.ptr43.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr43.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %tobool.not.i.i = icmp sgt i32 %42, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %cnt.0103.i.i)
  %cmp.i.i = icmp ult i32 %cnt.0103.i.i, 255
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %next.i.i.while.body.i.i_crit_edge, label %next.i.i.while.end.i.i_crit_edge

next.i.i.while.end.i.i_crit_edge:                 ; preds = %next.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i.i

next.i.i.while.body.i.i_crit_edge:                ; preds = %next.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.i

while.end.i.i:                                    ; preds = %next.i.i.while.end.i.i_crit_edge, %rcu_read_lock.exit.i.i.while.end.i.i_crit_edge
  %cnt.0.lcssa.i.i = phi i32 [ 0, %rcu_read_lock.exit.i.i.while.end.i.i_crit_edge ], [ %inc.i.i, %next.i.i.while.end.i.i_crit_edge ]
  %bytes.0.lcssa.i.i = phi i32 [ 0, %rcu_read_lock.exit.i.i.while.end.i.i_crit_edge ], [ %bytes.1.i.i, %next.i.i.while.end.i.i_crit_edge ]
  call void @xdp_flush_frame_bulk(ptr noundef nonnull %bq.i.i) #18
  %call.i92.i.i = call zeroext i1 @rcu_is_watching() #18
  br i1 %call.i92.i.i, label %while.end.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i95.i.i

while.end.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i95.i.i:                            ; preds = %while.end.i.i
  %call1.i93.i.i = call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call1.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i95.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i97.i.i

land.lhs.true.i95.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i95.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i97.i.i:                           ; preds = %land.lhs.true.i95.i.i
  %.b4.i96.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i96.i.i, label %land.lhs.true2.i97.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i98.i.i

land.lhs.true2.i97.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i97.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %rcu_read_unlock.exit.i.i

if.then.i98.i.i:                                  ; preds = %land.lhs.true2.i97.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.49, i32 noundef 724, ptr noundef nonnull @.str.51) #18
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i98.i.i, %land.lhs.true2.i97.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i95.i.i.rcu_read_unlock.exit.i.i_crit_edge, %while.end.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #18, !srcloc !232
  %43 = call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i.i.i99.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i99.i.i to ptr
  %preempt_count.i.i.i.i100.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i100.i.i, align 4
  %sub.i.i.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i100.i.i, align 4
  call void @rcu_read_unlock_strict() #18
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #18
  call void @_raw_spin_unlock(ptr noundef %lock.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0.lcssa.i.i)
  %tobool45.not.i.i = icmp eq i32 %cnt.0.lcssa.i.i, 0
  br i1 %tobool45.not.i.i, label %netsec_clean_tx_dring.exit.i, label %if.end47.i.i

if.end47.i.i:                                     ; preds = %rcu_read_unlock.exit.i.i
  %ioaddr.i.i.i = getelementptr i8, ptr %napi, i32 244
  %47 = ptrtoint ptr %ioaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %48, i32 1044
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #18, !srcloc !227
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %50 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ndev1.i, align 4
  %tx_packets.i.i = getelementptr inbounds %struct.net_device, ptr %51, i32 0, i32 36, i32 1
  %52 = ptrtoint ptr %tx_packets.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx_packets.i.i, align 4
  %add48.i.i = add i32 %53, %cnt.0.lcssa.i.i
  store i32 %add48.i.i, ptr %tx_packets.i.i, align 4
  %54 = load ptr, ptr %ndev1.i, align 4
  %tx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %54, i32 0, i32 36, i32 3
  %55 = ptrtoint ptr %tx_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tx_bytes.i.i, align 4
  %add51.i.i = add i32 %56, %bytes.0.lcssa.i.i
  store i32 %add51.i.i, ptr %tx_bytes.i.i, align 4
  %57 = load ptr, ptr %ndev1.i, align 4
  %_tx.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 103
  %58 = ptrtoint ptr %_tx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %_tx.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes.0.lcssa.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %bytes.0.lcssa.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.end47.i.i.land.lhs.true.i_crit_edge, label %if.end.i.i.i.i, !prof !233

if.end47.i.i.land.lhs.true.i_crit_edge:           ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

if.end.i.i.i.i:                                   ; preds = %if.end47.i.i
  %dql.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 15
  call void @dql_completed(ptr noundef %dql.i.i.i.i, i32 noundef %bytes.0.lcssa.i.i) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !234
  %adj_limit.i.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 15, i32 1
  %60 = ptrtoint ptr %adj_limit.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %adj_limit.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %dql.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %dql.i.i.i.i, align 128
  %sub.i.i.i101.i.i = sub i32 %61, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i101.i.i)
  %cmp.i.i.i.i = icmp slt i32 %sub.i.i.i101.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.i.land.lhs.true.i_crit_edge, label %if.end14.i.i.i.i, !prof !233

if.end.i.i.i.i.land.lhs.true.i_crit_edge:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

if.end14.i.i.i.i:                                 ; preds = %if.end.i.i.i.i
  %state.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %59, i32 0, i32 13
  %call15.i.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state.i.i.i.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i.i)
  %tobool16.not.i.i.i.i = icmp eq i32 %call15.i.i.i.i, 0
  br i1 %tobool16.not.i.i.i.i, label %if.end14.i.i.i.i.land.lhs.true.i_crit_edge, label %if.then17.i.i.i.i

if.end14.i.i.i.i.land.lhs.true.i_crit_edge:       ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.lhs.true.i

if.then17.i.i.i.i:                                ; preds = %if.end14.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @netif_schedule_queue(ptr noundef %59) #18
  br label %land.lhs.true.i

netsec_clean_tx_dring.exit.i:                     ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %bq.i.i) #18
  br label %netsec_process_tx.exit

land.lhs.true.i:                                  ; preds = %if.then17.i.i.i.i, %if.end14.i.i.i.i.land.lhs.true.i_crit_edge, %if.end.i.i.i.i.land.lhs.true.i_crit_edge, %if.end47.i.i.land.lhs.true.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %bq.i.i) #18
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %64 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %65, i32 0, i32 13
  %66 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %land.lhs.true.i.netsec_process_tx.exit_crit_edge, label %do.end.i

land.lhs.true.i.netsec_process_tx.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_process_tx.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !235
  %68 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %_tx.i.i.i, align 128
  call void @netif_tx_wake_queue(ptr noundef %69) #18
  br label %netsec_process_tx.exit

netsec_process_tx.exit:                           ; preds = %do.end.i, %land.lhs.true.i.netsec_process_tx.exit_crit_edge, %netsec_clean_tx_dring.exit.i
  %70 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ndev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp.i) #18
  %72 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 1
  %73 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 2
  %74 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 3
  %75 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 4
  %76 = getelementptr inbounds %struct.xdp_buff, ptr %xdp.i, i32 0, i32 6
  %xdp_rxq.i = getelementptr i8, ptr %napi, i32 -400
  %77 = call ptr @memset(ptr %xdp.i, i32 255, i32 24)
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 4096, ptr %76, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %xdp_rxq.i, ptr %75, align 4
  %xdp_prog2.i = getelementptr i8, ptr %napi, i32 -52
  %80 = ptrtoint ptr %xdp_prog2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %xdp_prog2.i, align 4
  %page_pool.i = getelementptr i8, ptr %napi, i32 -508
  %82 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %page_pool.i, align 4
  %dma_dir.i.i = getelementptr inbounds %struct.page_pool_params, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %dma_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_dir.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp274.i = icmp sgt i32 %budget, 0
  br i1 %cmp274.i, label %while.body.lr.ph.i, label %netsec_process_tx.exit.netsec_process_rx.exit_crit_edge

netsec_process_tx.exit.netsec_process_rx.exit_crit_edge: ; preds = %netsec_process_tx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_process_rx.exit

while.body.lr.ph.i:                               ; preds = %netsec_process_tx.exit
  %tail.i = getelementptr i8, ptr %napi, i32 -514
  %vaddr.i = getelementptr i8, ptr %napi, i32 -520
  %desc3.i = getelementptr i8, ptr %napi, i32 -524
  %msg_enable.i = getelementptr i8, ptr %napi, i32 260
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 36, i32 6
  %dev.i = getelementptr i8, ptr %napi, i32 252
  %tobool50.not.i = icmp eq ptr %81, null
  %rx_cksum_offload_flag.i = getelementptr i8, ptr %napi, i32 272
  %stats111.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %71, i32 0, i32 36, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %done.0277.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %xdp_act.0276.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %xdp_act.2.i, %cleanup.i.while.body.i_crit_edge ]
  %xdp_xmit.0275.i = phi i16 [ 0, %while.body.lr.ph.i ], [ %xdp_xmit.2.i, %cleanup.i.while.body.i_crit_edge ]
  %86 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %tail.i, align 2
  %88 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vaddr.i, align 8
  %conv.i = zext i16 %87 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.ptr.i = getelementptr i8, ptr %89, i32 %mul.i
  %90 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc3.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %92 = load ptr, ptr @mem_map, align 4
  %addr.i = getelementptr %struct.netsec_desc, ptr %91, i32 %conv.i, i32 2
  %93 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %addr.i, align 4
  %95 = ptrtoint ptr %94 to i32
  %sub.i = add i32 %95, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr6.i = getelementptr %struct.page, ptr %92, i32 %shr.i
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %tobool.not.i = icmp sgt i32 %97, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %ioaddr.i.i = getelementptr i8, ptr %napi, i32 244
  %98 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i211.i = getelementptr i8, ptr %99, i32 1108
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211.i) #18, !srcloc !227
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !236
  %inc.i = add nuw nsw i32 %done.0277.i, 1
  %buf_len_info.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i, i32 0, i32 3
  %101 = ptrtoint ptr %buf_len_info.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %buf_len_info.i, align 4
  %shr8.i = lshr i32 %102, 16
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %add.ptr.i, align 4
  %shr11.i = lshr i32 %104, 16
  %and12.i = and i32 %shr11.i, 3
  %105 = and i32 %104, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool16.not.i = icmp eq i32 %105, 0
  br i1 %tobool16.not.i, label %if.end35.i, label %do.body20.i

do.body20.i:                                      ; preds = %if.end.i
  %106 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %msg_enable.i, align 4
  %and21.i = and i32 %107, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body20.i.do.end28.i_crit_edge, label %if.then23.i

do.body20.i.do.end28.i_crit_edge:                 ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end28.i

if.then23.i:                                      ; preds = %do.body20.i
  call void @__sanitizer_cov_trace_pc() #20
  %108 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ndev1.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %109, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.netsec_process_rx, i32 noundef %and12.i) #21
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.then23.i, %do.body20.i.do.end28.i_crit_edge
  %110 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %rx_dropped.i, align 8
  %inc29.i = add i32 %111, 1
  store i32 %inc29.i, ptr %rx_dropped.i, align 8
  %112 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %tail.i, align 2
  %114 = add i16 %113, 1
  %115 = and i16 %114, 255
  store i16 %115, ptr %tail.i, align 2
  %116 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %desc3.i, align 4
  %118 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %vaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %87)
  %cmp.i.i.i = icmp eq i16 %87, 255
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 -1073741056, i32 -2147482880
  %add.ptr.i.i.i19 = getelementptr i8, ptr %119, i32 %mul.i
  %dma_addr.i.i.i = getelementptr %struct.netsec_desc, ptr %117, i32 %conv.i, i32 1
  %data_buf_addr_up.i.i.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i.i19, i32 0, i32 1
  %120 = ptrtoint ptr %data_buf_addr_up.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %data_buf_addr_up.i.i.i, align 4
  %121 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %dma_addr.i.i.i, align 4
  %data_buf_addr_lw.i.i.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i.i19, i32 0, i32 2
  %123 = ptrtoint ptr %data_buf_addr_lw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %data_buf_addr_lw.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.netsec_desc, ptr %117, i32 %conv.i, i32 3
  %124 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %len.i.i.i, align 4
  %conv5.i.i.i = zext i16 %125 to i32
  %buf_len_info.i.i.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i.i19, i32 0, i32 3
  %126 = ptrtoint ptr %buf_len_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %conv5.i.i.i, ptr %buf_len_info.i.i.i, align 4
  %127 = ptrtoint ptr %add.ptr.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %spec.select.i.i.i, ptr %add.ptr.i.i.i19, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !237
  %128 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %dma_addr.i.i.i, align 4
  %130 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %desc3.i, align 4
  %dma_addr9.i.i.i = getelementptr %struct.netsec_desc, ptr %131, i32 %conv.i, i32 1
  %132 = ptrtoint ptr %dma_addr9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %129, ptr %dma_addr9.i.i.i, align 4
  %addr.i.i.i = getelementptr %struct.netsec_desc, ptr %117, i32 %conv.i, i32 2
  %133 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %addr.i.i.i, align 4
  %135 = load ptr, ptr %desc3.i, align 4
  %addr13.i.i.i = getelementptr %struct.netsec_desc, ptr %135, i32 %conv.i, i32 2
  %136 = ptrtoint ptr %addr13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %134, ptr %addr13.i.i.i, align 4
  %137 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %len.i.i.i, align 4
  %139 = load ptr, ptr %desc3.i, align 4
  %len18.i.i.i = getelementptr %struct.netsec_desc, ptr %139, i32 %conv.i, i32 3
  %140 = ptrtoint ptr %len18.i.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %138, ptr %len18.i.i.i, align 4
  br label %cleanup.i

if.end35.i:                                       ; preds = %if.end.i
  %141 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %page_pool.i, align 4
  %call.i.i.i20 = call ptr @page_pool_alloc_pages(ptr noundef %142, i32 noundef 10784) #18
  %tobool.not.i212.i = icmp eq ptr %call.i.i.i20, null
  br i1 %tobool.not.i212.i, label %if.end35.i.while.end.i_crit_edge, label %netsec_alloc_rx_data.exit.i

if.end35.i.while.end.i_crit_edge:                 ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

netsec_alloc_rx_data.exit.i:                      ; preds = %if.end35.i
  %dma_addr.i.i213.i = getelementptr inbounds %struct.page, ptr %call.i.i.i20, i32 0, i32 1, i32 0, i32 2
  %143 = ptrtoint ptr %dma_addr.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dma_addr.i.i213.i, align 4
  %add.i.i21 = add i32 %144, 258
  %call2.i.i = call ptr @page_address(ptr noundef nonnull %call.i.i.i20) #18
  %tobool40.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool40.not.i, label %netsec_alloc_rx_data.exit.i.while.end.i_crit_edge, label %if.end45.i, !prof !233

netsec_alloc_rx_data.exit.i.while.end.i_crit_edge: ; preds = %netsec_alloc_rx_data.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

if.end45.i:                                       ; preds = %netsec_alloc_rx_data.exit.i
  %145 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev.i, align 4
  %dma_addr.i = getelementptr %struct.netsec_desc, ptr %91, i32 %conv.i, i32 1
  %147 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %dma_addr.i, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %146, i32 noundef %148, i32 noundef %shr8.i, i32 noundef %85) #18
  %149 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %addr.i, align 4
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %150) #18, !srcloc !238
  %151 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %addr.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %152, i32 258
  %153 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %152, ptr %74, align 4
  %154 = ptrtoint ptr %xdp.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %add.ptr.i.i22, ptr %xdp.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i22, i32 %shr8.i
  %155 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %add.ptr2.i.i, ptr %72, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %152, i32 259
  %156 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %add.ptr3.i.i, ptr %73, align 4
  br i1 %tobool50.not.i, label %if.end45.i.if.end62.i_crit_edge, label %if.then51.i

if.end45.i.if.end62.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end62.i

if.then51.i:                                      ; preds = %if.end45.i
  %call52.i = call fastcc i32 @netsec_run_xdp(ptr noundef %add.ptr, ptr noundef nonnull %81, ptr noundef nonnull %xdp.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.not.i = icmp eq i32 %call52.i, 0
  br i1 %cmp53.not.i, label %if.then51.i.if.end62.i_crit_edge, label %lor.lhs.false.critedge.i

if.then51.i.if.end62.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.then51.i.if.end62.i_crit_edge, %if.end45.i.if.end62.i_crit_edge
  %157 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %addr.i, align 4
  %len.i = getelementptr %struct.netsec_desc, ptr %91, i32 %conv.i, i32 3
  %159 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %len.i, align 4
  %conv64.i = zext i16 %160 to i32
  %add65.i = add nuw nsw i32 %conv64.i, 514
  %call66.i = call ptr @build_skb(ptr noundef %158, i32 noundef %add65.i) #18
  %tobool67.not.i = icmp eq ptr %call66.i, null
  %161 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %page_pool.i, align 4
  br i1 %tobool67.not.i, label %if.then76.i, label %if.end88.i, !prof !233

if.then76.i:                                      ; preds = %if.end62.i
  call void @page_pool_put_page(ptr noundef %162, ptr noundef %add.ptr6.i, i32 noundef %shr8.i, i1 noundef zeroext true) #18
  %163 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %msg_enable.i, align 4
  %and81.i = and i32 %164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.then76.i.while.end.i_crit_edge, label %if.then83.i

if.then76.i.while.end.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

if.then83.i:                                      ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #20
  %165 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %ndev1.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %166, ptr noundef nonnull @.str.53) #21
  br label %while.end.i

if.end88.i:                                       ; preds = %if.end62.i
  call void @page_pool_release_page(ptr noundef %162, ptr noundef %add.ptr6.i) #18
  %167 = ptrtoint ptr %xdp.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %xdp.i, align 4
  %169 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %74, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %168 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %170 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call66.i, i32 0, i32 19
  %171 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i214.i = getelementptr i8, ptr %172, i32 %sub.ptr.sub.i
  store ptr %add.ptr.i214.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call66.i, i32 0, i32 16
  %173 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %174, i32 %sub.ptr.sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %175 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %72, align 4
  %sub.ptr.lhs.cast91.i = ptrtoint ptr %176 to i32
  %sub.ptr.sub93.i = sub i32 %sub.ptr.lhs.cast91.i, %sub.ptr.lhs.cast.i
  %call94.i = call ptr @skb_put(ptr noundef nonnull %call66.i, i32 noundef %sub.ptr.sub93.i) #18
  %177 = ptrtoint ptr %ndev1.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %ndev1.i, align 4
  %call96.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call66.i, ptr noundef %178) #18
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call66.i, i32 0, i32 15, i32 0, i32 18
  %179 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %call96.i, ptr %protocol.i, align 8
  %180 = ptrtoint ptr %rx_cksum_offload_flag.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %rx_cksum_offload_flag.i, align 32, !range !239
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool97.not.i = icmp ne i8 %181, 0
  %182 = and i32 %104, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %182)
  %cmp100.i = icmp eq i32 %182, 64
  %or.cond.i = select i1 %tobool97.not.i, i1 %cmp100.i, i1 false
  br i1 %or.cond.i, label %if.then102.i, label %if.end88.i.if.then105.i_crit_edge

if.end88.i.if.then105.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then105.i

if.then102.i:                                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #20
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call66.i, i32 0, i32 15
  %183 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %if.then105.i

if.then105.i:                                     ; preds = %if.then102.i, %if.end88.i.if.then105.i_crit_edge
  %call106.i = call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %call66.i) #18
  br label %if.end120.i

lor.lhs.false.critedge.i:                         ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #20
  %or.i = or i32 %call52.i, %xdp_act.0276.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call52.i)
  %cmp56.i = icmp eq i32 %call52.i, 2
  %inc59.i = zext i1 %cmp56.i to i16
  %spec.select.i = add i16 %xdp_xmit.0275.i, %inc59.i
  br label %if.end120.i

if.end120.i:                                      ; preds = %lor.lhs.false.critedge.i, %if.then105.i
  %xdp_act.1256.i = phi i32 [ %xdp_act.0276.i, %if.then105.i ], [ %or.i, %lor.lhs.false.critedge.i ]
  %xdp_xmit.1253.i = phi i16 [ %xdp_xmit.0275.i, %if.then105.i ], [ %spec.select.i, %lor.lhs.false.critedge.i ]
  %184 = ptrtoint ptr %stats111.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %stats111.i, align 8
  %inc112.i = add i32 %185, 1
  store i32 %inc112.i, ptr %stats111.i, align 8
  %186 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %72, align 4
  %188 = ptrtoint ptr %xdp.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %xdp.i, align 4
  %sub.ptr.lhs.cast115.i = ptrtoint ptr %187 to i32
  %sub.ptr.rhs.cast116.i = ptrtoint ptr %189 to i32
  %sub.ptr.sub117.i = sub i32 %sub.ptr.lhs.cast115.i, %sub.ptr.rhs.cast116.i
  %190 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %rx_bytes.i, align 8
  %add119.i = add i32 %sub.ptr.sub117.i, %191
  store i32 %add119.i, ptr %rx_bytes.i, align 8
  %len121.i = getelementptr %struct.netsec_desc, ptr %91, i32 %conv.i, i32 3
  %192 = ptrtoint ptr %len121.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 3582, ptr %len121.i, align 4
  %193 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %add.i.i21, ptr %dma_addr.i, align 4
  %194 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %call2.i.i, ptr %addr.i, align 4
  %195 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %desc3.i, align 4
  %197 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %vaddr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %87)
  %cmp.i.i220.i = icmp eq i16 %87, 255
  %spec.select.i.i221.i = select i1 %cmp.i.i220.i, i32 -1073741056, i32 -2147482880
  %add.ptr.i.i223.i = getelementptr i8, ptr %198, i32 %mul.i
  %dma_addr.i.i224.i = getelementptr %struct.netsec_desc, ptr %196, i32 %conv.i, i32 1
  %data_buf_addr_up.i.i225.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i223.i, i32 0, i32 1
  %199 = ptrtoint ptr %data_buf_addr_up.i.i225.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %data_buf_addr_up.i.i225.i, align 4
  %200 = ptrtoint ptr %dma_addr.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dma_addr.i.i224.i, align 4
  %data_buf_addr_lw.i.i226.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i223.i, i32 0, i32 2
  %202 = ptrtoint ptr %data_buf_addr_lw.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %data_buf_addr_lw.i.i226.i, align 4
  %len.i.i227.i = getelementptr %struct.netsec_desc, ptr %196, i32 %conv.i, i32 3
  %203 = ptrtoint ptr %len.i.i227.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %len.i.i227.i, align 4
  %conv5.i.i228.i = zext i16 %204 to i32
  %buf_len_info.i.i229.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i223.i, i32 0, i32 3
  %205 = ptrtoint ptr %buf_len_info.i.i229.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %conv5.i.i228.i, ptr %buf_len_info.i.i229.i, align 4
  %206 = ptrtoint ptr %add.ptr.i.i223.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %spec.select.i.i221.i, ptr %add.ptr.i.i223.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !237
  %207 = ptrtoint ptr %dma_addr.i.i224.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %dma_addr.i.i224.i, align 4
  %209 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %desc3.i, align 4
  %dma_addr9.i.i230.i = getelementptr %struct.netsec_desc, ptr %210, i32 %conv.i, i32 1
  %211 = ptrtoint ptr %dma_addr9.i.i230.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %208, ptr %dma_addr9.i.i230.i, align 4
  %addr.i.i231.i = getelementptr %struct.netsec_desc, ptr %196, i32 %conv.i, i32 2
  %212 = ptrtoint ptr %addr.i.i231.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %addr.i.i231.i, align 4
  %214 = load ptr, ptr %desc3.i, align 4
  %addr13.i.i232.i = getelementptr %struct.netsec_desc, ptr %214, i32 %conv.i, i32 2
  %215 = ptrtoint ptr %addr13.i.i232.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %213, ptr %addr13.i.i232.i, align 4
  %216 = ptrtoint ptr %len.i.i227.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %len.i.i227.i, align 4
  %218 = load ptr, ptr %desc3.i, align 4
  %len18.i.i233.i = getelementptr %struct.netsec_desc, ptr %218, i32 %conv.i, i32 3
  %219 = ptrtoint ptr %len18.i.i233.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %217, ptr %len18.i.i233.i, align 4
  %220 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %tail.i, align 2
  %222 = add i16 %221, 1
  %223 = and i16 %222, 255
  store i16 %223, ptr %tail.i, align 2
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end120.i, %do.end28.i
  %xdp_xmit.2.i = phi i16 [ %xdp_xmit.1253.i, %if.end120.i ], [ %xdp_xmit.0275.i, %do.end28.i ]
  %xdp_act.2.i = phi i32 [ %xdp_act.1256.i, %if.end120.i ], [ %xdp_act.0276.i, %do.end28.i ]
  %exitcond.not.i = icmp eq i32 %inc.i, %budget
  br i1 %exitcond.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.then83.i, %if.then76.i.while.end.i_crit_edge, %netsec_alloc_rx_data.exit.i.while.end.i_crit_edge, %if.end35.i.while.end.i_crit_edge, %if.then.i
  %xdp_xmit.0272.i = phi i16 [ %xdp_xmit.0275.i, %if.then76.i.while.end.i_crit_edge ], [ %xdp_xmit.0275.i, %if.then83.i ], [ %xdp_xmit.0275.i, %if.then.i ], [ %xdp_xmit.0275.i, %if.end35.i.while.end.i_crit_edge ], [ %xdp_xmit.0275.i, %netsec_alloc_rx_data.exit.i.while.end.i_crit_edge ], [ %xdp_xmit.2.i, %cleanup.i.while.end.i_crit_edge ]
  %xdp_act.0269.i = phi i32 [ %xdp_act.0276.i, %if.then76.i.while.end.i_crit_edge ], [ %xdp_act.0276.i, %if.then83.i ], [ %xdp_act.0276.i, %if.then.i ], [ %xdp_act.0276.i, %if.end35.i.while.end.i_crit_edge ], [ %xdp_act.0276.i, %netsec_alloc_rx_data.exit.i.while.end.i_crit_edge ], [ %xdp_act.2.i, %cleanup.i.while.end.i_crit_edge ]
  %done.2.i = phi i32 [ %inc.i, %if.then76.i.while.end.i_crit_edge ], [ %inc.i, %if.then83.i ], [ %done.0277.i, %if.then.i ], [ %inc.i, %if.end35.i.while.end.i_crit_edge ], [ %inc.i, %netsec_alloc_rx_data.exit.i.while.end.i_crit_edge ], [ %budget, %cleanup.i.while.end.i_crit_edge ]
  %and.i.i = and i32 %xdp_act.0269.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i241.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i241.i, label %while.end.i.if.end.i242.i_crit_edge, label %if.then.i.i23

while.end.i.if.end.i242.i_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i242.i

if.then.i.i23:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @xdp_do_flush() #18
  br label %if.end.i242.i

if.end.i242.i:                                    ; preds = %if.then.i.i23, %while.end.i.if.end.i242.i_crit_edge
  %and1.i.i = and i32 %xdp_act.0269.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xdp_xmit.0272.i)
  %tobool.not.i.i.i24 = icmp eq i16 %xdp_xmit.0272.i, 0
  %or.cond.i.i25 = or i1 %tobool.not.i.i.i24, %tobool2.not.i.i
  br i1 %or.cond.i.i25, label %if.end.i242.i.netsec_process_rx.exit_crit_edge, label %if.then.i.i.i26, !prof !240

if.end.i242.i.netsec_process_rx.exit_crit_edge:   ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_process_rx.exit

if.then.i.i.i26:                                  ; preds = %if.end.i242.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i = zext i16 %xdp_xmit.0272.i to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  call void @arm_heavy_mb() #18
  %224 = call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #18
  %ioaddr.i.i.i.i = getelementptr i8, ptr %napi, i32 244
  %225 = ptrtoint ptr %ioaddr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %ioaddr.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %226, i32 1040
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %224) #18, !srcloc !242
  br label %netsec_process_rx.exit

netsec_process_rx.exit:                           ; preds = %if.then.i.i.i26, %if.end.i242.i.netsec_process_rx.exit_crit_edge, %netsec_process_tx.exit.netsec_process_rx.exit_crit_edge
  %done.2303311.i = phi i32 [ %done.2.i, %if.end.i242.i.netsec_process_rx.exit_crit_edge ], [ %done.2.i, %if.then.i.i.i26 ], [ 0, %netsec_process_tx.exit.netsec_process_rx.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp.i) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %done.2303311.i, i32 %budget)
  %cmp = icmp slt i32 %done.2303311.i, %budget
  br i1 %cmp, label %land.lhs.true, label %netsec_process_rx.exit.if.end_crit_edge

netsec_process_rx.exit.if.end_crit_edge:          ; preds = %netsec_process_rx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

land.lhs.true:                                    ; preds = %netsec_process_rx.exit
  %call1 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %done.2303311.i) #18
  br i1 %call1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %reglock = getelementptr i8, ptr %napi, i32 -48
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %reglock) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  call void @arm_heavy_mb() #18
  %ioaddr.i = getelementptr i8, ptr %napi, i32 244
  %227 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i27 = getelementptr i8, ptr %228, i32 564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 50331648) #18, !srcloc !242
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reglock, i32 noundef %call6) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %netsec_process_rx.exit.if.end_crit_edge
  ret i32 %done.2303311.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_register_mdio(ptr noundef %priv, i32 noundef %phy_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %1, i32 noundef 0) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %if.end

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup58

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.85, ptr noundef %retval.0.i)
  %priv4 = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %priv4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %priv, ptr %priv4, align 8
  %name = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.86, ptr %name, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @netsec_phy_read, ptr %read, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @netsec_phy_write, ptr %write, align 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %parent, align 4
  %mii_bus = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 9
  %15 = ptrtoint ptr %mii_bus to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %mii_bus, align 128
  %16 = load ptr, ptr %dev, align 4
  %tobool.not.i100 = icmp eq ptr %16, null
  br i1 %tobool.not.i100, label %dev_name.exit.if.else27_crit_edge, label %dev_of_node.exit

dev_name.exit.if.else27_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else27

dev_of_node.exit:                                 ; preds = %dev_name.exit
  %of_node.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %tobool8.not = icmp eq ptr %18, null
  br i1 %tobool8.not, label %dev_of_node.exit.if.else27_crit_edge, label %dev_of_node.exit107

dev_of_node.exit.if.else27_crit_edge:             ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else27

dev_of_node.exit107:                              ; preds = %dev_of_node.exit
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call13 = tail call ptr @of_get_child_by_name(ptr noundef %20, ptr noundef nonnull @.str.87) #18
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %do.end, label %dev_of_node.exit107.if.end17_crit_edge

dev_of_node.exit107.if.end17_crit_edge:           ; preds = %dev_of_node.exit107
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end17

do.end:                                           ; preds = %dev_of_node.exit107
  call void @__sanitizer_cov_trace_pc() #20
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.88) #21
  br label %if.end17

if.end17:                                         ; preds = %do.end, %dev_of_node.exit107.if.end17_crit_edge
  %parent10.0 = phi ptr [ %20, %do.end ], [ %call13, %dev_of_node.exit107.if.end17_crit_edge ]
  %call18 = tail call i32 @of_mdiobus_register(ptr noundef nonnull %call.i, ptr noundef %parent10.0) #18
  tail call void @of_node_put(ptr noundef %call13) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup58_crit_edge, label %do.end23

if.end17.cleanup58_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup58

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.91, i32 noundef %call18) #21
  br label %cleanup58

if.else27:                                        ; preds = %dev_of_node.exit.if.else27_crit_edge, %dev_name.exit.if.else27_crit_edge
  %phy_mask = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 13
  %25 = ptrtoint ptr %phy_mask to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %phy_mask, align 8
  %call28 = tail call i32 @__mdiobus_register(ptr noundef nonnull %call.i, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.91, i32 noundef %call28) #21
  br label %cleanup58

if.end35:                                         ; preds = %if.else27
  %call36 = tail call ptr @get_phy_device(ptr noundef nonnull %call.i, i32 noundef %phy_addr, i1 noundef zeroext false) #18
  %phydev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 8
  %28 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call36, ptr %phydev, align 4
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then39, label %if.end47

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #20
  %29 = ptrtoint ptr %call36 to i32
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.96, i32 noundef %29) #21
  %32 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %phydev, align 4
  br label %cleanup58

if.end47:                                         ; preds = %if.end35
  %call49 = tail call i32 @phy_device_register(ptr noundef %call36) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end47.cleanup58_crit_edge, label %if.then51

if.end47.cleanup58_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup58

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @mdiobus_unregister(ptr noundef nonnull %call.i) #18
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.99, i32 noundef %call49) #21
  br label %cleanup58

cleanup58:                                        ; preds = %if.then51, %if.end47.cleanup58_crit_edge, %if.then39, %do.end33, %do.end23, %if.end17.cleanup58_crit_edge, %entry.cleanup58_crit_edge
  %retval.1 = phi i32 [ %call28, %do.end33 ], [ -19, %if.then39 ], [ -12, %entry.cleanup58_crit_edge ], [ %call18, %do.end23 ], [ %call49, %if.then51 ], [ 0, %if.end47.cleanup58_crit_edge ], [ 0, %if.end17.cleanup58_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_set_mask_and_coherent(ptr noundef %dev) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 1099511627775) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call1 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 1099511627775) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netsec_unregister_mdio(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 4
  %dev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.dev_of_node.exit_crit_edge, label %if.end.i

entry.dev_of_node.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_of_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %of_node.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 8
  %phi.cmp = icmp ne ptr %5, null
  br label %dev_of_node.exit

dev_of_node.exit:                                 ; preds = %if.end.i, %entry.dev_of_node.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry.dev_of_node.exit_crit_edge ]
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %retval.0.i, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %dev_of_node.exit.if.end_crit_edge, label %if.then

dev_of_node.exit.if.end_crit_edge:                ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_device_remove(ptr noundef nonnull %1) #18
  tail call void @phy_device_free(ptr noundef nonnull %1) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %dev_of_node.exit.if.end_crit_edge
  %mii_bus = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 9
  %6 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mii_bus, align 128
  tail call void @mdiobus_unregister(ptr noundef %7) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_bulk(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_flush_frame_bulk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_completed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_schedule_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_run_xdp(ptr noundef %priv, ptr noundef %prog, ptr noundef %xdp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %data_end = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %0 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data_end, align 4
  %2 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  tail call void @__cant_migrate(ptr noundef nonnull @.str.54, i32 noundef 613) #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@netsec_run_xdp, %if.then.i.i)) #18
          to label %if.else.i.i [label %if.then.i.i], !srcloc !243

if.then.i.i:                                      ; preds = %entry
  %call3.i.i = tail call i64 @sched_clock() #18
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %4 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_func.i.i, align 4
  %call4.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi.i.i, ptr noundef %5) #18
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 7
  %6 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats9.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 3
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !244
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !245
  %22 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %27, ptrtoint (ptr @lockdep_recursion to i32)
  %28 = inttoptr i32 %add.i.i.i.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %28, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !246
  %31 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i7.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not.i.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %35 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %39 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i9.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !247
  %43 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %46, ptrtoint (ptr @hardirqs_enabled to i32)
  %47 = inttoptr i32 %add47.i.i.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %47, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !248
  %50 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i12.i.i.i.i = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %53, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool54.not.i.i.i.i = icmp eq i32 %49, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !249

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.55, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %54 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !250
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 3, i32 0, i32 1
  %56 = tail call ptr @llvm.returnaddress(i32 0) #18
  %57 = ptrtoint ptr %56 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %57) #18
  %58 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %15, align 8
  %inc.i.i.i = add i64 %59, 1
  store i64 %inc.i.i.i, ptr %15, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %15, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #18
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %60 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %61
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %57) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !251
  %62 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %63, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_on() #18
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %64 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !252
  %and.i.i.i3.i.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i3.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i3.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !233

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #18, !srcloc !253
  br label %__bpf_prog_run.exit.i

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %prog, i32 0, i32 9
  %65 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %bpf_func17.i.i, align 4
  %call18.i.i = tail call i32 @bpf_dispatcher_xdp_func(ptr noundef %xdp, ptr noundef %insnsi15.i.i, ptr noundef %66) #18
  br label %__bpf_prog_run.exit.i

__bpf_prog_run.exit.i:                            ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call4.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call18.i.i, %if.else.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_master_redirect_enabled_key, ptr blockaddress(@netsec_run_xdp, %l_yes.i.i)) #18
          to label %arch_static_branch.exit.i [label %l_yes.i.i], !srcloc !243

l_yes.i.i:                                        ; preds = %__bpf_prog_run.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %arch_static_branch.exit.i

arch_static_branch.exit.i:                        ; preds = %l_yes.i.i, %__bpf_prog_run.exit.i
  %retval.0.i.i = phi i1 [ true, %l_yes.i.i ], [ false, %__bpf_prog_run.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ret.0.i.i)
  %cmp.i = icmp eq i32 %ret.0.i.i, 3
  %or.cond.i = select i1 %retval.0.i.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i, label %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge

arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge: ; preds = %arch_static_branch.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_prog_run_xdp.exit

land.lhs.true.i:                                  ; preds = %arch_static_branch.exit.i
  %rxq.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %67 = ptrtoint ptr %rxq.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rxq.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 128
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 14
  %71 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %72, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_prog_run_xdp.exit.thread

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true.i
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 15
  %73 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %74, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge, label %if.then5.i

netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %bpf_prog_run_xdp.exit.thread

if.then5.i:                                       ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %call6.i = tail call i32 @xdp_master_redirect(ptr noundef %xdp) #18
  br label %bpf_prog_run_xdp.exit

bpf_prog_run_xdp.exit.thread:                     ; preds = %netif_is_bond_slave.exit.i.bpf_prog_run_xdp.exit.thread_crit_edge, %land.lhs.true.i.bpf_prog_run_xdp.exit.thread_crit_edge
  %75 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data_end, align 4
  %data_hard_start82 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %77 = ptrtoint ptr %data_hard_start82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data_hard_start82, align 4
  %sub.ptr.lhs.cast283 = ptrtoint ptr %76 to i32
  %sub.ptr.rhs.cast384 = ptrtoint ptr %78 to i32
  %sub.ptr.sub485 = add i32 %sub.ptr.lhs.cast283, -258
  %sub86 = sub i32 %sub.ptr.sub485, %sub.ptr.rhs.cast384
  %79 = tail call i32 @llvm.umax.i32(i32 %sub86, i32 %sub.ptr.sub)
  br label %sw.bb5

bpf_prog_run_xdp.exit:                            ; preds = %if.then5.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge
  %act.0.i = phi i32 [ %call6.i, %if.then5.i ], [ %ret.0.i.i, %arch_static_branch.exit.i.bpf_prog_run_xdp.exit_crit_edge ]
  %80 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data_end, align 4
  %data_hard_start = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %82 = ptrtoint ptr %data_hard_start to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data_hard_start, align 4
  %sub.ptr.lhs.cast2 = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast3 = ptrtoint ptr %83 to i32
  %sub.ptr.sub4 = add i32 %sub.ptr.lhs.cast2, -258
  %sub = sub i32 %sub.ptr.sub4, %sub.ptr.rhs.cast3
  %84 = tail call i32 @llvm.umax.i32(i32 %sub, i32 %sub.ptr.sub)
  %85 = zext i32 %act.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %act.0.i, label %sw.default [
    i32 2, label %bpf_prog_run_xdp.exit.sw.epilog_crit_edge
    i32 3, label %bpf_prog_run_xdp.exit.sw.bb5_crit_edge
    i32 4, label %sw.bb10
    i32 0, label %bpf_prog_run_xdp.exit.sw.bb18_crit_edge
    i32 1, label %bpf_prog_run_xdp.exit.sw.bb20_crit_edge
  ]

bpf_prog_run_xdp.exit.sw.bb20_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb20

bpf_prog_run_xdp.exit.sw.bb18_crit_edge:          ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb18

bpf_prog_run_xdp.exit.sw.bb5_crit_edge:           ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.bb5

bpf_prog_run_xdp.exit.sw.epilog_crit_edge:        ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

sw.bb5:                                           ; preds = %bpf_prog_run_xdp.exit.sw.bb5_crit_edge, %bpf_prog_run_xdp.exit.thread
  %sub.sub.ptr.sub90 = phi i32 [ %79, %bpf_prog_run_xdp.exit.thread ], [ %84, %bpf_prog_run_xdp.exit.sw.bb5_crit_edge ]
  %sub.ptr.rhs.cast389 = phi i32 [ %sub.ptr.rhs.cast384, %bpf_prog_run_xdp.exit.thread ], [ %sub.ptr.rhs.cast3, %bpf_prog_run_xdp.exit.sw.bb5_crit_edge ]
  %86 = phi ptr [ %78, %bpf_prog_run_xdp.exit.thread ], [ %83, %bpf_prog_run_xdp.exit.sw.bb5_crit_edge ]
  %87 = phi ptr [ %76, %bpf_prog_run_xdp.exit.thread ], [ %81, %bpf_prog_run_xdp.exit.sw.bb5_crit_edge ]
  %rxq.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %88 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %rxq.i.i, align 4
  %mem.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mem.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %91)
  %cmp.i.i = icmp eq i32 %91, 3
  br i1 %cmp.i.i, label %if.then.i.i52, label %if.end.i.i

if.then.i.i52:                                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #20
  %call.i.i = tail call ptr @xdp_convert_zc_to_xdp_frame(ptr noundef %xdp) #18
  br label %xdp_convert_buff_to_frame.exit.i

if.end.i.i:                                       ; preds = %sw.bb5
  %92 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast389
  %data_meta.i.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %94 = ptrtoint ptr %data_meta.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data_meta.i.i.i, align 4
  %sub.ptr.rhs.cast3.i.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.sub4.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast3.i.i.i
  %96 = tail call i32 @llvm.smax.i32(i32 %sub.ptr.sub4.i.i.i, i32 0) #18
  %sub.i.i.i = sub i32 %sub.ptr.sub.i.i.i, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i.i)
  %cmp5.i.i.i = icmp ult i32 %sub.i.i.i, 24
  br i1 %cmp5.i.i.i, label %if.end.i.i.if.then_crit_edge, label %if.end.i.i.i, !prof !233

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %frame_sz.i.i.i = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %97 = ptrtoint ptr %frame_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %frame_sz.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %86, i32 %98
  %add.ptr8.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 -256
  %cmp9.i.i.i = icmp ugt ptr %87, %add.ptr8.i.i.i
  br i1 %cmp9.i.i.i, label %if.then16.i.i.i, label %if.end5.i.i, !prof !233

if.then16.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @xdp_warn(ptr noundef nonnull @.str.56, ptr noundef nonnull @__func__.xdp_update_frame_from_buff, i32 noundef 200) #18
  br label %if.then

if.end5.i.i:                                      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %99 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %93, ptr %86, align 4
  %100 = ptrtoint ptr %data_end to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data_end, align 4
  %102 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %xdp, align 4
  %sub.ptr.lhs.cast22.i.i.i = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast23.i.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub24.i.i.i = sub i32 %sub.ptr.lhs.cast22.i.i.i, %sub.ptr.rhs.cast23.i.i.i
  %conv.i.i.i53 = trunc i32 %sub.ptr.sub24.i.i.i to i16
  %len.i.i.i = getelementptr inbounds %struct.xdp_frame, ptr %86, i32 0, i32 1
  %104 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i.i.i53, ptr %len.i.i.i, align 4
  %105 = trunc i32 %sub.ptr.sub.i.i.i to i16
  %conv26.i.i.i = add i16 %105, -24
  %headroom27.i.i.i = getelementptr inbounds %struct.xdp_frame, ptr %86, i32 0, i32 2
  %106 = ptrtoint ptr %headroom27.i.i.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv26.i.i.i, ptr %headroom27.i.i.i, align 2
  %metasize28.i.i.i = getelementptr inbounds %struct.xdp_frame, ptr %86, i32 0, i32 3
  %107 = ptrtoint ptr %metasize28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load.i.i.i = load i32, ptr %metasize28.i.i.i, align 4
  %bf.shl.i.i.i = shl i32 %96, 24
  %bf.clear.i.i.i = and i32 %bf.load.i.i.i, 16777215
  %bf.set.i.i.i = or i32 %bf.clear.i.i.i, %bf.shl.i.i.i
  store i32 %bf.set.i.i.i, ptr %metasize28.i.i.i, align 4
  %108 = ptrtoint ptr %frame_sz.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %frame_sz.i.i.i, align 4
  %bf.value32.i.i.i = and i32 %109, 16777215
  %bf.set34.i.i.i = or i32 %bf.value32.i.i.i, %bf.shl.i.i.i
  store i32 %bf.set34.i.i.i, ptr %metasize28.i.i.i, align 4
  %mem6.i.i = getelementptr inbounds %struct.xdp_frame, ptr %86, i32 0, i32 4
  %110 = ptrtoint ptr %rxq.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rxq.i.i, align 4
  %mem8.i.i = getelementptr inbounds %struct.xdp_rxq_info, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %mem8.i.i to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %113 = load i64, ptr %mem8.i.i, align 4
  %114 = ptrtoint ptr %mem6.i.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 8)
  store i64 %113, ptr %mem6.i.i, align 4
  br label %xdp_convert_buff_to_frame.exit.i

xdp_convert_buff_to_frame.exit.i:                 ; preds = %if.end5.i.i, %if.then.i.i52
  %retval.0.i.i54 = phi ptr [ %call.i.i, %if.then.i.i52 ], [ %86, %if.end5.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i54, null
  br i1 %tobool.not.i, label %xdp_convert_buff_to_frame.exit.i.if.then_crit_edge, label %netsec_xdp_xmit_back.exit, !prof !233

xdp_convert_buff_to_frame.exit.i.if.then_crit_edge: ; preds = %xdp_convert_buff_to_frame.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

netsec_xdp_xmit_back.exit:                        ; preds = %xdp_convert_buff_to_frame.exit.i
  %lock.i = getelementptr inbounds %struct.netsec_desc_ring, ptr %priv, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #18
  %call4.i = tail call fastcc i32 @netsec_xdp_queue_one(ptr noundef %priv, ptr noundef nonnull %retval.0.i.i54, i1 noundef zeroext false) #18
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4.i)
  %cmp7.not = icmp eq i32 %call4.i, 2
  br i1 %cmp7.not, label %netsec_xdp_xmit_back.exit.sw.epilog_crit_edge, label %netsec_xdp_xmit_back.exit.if.then_crit_edge

netsec_xdp_xmit_back.exit.if.then_crit_edge:      ; preds = %netsec_xdp_xmit_back.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then

netsec_xdp_xmit_back.exit.sw.epilog_crit_edge:    ; preds = %netsec_xdp_xmit_back.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.then:                                          ; preds = %netsec_xdp_xmit_back.exit.if.then_crit_edge, %xdp_convert_buff_to_frame.exit.i.if.then_crit_edge, %if.then16.i.i.i, %if.end.i.i.if.then_crit_edge
  %retval.0.i93 = phi i32 [ %call4.i, %netsec_xdp_xmit_back.exit.if.then_crit_edge ], [ 1, %xdp_convert_buff_to_frame.exit.i.if.then_crit_edge ], [ 1, %if.then16.i.i.i ], [ 1, %if.end.i.i.if.then_crit_edge ]
  %115 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xdp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %117 = load ptr, ptr @mem_map, align 4
  %118 = ptrtoint ptr %116 to i32
  %sub.i = add i32 %118, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %119 = getelementptr %struct.page, ptr %117, i32 %shr.i, i32 1
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %119, align 4
  %and.i.i55 = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i55)
  %tobool.not.i.i56 = icmp eq i32 %and.i.i55, 0
  br i1 %tobool.not.i.i56, label %if.end.i.i59, label %if.then.i.i58, !prof !249

if.then.i.i58:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i57 = add i32 %121, -1
  br label %sw.epilog.sink.split

if.end.i.i59:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i = getelementptr %struct.page, ptr %117, i32 %shr.i
  %122 = ptrtoint ptr %add.ptr.i to i32
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %bpf_prog_run_xdp.exit
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %123 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %ndev, align 4
  %call11 = tail call i32 @xdp_do_redirect(ptr noundef %124, ptr noundef %xdp, ptr noundef %prog) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %sw.bb10.sw.epilog_crit_edge, label %if.else

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #20
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb10
  %125 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xdp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %127 = load ptr, ptr @mem_map, align 4
  %128 = ptrtoint ptr %126 to i32
  %sub.i61 = add i32 %128, 1073741824
  %shr.i62 = lshr i32 %sub.i61, 12
  %129 = getelementptr %struct.page, ptr %127, i32 %shr.i62, i32 1
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load volatile i32, ptr %129, align 4
  %and.i.i63 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i63)
  %tobool.not.i.i64 = icmp eq i32 %and.i.i63, 0
  br i1 %tobool.not.i.i64, label %if.end.i.i68, label %if.then.i.i66, !prof !249

if.then.i.i66:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i65 = add i32 %131, -1
  br label %sw.epilog.sink.split

if.end.i.i68:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i67 = getelementptr %struct.page, ptr %127, i32 %shr.i62
  %132 = ptrtoint ptr %add.ptr.i67 to i32
  br label %sw.epilog.sink.split

sw.default:                                       ; preds = %bpf_prog_run_xdp.exit
  call void @__sanitizer_cov_trace_pc() #20
  %ndev17 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %133 = ptrtoint ptr %ndev17 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ndev17, align 4
  tail call void @bpf_warn_invalid_xdp_action(ptr noundef %134, ptr noundef %prog, i32 noundef %act.0.i) #18
  br label %sw.bb18

sw.bb18:                                          ; preds = %sw.default, %bpf_prog_run_xdp.exit.sw.bb18_crit_edge
  %ndev19 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %135 = ptrtoint ptr %ndev19 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %ndev19, align 4
  tail call fastcc void @trace_xdp_exception(ptr noundef %136, ptr noundef %prog, i32 noundef %act.0.i)
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb18, %bpf_prog_run_xdp.exit.sw.bb20_crit_edge
  %137 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %xdp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %139 = load ptr, ptr @mem_map, align 4
  %140 = ptrtoint ptr %138 to i32
  %sub.i71 = add i32 %140, 1073741824
  %shr.i72 = lshr i32 %sub.i71, 12
  %141 = getelementptr %struct.page, ptr %139, i32 %shr.i72, i32 1
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %141, align 4
  %and.i.i73 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %and.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.end.i.i78, label %if.then.i.i76, !prof !249

if.then.i.i76:                                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i75 = add i32 %143, -1
  br label %sw.epilog.sink.split

if.end.i.i78:                                     ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr.i77 = getelementptr %struct.page, ptr %139, i32 %shr.i72
  %144 = ptrtoint ptr %add.ptr.i77 to i32
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end.i.i78, %if.then.i.i76, %if.end.i.i68, %if.then.i.i66, %if.end.i.i59, %if.then.i.i58
  %retval.0.i.i69.sink = phi i32 [ %sub.i.i57, %if.then.i.i58 ], [ %122, %if.end.i.i59 ], [ %sub.i.i65, %if.then.i.i66 ], [ %132, %if.end.i.i68 ], [ %sub.i.i75, %if.then.i.i76 ], [ %144, %if.end.i.i78 ]
  %.sink95 = phi i32 [ %sub.sub.ptr.sub90, %if.then.i.i58 ], [ %sub.sub.ptr.sub90, %if.end.i.i59 ], [ %84, %if.then.i.i66 ], [ %84, %if.end.i.i68 ], [ %84, %if.then.i.i76 ], [ %84, %if.end.i.i78 ]
  %ret.0.ph = phi i32 [ %retval.0.i93, %if.then.i.i58 ], [ %retval.0.i93, %if.end.i.i59 ], [ 1, %if.then.i.i66 ], [ 1, %if.end.i.i68 ], [ 1, %if.then.i.i76 ], [ 1, %if.end.i.i78 ]
  %145 = inttoptr i32 %retval.0.i.i69.sink to ptr
  %page_pool15 = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 1, i32 6
  %146 = ptrtoint ptr %page_pool15 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %page_pool15, align 4
  tail call void @page_pool_put_page(ptr noundef %147, ptr noundef %145, i32 noundef %.sink95, i1 noundef zeroext true) #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb10.sw.epilog_crit_edge, %netsec_xdp_xmit_back.exit.sw.epilog_crit_edge, %bpf_prog_run_xdp.exit.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 2, %netsec_xdp_xmit_back.exit.sw.epilog_crit_edge ], [ 0, %bpf_prog_run_xdp.exit.sw.epilog_crit_edge ], [ 4, %sw.bb10.sw.epilog_crit_edge ], [ %ret.0.ph, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_release_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_do_redirect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_warn_invalid_xdp_action(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_xdp_exception(ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 1), ptr blockaddress(@trace_xdp_exception, %do.body)) #18
          to label %if.end48 [label %do.body], !srcloc !243

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !210) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !249

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #20
  %9 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !254
  %call42 = tail call i32 @__traceiter_xdp_exception(ptr noundef null, ptr noundef %dev, ptr noundef %xdp, i32 noundef %act) #18
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !255
  %13 = tail call i32 @llvm.read_register.i32(metadata !210) #18
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !210) #18
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !249

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.61, i32 noundef 108, i32 noundef 9, ptr noundef null) #18
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !210) #18
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !256
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_xdp_exception, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_xdp_exception.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @trace_xdp_exception.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.59, i32 noundef 51, ptr noundef nonnull @.str.60) #18
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !257
  %31 = tail call i32 @llvm.read_register.i32(metadata !210) #18
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
declare dso_local i32 @bpf_dispatcher_xdp_func(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_master_redirect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_xdp_queue_one(ptr nocapture noundef %priv, ptr noundef %xdpf, i1 noundef zeroext %is_ndo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %0 = load ptr, ptr @mem_map, align 4
  %1 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xdpf, align 4
  %3 = ptrtoint ptr %2 to i32
  %sub = add i32 %3, 1073741824
  %shr = lshr i32 %sub, 12
  %head = getelementptr inbounds %struct.netsec_desc_ring, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %head, align 4
  %tail = getelementptr inbounds %struct.netsec_desc_ring, ptr %priv, i32 0, i32 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %7)
  %cmp.not = icmp ult i16 %5, %7
  %add12 = add i16 %5, 256
  %.pn = select i1 %cmp.not, i16 %add12, i16 %5
  %filled.0 = sub i16 %.pn, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %filled.0)
  %cmp19 = icmp ugt i16 %filled.0, 254
  br i1 %cmp19, label %entry.cleanup_crit_edge, label %if.end22

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end22:                                         ; preds = %entry
  br i1 %is_ndo, label %if.then23, label %if.else31

if.then23:                                        ; preds = %if.end22
  %dev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 12
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %2) #18
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then23
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !249

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #18
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %17, i32 noundef -1) #18
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %if.then23
  %conv25 = zext i16 %11 to i32
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef %2, i32 noundef %conv25) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr
  %and.i = and i32 %3, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %conv25, i32 noundef 1, i32 noundef 0) #18
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef %call41.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %dma_map_single_attrs.exit.if.end43_crit_edge

dma_map_single_attrs.exit.if.end43_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.else31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  %page_pool = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %page_pool, align 4
  %dma_dir.i = getelementptr inbounds %struct.page_pool_params, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %dma_dir.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_dir.i, align 4
  %dma_addr.i = getelementptr %struct.page, ptr %0, i32 %shr, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr.i, align 4
  %headroom = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 2
  %27 = ptrtoint ptr %headroom to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %headroom, align 2
  %conv36 = zext i16 %28 to i32
  %add37 = add i32 %26, 24
  %add38 = add i32 %add37, %conv36
  %dev39 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 12
  %29 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev39, align 4
  %len40 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %31 = ptrtoint ptr %len40 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len40, align 4
  %conv41 = zext i16 %32 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %30, i32 noundef %add38, i32 noundef %conv41, i32 noundef %24) #18
  br label %if.end43

if.end43:                                         ; preds = %if.else31, %dma_map_single_attrs.exit.if.end43_crit_edge
  %tx_desc.sroa.9.0 = phi i8 [ 1, %if.else31 ], [ 2, %dma_map_single_attrs.exit.if.end43_crit_edge ]
  %dma_handle.0 = phi i32 [ %add38, %if.else31 ], [ %call41.i, %dma_map_single_attrs.exit.if.end43_crit_edge ]
  %33 = ptrtoint ptr %xdpf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xdpf, align 4
  %len45 = getelementptr inbounds %struct.xdp_frame, ptr %xdpf, i32 0, i32 1
  %35 = ptrtoint ptr %len45 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len45, align 4
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %37 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev, align 4
  %conv48 = zext i16 %36 to i32
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 15
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 15, i32 2
  %41 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv48, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !258
  %42 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %43, %conv48
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 15, i32 1
  %44 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %46 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %45, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %if.end43.netsec_set_tx_de.exit_crit_edge, label %if.end.i.i76, !prof !249

if.end43.netsec_set_tx_de.exit_crit_edge:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_set_tx_de.exit

if.end.i.i76:                                     ; preds = %if.end43
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !259
  %47 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %49 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %48, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i76.netsec_set_tx_de.exit_crit_edge, !prof !233

if.end.i.i76.netsec_set_tx_de.exit_crit_edge:     ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_set_tx_de.exit

if.then14.i.i:                                    ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #18
  br label %netsec_set_tx_de.exit

netsec_set_tx_de.exit:                            ; preds = %if.then14.i.i, %if.end.i.i76.netsec_set_tx_de.exit_crit_edge, %if.end43.netsec_set_tx_de.exit_crit_edge
  %51 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %head, align 4
  %conv.i = zext i16 %52 to i32
  %vaddr.i = getelementptr inbounds %struct.netsec_desc_ring, ptr %priv, i32 0, i32 2
  %53 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vaddr.i, align 8
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %add.ptr.i77 = getelementptr i8, ptr %54, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %52)
  %cmp.i78 = icmp eq i16 %52, 255
  %spec.select.v.i = select i1 %cmp.i78, i32 -1070660848, i32 -2144402672
  %data_buf_addr_up.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i77, i32 0, i32 1
  %55 = ptrtoint ptr %data_buf_addr_up.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %data_buf_addr_up.i, align 4
  %data_buf_addr_lw.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i77, i32 0, i32 2
  %56 = ptrtoint ptr %data_buf_addr_lw.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %dma_handle.0, ptr %data_buf_addr_lw.i, align 4
  %buf_len_info.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i77, i32 0, i32 3
  %57 = ptrtoint ptr %buf_len_info.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv48, ptr %buf_len_info.i, align 4
  %58 = ptrtoint ptr %add.ptr.i77 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.v.i, ptr %add.ptr.i77, align 4
  %desc16.i = getelementptr inbounds %struct.netsec_desc_ring, ptr %priv, i32 0, i32 1
  %59 = ptrtoint ptr %desc16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc16.i, align 4
  %arrayidx.i = getelementptr %struct.netsec_desc, ptr %60, i32 %conv.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -1 to ptr), ptr %arrayidx.i, align 4
  %tx_desc.sroa.4.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %62 = ptrtoint ptr %tx_desc.sroa.4.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %dma_handle.0, ptr %tx_desc.sroa.4.0.arrayidx.i.sroa_idx, align 4
  %tx_desc.sroa.6.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %63 = ptrtoint ptr %tx_desc.sroa.6.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %34, ptr %tx_desc.sroa.6.0.arrayidx.i.sroa_idx, align 4
  %tx_desc.sroa.7.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %64 = ptrtoint ptr %tx_desc.sroa.7.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %36, ptr %tx_desc.sroa.7.0.arrayidx.i.sroa_idx, align 4
  %tx_desc.sroa.9.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 14
  %65 = ptrtoint ptr %tx_desc.sroa.9.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %tx_desc.sroa.9.0, ptr %tx_desc.sroa.9.0.arrayidx.i.sroa_idx, align 2
  %tx_desc.sroa.12.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 15
  %66 = ptrtoint ptr %tx_desc.sroa.12.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -1, ptr %tx_desc.sroa.12.0.arrayidx.i.sroa_idx, align 1
  %67 = load ptr, ptr %desc16.i, align 4
  %arrayidx33.i = getelementptr %struct.netsec_desc, ptr %67, i32 %conv.i
  %68 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %xdpf, ptr %arrayidx33.i, align 4
  %69 = ptrtoint ptr %head to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %head, align 4
  %71 = add i16 %70, 1
  %72 = and i16 %71, 255
  store i16 %72, ptr %head, align 4
  br label %cleanup

cleanup:                                          ; preds = %netsec_set_tx_de.exit, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %netsec_set_tx_de.exit ], [ 1, %entry.cleanup_crit_edge ], [ 1, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ 1, %dma_map_single_attrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_warn(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_xdp_exception(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_do_flush() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_netdev_init(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call1 = tail call fastcc i32 @netsec_alloc_dring(ptr noundef %add.ptr.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @netsec_alloc_dring(ptr noundef %add.ptr.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err1

if.end5:                                          ; preds = %if.end
  %mii_bus = getelementptr i8, ptr %ndev, i32 3456
  %0 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mii_bus, align 128
  %phy_addr = getelementptr i8, ptr %ndev, i32 3484
  %2 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phy_addr, align 4
  %call6 = tail call i32 @netsec_phy_read(ptr noundef %1, i32 noundef %3, i32 noundef 0)
  %4 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mii_bus, align 128
  %6 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_addr, align 4
  %8 = trunc i32 %call6 to i16
  %conv10 = or i16 %8, 2048
  %call11 = tail call i32 @netsec_phy_write(ptr noundef %5, i32 noundef %7, i32 noundef 0, i16 noundef zeroext %conv10)
  %call12 = tail call fastcc i32 @netsec_reset_hardware(ptr noundef %add.ptr.i, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %err2

if.end15:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %mii_bus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mii_bus, align 128
  %11 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %phy_addr, align 4
  %call18 = tail call i32 @netsec_phy_write(ptr noundef %10, i32 noundef %12, i32 noundef 0, i16 noundef zeroext %8)
  %lock = getelementptr i8, ptr %ndev, i32 2560
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.62, ptr noundef nonnull @netsec_netdev_init.__key, i16 noundef signext 3) #18
  %lock26 = getelementptr i8, ptr %ndev, i32 2944
  tail call void @__raw_spin_lock_init(ptr noundef %lock26, ptr noundef nonnull @.str.64, ptr noundef nonnull @netsec_netdev_init.__key.63, i16 noundef signext 3) #18
  br label %cleanup

err2:                                             ; preds = %if.end5
  %vaddr.i = getelementptr i8, ptr %ndev, i32 2696
  %13 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vaddr.i, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %err2.netsec_free_dring.exit_crit_edge, label %if.then.i

err2.netsec_free_dring.exit_crit_edge:            ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_free_dring.exit

if.then.i:                                        ; preds = %err2
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr i8, ptr %ndev, i32 2688
  %dev.i = getelementptr i8, ptr %ndev, i32 3468
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 128
  tail call void @dma_free_attrs(ptr noundef %16, i32 noundef 4096, ptr noundef nonnull %14, i32 noundef %18, i32 noundef 0) #18
  %19 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %vaddr.i, align 8
  br label %netsec_free_dring.exit

netsec_free_dring.exit:                           ; preds = %if.then.i, %err2.netsec_free_dring.exit_crit_edge
  %desc.i = getelementptr i8, ptr %ndev, i32 2692
  %20 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc.i, align 4
  tail call void @kfree(ptr noundef %21) #18
  %22 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %desc.i, align 4
  br label %err1

err1:                                             ; preds = %netsec_free_dring.exit, %if.end.err1_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.err1_crit_edge ], [ %call12, %netsec_free_dring.exit ]
  %vaddr.i49 = getelementptr i8, ptr %ndev, i32 2312
  %23 = ptrtoint ptr %vaddr.i49 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vaddr.i49, align 8
  %tobool.not.i50 = icmp eq ptr %24, null
  br i1 %tobool.not.i50, label %err1.netsec_free_dring.exit54_crit_edge, label %if.then.i52

err1.netsec_free_dring.exit54_crit_edge:          ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_free_dring.exit54

if.then.i52:                                      ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i51 = getelementptr i8, ptr %ndev, i32 3468
  %25 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i51, align 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 128
  tail call void @dma_free_attrs(ptr noundef %26, i32 noundef 4096, ptr noundef nonnull %24, i32 noundef %28, i32 noundef 0) #18
  %29 = ptrtoint ptr %vaddr.i49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %vaddr.i49, align 8
  br label %netsec_free_dring.exit54

netsec_free_dring.exit54:                         ; preds = %if.then.i52, %err1.netsec_free_dring.exit54_crit_edge
  %desc.i53 = getelementptr i8, ptr %ndev, i32 2308
  %30 = ptrtoint ptr %desc.i53 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc.i53, align 4
  tail call void @kfree(ptr noundef %31) #18
  %32 = ptrtoint ptr %desc.i53 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %desc.i53, align 4
  br label %cleanup

cleanup:                                          ; preds = %netsec_free_dring.exit54, %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %netsec_free_dring.exit54 ], [ 0, %if.end15 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netsec_netdev_uninit(ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %vaddr.i = getelementptr i8, ptr %ndev, i32 2696
  %0 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.netsec_free_dring.exit_crit_edge, label %if.then.i

entry.netsec_free_dring.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_free_dring.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %arrayidx.i = getelementptr i8, ptr %ndev, i32 2688
  %dev.i = getelementptr i8, ptr %ndev, i32 3468
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 128
  tail call void @dma_free_attrs(ptr noundef %3, i32 noundef 4096, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #18
  %6 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %vaddr.i, align 8
  br label %netsec_free_dring.exit

netsec_free_dring.exit:                           ; preds = %if.then.i, %entry.netsec_free_dring.exit_crit_edge
  %desc.i = getelementptr i8, ptr %ndev, i32 2692
  %7 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc.i, align 4
  tail call void @kfree(ptr noundef %8) #18
  %9 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %desc.i, align 4
  %vaddr.i2 = getelementptr i8, ptr %ndev, i32 2312
  %10 = ptrtoint ptr %vaddr.i2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vaddr.i2, align 8
  %tobool.not.i3 = icmp eq ptr %11, null
  br i1 %tobool.not.i3, label %netsec_free_dring.exit.netsec_free_dring.exit7_crit_edge, label %if.then.i5

netsec_free_dring.exit.netsec_free_dring.exit7_crit_edge: ; preds = %netsec_free_dring.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_free_dring.exit7

if.then.i5:                                       ; preds = %netsec_free_dring.exit
  call void @__sanitizer_cov_trace_pc() #20
  %dev.i4 = getelementptr i8, ptr %ndev, i32 3468
  %12 = ptrtoint ptr %dev.i4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i4, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 128
  tail call void @dma_free_attrs(ptr noundef %13, i32 noundef 4096, ptr noundef nonnull %11, i32 noundef %15, i32 noundef 0) #18
  %16 = ptrtoint ptr %vaddr.i2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %vaddr.i2, align 8
  br label %netsec_free_dring.exit7

netsec_free_dring.exit7:                          ; preds = %if.then.i5, %netsec_free_dring.exit.netsec_free_dring.exit7_crit_edge
  %desc.i6 = getelementptr i8, ptr %ndev, i32 2308
  %17 = ptrtoint ptr %desc.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc.i6, align 4
  tail call void @kfree(ptr noundef %18) #18
  %19 = ptrtoint ptr %desc.i6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %desc.i6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_netdev_open(ptr noundef %ndev) #2 align 64 {
entry:
  %pp_params.i = alloca %struct.page_pool_params, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #18
  %vaddr.i = getelementptr i8, ptr %ndev, i32 2312
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vaddr.i, align 8
  %mul.i = shl i32 %i.03.i, 4
  %add.ptr.i95 = getelementptr i8, ptr %3, i32 %mul.i
  %4 = ptrtoint ptr %add.ptr.i95 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -2147483648, ptr %add.ptr.i95, align 4
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %netsec_setup_tx_dring.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

netsec_setup_tx_dring.exit:                       ; preds = %for.body.i
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %xdp_prog1.i = getelementptr i8, ptr %ndev, i32 3164
  %5 = ptrtoint ptr %xdp_prog1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %xdp_prog1.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pp_params.i) #18
  %7 = ptrtoint ptr %pp_params.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %pp_params.i, align 4
  %order.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 1
  %8 = ptrtoint ptr %order.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %order.i, align 4
  %pool_size.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 2
  %9 = ptrtoint ptr %pool_size.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 256, ptr %pool_size.i, align 4
  %nid.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 3
  %10 = ptrtoint ptr %nid.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %nid.i, align 4
  %dev.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev.i, align 4
  %dma_dir.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %6, null
  %cond.i = select i1 %tobool.not.i, i32 2, i32 0
  %14 = ptrtoint ptr %dma_dir.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond.i, ptr %dma_dir.i, align 4
  %max_len.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 6
  %15 = ptrtoint ptr %max_len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3582, ptr %max_len.i, align 4
  %offset.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 7
  %16 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 258, ptr %offset.i, align 4
  %init_callback.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 8
  %17 = ptrtoint ptr %init_callback.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %init_callback.i, align 4
  %init_arg.i = getelementptr inbounds %struct.page_pool_params, ptr %pp_params.i, i32 0, i32 9
  %18 = ptrtoint ptr %init_arg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %init_arg.i, align 4
  %call.i96 = call ptr @page_pool_create(ptr noundef nonnull %pp_params.i) #18
  %page_pool.i = getelementptr i8, ptr %ndev, i32 2708
  %19 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i96, ptr %page_pool.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %netsec_setup_rx_dring.exit, label %if.end.i

if.end.i:                                         ; preds = %netsec_setup_tx_dring.exit
  %xdp_rxq.i = getelementptr i8, ptr %ndev, i32 2816
  %ndev.i = getelementptr i8, ptr %ndev, i32 3444
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 4
  %napi_id.i = getelementptr i8, ptr %ndev, i32 3432
  %22 = ptrtoint ptr %napi_id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %napi_id.i, align 8
  %call8.i = call i32 @xdp_rxq_info_reg(ptr noundef %xdp_rxq.i, ptr noundef %21, i32 noundef 0, i32 noundef %23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.netsec_setup_rx_dring.exit.thread108_crit_edge

if.end.i.netsec_setup_rx_dring.exit.thread108_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_setup_rx_dring.exit.thread108

if.end11.i:                                       ; preds = %if.end.i
  %24 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %page_pool.i, align 4
  %call14.i = call i32 @xdp_rxq_info_reg_mem_model(ptr noundef %xdp_rxq.i, i32 noundef 2, ptr noundef %25) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %for.cond.preheader.i, label %if.end11.i.netsec_setup_rx_dring.exit.thread108_crit_edge

if.end11.i.netsec_setup_rx_dring.exit.thread108_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_setup_rx_dring.exit.thread108

for.cond.preheader.i:                             ; preds = %if.end11.i
  %desc18.i = getelementptr i8, ptr %ndev, i32 2692
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.inc.i.for.body.i97_crit_edge, %for.cond.preheader.i
  %i.065.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i98, %for.inc.i.for.body.i97_crit_edge ]
  %26 = ptrtoint ptr %desc18.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc18.i, align 4
  %28 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %page_pool.i, align 4
  %call.i.i.i = call ptr @page_pool_alloc_pages(ptr noundef %29, i32 noundef 10784) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i97.netsec_setup_rx_dring.exit.thread108_crit_edge, label %netsec_alloc_rx_data.exit.i

for.body.i97.netsec_setup_rx_dring.exit.thread108_crit_edge: ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_setup_rx_dring.exit.thread108

netsec_alloc_rx_data.exit.i:                      ; preds = %for.body.i97
  %dma_addr.i.i.i = getelementptr inbounds %struct.page, ptr %call.i.i.i, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %dma_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_addr.i.i.i, align 4
  %call2.i.i = call ptr @page_address(ptr noundef nonnull %call.i.i.i) #18
  %tobool21.not.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool21.not.i, label %netsec_alloc_rx_data.exit.i.netsec_setup_rx_dring.exit.thread108_crit_edge, label %for.inc.i

netsec_alloc_rx_data.exit.i.netsec_setup_rx_dring.exit.thread108_crit_edge: ; preds = %netsec_alloc_rx_data.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_setup_rx_dring.exit.thread108

for.inc.i:                                        ; preds = %netsec_alloc_rx_data.exit.i
  %add.i.i = add i32 %31, 258
  %dma_addr.i = getelementptr %struct.netsec_desc, ptr %27, i32 %i.065.i, i32 1
  %32 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add.i.i, ptr %dma_addr.i, align 4
  %addr.i = getelementptr %struct.netsec_desc, ptr %27, i32 %i.065.i, i32 2
  %33 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call2.i.i, ptr %addr.i, align 4
  %len24.i = getelementptr %struct.netsec_desc, ptr %27, i32 %i.065.i, i32 3
  %34 = ptrtoint ptr %len24.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 3582, ptr %len24.i, align 4
  %inc.i98 = add nuw nsw i32 %i.065.i, 1
  %exitcond.not.i99 = icmp eq i32 %inc.i98, 256
  br i1 %exitcond.not.i99, label %for.end.i, label %for.inc.i.for.body.i97_crit_edge

for.inc.i.for.body.i97_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i97

for.end.i:                                        ; preds = %for.inc.i
  %vaddr.i.i.i = getelementptr i8, ptr %ndev, i32 2696
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.end.i
  %idx.011.i.i = phi i16 [ 0, %for.end.i ], [ %spec.store.select.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %num.addr.010.i.i = phi i16 [ 256, %for.end.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %35 = ptrtoint ptr %desc18.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc18.i, align 4
  %idxprom.i.i = zext i16 %idx.011.i.i to i32
  %37 = ptrtoint ptr %vaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vaddr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %idx.011.i.i)
  %cmp.i.i.i = icmp eq i16 %idx.011.i.i, 255
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 -1073741056, i32 -2147482880
  %mul.i.i.i = shl nuw nsw i32 %idxprom.i.i, 4
  %add.ptr.i.i.i = getelementptr i8, ptr %38, i32 %mul.i.i.i
  %dma_addr.i.i55.i = getelementptr %struct.netsec_desc, ptr %36, i32 %idxprom.i.i, i32 1
  %data_buf_addr_up.i.i.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %data_buf_addr_up.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %data_buf_addr_up.i.i.i, align 4
  %40 = ptrtoint ptr %dma_addr.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.i.i55.i, align 4
  %data_buf_addr_lw.i.i.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %data_buf_addr_lw.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %data_buf_addr_lw.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.netsec_desc, ptr %36, i32 %idxprom.i.i, i32 3
  %43 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len.i.i.i, align 4
  %conv5.i.i.i = zext i16 %44 to i32
  %buf_len_info.i.i.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %buf_len_info.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv5.i.i.i, ptr %buf_len_info.i.i.i, align 4
  %46 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select.i.i.i, ptr %add.ptr.i.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !237
  %47 = ptrtoint ptr %dma_addr.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_addr.i.i55.i, align 4
  %49 = ptrtoint ptr %desc18.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc18.i, align 4
  %dma_addr9.i.i.i = getelementptr %struct.netsec_desc, ptr %50, i32 %idxprom.i.i, i32 1
  %51 = ptrtoint ptr %dma_addr9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %dma_addr9.i.i.i, align 4
  %addr.i.i.i = getelementptr %struct.netsec_desc, ptr %36, i32 %idxprom.i.i, i32 2
  %52 = ptrtoint ptr %addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %addr.i.i.i, align 4
  %54 = load ptr, ptr %desc18.i, align 4
  %addr13.i.i.i = getelementptr %struct.netsec_desc, ptr %54, i32 %idxprom.i.i, i32 2
  %55 = ptrtoint ptr %addr13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %53, ptr %addr13.i.i.i, align 4
  %56 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len.i.i.i, align 4
  %58 = load ptr, ptr %desc18.i, align 4
  %len18.i.i.i = getelementptr %struct.netsec_desc, ptr %58, i32 %idxprom.i.i, i32 3
  %59 = ptrtoint ptr %len18.i.i.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %57, ptr %len18.i.i.i, align 4
  %inc.i.i = add i16 %idx.011.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %inc.i.i)
  %cmp.i56.i = icmp ugt i16 %inc.i.i, 255
  %spec.store.select.i.i = select i1 %cmp.i56.i, i16 0, i16 %inc.i.i
  %dec.i.i = add nsw i16 %num.addr.010.i.i, -1
  %tobool.not.i57.i = icmp eq i16 %dec.i.i, 0
  br i1 %tobool.not.i57.i, label %netsec_setup_rx_dring.exit.thread, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.i.i

netsec_setup_rx_dring.exit.thread:                ; preds = %while.body.i.i
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pp_params.i) #18
  %60 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ndev.i, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 64
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 4
  %call.i100 = call i32 @request_threaded_irq(i32 noundef %63, ptr noundef nonnull @netsec_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %add.ptr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool9.not = icmp eq i32 %call.i100, 0
  br i1 %tobool9.not, label %if.end20, label %do.body11

netsec_setup_rx_dring.exit.thread108:             ; preds = %netsec_alloc_rx_data.exit.i.netsec_setup_rx_dring.exit.thread108_crit_edge, %for.body.i97.netsec_setup_rx_dring.exit.thread108_crit_edge, %if.end11.i.netsec_setup_rx_dring.exit.thread108_crit_edge, %if.end.i.netsec_setup_rx_dring.exit.thread108_crit_edge
  %err.2.i.ph = phi i32 [ %call14.i, %if.end11.i.netsec_setup_rx_dring.exit.thread108_crit_edge ], [ %call8.i, %if.end.i.netsec_setup_rx_dring.exit.thread108_crit_edge ], [ -12, %for.body.i97.netsec_setup_rx_dring.exit.thread108_crit_edge ], [ -12, %netsec_alloc_rx_data.exit.i.netsec_setup_rx_dring.exit.thread108_crit_edge ]
  call fastcc void @netsec_uninit_pkt_dring(ptr noundef %add.ptr.i, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pp_params.i) #18
  br label %do.body

netsec_setup_rx_dring.exit:                       ; preds = %netsec_setup_tx_dring.exit
  call void @__sanitizer_cov_trace_pc() #20
  %64 = ptrtoint ptr %call.i96 to i32
  %65 = ptrtoint ptr %page_pool.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %page_pool.i, align 4
  call fastcc void @netsec_uninit_pkt_dring(ptr noundef %add.ptr.i, i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pp_params.i) #18
  br label %do.body

do.body:                                          ; preds = %netsec_setup_rx_dring.exit, %netsec_setup_rx_dring.exit.thread108
  %err.2.i111 = phi i32 [ %err.2.i.ph, %netsec_setup_rx_dring.exit.thread108 ], [ %64, %netsec_setup_rx_dring.exit ]
  %msg_enable = getelementptr i8, ptr %ndev, i32 3476
  %66 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %msg_enable, align 4
  %and = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.body.err1_crit_edge, label %if.then4

do.body.err1_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %err1

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  %ndev5 = getelementptr i8, ptr %ndev, i32 3444
  %68 = ptrtoint ptr %ndev5 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ndev5, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %69, ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.netsec_netdev_open) #21
  br label %err1

do.body11:                                        ; preds = %netsec_setup_rx_dring.exit.thread
  %msg_enable12 = getelementptr i8, ptr %ndev, i32 3476
  %70 = ptrtoint ptr %msg_enable12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_enable12, align 4
  %and13 = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %do.body11.err2_crit_edge, label %if.then15

do.body11.err2_crit_edge:                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #20
  br label %err2

if.then15:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #20
  %72 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.79) #21
  br label %err2

if.end20:                                         ; preds = %netsec_setup_rx_dring.exit.thread
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %tobool.not.i101 = icmp eq ptr %75, null
  br i1 %tobool.not.i101, label %if.end20.if.else_crit_edge, label %dev_of_node.exit

if.end20.if.else_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

dev_of_node.exit:                                 ; preds = %if.end20
  %of_node.i = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 27
  %76 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %of_node.i, align 8
  %tobool23.not = icmp eq ptr %77, null
  br i1 %tobool23.not, label %dev_of_node.exit.if.else_crit_edge, label %if.then24

dev_of_node.exit.if.else_crit_edge:               ; preds = %dev_of_node.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.else

if.then24:                                        ; preds = %dev_of_node.exit
  %78 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ndev.i, align 4
  %phy_np = getelementptr i8, ptr %ndev, i32 3448
  %80 = ptrtoint ptr %phy_np to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy_np, align 8
  %phy_interface = getelementptr i8, ptr %ndev, i32 3440
  %82 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %phy_interface, align 16
  %call26 = call ptr @of_phy_connect(ptr noundef %79, ptr noundef %81, ptr noundef nonnull @netsec_phy_adjust_link, i32 noundef 0, i32 noundef %83) #18
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.body29, label %if.then24.if.end54_crit_edge

if.then24.if.end54_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

do.body29:                                        ; preds = %if.then24
  %msg_enable30 = getelementptr i8, ptr %ndev, i32 3476
  %84 = ptrtoint ptr %msg_enable30 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %msg_enable30, align 4
  %and31 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body29.err3_crit_edge, label %if.then33

do.body29.err3_crit_edge:                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #20
  br label %err3

if.then33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #20
  %86 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %87, ptr noundef nonnull @.str.80) #21
  br label %err3

if.else:                                          ; preds = %dev_of_node.exit.if.else_crit_edge, %if.end20.if.else_crit_edge
  %88 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ndev.i, align 4
  %phydev = getelementptr i8, ptr %ndev, i32 3452
  %90 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %phydev, align 4
  %phy_interface40 = getelementptr i8, ptr %ndev, i32 3440
  %92 = ptrtoint ptr %phy_interface40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %phy_interface40, align 16
  %call41 = call i32 @phy_connect_direct(ptr noundef %89, ptr noundef %91, ptr noundef nonnull @netsec_phy_adjust_link, i32 noundef %93) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.else.if.end54_crit_edge, label %do.body44

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end54

do.body44:                                        ; preds = %if.else
  %msg_enable45 = getelementptr i8, ptr %ndev, i32 3476
  %94 = ptrtoint ptr %msg_enable45 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %msg_enable45, align 4
  %and46 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body44.err3_crit_edge, label %if.then48

do.body44.err3_crit_edge:                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #20
  br label %err3

if.then48:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #20
  %96 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ndev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %97, ptr noundef nonnull @.str.81, i32 noundef %call41) #21
  br label %err3

if.end54:                                         ; preds = %if.else.if.end54_crit_edge, %if.then24.if.end54_crit_edge
  %phydev55 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %98 = ptrtoint ptr %phydev55 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phydev55, align 16
  call void @phy_start(ptr noundef %99) #18
  call fastcc void @netsec_start_gmac(ptr noundef %add.ptr.i)
  %napi = getelementptr i8, ptr %ndev, i32 3216
  call void @napi_enable(ptr noundef %napi) #18
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %100 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %101, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  call void @arm_heavy_mb() #18
  %ioaddr.i = getelementptr i8, ptr %ndev, i32 3460
  %102 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %103, i32 564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 50331648) #18, !srcloc !242
  br label %cleanup

err3:                                             ; preds = %if.then48, %do.body44.err3_crit_edge, %if.then33, %do.body29.err3_crit_edge
  %ret.0 = phi i32 [ %call41, %if.then48 ], [ %call41, %do.body44.err3_crit_edge ], [ -19, %if.then33 ], [ -19, %do.body29.err3_crit_edge ]
  %104 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ndev.i, align 4
  %irq58 = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 64
  %106 = ptrtoint ptr %irq58 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %irq58, align 4
  %call59 = call ptr @free_irq(i32 noundef %107, ptr noundef %add.ptr.i) #18
  br label %err2

err2:                                             ; preds = %err3, %if.then15, %do.body11.err2_crit_edge
  %ret.1 = phi i32 [ %call.i100, %if.then15 ], [ %call.i100, %do.body11.err2_crit_edge ], [ %ret.0, %err3 ]
  call fastcc void @netsec_uninit_pkt_dring(ptr noundef %add.ptr.i, i32 noundef 1)
  br label %err1

err1:                                             ; preds = %err2, %if.then4, %do.body.err1_crit_edge
  %ret.2 = phi i32 [ %err.2.i111, %if.then4 ], [ %err.2.i111, %do.body.err1_crit_edge ], [ %ret.1, %err2 ]
  %108 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev, align 4
  %call.i105 = call i32 @__pm_runtime_idle(ptr noundef %109, i32 noundef 4) #18
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end54
  %retval.0 = phi i32 [ %ret.2, %err1 ], [ 0, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_netdev_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %ndev1 = getelementptr i8, ptr %ndev, i32 3444
  %0 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev1, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !260
  %napi = getelementptr i8, ptr %ndev, i32 3216
  tail call void @napi_disable(ptr noundef %napi) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %ioaddr.i = getelementptr i8, ptr %ndev, i32 3460
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %5, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 -1) #18, !srcloc !242
  tail call fastcc void @netsec_stop_gmac(ptr noundef %add.ptr.i)
  %6 = ptrtoint ptr %ndev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev1, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %add.ptr.i) #18
  tail call fastcc void @netsec_uninit_pkt_dring(ptr noundef %add.ptr.i, i32 noundef 0)
  tail call fastcc void @netsec_uninit_pkt_dring(ptr noundef %add.ptr.i, i32 noundef 1)
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %10 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %11) #18
  %12 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %13) #18
  %call6 = tail call fastcc i32 @netsec_reset_hardware(ptr noundef %add.ptr.i, i1 noundef zeroext false)
  %dev = getelementptr i8, ptr %ndev, i32 3468
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 4) #18
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_netdev_start_xmit(ptr noundef %skb, ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %ndev, i32 2560
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #18
  %head.i = getelementptr i8, ptr %ndev, i32 2316
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %head.i, align 4
  %conv.i = zext i16 %1 to i32
  %tail.i = getelementptr i8, ptr %ndev, i32 2318
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tail.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not.i = icmp ult i16 %1, %3
  %add.i = add nuw nsw i32 %conv.i, 256
  %conv.pn.i = select i1 %cmp.not.i, i32 %add.i, i32 %conv.i
  %conv1.i = zext i16 %3 to i32
  %used.0.i = sub nsw i32 %conv.pn.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %used.0.i)
  %cmp.i = icmp sgt i32 %used.0.i, 254
  br i1 %cmp.i, label %if.then.i, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end12

if.then.i:                                        ; preds = %entry
  %ndev.i = getelementptr i8, ptr %ndev, i32 3444
  %4 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %7, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !261
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %head.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tail.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp.not.i.i = icmp ult i16 %9, %11
  %add.i.i = add nuw nsw i32 %conv.i.i, 256
  %conv.pn.i.i = select i1 %cmp.not.i.i, i32 %add.i.i, i32 %conv.i.i
  %conv1.i.i = zext i16 %11 to i32
  %used.0.i.i = sub nsw i32 %conv.pn.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %used.0.i.i)
  %cmp5.i = icmp sgt i32 %used.0.i.i, 254
  br i1 %cmp5.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev.i, align 4
  %_tx.i.i13.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %14 = ptrtoint ptr %_tx.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i13.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %15) #18
  br label %if.end12

if.then:                                          ; preds = %if.then.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #18
  %call4 = tail call i32 @net_ratelimit() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %if.then
  %dev = getelementptr i8, ptr %ndev, i32 3468
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i98, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i98:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i98, %do.end.dev_name.exit_crit_edge
  %retval.0.i99 = phi ptr [ %21, %if.end.i98 ], [ %19, %do.end.dev_name.exit_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %retval.0.i99, ptr noundef %ndev) #21
  br label %cleanup

if.end12:                                         ; preds = %if.end.i, %entry.if.end12_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %ip_summed, align 8
  %23 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %23)
  %cmp = icmp eq i16 %23, 1536
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %24 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.i.not = icmp eq i16 %27, 0
  br i1 %tobool.i.not, label %if.end12.if.end36_crit_edge, label %if.then23

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end36

if.then23:                                        ; preds = %if.end12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %28 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %29)
  %cmp25 = icmp eq i16 %29, 2048
  %head.i.i100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i100, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i101 = zext i16 %33 to i32
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %conv.i.i101
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %tot_len, align 2
  %35 = ptrtoint ptr %head.i.i100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %head.i.i100, align 8
  %37 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i104 = zext i16 %38 to i32
  %add.ptr.i.i105 = getelementptr i8, ptr %36, i32 %conv.i.i104
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i105, i32 0, i32 8
  %39 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %saddr, align 4
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i105, i32 0, i32 9
  %41 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %daddr, align 4
  %43 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold0\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,~{cc}"(i32 %42, i32 %40, i32 6) #22, !srcloc !262
  %44 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %43) #22, !srcloc !263
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %45 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i111 = zext i16 %46 to i32
  %add.ptr.i.i112 = getelementptr i8, ptr %36, i32 %conv.i.i111
  br label %if.end36.sink.split

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %47 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i8.i = zext i16 %48 to i32
  %add.ptr.i.i9.i = getelementptr i8, ptr %31, i32 %conv.i.i8.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %payload_len.i, align 4
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i.i.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef 0, i32 noundef 6, i32 noundef 0) #18
  %50 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i.i) #22, !srcloc !263
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.else, %if.then27
  %add.ptr.i.i112.sink = phi ptr [ %add.ptr.i.i112, %if.then27 ], [ %add.ptr.i.i9.i, %if.else ]
  %neg.sink.in.in.in.in = phi i32 [ %44, %if.then27 ], [ %50, %if.else ]
  %neg.sink.in.in.in = xor i32 %neg.sink.in.in.in.in, -1
  %neg.sink.in.in = lshr i32 %neg.sink.in.in.in, 16
  %neg.sink.in = trunc i32 %neg.sink.in.in to i16
  %neg.sink = xor i16 %neg.sink.in, -1
  %check = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i112.sink, i32 0, i32 6
  %51 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %neg.sink, ptr %check, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.end12.if.end36_crit_edge
  %tx_ctrl.sroa.5.0 = phi i32 [ 0, %if.end12.if.end36_crit_edge ], [ 64, %if.end36.sink.split ]
  %dev37 = getelementptr i8, ptr %ndev, i32 3468
  %52 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev37, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %58 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len.i, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %55) #18
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end36
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i114, !prof !249

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.thread

if.then.i114:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %53) #18
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 3
  %60 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %61, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i114.dev_name.exit.i_crit_edge

if.then.i114.dev_name.exit.i_crit_edge:           ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i114
  call void @__sanitizer_cov_trace_pc() #20
  %62 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %53, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i114.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %63, %if.end.i.i ], [ %61, %if.then.i114.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.58, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %64 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev37, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %65, i32 noundef -1) #18
  br label %if.then44

dma_map_single_attrs.exit:                        ; preds = %if.end36
  %sub.i = sub i32 %57, %59
  tail call void @debug_dma_map_single(ptr noundef %53, ptr noundef %55, i32 noundef %sub.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %66 = load ptr, ptr @mem_map, align 4
  %67 = ptrtoint ptr %55 to i32
  %sub.i115 = add i32 %67, 1073741824
  %shr.i = lshr i32 %sub.i115, 12
  %add.ptr.i116 = getelementptr %struct.page, ptr %66, i32 %shr.i
  %and.i = and i32 %67, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %53, ptr noundef %add.ptr.i116, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #18
  %68 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev37, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %69, i32 noundef %call41.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i118 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i118, label %dma_map_single_attrs.exit.if.then44_crit_edge, label %if.end53

dma_map_single_attrs.exit.if.then44_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then44

if.then44:                                        ; preds = %dma_map_single_attrs.exit.if.then44_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #18
  %msg_enable = getelementptr i8, ptr %ndev, i32 3476
  %70 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_enable, align 4
  %and = and i32 %71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %if.then44.do.end52_crit_edge, label %if.then48

if.then44.do.end52_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end52

if.then48:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #20
  %ndev49 = getelementptr i8, ptr %ndev, i32 3444
  %72 = ptrtoint ptr %ndev49 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ndev49, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %73, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.83) #21
  br label %do.end52

do.end52:                                         ; preds = %if.then48, %if.then44.do.end52_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %74 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %tx_dropped, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #18
  br label %cleanup

if.end53:                                         ; preds = %dma_map_single_attrs.exit
  %76 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data, align 4
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  %80 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data_len.i, align 8
  %sub.i121 = sub i32 %79, %81
  %conv56 = trunc i32 %sub.i121 to i16
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #18
  %82 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %end.i.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %tx_flags.i, align 1
  %86 = and i8 %85, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.i123 = icmp eq i8 %86, 0
  br i1 %tobool.not.i123, label %if.end53.skb_tx_timestamp.exit_crit_edge, label %if.then.i124

if.end53.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_tx_timestamp.exit

if.then.i124:                                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #18
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i124, %if.end53.skb_tx_timestamp.exit_crit_edge
  %ndev57 = getelementptr i8, ptr %ndev, i32 3444
  %87 = ptrtoint ptr %ndev57 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ndev57, align 4
  %89 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len.i, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 103
  %91 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %_tx.i.i, align 128
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %90)
  %cmp.i.i.i = icmp ugt i32 %90, 268435455
  br i1 %cmp.i.i.i, label %do.body2.i.i.i, label %dql_queued.exit.i.i, !prof !233

do.body2.i.i.i:                                   ; preds = %skb_tx_timestamp.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #18, !srcloc !264
  unreachable

dql_queued.exit.i.i:                              ; preds = %skb_tx_timestamp.exit
  %last_obj_cnt.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 15, i32 2
  %93 = ptrtoint ptr %last_obj_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %last_obj_cnt.i.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !258
  %94 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dql.i.i, align 128
  %add.i.i.i = add i32 %95, %90
  store i32 %add.i.i.i, ptr %dql.i.i, align 128
  %adj_limit.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 15, i32 1
  %96 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %98 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i.i.i = sub i32 %97, %98
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i, label %dql_queued.exit.i.i.netsec_set_tx_de.exit_crit_edge, label %if.end.i.i126, !prof !249

dql_queued.exit.i.i.netsec_set_tx_de.exit_crit_edge: ; preds = %dql_queued.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_set_tx_de.exit

if.end.i.i126:                                    ; preds = %dql_queued.exit.i.i
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %92, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i.i) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !259
  %99 = ptrtoint ptr %adj_limit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %adj_limit.i.i.i, align 4
  %101 = ptrtoint ptr %dql.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %dql.i.i, align 128
  %sub.i22.i.i = sub i32 %100, %102
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i.i)
  %cmp7.i.i = icmp sgt i32 %sub.i22.i.i, -1
  br i1 %cmp7.i.i, label %if.then14.i.i, label %if.end.i.i126.netsec_set_tx_de.exit_crit_edge, !prof !233

if.end.i.i126.netsec_set_tx_de.exit_crit_edge:    ; preds = %if.end.i.i126
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_set_tx_de.exit

if.then14.i.i:                                    ; preds = %if.end.i.i126
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #18
  br label %netsec_set_tx_de.exit

netsec_set_tx_de.exit:                            ; preds = %if.then14.i.i, %if.end.i.i126.netsec_set_tx_de.exit_crit_edge, %dql_queued.exit.i.i.netsec_set_tx_de.exit_crit_edge
  %103 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %head.i, align 4
  %conv.i128 = zext i16 %104 to i32
  %vaddr.i = getelementptr i8, ptr %ndev, i32 2312
  %105 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %vaddr.i, align 8
  %mul.i = shl nuw nsw i32 %conv.i128, 4
  %add.ptr.i129 = getelementptr i8, ptr %106, i32 %mul.i
  %107 = select i1 %cmp, i32 128, i32 0
  %or1.i = or i32 %tx_ctrl.sroa.5.0, %107
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %104)
  %cmp.i130 = icmp eq i16 %104, 255
  %spec.select.v.i = select i1 %cmp.i130, i32 -1070660848, i32 -2144402672
  %spec.select.i = or i32 %or1.i, %spec.select.v.i
  %data_buf_addr_up.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i129, i32 0, i32 1
  %108 = ptrtoint ptr %data_buf_addr_up.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %data_buf_addr_up.i, align 4
  %data_buf_addr_lw.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i129, i32 0, i32 2
  %109 = ptrtoint ptr %data_buf_addr_lw.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call41.i, ptr %data_buf_addr_lw.i, align 4
  %conv11.i = zext i16 %27 to i32
  %shl12.i = shl nuw i32 %conv11.i, 16
  %conv13.i = and i32 %sub.i121, 65535
  %or14.i = or i32 %conv13.i, %shl12.i
  %buf_len_info.i = getelementptr inbounds %struct.netsec_de, ptr %add.ptr.i129, i32 0, i32 3
  %110 = ptrtoint ptr %buf_len_info.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or14.i, ptr %buf_len_info.i, align 4
  %111 = ptrtoint ptr %add.ptr.i129 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %spec.select.i, ptr %add.ptr.i129, align 4
  %desc16.i = getelementptr i8, ptr %ndev, i32 2308
  %112 = ptrtoint ptr %desc16.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %desc16.i, align 4
  %arrayidx.i = getelementptr %struct.netsec_desc, ptr %113, i32 %conv.i128
  %114 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 -1 to ptr), ptr %arrayidx.i, align 4
  %tx_desc.sroa.4.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %115 = ptrtoint ptr %tx_desc.sroa.4.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %call41.i, ptr %tx_desc.sroa.4.0.arrayidx.i.sroa_idx, align 4
  %tx_desc.sroa.6.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %116 = ptrtoint ptr %tx_desc.sroa.6.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %77, ptr %tx_desc.sroa.6.0.arrayidx.i.sroa_idx, align 4
  %tx_desc.sroa.7.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %117 = ptrtoint ptr %tx_desc.sroa.7.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv56, ptr %tx_desc.sroa.7.0.arrayidx.i.sroa_idx, align 4
  %tx_desc.sroa.9.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 14
  %118 = ptrtoint ptr %tx_desc.sroa.9.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %tx_desc.sroa.9.0.arrayidx.i.sroa_idx, align 2
  %tx_desc.sroa.11.0.arrayidx.i.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.i, i32 15
  %119 = ptrtoint ptr %tx_desc.sroa.11.0.arrayidx.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 -1, ptr %tx_desc.sroa.11.0.arrayidx.i.sroa_idx, align 1
  %120 = load ptr, ptr %desc16.i, align 4
  %arrayidx33.i = getelementptr %struct.netsec_desc, ptr %120, i32 %conv.i128
  %121 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %skb, ptr %arrayidx33.i, align 4
  %122 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %head.i, align 4
  %124 = add i16 %123, 1
  %125 = and i16 %124, 255
  store i16 %125, ptr %head.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %ioaddr.i = getelementptr i8, ptr %ndev, i32 3460
  %126 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %127, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 16777216) #18, !srcloc !242
  br label %cleanup

cleanup:                                          ; preds = %netsec_set_tx_de.exit, %do.end52, %dev_name.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end52 ], [ 0, %netsec_set_tx_de.exit ], [ 16, %dev_name.exit ], [ 16, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @netsec_netdev_set_features(ptr nocapture noundef writeonly %ndev, i64 noundef %features) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_cksum_offload_flag = getelementptr i8, ptr %ndev, i32 3488
  %and = lshr i64 %features, 40
  %0 = trunc i64 %and to i8
  %1 = and i8 %0, 1
  %2 = ptrtoint ptr %rx_cksum_offload_flag to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %rx_cksum_offload_flag, align 32
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_xdp(ptr noundef %ndev, ptr nocapture noundef readonly %xdp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cond = icmp eq i32 %1, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %prog = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  %extack = getelementptr inbounds %struct.netdev_bpf, ptr %xdp, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %extack, align 4
  %ndev.i = getelementptr i8, ptr %ndev, i32 3444
  %6 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %sw.bb.if.end3.i_crit_edge, label %land.lhs.true.i

sw.bb.if.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %9)
  %cmp.i = icmp ugt i32 %9, 1500
  br i1 %cmp.i, label %do.body.i, label %land.lhs.true.i.if.end3.i_crit_edge

land.lhs.true.i.if.end3.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end3.i

do.body.i:                                        ; preds = %land.lhs.true.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @netsec_xdp_setup.__msg) #18
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #20
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @netsec_xdp_setup.__msg, ptr %5, align 4
  br label %cleanup

if.end3.i:                                        ; preds = %land.lhs.true.i.if.end3.i_crit_edge, %sw.bb.if.end3.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.end3.i.if.end6.i_crit_edge, label %if.then4.i

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  %call5.i = tail call i32 @netsec_netdev_stop(ptr noundef %7) #18
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end3.i.if.end6.i_crit_edge
  %xdp_prog.i = getelementptr i8, ptr %ndev, i32 3164
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %xdp_prog.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !265
  %13 = ptrtoint ptr %3 to i32
  tail call void @llvm.prefetch.p0(ptr %xdp_prog.i, i32 1, i32 3, i32 1) #18
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %13, ptr %xdp_prog.i) #18, !srcloc !266
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool25.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool25.not.i, label %if.end6.i.if.end27.i_crit_edge, label %if.then26.i

if.end6.i.if.end27.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27.i

if.then26.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  %15 = inttoptr i32 %asmresult.i.i to ptr
  tail call void @bpf_prog_put(ptr noundef nonnull %15) #18
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %if.end6.i.if.end27.i_crit_edge
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i43.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i43.i)
  %tobool.i44.not.i = icmp eq i32 %and1.i.i43.i, 0
  br i1 %tobool.i44.not.i, label %if.end27.i.cleanup_crit_edge, label %if.then29.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #20
  %call30.i = tail call i32 @netsec_netdev_open(ptr noundef %7) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then29.i, %if.end27.i.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -95, %if.then2.i ], [ -95, %do.body.i.cleanup_crit_edge ], [ 0, %if.then29.i ], [ 0, %if.end27.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_xdp_xmit(ptr noundef %ndev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup24_crit_edge, !prof !249

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup24

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %ndev, i32 2560
  tail call void @_raw_spin_lock(ptr noundef %lock) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp42 = icmp sgt i32 %n, 0
  br i1 %cmp42, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %xdp_xmit = getelementptr i8, ptr %ndev, i32 2320
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %nxmit.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr ptr, ptr %frames, i32 %nxmit.044
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx3, align 4
  %call4 = tail call fastcc i32 @netsec_xdp_queue_one(ptr noundef %add.ptr.i, ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 2
  br i1 %cmp5.not, label %for.inc, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.inc:                                          ; preds = %for.body
  %2 = ptrtoint ptr %xdp_xmit to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xdp_xmit, align 16
  %inc = add i16 %3, 1
  store i16 %inc, ptr %xdp_xmit, align 16
  %inc8 = add nuw nsw i32 %nxmit.044, 1
  %exitcond.not = icmp eq i32 %inc8, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %nxmit.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %nxmit.044, %for.body.for.end_crit_edge ], [ %n, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #18
  %and12 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %for.end.cleanup24_crit_edge, label %if.then20, !prof !249

for.end.cleanup24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup24

if.then20:                                        ; preds = %for.end
  %xdp_xmit21 = getelementptr i8, ptr %ndev, i32 2320
  %4 = ptrtoint ptr %xdp_xmit21 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xdp_xmit21, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %if.then20.netsec_xdp_ring_tx_db.exit_crit_edge, label %if.then.i, !prof !233

if.then20.netsec_xdp_ring_tx_db.exit_crit_edge:   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_xdp_ring_tx_db.exit

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i = zext i16 %5 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #18
  %ioaddr.i.i = getelementptr i8, ptr %ndev, i32 3460
  %7 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 1040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %6) #18, !srcloc !242
  br label %netsec_xdp_ring_tx_db.exit

netsec_xdp_ring_tx_db.exit:                       ; preds = %if.then.i, %if.then20.netsec_xdp_ring_tx_db.exit_crit_edge
  %9 = ptrtoint ptr %xdp_xmit21 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %xdp_xmit21, align 16
  br label %cleanup24

cleanup24:                                        ; preds = %netsec_xdp_ring_tx_db.exit, %for.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup24_crit_edge ], [ %nxmit.0.lcssa, %netsec_xdp_ring_tx_db.exit ], [ %nxmit.0.lcssa, %for.end.cleanup24_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_alloc_dring(ptr noundef %priv, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id
  %dev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %1, i32 noundef 4096, ptr noundef %arrayidx, i32 noundef 3264, i32 noundef 0) #18
  %vaddr = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 2
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %vaddr, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.netsec_free_dring.exit_crit_edge, label %if.end

entry.netsec_free_dring.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_free_dring.exit

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #23
  %desc = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %desc, align 4
  %tobool4.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool4.not, label %err, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

err:                                              ; preds = %if.end
  %5 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %vaddr, align 8
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %err.netsec_free_dring.exit_crit_edge, label %if.then.i

err.netsec_free_dring.exit_crit_edge:             ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_free_dring.exit

if.then.i:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 128
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 4096, ptr noundef nonnull %.pr, i32 noundef %9, i32 noundef 0) #18
  %10 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vaddr, align 8
  br label %netsec_free_dring.exit

netsec_free_dring.exit:                           ; preds = %if.then.i, %err.netsec_free_dring.exit_crit_edge, %entry.netsec_free_dring.exit_crit_edge
  %desc.i = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 1
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  tail call void @kfree(ptr noundef %12) #18
  %13 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %desc.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %netsec_free_dring.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %netsec_free_dring.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_phy_read(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %reg_addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %shl = shl i32 %phy_addr, 11
  %shl2 = shl i32 %reg_addr, 6
  %freq = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 35000000, i32 %3)
  %cmp.i = icmp ult i32 %3, 35000000
  br i1 %cmp.i, label %entry.netsec_clk_type.exit_crit_edge, label %if.end.i

entry.netsec_clk_type.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %3)
  %cmp1.i = icmp ult i32 %3, 60000000
  br i1 %cmp1.i, label %if.end.i.netsec_clk_type.exit_crit_edge, label %if.end3.i

if.end.i.netsec_clk_type.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %3)
  %cmp4.i = icmp ult i32 %3, 100000000
  br i1 %cmp4.i, label %if.end3.i.netsec_clk_type.exit_crit_edge, label %if.end6.i

if.end3.i.netsec_clk_type.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %3)
  %cmp7.i = icmp ult i32 %3, 150000000
  br i1 %cmp7.i, label %if.end6.i.netsec_clk_type.exit_crit_edge, label %if.end9.i

if.end6.i.netsec_clk_type.exit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %3)
  %cmp10.i = icmp ult i32 %3, 250000000
  %..i = select i1 %cmp10.i, i32 16, i32 20
  br label %netsec_clk_type.exit

netsec_clk_type.exit:                             ; preds = %if.end9.i, %if.end6.i.netsec_clk_type.exit_crit_edge, %if.end3.i.netsec_clk_type.exit_crit_edge, %if.end.i.netsec_clk_type.exit_crit_edge, %entry.netsec_clk_type.exit_crit_edge
  %retval.0.i = phi i32 [ 8, %entry.netsec_clk_type.exit_crit_edge ], [ 12, %if.end.i.netsec_clk_type.exit_crit_edge ], [ 0, %if.end3.i.netsec_clk_type.exit_crit_edge ], [ 4, %if.end6.i.netsec_clk_type.exit_crit_edge ], [ %..i, %if.end9.i ]
  %or = or i32 %shl, %shl2
  %or3 = or i32 %or, %retval.0.i
  %or5 = or i32 %or3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %4 = tail call i32 @llvm.bswap.i32(i32 %or5) #18
  %ioaddr.i.i = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %4) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %7 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %8, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 268435472) #18, !srcloc !242
  %call.i = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %1, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %netsec_clk_type.exit.cleanup_crit_edge

netsec_clk_type.exit.cleanup_crit_edge:           ; preds = %netsec_clk_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %netsec_clk_type.exit
  %call7 = tail call fastcc i32 @netsec_mac_wait_while_busy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end10:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %9 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %10, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i24, i32 335544320) #18, !srcloc !242
  %call.i25 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %1, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool.not.i = icmp eq i32 %call.i25, 0
  br i1 %tobool.not.i, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %11 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %12, i32 4544
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #18, !srcloc !227
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %netsec_clk_type.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.end14 ], [ -110, %netsec_clk_type.exit.cleanup_crit_edge ], [ %call7, %if.end.cleanup_crit_edge ], [ %call.i25, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_phy_write(ptr nocapture noundef readonly %bus, i32 noundef %phy_addr, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %conv = zext i16 %val to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %2 = tail call i32 @llvm.bswap.i32(i32 %conv) #18
  %ioaddr.i.i = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %2) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %5 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %6, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 335544336) #18, !srcloc !242
  %call.i = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %1, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %phy_addr, 11
  %shl2 = shl i32 %reg, 6
  %freq = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 35000000, i32 %8)
  %cmp.i = icmp ult i32 %8, 35000000
  br i1 %cmp.i, label %if.end.netsec_clk_type.exit_crit_edge, label %if.end.i

if.end.netsec_clk_type.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 60000000, i32 %8)
  %cmp1.i = icmp ult i32 %8, 60000000
  br i1 %cmp1.i, label %if.end.i.netsec_clk_type.exit_crit_edge, label %if.end3.i

if.end.i.netsec_clk_type.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %8)
  %cmp4.i = icmp ult i32 %8, 100000000
  br i1 %cmp4.i, label %if.end3.i.netsec_clk_type.exit_crit_edge, label %if.end6.i

if.end3.i.netsec_clk_type.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %8)
  %cmp7.i = icmp ult i32 %8, 150000000
  br i1 %cmp7.i, label %if.end6.i.netsec_clk_type.exit_crit_edge, label %if.end9.i

if.end6.i.netsec_clk_type.exit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_clk_type.exit

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %8)
  %cmp10.i = icmp ult i32 %8, 250000000
  %..i = select i1 %cmp10.i, i32 16, i32 20
  br label %netsec_clk_type.exit

netsec_clk_type.exit:                             ; preds = %if.end9.i, %if.end6.i.netsec_clk_type.exit_crit_edge, %if.end3.i.netsec_clk_type.exit_crit_edge, %if.end.i.netsec_clk_type.exit_crit_edge, %if.end.netsec_clk_type.exit_crit_edge
  %retval.0.i = phi i32 [ 8, %if.end.netsec_clk_type.exit_crit_edge ], [ 12, %if.end.i.netsec_clk_type.exit_crit_edge ], [ 0, %if.end3.i.netsec_clk_type.exit_crit_edge ], [ 4, %if.end6.i.netsec_clk_type.exit_crit_edge ], [ %..i, %if.end9.i ]
  %or = or i32 %shl, %shl2
  %or4 = or i32 %or, %retval.0.i
  %or7 = or i32 %or4, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %9 = tail call i32 @llvm.bswap.i32(i32 %or7) #18
  %10 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i21 = getelementptr i8, ptr %11, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i21, i32 %9) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %12 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i22 = getelementptr i8, ptr %13, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i22, i32 268435472) #18, !srcloc !242
  %call.i23 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %1, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool9.not = icmp eq i32 %call.i23, 0
  br i1 %tobool9.not, label %if.end11, label %netsec_clk_type.exit.cleanup_crit_edge

netsec_clk_type.exit.cleanup_crit_edge:           ; preds = %netsec_clk_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %netsec_clk_type.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call12 = tail call fastcc i32 @netsec_mac_wait_while_busy(ptr noundef %1)
  %call13 = tail call i32 @netsec_phy_read(ptr noundef %bus, i32 noundef %phy_addr, i32 noundef 2)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %netsec_clk_type.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -110, %entry.cleanup_crit_edge ], [ -110, %netsec_clk_type.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_reset_hardware(ptr noundef readonly %priv, i1 noundef zeroext %load_ucode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 536
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %3 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %4, i32 532
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 16777216) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %5 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %6, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i139, i32 16777216) #18, !srcloc !242
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i141186 = getelementptr i8, ptr %8, i32 532
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141186) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not187 = icmp eq i32 %10, 0
  br i1 %tobool2.not187, label %if.then.while.cond9.preheader_crit_edge, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  br label %do.end

if.then.while.cond9.preheader_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond9.preheader

while.cond9.preheader:                            ; preds = %do.end.while.cond9.preheader_crit_edge, %if.then.while.cond9.preheader_crit_edge
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i143188 = getelementptr i8, ptr %12, i32 544
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143188) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool12.not189 = icmp eq i32 %14, 0
  br i1 %tobool12.not189, label %while.cond9.preheader.if.end_crit_edge, label %while.cond9.preheader.do.end18_crit_edge

while.cond9.preheader.do.end18_crit_edge:         ; preds = %while.cond9.preheader
  br label %do.end18

while.cond9.preheader.if.end_crit_edge:           ; preds = %while.cond9.preheader
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %if.then.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !268
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !269
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %16, i32 532
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i141) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %18 = and i32 %17, 16777216
  %tobool2.not = icmp eq i32 %18, 0
  br i1 %tobool2.not, label %do.end.while.cond9.preheader_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end

do.end.while.cond9.preheader_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond9.preheader

do.end18:                                         ; preds = %do.end18.do.end18_crit_edge, %while.cond9.preheader.do.end18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !270
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !271
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %20, i32 544
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %22 = and i32 %21, 16777216
  %tobool12.not = icmp eq i32 %22, 0
  br i1 %tobool12.not, label %do.end18.if.end_crit_edge, label %do.end18.do.end18_crit_edge

do.end18.do.end18_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end18

do.end18.if.end_crit_edge:                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.end:                                           ; preds = %do.end18.if.end_crit_edge, %while.cond9.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %23 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %24, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i145, i32 0) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %25 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %26, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 128) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %27 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %28, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 100663296) #18, !srcloc !242
  %29 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i151190 = getelementptr i8, ptr %30, i32 288
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151190) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not191 = icmp eq i32 %31, 0
  br i1 %cmp.not191, label %if.end.while.end36_crit_edge, label %if.end.do.end31_crit_edge

if.end.do.end31_crit_edge:                        ; preds = %if.end
  br label %do.end31

if.end.while.end36_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end36

do.end31:                                         ; preds = %do.end31.do.end31_crit_edge, %if.end.do.end31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !272
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !273
  %32 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %33, i32 288
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %cmp.not = icmp eq i32 %34, 0
  br i1 %cmp.not, label %do.end31.while.end36_crit_edge, label %do.end31.do.end31_crit_edge

do.end31.do.end31_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end31

do.end31.while.end36_crit_edge:                   ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end36

while.end36:                                      ; preds = %do.end31.while.end36_crit_edge, %if.end.while.end36_crit_edge
  %arrayidx = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %35 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %36, i32 1140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 0) #18, !srcloc !242
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #18
  %40 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %41, i32 1096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i155, i32 %39) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %42 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %43, i32 1076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i157, i32 0) #18, !srcloc !242
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %priv, align 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #18
  %47 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %48, i32 1032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i159, i32 %46) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %49 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %50, i32 1072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 16777216) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %51 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %52, i32 1136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i163, i32 16777216) #18, !srcloc !242
  br i1 %load_ucode, label %if.then52, label %while.end36.if.end64_crit_edge

while.end36.if.end64_crit_edge:                   ; preds = %while.end36
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end64

if.then52:                                        ; preds = %while.end36
  %eeprom_base.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 11
  %53 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr.i164 = getelementptr i8, ptr %54, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !274
  %56 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %57, i32 12
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #18, !srcloc !227
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !275
  %60 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %61, i32 16
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #18, !srcloc !227
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !276
  %mul.i.i = shl i32 %63, 2
  %call.i.i = tail call ptr @ioremap(i32 noundef %59, i32 noundef %mul.i.i) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then52.do.body56_crit_edge, label %for.cond.preheader.i.i

if.then52.do.body56_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body56

for.cond.preheader.i.i:                           ; preds = %if.then52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp14.not.i.i = icmp eq i32 %62, 0
  br i1 %cmp14.not.i.i, label %for.cond.preheader.i.i.if.end.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end.i_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %mul4.i.i = shl i32 %i.015.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 %mul4.i.i
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %65 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %66, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %64) #18, !srcloc !242
  %inc.i.i = add nuw i32 %i.015.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %63
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i.i

for.body.i.i.if.end.i_crit_edge:                  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.i.if.end.i_crit_edge, %for.cond.preheader.i.i.if.end.i_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call.i.i) #18
  %67 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %68, i32 20
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !278
  %70 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr27.i = getelementptr i8, ptr %71, i32 24
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #18, !srcloc !227
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !279
  %74 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %75, i32 28
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #18, !srcloc !227
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !280
  %mul.i84.i = shl i32 %77, 2
  %call.i85.i = tail call ptr @ioremap(i32 noundef %73, i32 noundef %mul.i84.i) #18
  %tobool.not.i86.i = icmp eq ptr %call.i85.i, null
  br i1 %tobool.not.i86.i, label %if.end.i.do.body56_crit_edge, label %for.cond.preheader.i88.i

if.end.i.do.body56_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body56

for.cond.preheader.i88.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp14.not.i87.i = icmp eq i32 %76, 0
  br i1 %cmp14.not.i87.i, label %for.cond.preheader.i88.i.if.end41.i_crit_edge, label %for.cond.preheader.i88.i.for.body.i97.i_crit_edge

for.cond.preheader.i88.i.for.body.i97.i_crit_edge: ; preds = %for.cond.preheader.i88.i
  br label %for.body.i97.i

for.cond.preheader.i88.i.if.end41.i_crit_edge:    ; preds = %for.cond.preheader.i88.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41.i

for.body.i97.i:                                   ; preds = %for.body.i97.i.for.body.i97.i_crit_edge, %for.cond.preheader.i88.i.for.body.i97.i_crit_edge
  %i.015.i91.i = phi i32 [ %inc.i95.i, %for.body.i97.i.for.body.i97.i_crit_edge ], [ 0, %for.cond.preheader.i88.i.for.body.i97.i_crit_edge ]
  %mul4.i92.i = shl i32 %i.015.i91.i, 2
  %add.ptr.i93.i = getelementptr i8, ptr %call.i85.i, i32 %mul4.i92.i
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %79 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i.i94.i = getelementptr i8, ptr %80, i32 540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i94.i, i32 %78) #18, !srcloc !242
  %inc.i95.i = add nuw i32 %i.015.i91.i, 1
  %exitcond.not.i96.i = icmp eq i32 %inc.i95.i, %77
  br i1 %exitcond.not.i96.i, label %for.body.i97.i.if.end41.i_crit_edge, label %for.body.i97.i.for.body.i97.i_crit_edge

for.body.i97.i.for.body.i97.i_crit_edge:          ; preds = %for.body.i97.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i97.i

for.body.i97.i.if.end41.i_crit_edge:              ; preds = %for.body.i97.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.body.i97.i.if.end41.i_crit_edge, %for.cond.preheader.i88.i.if.end41.i_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call.i85.i) #18
  %81 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %82, i32 32
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #18, !srcloc !227
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !281
  %85 = ptrtoint ptr %eeprom_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %eeprom_base.i, align 8
  %add.ptr52.i = getelementptr i8, ptr %86, i32 36
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #18, !srcloc !227
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !282
  %mul.i101.i = shl i32 %88, 2
  %call.i102.i = tail call ptr @ioremap(i32 noundef %84, i32 noundef %mul.i101.i) #18
  %tobool.not.i103.i = icmp eq ptr %call.i102.i, null
  br i1 %tobool.not.i103.i, label %if.end41.i.do.body56_crit_edge, label %for.cond.preheader.i105.i

if.end41.i.do.body56_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body56

for.cond.preheader.i105.i:                        ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp14.not.i104.i = icmp eq i32 %87, 0
  br i1 %cmp14.not.i104.i, label %for.cond.preheader.i105.i.netsec_netdev_load_microcode.exit_crit_edge, label %for.cond.preheader.i105.i.for.body.i114.i_crit_edge

for.cond.preheader.i105.i.for.body.i114.i_crit_edge: ; preds = %for.cond.preheader.i105.i
  br label %for.body.i114.i

for.cond.preheader.i105.i.netsec_netdev_load_microcode.exit_crit_edge: ; preds = %for.cond.preheader.i105.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_netdev_load_microcode.exit

for.body.i114.i:                                  ; preds = %for.body.i114.i.for.body.i114.i_crit_edge, %for.cond.preheader.i105.i.for.body.i114.i_crit_edge
  %i.015.i108.i = phi i32 [ %inc.i112.i, %for.body.i114.i.for.body.i114.i_crit_edge ], [ 0, %for.cond.preheader.i105.i.for.body.i114.i_crit_edge ]
  %mul4.i109.i = shl i32 %i.015.i108.i, 2
  %add.ptr.i110.i = getelementptr i8, ptr %call.i102.i, i32 %mul4.i109.i
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %90 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i.i111.i = getelementptr i8, ptr %91, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i111.i, i32 %89) #18, !srcloc !242
  %inc.i112.i = add nuw i32 %i.015.i108.i, 1
  %exitcond.not.i113.i = icmp eq i32 %inc.i112.i, %88
  br i1 %exitcond.not.i113.i, label %for.body.i114.i.netsec_netdev_load_microcode.exit_crit_edge, label %for.body.i114.i.for.body.i114.i_crit_edge

for.body.i114.i.for.body.i114.i_crit_edge:        ; preds = %for.body.i114.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i114.i

for.body.i114.i.netsec_netdev_load_microcode.exit_crit_edge: ; preds = %for.body.i114.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netsec_netdev_load_microcode.exit

netsec_netdev_load_microcode.exit:                ; preds = %for.body.i114.i.netsec_netdev_load_microcode.exit_crit_edge, %for.cond.preheader.i105.i.netsec_netdev_load_microcode.exit_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call.i102.i) #18
  br label %if.end64

do.body56:                                        ; preds = %if.end41.i.do.body56_crit_edge, %if.end.i.do.body56_crit_edge, %if.then52.do.body56_crit_edge
  %msg_enable = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 14
  %92 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %msg_enable, align 4
  %and57 = and i32 %93, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body56.cleanup_crit_edge, label %if.then59

do.body56.cleanup_crit_edge:                      ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then59:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #20
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %94 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ndev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %95, ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.netsec_reset_hardware, i32 noundef -12) #21
  br label %cleanup

if.end64:                                         ; preds = %netsec_netdev_load_microcode.exit, %while.end36.if.end64_crit_edge
  %freq = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 15
  %96 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %freq, align 8
  %div = udiv i32 %97, 1000000
  %sub = add nsw i32 %div, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %98 = tail call i32 @llvm.bswap.i32(i32 %sub) #18
  %99 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %100, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i166, i32 %98) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %101 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %102, i32 536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 0) #18, !srcloc !242
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %103 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %104, i32 512
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %106 = and i32 %105, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool67.not = icmp eq i32 %106, 0
  br i1 %tobool67.not, label %do.body69, label %if.end78

do.body69:                                        ; preds = %if.end64
  %msg_enable70 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 14
  %107 = ptrtoint ptr %msg_enable70 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %msg_enable70, align 4
  %and71 = and i32 %108, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body69.cleanup_crit_edge, label %if.then73

do.body69.cleanup_crit_edge:                      ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then73:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #20
  %ndev74 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %109 = ptrtoint ptr %ndev74 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ndev74, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %110, ptr noundef nonnull @.str.77) #21
  br label %cleanup

if.end78:                                         ; preds = %if.end64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %111 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %112, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 4096) #18, !srcloc !242
  %ndev79 = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %113 = ptrtoint ptr %ndev79 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ndev79, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %114, i32 0, i32 20
  %115 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %116)
  %cmp80 = icmp ugt i32 %116, 1500
  %spec.select = select i1 %cmp80, i32 24, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %117 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %118, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i174, i32 4096) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %119 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %120, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i176, i32 %spec.select) #18, !srcloc !242
  %121 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i178192 = getelementptr i8, ptr %122, i32 1280
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178192) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %124 = and i32 %123, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp86193 = icmp eq i32 %124, 0
  br i1 %cmp86193, label %if.end78.do.end92_crit_edge, label %if.end78.while.end97_crit_edge

if.end78.while.end97_crit_edge:                   ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end97

if.end78.do.end92_crit_edge:                      ; preds = %if.end78
  br label %do.end92

do.end92:                                         ; preds = %do.end92.do.end92_crit_edge, %if.end78.do.end92_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !283
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !284
  %125 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %126, i32 1280
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %128 = and i32 %127, 2048
  %cmp86 = icmp eq i32 %128, 0
  br i1 %cmp86, label %do.end92.do.end92_crit_edge, label %do.end92.while.end97_crit_edge

do.end92.while.end97_crit_edge:                   ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end97

do.end92.do.end92_crit_edge:                      ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end92

while.end97:                                      ; preds = %do.end92.while.end97_crit_edge, %if.end78.while.end97_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %129 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %130, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i180, i32 -1) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %131 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %132, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i182, i32 -1) #18, !srcloc !242
  br label %cleanup

cleanup:                                          ; preds = %while.end97, %if.then73, %do.body69.cleanup_crit_edge, %if.then59, %do.body56.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end97 ], [ -12, %if.then59 ], [ -12, %do.body56.cleanup_crit_edge ], [ -6, %if.then73 ], [ -6, %do.body69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_mac_write(ptr nocapture noundef readonly %priv, i32 noundef %addr, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %0 = tail call i32 @llvm.bswap.i32(i32 %value) #18
  %ioaddr.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  %1 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #18, !srcloc !242
  %or = or i32 %addr, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %3 = tail call i32 @llvm.bswap.i32(i32 %or) #18
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %5, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 %3) #18, !srcloc !242
  %call = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_mac_wait_while_busy(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %0 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 268435456) #18, !srcloc !242
  %call.i = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %do.body
  %2 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %3, i32 4544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !286
  %dec = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %do.end.do.body15_crit_edge, label %land.rhs

do.end.do.body15_crit_edge:                       ; preds = %do.end
  br label %do.body15

land.rhs:                                         ; preds = %do.end
  %5 = and i32 %4, 16777216
  %tobool10.not = icmp eq i32 %5, 0
  br i1 %tobool10.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body15:                                        ; preds = %land.rhs32.do.body15_crit_edge, %do.end.do.body15_crit_edge
  %timeout.2 = phi i32 [ %dec30, %land.rhs32.do.body15_crit_edge ], [ 100, %do.end.do.body15_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %7, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i3, i32 268435456) #18, !srcloc !242
  %call.i4 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %do.end24, label %do.body15.do.end48_crit_edge

do.body15.do.end48_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end48

do.end24:                                         ; preds = %do.body15
  %8 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i6.i6 = getelementptr i8, ptr %9, i32 4544
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i6) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !288
  %dec30 = add nsw i32 %timeout.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec30)
  %tobool31.not = icmp eq i32 %dec30, 0
  br i1 %tobool31.not, label %do.end24.do.end48_crit_edge, label %land.rhs32

do.end24.do.end48_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end48

land.rhs32:                                       ; preds = %do.end24
  %11 = and i32 %10, 16777216
  %tobool34.not = icmp eq i32 %11, 0
  br i1 %tobool34.not, label %land.rhs32.cleanup_crit_edge, label %land.rhs32.do.body15_crit_edge

land.rhs32.do.body15_crit_edge:                   ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body15

land.rhs32.cleanup_crit_edge:                     ; preds = %land.rhs32
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end48:                                         ; preds = %do.end24.do.end48_crit_edge, %do.body15.do.end48_crit_edge
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %12 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ndev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i9 = icmp eq i8 %15, 0
  br i1 %tobool.not.i9, label %do.end48.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end48.netdev_name.exit_crit_edge:              ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #20
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #20
  %call.i10 = tail call ptr @strchr(ptr noundef %13, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i10, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %13, ptr @.str.66
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end48.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.66, %do.end48.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 121
  %16 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i)
  %17 = icmp ult i8 %bf.load45.i, 6
  br i1 %17, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.netdev_reg_state.exit_crit_edge, label %if.then.i, !prof !249

land.end.i.netdev_reg_state.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netdev_reg_state.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.74, ptr noundef %13, i32 noundef %bf.cast21.i) #18
  br label %netdev_reg_state.exit

switch.lookup:                                    ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %18 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netsec_mac_wait_while_busy, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit

netdev_reg_state.exit:                            ; preds = %switch.lookup, %if.then.i, %land.end.i.netdev_reg_state.exit_crit_edge
  %retval.0.i11 = phi ptr [ @.str.75, %if.then.i ], [ @.str.75, %land.end.i.netdev_reg_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 435, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i11, ptr noundef nonnull @__func__.netsec_mac_wait_while_busy) #18
  br label %cleanup

cleanup:                                          ; preds = %netdev_reg_state.exit, %land.rhs32.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %netdev_reg_state.exit ], [ 0, %land.rhs32.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_mac_read(ptr nocapture noundef readonly %priv, i32 noundef %addr, ptr nocapture noundef writeonly %read) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %0 = tail call i32 @llvm.bswap.i32(i32 %addr) #18
  %ioaddr.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  %1 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #18, !srcloc !242
  %call = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %4, i32 4544
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #18, !srcloc !227
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %7 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %read, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_wait_while_busy(ptr nocapture noundef readonly %priv, i32 noundef %addr, i32 noundef %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %entry
  %dec58 = phi i32 [ 999, %entry ], [ %dec, %do.end.land.rhs_crit_edge ]
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %addr
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !227
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %and = and i32 %3, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %land.rhs.cleanup_crit_edge, label %do.end

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.end:                                           ; preds = %land.rhs
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !289
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !290
  %dec = add nsw i32 %dec58, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end.land.rhs12_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs

do.end.land.rhs12_crit_edge:                      ; preds = %do.end
  br label %land.rhs12

land.rhs12:                                       ; preds = %while.body17.land.rhs12_crit_edge, %do.end.land.rhs12_crit_edge
  %dec1059 = phi i32 [ %dec10, %while.body17.land.rhs12_crit_edge ], [ 99, %do.end.land.rhs12_crit_edge ]
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %5, i32 %addr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #18, !srcloc !227
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %and14 = and i32 %7, %mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %land.rhs12.cleanup_crit_edge, label %while.body17

land.rhs12.cleanup_crit_edge:                     ; preds = %land.rhs12
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.body17:                                     ; preds = %land.rhs12
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #18
  %dec10 = add nsw i32 %dec1059, -1
  %tobool11.not = icmp eq i32 %dec10, 0
  br i1 %tobool11.not, label %do.end29, label %while.body17.land.rhs12_crit_edge

while.body17.land.rhs12_crit_edge:                ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs12

do.end29:                                         ; preds = %while.body17
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %8 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.end29.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end29.netdev_name.exit_crit_edge:              ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #20
  %call.i = tail call ptr @strchr(ptr noundef %9, i32 noundef 37) #18
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %9, ptr @.str.66
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end29.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.66, %do.end29.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %reg_state.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 121
  %12 = ptrtoint ptr %reg_state.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load45.i = load i8, ptr %reg_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %bf.load45.i)
  %13 = icmp ult i8 %bf.load45.i, 6
  br i1 %13, label %switch.lookup, label %land.end.i

land.end.i:                                       ; preds = %netdev_name.exit
  %.b46.i = load i1, ptr @netdev_reg_state.__already_done, align 1
  br i1 %.b46.i, label %land.end.i.netdev_reg_state.exit_crit_edge, label %if.then.i, !prof !249

land.end.i.netdev_reg_state.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %netdev_reg_state.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @netdev_reg_state.__already_done, align 1
  %bf.cast21.i = zext i8 %bf.load45.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 4983, i32 noundef 9, ptr noundef nonnull @.str.74, ptr noundef %9, i32 noundef %bf.cast21.i) #18
  br label %netdev_reg_state.exit

switch.lookup:                                    ; preds = %netdev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  %14 = sext i8 %bf.load45.i to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.netsec_wait_while_busy, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %netdev_reg_state.exit

netdev_reg_state.exit:                            ; preds = %switch.lookup, %if.then.i, %land.end.i.netdev_reg_state.exit_crit_edge
  %retval.0.i56 = phi ptr [ @.str.75, %if.then.i ], [ @.str.75, %land.end.i.netdev_reg_state.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 378, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef %retval.0.i, ptr noundef nonnull %retval.0.i56, ptr noundef nonnull @__func__.netsec_wait_while_busy) #18
  br label %cleanup

cleanup:                                          ; preds = %netdev_reg_state.exit, %land.rhs12.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %netdev_reg_state.exit ], [ 0, %land.rhs12.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr.i = getelementptr inbounds %struct.netsec_priv, ptr %dev_id, i32 0, i32 10
  %0 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 512
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !227
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %5, i32 1024
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %7 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %8, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %6) #18, !srcloc !242
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.do.body7_crit_edge, label %if.then4

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %10, i32 1088
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %13, i32 1088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %11) #18, !srcloc !242
  br label %do.body7

do.body7:                                         ; preds = %if.then4, %if.end.do.body7_crit_edge
  %reglock = getelementptr inbounds %struct.netsec_priv, ptr %dev_id, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reglock) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %14 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %15, i32 568
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 50331648) #18, !srcloc !242
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reglock, i32 noundef %call9) #18
  %napi = getelementptr inbounds %struct.netsec_priv, ptr %dev_id, i32 0, i32 4
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call.i, label %if.then.i, label %do.body7.napi_schedule.exit_crit_edge

do.body7.napi_schedule.exit_crit_edge:            ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__napi_schedule(ptr noundef %napi) #18
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %do.body7.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netsec_phy_adjust_link(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %phydev = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @netsec_start_gmac(ptr noundef %add.ptr.i)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @netsec_stop_gmac(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_print_status(ptr noundef %5) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_connect_direct(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netsec_start_gmac(ptr noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #18
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 4
  %speed = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %6)
  %cmp.not = icmp eq i32 %6, 1000
  %spec.store.select = select i1 %cmp.not, i32 0, i32 33660940
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %7 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select) #18
  %ioaddr.i.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  %8 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %10 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %11, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 16) #18, !srcloc !242
  %call.i = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %12 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i2 = getelementptr i8, ptr %13, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2, i32 -2130640384) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %14 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i3 = getelementptr i8, ptr %15, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i3, i32 1048592) #18, !srcloc !242
  %call.i4 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool5.not = icmp eq i32 %call.i4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 5000, i32 noundef 2) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %16 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %17, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i6, i32 1048576) #18, !srcloc !242
  %call.i7 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %18 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %19, i32 4544
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #18, !srcloc !227
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %value, align 4
  %and = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end14:                                         ; preds = %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %23 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #18, !srcloc !242
  %call15 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4612, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %25 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i9 = getelementptr i8, ptr %26, i32 4604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 16777216) #18, !srcloc !242
  %call19 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4604, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  %call23 = tail call fastcc i32 @netsec_mac_write(ptr noundef %priv, i32 noundef 4096, i32 noundef 4268160)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %call27 = tail call fastcc i32 @netsec_mac_write(ptr noundef %priv, i32 noundef 4108, i32 noundef 98304)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %call31 = tail call fastcc i32 @netsec_mac_write(ptr noundef %priv, i32 noundef 4112, i32 noundef 114688)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %call35 = tail call fastcc i32 @netsec_mac_write(ptr noundef %priv, i32 noundef 4, i32 noundef -2147483647)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %call39 = tail call fastcc i32 @netsec_mac_update_to_phy_state(ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %call43 = call fastcc i32 @netsec_mac_read(ptr noundef %priv, i32 noundef 4120, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #20
  %27 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %value, align 4
  %or47 = or i32 %28, 8194
  store i32 %or47, ptr %value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %29 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %30, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 -1) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %31 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %32, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 -1) #18, !srcloc !242
  %33 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ndev, align 4
  %et_coalesce = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 1
  %call49 = tail call i32 @netsec_et_set_coalesce(ptr noundef %34, ptr noundef %et_coalesce, ptr noundef null, ptr noundef null)
  %call50 = tail call fastcc i32 @netsec_mac_write(ptr noundef %priv, i32 noundef 4120, i32 noundef %or47)
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netsec_uninit_pkt_dring(ptr noundef %priv, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %vaddr = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 2
  %0 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vaddr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %desc1 = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 1
  %2 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %id)
  %cmp9 = icmp eq i32 %id, 1
  %dev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 12
  %page_pool = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %for.cond.preheader
  %indvars.iv = phi i32 [ 0, %for.cond.preheader ], [ %indvars.iv.be, %for.body.backedge ]
  %4 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc1, align 4
  %arrayidx5 = getelementptr %struct.netsec_desc, ptr %5, i32 %indvars.iv
  %addr = getelementptr %struct.netsec_desc, ptr %5, i32 %indvars.iv, i32 2
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %addr, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %for.inc, label %if.end8

if.end8:                                          ; preds = %for.body
  br i1 %cmp9, label %for.inc.thread61, label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next)
  %exitcond.not = icmp eq i32 %indvars.iv.next, 256
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.thread.for.body.backedge_crit_edge, %for.inc.thread61.for.body.backedge_crit_edge, %for.inc.for.body.backedge_crit_edge
  %indvars.iv.be = phi i32 [ %indvars.iv.next, %for.inc.for.body.backedge_crit_edge ], [ %indvars.iv.next59, %for.inc.thread.for.body.backedge_crit_edge ], [ %indvars.iv.next62, %for.inc.thread61.for.body.backedge_crit_edge ]
  br label %for.body

for.inc.thread61:                                 ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %7 to i32
  %sub = add i32 %9, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %8, i32 %shr
  %10 = ptrtoint ptr %page_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %page_pool, align 4
  tail call void @page_pool_put_page(ptr noundef %11, ptr noundef %add.ptr, i32 noundef -1, i1 noundef zeroext false) #18
  %indvars.iv.next62 = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next62)
  %exitcond.not63 = icmp eq i32 %indvars.iv.next62, 256
  br i1 %exitcond.not63, label %for.inc.thread61.if.then22_crit_edge, label %for.inc.thread61.for.body.backedge_crit_edge

for.inc.thread61.for.body.backedge_crit_edge:     ; preds = %for.inc.thread61
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.backedge

for.inc.thread61.if.then22_crit_edge:             ; preds = %for.inc.thread61
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then22

for.inc.thread:                                   ; preds = %if.end8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %dma_addr = getelementptr %struct.netsec_desc, ptr %5, i32 %indvars.iv, i32 1
  %14 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr, align 4
  %len = getelementptr %struct.netsec_desc, ptr %5, i32 %indvars.iv, i32 3
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 4
  %conv17 = zext i16 %17 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %13, i32 noundef %15, i32 noundef %conv17, i32 noundef 1, i32 noundef 0) #18
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  tail call void @consume_skb(ptr noundef %19) #18
  %indvars.iv.next59 = add nuw nsw i32 %indvars.iv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %indvars.iv.next59)
  %exitcond.not60 = icmp eq i32 %indvars.iv.next59, 256
  br i1 %exitcond.not60, label %for.inc.thread.if.end27_crit_edge, label %for.inc.thread.for.body.backedge_crit_edge

for.inc.thread.for.body.backedge_crit_edge:       ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.backedge

for.inc.thread.if.end27_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

for.end:                                          ; preds = %for.inc
  br i1 %cmp9, label %for.end.if.then22_crit_edge, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end27

for.end.if.then22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then22

if.then22:                                        ; preds = %for.end.if.then22_crit_edge, %for.inc.thread61.if.then22_crit_edge
  %xdp_rxq = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 1, i32 8
  %call = tail call zeroext i1 @xdp_rxq_info_is_reg(ptr noundef %xdp_rxq) #18
  br i1 %call, label %if.then23, label %if.then22.if.end25_crit_edge

if.then22.if.end25_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end25

if.then23:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @xdp_rxq_info_unreg(ptr noundef %xdp_rxq) #18
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.then22.if.end25_crit_edge
  %page_pool26 = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %page_pool26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %page_pool26, align 4
  tail call void @page_pool_destroy(ptr noundef %21) #18
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %for.end.if.end27_crit_edge, %for.inc.thread.if.end27_crit_edge
  %22 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc1, align 4
  %24 = call ptr @memset(ptr %23, i32 0, i32 4096)
  %25 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vaddr, align 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 4096)
  %head = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 3
  %28 = ptrtoint ptr %head to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %head, align 4
  %tail = getelementptr [2 x %struct.netsec_desc_ring], ptr %priv, i32 0, i32 %id, i32 4
  %29 = ptrtoint ptr %tail to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %tail, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp30 = icmp eq i32 %id, 0
  br i1 %cmp30, label %if.then32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #20
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %30 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ndev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %31, i32 0, i32 103
  %32 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i.i) #18
  %dql.i.i = getelementptr inbounds %struct.netdev_queue, ptr %33, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i.i) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then32, %if.end27.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netsec_stop_gmac(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %ioaddr.i.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 403701760) #18, !srcloc !242
  %call.i = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %2 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %3, i32 4544
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #18, !srcloc !227
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !228
  %5 = and i32 %4, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 1132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %8 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i2 = getelementptr i8, ptr %9, i32 1068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 -1) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %10 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i4 = getelementptr i8, ptr %11, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i4, i32 %5) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %12 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %13, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 403701776) #18, !srcloc !242
  %call.i5 = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netsec_mac_update_to_phy_state(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %ndev = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndev, align 4
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 145
  %2 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev1, align 16
  %duplex = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %cond = select i1 %tobool.not, i32 106508, i32 10252
  %speed = getelementptr inbounds %struct.phy_device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %7)
  %cmp.not = icmp eq i32 %7, 1000
  %or = or i32 %cond, 32768
  %spec.select = select i1 %cmp.not, i32 %cond, i32 %or
  %phy_interface = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 5
  %8 = ptrtoint ptr %phy_interface to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_interface, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp2.not = icmp eq i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %7)
  %cmp4 = icmp eq i32 %7, 100
  %or6 = or i32 %spec.select, 16384
  %spec.select27 = select i1 %cmp4, i32 %or6, i32 %spec.select
  %value.1 = select i1 %cmp2.not, i32 %spec.select, i32 %spec.select27
  %10 = add i32 %9, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  %spec.select28.v = select i1 %11, i32 1108344832, i32 34603008
  %spec.select28 = or i32 %value.1, %spec.select28.v
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %12 = tail call i32 @llvm.bswap.i32(i32 %spec.select28) #18
  %ioaddr.i.i = getelementptr inbounds %struct.netsec_priv, ptr %priv, i32 0, i32 10
  %13 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %15 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 4548
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 16) #18, !srcloc !242
  %call.i = tail call fastcc i32 @netsec_wait_while_busy(ptr noundef %priv, i32 noundef 4548, i32 noundef -2147483648) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  %retval.0 = select i1 %tobool14.not, i32 0, i32 -110
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_et_set_coalesce(ptr nocapture noundef %net_device, ptr nocapture noundef readonly %et_coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %et_coalesce1 = getelementptr i8, ptr %net_device, i32 3072
  %0 = call ptr @memcpy(ptr %et_coalesce1, ptr %et_coalesce, i32 92)
  %tx_coalesce_usecs = getelementptr i8, ptr %net_device, i32 3092
  %1 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %2)
  %cmp = icmp ult i32 %2, 50
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %3 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 50, ptr %tx_coalesce_usecs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tx_max_coalesced_frames = getelementptr i8, ptr %net_device, i32 3096
  %4 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_max_coalesced_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp eq i32 %5, 0
  br i1 %cmp6, label %if.then7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %tx_max_coalesced_frames, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %7 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_max_coalesced_frames, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #18
  %ioaddr.i = getelementptr i8, ptr %net_device, i32 3460
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %11, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %9) #18, !srcloc !242
  %12 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_coalesce_usecs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #18
  %15 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %16, i32 1056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %14) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %17 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %18, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 8388608) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %19 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %20, i32 1064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 4194304) #18, !srcloc !242
  %rx_coalesce_usecs = getelementptr i8, ptr %net_device, i32 3076
  %21 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %22)
  %cmp16 = icmp ult i32 %22, 50
  br i1 %cmp16, label %if.then17, label %if.end10.if.end20_crit_edge

if.end10.if.end20_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end20

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %23 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 50, ptr %rx_coalesce_usecs, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end10.if.end20_crit_edge
  %rx_max_coalesced_frames = getelementptr i8, ptr %net_device, i32 3080
  %24 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_max_coalesced_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp22 = icmp eq i32 %25, 0
  br i1 %cmp22, label %if.then23, label %if.end20.if.end26_crit_edge

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %rx_max_coalesced_frames, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %27 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_max_coalesced_frames, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #18
  %30 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i59 = getelementptr i8, ptr %31, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %29) #18, !srcloc !242
  %32 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_coalesce_usecs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #18
  %35 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i61 = getelementptr i8, ptr %36, i32 1120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %34) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %37 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %38, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 8388608) #18, !srcloc !242
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %39 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i65 = getelementptr i8, ptr %40, i32 1128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 4194304) #18, !srcloc !242
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_rxq_info_unreg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netsec_et_get_drvinfo(ptr nocapture noundef readonly %net_device, ptr noundef %info) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str, i32 noundef 32) #18
  %parent = getelementptr inbounds %struct.net_device, ptr %net_device, i32 0, i32 133, i32 1
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
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %call3 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %retval.0.i, i32 noundef 32) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netsec_et_get_msglevel(ptr nocapture noundef readonly %dev) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3476
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @netsec_et_set_msglevel(ptr nocapture noundef writeonly %dev, i32 noundef %datum) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %dev, i32 3476
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %datum, ptr %msg_enable, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @netsec_et_get_coalesce(ptr nocapture noundef readonly %net_device, ptr nocapture noundef writeonly %et_coalesce, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %et_coalesce1 = getelementptr i8, ptr %net_device, i32 3072
  %0 = call ptr @memcpy(ptr %et_coalesce, ptr %et_coalesce1, i32 92)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_link_ksettings(ptr noundef, ptr noundef) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mdiobus_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdiobus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %ioaddr.i = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #18, !srcloc !242
  %clk = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 16
  tail call void @clk_disable(ptr noundef %5) #18
  tail call void @clk_unprepare(ptr noundef %5) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netsec_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 16
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %3) #18
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !241
  tail call void @arm_heavy_mb() #18
  %ioaddr.i = getelementptr inbounds %struct.netsec_priv, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 587202560) #18, !srcloc !242
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #19 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #17 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind readnone }
attributes #23 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !70, !72, !74, !75, !76, !78, !80, !82, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !99, !100, !102, !104, !106, !107, !109, !110, !112, !113, !114, !116, !117, !118, !119, !121, !122, !124, !126, !127, !129, !130, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !153, !155, !157, !158, !160, !162, !163, !165, !167, !169, !171, !172, !173, !174, !176, !178, !180, !182, !184, !186, !188, !189, !190, !191, !193, !194, !195, !197, !198, !200, !201, !202, !204, !205, !206, !208}
!llvm.named.register.sp = !{!210}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__initcall__kmod_netsec__706_2206_netsec_driver_init6, !1, !"__initcall__kmod_netsec__706_2206_netsec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2206, i32 1}
!2 = !{ptr @__exitcall_netsec_driver_exit, !1, !"__exitcall_netsec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author707, !4, !"__UNIQUE_ID_author707", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2208, i32 1}
!5 = !{ptr @__UNIQUE_ID_author708, !6, !"__UNIQUE_ID_author708", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2209, i32 1}
!7 = !{ptr @__UNIQUE_ID_description709, !8, !"__UNIQUE_ID_description709", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2210, i32 1}
!9 = !{ptr @__UNIQUE_ID_file710, !10, !"__UNIQUE_ID_file710", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2211, i32 1}
!11 = !{ptr @__UNIQUE_ID_license711, !10, !"__UNIQUE_ID_license711", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2200, i32 11}
!14 = !{ptr @netsec_driver, !15, !"netsec_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2196, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1989, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @netsec_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @netsec_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1995, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @netsec_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @netsec_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @netsec_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2009, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2022, i32 3}
!34 = !{ptr @netsec_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @netsec_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2030, i32 3}
!38 = !{ptr @netsec_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @netsec_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2051, i32 3}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @netsec_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @netsec_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2065, i32 3}
!47 = !{ptr @netsec_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @netsec_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2076, i32 45}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2093, i32 2}
!53 = !{ptr @netsec_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @netsec_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2112, i32 3}
!57 = !{ptr @netsec_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @netsec_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2116, i32 3}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2132, i32 2}
!63 = !{ptr @netsec_probe._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @netsec_probe._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1850, i32 3}
!67 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @netsec_of_probe._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @netsec_of_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1854, i32 53}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1856, i32 3}
!74 = !{ptr @netsec_of_probe._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @netsec_of_probe._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1865, i32 10}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../include/linux/of_mdio.h", i32 43, i32 33}
!80 = !{ptr @.str.43, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../include/linux/of_mdio.h", i32 45, i32 3}
!82 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @of_mdio_parse_addr._entry, !81, !"_entry", i1 false, i1 false}
!85 = !{ptr @of_mdio_parse_addr._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../include/linux/of_mdio.h", i32 51, i32 3}
!88 = !{ptr @of_mdio_parse_addr._entry.46, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @of_mdio_parse_addr._entry_ptr.48, !87, !"_entry_ptr", i1 false, i1 false}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!92 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!96 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 997, i32 4}
!99 = !{ptr @__func__.netsec_process_rx, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1043, i32 4}
!102 = !{ptr @.str.54, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../include/linux/filter.h", i32 613, i32 2}
!104 = distinct !{null, !105, !"__already_done", i1 false, i1 false}
!105 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!106 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/net/xdp.h", i32 200, i32 3}
!109 = !{ptr @__func__.xdp_update_frame_from_buff, !108, !"<string literal>", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !115, !"__already_done", i1 false, i1 false}
!115 = !{!"../include/trace/events/xdp.h", i32 28, i32 1}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = distinct !{null, !115, !"__warned", i1 false, i1 false}
!118 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__already_done", i1 false, i1 false}
!120 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!121 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @netsec_netdev_ops, !123, !"netsec_netdev_ops", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1829, i32 36}
!124 = !{ptr @netsec_netdev_init.__key, !125, !"__key", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1730, i32 2}
!126 = !{ptr @.str.62, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @netsec_netdev_init.__key.63, !128, !"__key", i1 false, i1 false}
!128 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1731, i32 2}
!129 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 378, i32 2}
!132 = !{ptr @__func__.netsec_wait_while_busy, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../include/linux/netdevice.h", i32 4975, i32 36}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../include/linux/netdevice.h", i32 4976, i32 33}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../include/linux/netdevice.h", i32 4977, i32 36}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../include/linux/netdevice.h", i32 4978, i32 35}
!143 = !{ptr @.str.71, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../include/linux/netdevice.h", i32 4979, i32 31}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/netdevice.h", i32 4980, i32 28}
!147 = distinct !{null, !148, !"__already_done", i1 false, i1 false}
!148 = !{!"../include/linux/netdevice.h", i32 4983, i32 2}
!149 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.75, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../include/linux/netdevice.h", i32 4984, i32 9}
!153 = !{ptr @__func__.netsec_mac_wait_while_busy, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 435, i32 2}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1449, i32 4}
!157 = !{ptr @__func__.netsec_reset_hardware, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1464, i32 3}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1624, i32 3}
!162 = !{ptr @__func__.netsec_netdev_open, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.79, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1632, i32 3}
!165 = !{ptr @.str.80, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1640, i32 4}
!167 = !{ptr @.str.81, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1649, i32 4}
!169 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1150, i32 3}
!171 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @netsec_netdev_start_xmit._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @netsec_netdev_start_xmit._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1179, i32 3}
!176 = !{ptr @netsec_xdp_setup.__msg, !177, !"__msg", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1799, i32 3}
!178 = !{ptr @netsec_ethtool_ops, !179, !"netsec_ethtool_ops", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 596, i32 33}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1922, i32 37}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1924, i32 14}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1933, i32 44}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1940, i32 4}
!188 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @netsec_register_mdio._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @netsec_register_mdio._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1947, i32 4}
!193 = !{ptr @netsec_register_mdio._entry.90, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @netsec_register_mdio._entry_ptr.92, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @netsec_register_mdio._entry.93, !196, !"_entry", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1955, i32 4}
!197 = !{ptr @netsec_register_mdio._entry_ptr.94, !196, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1962, i32 4}
!200 = !{ptr @netsec_register_mdio._entry.95, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @netsec_register_mdio._entry_ptr.97, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 1970, i32 4}
!204 = !{ptr @netsec_register_mdio._entry.98, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @netsec_register_mdio._entry_ptr.100, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @netsec_dt_ids, !207, !"netsec_dt_ids", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2182, i32 34}
!208 = !{ptr @netsec_pm_ops, !209, !"netsec_pm_ops", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/socionext/netsec.c", i32 2178, i32 32}
!210 = !{!"sp"}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i64 7430152}
!221 = !{i64 2160337047}
!222 = !{i64 2160337261}
!223 = !{i64 2160337475}
!224 = !{i64 2160337689}
!225 = !{i64 2160337903}
!226 = !{i64 2160338117}
!227 = !{i64 7430372}
!228 = !{i64 2160207738}
!229 = !{!"auto-init"}
!230 = !{i64 2149345076}
!231 = !{i64 2160212814}
!232 = !{i64 2149345342}
!233 = !{!"branch_weights", i32 1, i32 2000}
!234 = !{i64 2156967853}
!235 = !{i64 2160213120}
!236 = !{i64 2160248663}
!237 = !{i64 2160212686}
!238 = !{i64 793225}
!239 = !{i8 0, i8 2}
!240 = !{!"branch_weights", i32 2002, i32 2000}
!241 = !{i64 2160207047}
!242 = !{i64 7429954}
!243 = !{i64 2148777549, i64 2148777554, i64 2148777567, i64 2148777611, i64 2148777645, i64 2148777666}
!244 = !{i64 688215, i64 688276}
!245 = !{i64 2150273070}
!246 = !{i64 2150278004}
!247 = !{i64 2150299722}
!248 = !{i64 2150304616}
!249 = !{!"branch_weights", i32 2000, i32 1}
!250 = !{i64 2150381143}
!251 = !{i64 2150381468}
!252 = !{i64 690947}
!253 = !{i64 691232}
!254 = !{i64 2158236507}
!255 = !{i64 2158236722}
!256 = !{i64 2149353635}
!257 = !{i64 2149354671}
!258 = !{i64 2156170521}
!259 = !{i64 2156966782}
!260 = !{i64 2160312854}
!261 = !{i64 2160271099}
!262 = !{i64 7680056, i64 7680097, i64 7680142}
!263 = !{i64 7678954}
!264 = !{i64 2156169177, i64 2156169677, i64 2156169214, i64 2156169270, i64 2156169304, i64 2156169328, i64 2156169369, i64 2156169390, i64 2156169418, i64 2156169452}
!265 = !{i64 2160316426}
!266 = !{i64 802502, i64 802519, i64 802543, i64 802569, i64 802587}
!267 = !{i64 2160316772}
!268 = !{i64 2160302372}
!269 = !{i64 2160302214}
!270 = !{i64 2160302655}
!271 = !{i64 2160302497}
!272 = !{i64 2160303264}
!273 = !{i64 2160303106}
!274 = !{i64 2160298417}
!275 = !{i64 2160298936}
!276 = !{i64 2160299455}
!277 = !{i64 2160297890}
!278 = !{i64 2160299980}
!279 = !{i64 2160300499}
!280 = !{i64 2160301018}
!281 = !{i64 2160301543}
!282 = !{i64 2160302062}
!283 = !{i64 2160305346}
!284 = !{i64 2160305188}
!285 = !{i64 2160209569}
!286 = !{i64 2160209411}
!287 = !{i64 2160209848}
!288 = !{i64 2160209690}
!289 = !{i64 2160208148}
!290 = !{i64 2160207990}
