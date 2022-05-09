; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/calxeda/xgmac.c_pt.bc'
source_filename = "../drivers/net/ethernet/calxeda/xgmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.xgmac_stats = type { [32 x i8], i32, i8 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.xgmac_dma_desc = type { i32, i32, i32, i32, i32, [3 x i32] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgmac_priv = type { ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, %struct.napi_struct, i32, %struct.xgmac_extra_stats, %struct.spinlock, i32, i8, i8, i32, %struct.work_struct }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.xgmac_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.119, i32 }
%struct.anon.119 = type { [3 x i32], [3 x i32], [3 x i32] }

@__initcall__kmod_xgmac__351_1927_xgmac_driver_init6 = internal global ptr @xgmac_driver_init, section ".initcall6.init", align 4
@xgmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgmac_probe, ptr @xgmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgmac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgmac_driver_exit = internal global ptr @xgmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author352 = internal constant [27 x i8] c"xgmac.author=Calxeda, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [43 x i8] c"xgmac.description=Calxeda 10G XGMAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file354 = internal constant [46 x i8] c"xgmac.file=drivers/net/ethernet/calxeda/xgmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license355 = internal constant [21 x i8] c"xgmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"calxedaxgmac\00", [19 x i8] zeroinitializer }, align 32
@xgmac_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-xgmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xgmac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xgmac_suspend, ptr @xgmac_resume, ptr @xgmac_suspend, ptr @xgmac_resume, ptr @xgmac_suspend, ptr @xgmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@xgmac_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xgmac_open, ptr @xgmac_stop, ptr @xgmac_xmit, ptr null, ptr null, ptr null, ptr @xgmac_set_rx_mode, ptr @xgmac_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_change_mtu, ptr null, ptr @xgmac_tx_timeout, ptr @xgmac_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@xgmac_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @xgmac_get_wol, ptr @xgmac_set_wol, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_get_pauseparam, ptr @xgmac_set_pauseparam, ptr null, ptr @xgmac_get_strings, ptr null, ptr @xgmac_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgmac_ethtool_get_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@xgmac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->stats_lock\00", [46 x i8] zeroinitializer }, align 32
@xgmac_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&priv->tx_timeout_work)\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"h/w version is 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No irq resource\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Could not request irq %d - ret %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No pmt irq resource\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MAC address %pM not valid\00", [38 x i8] zeroinitializer }, align 32
@xgmac_open.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"xgmac\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgmac_open\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/calxeda/xgmac.c\00", [59 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"generated random MAC address %pM\0A\00", [62 x i8] zeroinitializer }, align 32
@xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.14, ptr @.str.12, ptr @.str.15, i8 0, i8 -74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgmac_dma_desc_rings_init\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mtu [%d] bfsize [%d]\0A\00", [42 x i8] zeroinitializer }, align 32
@xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.14, ptr @.str.12, ptr @.str.16, i8 0, i8 -66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"DMA desc rings: virt addr (Rx %p, Tx %p)\0A\09DMA phy addr (Rx 0x%08x, Tx 0x%08x)\0A\00", [49 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xgmac_rx_refill.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.17, ptr @.str.12, ptr @.str.18, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgmac_rx_refill\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx ring: head %d, tail %d\0A\00", [37 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@xgmac_set_rx_mode.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.21, ptr @.str.12, ptr @.str.22, i8 1, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgmac_set_rx_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"# mcasts %d, # unicast %d\0A\00", [37 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xgmac_gstrings_stats = internal constant { [19 x %struct.xgmac_stats], [168 x i8] } { [19 x %struct.xgmac_stats] [%struct.xgmac_stats { [32 x i8] c"tx_frame_flushed\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 296, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_payload_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 300, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_ip_header_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 304, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_local_fault\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 308, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_remote_fault\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 312, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_early\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 344, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_process_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 332, i8 0 }, %struct.xgmac_stats { [32 x i8] c"tx_jabber\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 292, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_buf_unav\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 336, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_process_stopped\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 340, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_payload_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 324, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_ip_header_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 328, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_da_filter_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 320, i8 0 }, %struct.xgmac_stats { [32 x i8] c"fatal_bus_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 348, i8 0 }, %struct.xgmac_stats { [32 x i8] c"rx_watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2464, i8 1 }, %struct.xgmac_stats { [32 x i8] c"tx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2204, i8 1 }, %struct.xgmac_stats { [32 x i8] c"rx_vlan\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2456, i8 1 }, %struct.xgmac_stats { [32 x i8] c"tx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2196, i8 1 }, %struct.xgmac_stats { [32 x i8] c"rx_pause\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2440, i8 1 }], [168 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"transmit jabber\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"receive process stopped\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"transmit early interrupt\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"transmit process stopped\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fatal bus error\0A\00", [47 x i8] zeroinitializer }, align 32
@xgmac_pmt_interrupt.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.28, ptr @.str.12, ptr @.str.29, i8 1, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgmac_pmt_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"received Magic frame\0A\00", [42 x i8] zeroinitializer }, align 32
@xgmac_tx_complete.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.30, ptr @.str.12, ptr @.str.31, i8 0, i8 -37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgmac_tx_complete\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tx ring: curr %d, dirty %d\0A\00", [36 x i8] zeroinitializer }, align 32
@desc_get_tx_status.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.32, ptr @.str.12, ptr @.str.33, i8 0, i8 -126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"desc_get_tx_status\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx desc error = 0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Inconsistent Rx descriptor chain\0A\00", [62 x i8] zeroinitializer }, align 32
@xgmac_rx.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.35, ptr @.str.12, ptr @.str.36, i8 1, i8 44, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xgmac_rx\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RX frame size %d, COE status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@desc_get_rx_status.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.37, ptr @.str.12, ptr @.str.38, i8 0, i8 -119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"desc_get_rx_status\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"XGMAC RX : Dest Address filter fail\0A\00", [59 x i8] zeroinitializer }, align 32
@desc_get_rx_status.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.37, ptr @.str.12, ptr @.str.39, i8 0, i8 -115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"rx status - frame type=%d, csum = %d, ext stat %08x\0A\00", [43 x i8] zeroinitializer }, align 32
@desc_get_rx_status.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.37, ptr @.str.12, ptr @.str.40, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IP checksum error - stat %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6291456]
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"xgmac_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1917, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1919, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"xgmac_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1911, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"xgmac_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1909, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"xgmac_netdev_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1509, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"xgmac_ethtool_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1673, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1717, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1718, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1727, i32 20 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1733, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1745, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1753, i32 20 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1760, i32 20 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1792, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1014, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 730, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 758, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 705, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 326, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1282, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"xgmac_gstrings_stats\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1566, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1397, i32 26 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1403, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1407, i32 26 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1411, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1416, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1374, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 877, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 523, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1195, i32 26 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 1201, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 550, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 564, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private constant [40 x i8] c"../drivers/net/ethernet/calxeda/xgmac.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 580, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file354, ptr @__UNIQUE_ID_license355, ptr @__exitcall_xgmac_driver_exit, ptr @__initcall__kmod_xgmac__351_1927_xgmac_driver_init6, ptr @xgmac_driver_exit, ptr @xgmac_driver, ptr @.str, ptr @xgmac_of_match, ptr @xgmac_pm_ops, ptr @xgmac_netdev_ops, ptr @xgmac_ethtool_ops, ptr @xgmac_probe.__key, ptr @.str.1, ptr @xgmac_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @xgmac_gstrings_stats, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgmac_gstrings_stats to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgmac_driver, ptr noundef null) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgmac_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #13
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %call2 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %7, i32 noundef %add.i, ptr noundef %11, i32 noundef 0) #13
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @alloc_etherdev_mqs(i32 noundef 456, i32 noundef 1, i32 noundef 1) #13
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.err_alloc_crit_edge, label %if.end9

if.end5.err_alloc_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_alloc

if.end9:                                          ; preds = %if.end5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %driver_data.i.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 16
  %14 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xgmac_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 44
  %15 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xgmac_ethtool_ops, ptr %ethtool_ops, align 16
  %stats_lock = getelementptr i8, ptr %call6, i32 2656
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @xgmac_probe.__key, i16 noundef signext 3) #13
  %tx_timeout_work = getelementptr i8, ptr %call6, i32 2712
  tail call void @__init_work(ptr noundef %tx_timeout_work, i32 noundef 0) #13
  %16 = ptrtoint ptr %tx_timeout_work to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -64, ptr %tx_timeout_work, align 8
  %lockdep_map = getelementptr i8, ptr %call6, i32 2728
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @xgmac_probe.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry17 = getelementptr i8, ptr %call6, i32 2716
  %17 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr i8, ptr %call6, i32 2720
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %call6, i32 2724
  %19 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xgmac_tx_timeout_work, ptr %func, align 4
  %device = getelementptr i8, ptr %call6, i32 2360
  %20 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %device, align 8
  %dev22 = getelementptr i8, ptr %call6, i32 2356
  %21 = ptrtoint ptr %dev22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call6, ptr %dev22, align 4
  %rx_pause = getelementptr i8, ptr %call6, i32 2704
  %22 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %rx_pause, align 8
  %tx_pause = getelementptr i8, ptr %call6, i32 2705
  %23 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %tx_pause, align 1
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call, align 4
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i, align 4
  %sub.i210 = sub i32 1, %25
  %add.i211 = add i32 %sub.i210, %27
  %call25 = tail call ptr @ioremap(i32 noundef %25, i32 noundef %add.i211) #13
  %base = getelementptr i8, ptr %call6, i32 2340
  %28 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call25, ptr %base, align 4
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call6, ptr noundef nonnull @.str.4) #16
  br label %err_io

if.end29:                                         ; preds = %if.end9
  %add.ptr = getelementptr i8, ptr %call25, i32 32
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !115
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !116
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call6, ptr noundef nonnull @.str.5, i32 noundef %30) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !117
  tail call void @arm_heavy_mb() #13
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %32, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 16777216) #13, !srcloc !118
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %34, i32 312
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %35)
  %cmp = icmp eq i32 %35, 16777216
  %spec.select = select i1 %cmp, i32 31, i32 7
  %36 = getelementptr i8, ptr %call6, i32 2592
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select, ptr %36, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !120
  tail call void @arm_heavy_mb() #13
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %39, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 0) #13, !srcloc !118
  %call53 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 64
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call53, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call53)
  %cmp55 = icmp eq i32 %call53, -6
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call6, ptr noundef nonnull @.str.6) #16
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq, align 4
  br label %err_irq

if.end58:                                         ; preds = %if.end29
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end58.dev_name.exit_crit_edge

if.end58.dev_name.exit_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end58.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %46, %if.end.i ], [ %44, %if.end58.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call53, ptr noundef nonnull @xgmac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp63 = icmp slt i32 %call.i, 0
  br i1 %cmp63, label %if.then64, label %if.end66

if.then64:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %47 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call6, ptr noundef nonnull @.str.7, i32 noundef %48, i32 noundef %call.i) #16
  br label %err_irq

if.end66:                                         ; preds = %dev_name.exit
  %call67 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #13
  %pmt_irq = getelementptr i8, ptr %call6, i32 2700
  %49 = ptrtoint ptr %pmt_irq to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call67, ptr %pmt_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call67)
  %cmp69 = icmp eq i32 %call67, -6
  br i1 %cmp69, label %if.then70, label %if.end72

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call6, ptr noundef nonnull @.str.8) #16
  %50 = ptrtoint ptr %pmt_irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pmt_irq, align 4
  br label %err_pmt_irq

if.end72:                                         ; preds = %if.end66
  %52 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i213 = icmp eq ptr %53, null
  br i1 %tobool.not.i213, label %if.end.i214, label %if.end72.dev_name.exit216_crit_edge

if.end72.dev_name.exit216_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit216

if.end.i214:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  %54 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev, align 4
  br label %dev_name.exit216

dev_name.exit216:                                 ; preds = %if.end.i214, %if.end72.dev_name.exit216_crit_edge
  %retval.0.i215 = phi ptr [ %55, %if.end.i214 ], [ %53, %if.end72.dev_name.exit216_crit_edge ]
  %call.i217 = tail call i32 @request_threaded_irq(i32 noundef %call67, ptr noundef nonnull @xgmac_pmt_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i215, ptr noundef nonnull %call6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp77 = icmp slt i32 %call.i217, 0
  br i1 %cmp77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %dev_name.exit216
  call void @__sanitizer_cov_trace_pc() #15
  %56 = ptrtoint ptr %pmt_irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pmt_irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call6, ptr noundef nonnull @.str.7, i32 noundef %57, i32 noundef %call.i217) #16
  br label %err_pmt_irq

if.end80:                                         ; preds = %dev_name.exit216
  tail call void @device_set_wakeup_capable(ptr noundef %dev, i1 noundef zeroext true) #13
  %58 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 12, i32 1
  %60 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then84, label %if.end80.if.end85_crit_edge

if.end80.if.end85_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #15
  %wolopts = getelementptr i8, ptr %call6, i32 2708
  %61 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 32, ptr %wolopts, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.end80.if.end85_crit_edge
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 24
  %62 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 33, ptr %hw_features, align 8
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base, align 4
  %add.ptr89 = getelementptr i8, ptr %64, i32 3928
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !121
  %66 = and i32 %65, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool93.not = icmp eq i32 %66, 0
  br i1 %tobool93.not, label %if.end85.if.end96_crit_edge, label %if.then94

if.end85.if.end96_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end96

if.then94:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %hw_features, align 8
  %or = or i64 %68, 1099511627794
  store i64 %or, ptr %hw_features, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end85.if.end96_crit_edge
  %69 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 23
  %71 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %features, align 16
  %or98 = or i64 %72, %70
  store i64 %or98, ptr %features, align 16
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 15
  %73 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %priv_flags, align 16
  %or99 = or i64 %74, 4096
  store i64 %or99, ptr %priv_flags, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 30
  %75 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 46, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 31
  %76 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 9000, ptr %max_mtu, align 4
  %77 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base, align 4
  %add.ptr.i218 = getelementptr i8, ptr %78, i32 64
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i218) #13, !srcloc !115
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !122
  %add.ptr6.i = getelementptr i8, ptr %78, i32 68
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #13, !srcloc !115
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !123
  %conv.i = trunc i32 %82 to i8
  %83 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv.i, ptr %addr, align 1
  %shr.i = lshr i32 %82, 8
  %conv11.i = trunc i32 %shr.i to i8
  %84 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv11.i, ptr %0, align 1
  %shr13.i = lshr i32 %82, 16
  %conv15.i = trunc i32 %shr13.i to i8
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv15.i, ptr %1, align 1
  %shr17.i = lshr i32 %82, 24
  %conv19.i = trunc i32 %shr17.i to i8
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv19.i, ptr %2, align 1
  %conv22.i = trunc i32 %80 to i8
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv22.i, ptr %3, align 1
  %shr24.i = lshr i32 %80, 8
  %conv26.i = trunc i32 %shr24.i to i8
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv26.i, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call6, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %call6, i32 0, i32 86
  %89 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev_addr, align 64
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %93 = and i32 %92, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.i.not.i = icmp eq i32 %93, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end96.if.then103_crit_edge

if.end96.if.then103_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then103

is_valid_ether_addr.exit:                         ; preds = %if.end96
  %add.ptr.i.i = getelementptr i8, ptr %90, i32 4
  %94 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %95 to i32
  %or.i.i = or i32 %92, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then103_crit_edge, label %is_valid_ether_addr.exit.if.end105_crit_edge

is_valid_ether_addr.exit.if.end105_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end105

is_valid_ether_addr.exit.if.then103_crit_edge:    ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then103

if.then103:                                       ; preds = %is_valid_ether_addr.exit.if.then103_crit_edge, %if.end96.if.then103_crit_edge
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call6, ptr noundef nonnull @.str.9, ptr noundef %90) #16
  br label %if.end105

if.end105:                                        ; preds = %if.then103, %is_valid_ether_addr.exit.if.end105_crit_edge
  %napi = getelementptr i8, ptr %call6, i32 2368
  call void @netif_napi_add(ptr noundef nonnull %call6, ptr noundef %napi, ptr noundef nonnull @xgmac_poll, i32 noundef 64) #13
  %call106 = call i32 @register_netdev(ptr noundef nonnull %call6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end105.cleanup_crit_edge, label %err_reg

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err_reg:                                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #15
  call void @__netif_napi_del(ptr noundef %napi) #13
  call void @synchronize_net() #13
  %96 = ptrtoint ptr %pmt_irq to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %pmt_irq, align 4
  %call112 = call ptr @free_irq(i32 noundef %97, ptr noundef nonnull %call6) #13
  br label %err_pmt_irq

err_pmt_irq:                                      ; preds = %err_reg, %if.then78, %if.then70
  %ret.0 = phi i32 [ %51, %if.then70 ], [ %call.i217, %if.then78 ], [ %call106, %err_reg ]
  %98 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq, align 4
  %call114 = call ptr @free_irq(i32 noundef %99, ptr noundef nonnull %call6) #13
  br label %err_irq

err_irq:                                          ; preds = %err_pmt_irq, %if.then64, %if.then56
  %ret.1 = phi i32 [ %42, %if.then56 ], [ %call.i, %if.then64 ], [ %ret.0, %err_pmt_irq ]
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %101) #13
  br label %err_io

err_io:                                           ; preds = %err_irq, %if.then28
  %ret.2 = phi i32 [ %ret.1, %err_irq ], [ -12, %if.then28 ]
  call void @free_netdev(ptr noundef nonnull %call6) #13
  br label %err_alloc

err_alloc:                                        ; preds = %err_io, %if.end5.err_alloc_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_io ], [ -12, %if.end5.err_alloc_crit_edge ]
  %102 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call, align 4
  %104 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %end.i, align 4
  %sub.i220 = sub i32 1, %103
  %add.i221 = add i32 %sub.i220, %105
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %103, i32 noundef %add.i221) #13
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end105.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_alloc ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %if.end105.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr i8, ptr %1, i32 2340
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr.i17 = getelementptr i8, ptr %3, i32 3864
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !124
  %5 = and i32 %4, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %5) #13, !srcloc !118
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  %7 = and i32 %6, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #13, !srcloc !118
  %irq = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %1) #13
  %pmt_irq = getelementptr i8, ptr %1, i32 2700
  %10 = ptrtoint ptr %pmt_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pmt_irq, align 4
  %call3 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #13
  tail call void @unregister_netdev(ptr noundef %1) #13
  %napi = getelementptr i8, ptr %1, i32 2368
  tail call void @__netif_napi_del(ptr noundef %napi) #13
  tail call void @synchronize_net() #13
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %13) #13
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #13
  %14 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %16 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %15
  %add.i = add i32 %sub.i, %17
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %15, i32 noundef %add.i) #13
  tail call void @free_netdev(ptr noundef %1) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_tx_timeout_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %work, i32 -344
  tail call void @napi_disable(ptr noundef %napi) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !128
  tail call void @arm_heavy_mb() #13
  %base = getelementptr i8, ptr %work, i32 -372
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #13, !srcloc !118
  %dev = getelementptr i8, ptr %work, i32 -356
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @netif_tx_lock(ptr noundef %3) #13
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 3864
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #13, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !130
  tail call void @arm_heavy_mb() #13
  %and = and i32 %7, -8193
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %10, i32 3864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %8) #13, !srcloc !118
  br label %do.body11

do.body11:                                        ; preds = %do.body11.do.body11_crit_edge, %entry
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 3860
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #13, !srcloc !115
  %14 = shl i32 %13, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !131
  %and19 = and i32 %14, 7340032
  %15 = zext i32 %and19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and19, label %do.body11.do.body11_crit_edge [
    i32 0, label %do.body11.do.end21_crit_edge
    i32 6291456, label %do.body11.do.end21_crit_edge71
  ]

do.body11.do.end21_crit_edge71:                   ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

do.body11.do.end21_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end21

do.body11.do.body11_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body11

do.end21:                                         ; preds = %do.body11.do.end21_crit_edge, %do.body11.do.end21_crit_edge71
  %tx_skbuff.i = getelementptr i8, ptr %work, i32 -388
  %16 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_skbuff.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end21.xgmac_free_tx_skbufs.exit_crit_edge, label %for.cond.preheader.i

do.end21.xgmac_free_tx_skbufs.exit_crit_edge:     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_free_tx_skbufs.exit

for.cond.preheader.i:                             ; preds = %do.end21
  %dma_tx.i = getelementptr i8, ptr %work, i32 -392
  %device.i = getelementptr i8, ptr %work, i32 -352
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i
  %i.046.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skbuff.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %i.046.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %21, null
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %if.end4.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end4.i:                                        ; preds = %for.body.i
  %22 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_tx.i, align 8
  %add.ptr.i = getelementptr %struct.xgmac_dma_desc, ptr %23, i32 %i.046.i
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device.i, align 8
  %buf1_addr.i39.i = getelementptr %struct.xgmac_dma_desc, ptr %23, i32 %i.046.i, i32 2
  %26 = ptrtoint ptr %buf1_addr.i39.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf1_addr.i39.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #13
  %buf_size.i40.i = getelementptr %struct.xgmac_dma_desc, ptr %23, i32 %i.046.i, i32 1
  %29 = ptrtoint ptr %buf_size.i40.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_size.i40.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #13
  %and.i41.i = and i32 %31, 8191
  %and1.i42.i = lshr i32 %31, 16
  %shr.i43.i = and i32 %and1.i42.i, 8191
  %add.i44.i = add nuw nsw i32 %shr.i43.i, %and.i41.i
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %28, i32 noundef %add.i44.i, i32 noundef 1, i32 noundef 0) #13
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  %34 = and i32 %33, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool14.not.i = icmp eq i32 %34, 0
  br i1 %tobool14.not.i, label %if.end4.i.if.end18.i_crit_edge, label %if.then15.i

if.end4.i.if.end18.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  %35 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_skbuff.i, align 4
  %arrayidx17.i = getelementptr ptr, ptr %36, i32 %i.046.i
  %37 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx17.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %38, i32 noundef 1) #13
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end4.i.if.end18.i_crit_edge
  %39 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_skbuff.i, align 4
  %arrayidx20.i = getelementptr ptr, ptr %40, i32 %i.046.i
  %41 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx20.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end18.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.046.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.inc.i.xgmac_free_tx_skbufs.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.xgmac_free_tx_skbufs.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_free_tx_skbufs.exit

xgmac_free_tx_skbufs.exit:                        ; preds = %for.inc.i.xgmac_free_tx_skbufs.exit_crit_edge, %do.end21.xgmac_free_tx_skbufs.exit_crit_edge
  %dma_tx = getelementptr i8, ptr %work, i32 -392
  %42 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_tx, align 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 4096)
  %arrayidx.i70 = getelementptr %struct.xgmac_dma_desc, ptr %43, i32 127
  %45 = ptrtoint ptr %arrayidx.i70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8192, ptr %arrayidx.i70, align 4
  %tx_tail = getelementptr i8, ptr %work, i32 -380
  %46 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %tx_tail, align 4
  %tx_head = getelementptr i8, ptr %work, i32 -384
  %47 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_head, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !132
  tail call void @arm_heavy_mb() #13
  %dma_tx_phy = getelementptr i8, ptr %work, i32 -360
  %48 = ptrtoint ptr %dma_tx_phy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_tx_phy, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %52, i32 3856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %50) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !133
  tail call void @arm_heavy_mb() #13
  %or = or i32 %7, 8192
  %53 = tail call i32 @llvm.bswap.i32(i32 %or)
  %54 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %55, i32 3864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %53) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !134
  tail call void @arm_heavy_mb() #13
  %56 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %57, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 109052160) #13, !srcloc !118
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 4
  tail call void @netif_tx_unlock(ptr noundef %59) #13
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 103
  %62 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %63) #13
  tail call void @napi_enable(ptr noundef %napi) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @arm_heavy_mb() #13
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %65, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 -6094592) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !136
  tail call void @arm_heavy_mb() #13
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %67, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -6094592) #13, !srcloc !118
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %xstats = getelementptr i8, ptr %dev_id, i32 2596
  %base = getelementptr i8, ptr %dev_id, i32 2340
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3860
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !115
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 3868
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #13, !srcloc !115
  %and = and i32 %5, %2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %7, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %and) #13, !srcloc !118
  %and7 = and i32 %and, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %entry.if.end44_crit_edge, label %if.then, !prof !137

entry.if.end44_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then:                                          ; preds = %entry
  %and10 = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then.if.end_crit_edge, label %if.then12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev13 = getelementptr i8, ptr %dev_id, i32 2356
  %8 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.23) #16
  %10 = ptrtoint ptr %xstats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xstats, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %xstats, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %and14 = and i32 %and, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %rx_buf_unav = getelementptr i8, ptr %dev_id, i32 2640
  %12 = ptrtoint ptr %rx_buf_unav to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_buf_unav, align 4
  %inc17 = add i32 %13, 1
  store i32 %inc17, ptr %rx_buf_unav, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %and19 = and i32 %and, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end24_crit_edge, label %if.then21

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %dev22 = getelementptr i8, ptr %dev_id, i32 2356
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.24) #16
  %rx_process_stopped = getelementptr i8, ptr %dev_id, i32 2644
  %16 = ptrtoint ptr %rx_process_stopped to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_process_stopped, align 4
  %inc23 = add i32 %17, 1
  store i32 %inc23, ptr %rx_process_stopped, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end18.if.end24_crit_edge
  %and25 = and i32 %and, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %dev28 = getelementptr i8, ptr %dev_id, i32 2356
  %18 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.25) #16
  %tx_early = getelementptr i8, ptr %dev_id, i32 2648
  %20 = ptrtoint ptr %tx_early to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_early, align 4
  %inc29 = add i32 %21, 1
  store i32 %inc29, ptr %tx_early, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %and31 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end37_crit_edge, label %if.then33

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  %dev34 = getelementptr i8, ptr %dev_id, i32 2356
  %22 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %23, ptr noundef nonnull @.str.26) #16
  %tx_process_stopped = getelementptr i8, ptr %dev_id, i32 2636
  %24 = ptrtoint ptr %tx_process_stopped to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_process_stopped, align 4
  %inc35 = add i32 %25, 1
  store i32 %inc35, ptr %tx_process_stopped, align 4
  %tx_timeout_work = getelementptr i8, ptr %dev_id, i32 2712
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %tx_timeout_work) #13
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %if.end30.if.end37_crit_edge
  %and38 = and i32 %and, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end37.if.end44_crit_edge, label %if.then40

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %dev41 = getelementptr i8, ptr %dev_id, i32 2356
  %27 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.27) #16
  %fatal_bus_error = getelementptr i8, ptr %dev_id, i32 2652
  %29 = ptrtoint ptr %fatal_bus_error to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fatal_bus_error, align 4
  %inc42 = add i32 %30, 1
  store i32 %inc42, ptr %fatal_bus_error, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge, %entry.if.end44_crit_edge
  %and45 = and i32 %and, 69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.if.end50_crit_edge, label %if.then47

if.end44.if.end50_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then47:                                        ; preds = %if.end44
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %32, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 41914) #13, !srcloc !118
  %napi = getelementptr i8, ptr %dev_id, i32 2368
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #13
  br i1 %call.i, label %if.then.i, label %if.then47.if.end50_crit_edge

if.then47.if.end50_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end50

if.then.i:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__napi_schedule(ptr noundef %napi) #13
  br label %if.end50

if.end50:                                         ; preds = %if.then.i, %if.then47.if.end50_crit_edge, %if.end44.if.end50_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_pmt_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev_id, i32 2340
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 60
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !115
  %and = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %do.body2

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_pmt_interrupt.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_pmt_interrupt, %if.then7)) #13
          to label %do.end10 [label %if.then7], !srcloc !138

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %dev8 = getelementptr i8, ptr %dev_id, i32 2356
  %3 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_pmt_interrupt.__UNIQUE_ID_ddebug350, ptr noundef %4, ptr noundef nonnull @.str.29) #13
  br label %do.end10

do.end10:                                         ; preds = %if.then7, %do.body2
  %add.ptr11 = getelementptr i8, ptr %1, i32 1796
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !139
  br label %if.end15

if.end15:                                         ; preds = %do.end10, %entry.if.end15_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -64
  tail call fastcc void @xgmac_tx_complete(ptr noundef %add.ptr)
  %call = tail call fastcc i32 @xgmac_rx(ptr noundef %add.ptr, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %budget)
  %cmp = icmp slt i32 %call, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call) #13
  %base = getelementptr i8, ptr %napi, i32 -28
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 107519) #13, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_open(ptr noundef %dev) #2 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.i.not.i = icmp eq i32 %6, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %or.i.i = or i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %is_valid_ether_addr.exit.if.end11_crit_edge

is_valid_ether_addr.exit.if.end11_crit_edge:      ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #13
  %9 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #13
  %10 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr.i, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #13
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %14 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_open.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_open, %if.then6)) #13
          to label %if.end11 [label %if.then6], !srcloc !138

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dev7 = getelementptr i8, ptr %dev, i32 2356
  %15 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev7, align 4
  %17 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_open.__UNIQUE_ID_ddebug347, ptr noundef %16, ptr noundef nonnull @.str.13, ptr noundef %18) #13
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.then, %is_valid_ether_addr.exit.if.end11_crit_edge
  %xstats = getelementptr i8, ptr %dev, i32 2596
  %19 = call ptr @memset(ptr %xstats, i32 0, i32 60)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #13, !srcloc !115
  %23 = shl i32 %22, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !140
  %and.i = and i32 %23, 1610612736
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !141
  call void @arm_heavy_mb() #13
  %add.ptr3.i = getelementptr i8, ptr %21, i32 3840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 16777216) #13, !srcloc !118
  br label %land.rhs.i46

land.rhs.i46:                                     ; preds = %do.end16.i.land.rhs.i46_crit_edge, %if.end11
  %dec3.i = phi i32 [ 14999, %if.end11 ], [ %dec.i, %do.end16.i.land.rhs.i46_crit_edge ]
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #13, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !142
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool11.not.i = icmp eq i32 %25, 0
  br i1 %tobool11.not.i, label %while.end.i, label %do.end16.i

do.end16.i:                                       ; preds = %land.rhs.i46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !143
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #13, !srcloc !144
  %dec.i = add nsw i32 %dec3.i, -1
  %tobool.not.i = icmp eq i32 %dec3.i, 0
  br i1 %tobool.not.i, label %do.end16.i.xgmac_hw_init.exit_crit_edge, label %do.end16.i.land.rhs.i46_crit_edge

do.end16.i.land.rhs.i46_crit_edge:                ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i46

do.end16.i.xgmac_hw_init.exit_crit_edge:          ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_hw_init.exit

while.end.i:                                      ; preds = %land.rhs.i46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec3.i)
  %cmp.i = icmp slt i32 %dec3.i, 0
  br i1 %cmp.i, label %while.end.i.xgmac_hw_init.exit_crit_edge, label %if.end.i

while.end.i.xgmac_hw_init.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_hw_init.exit

if.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !145
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 -2146426622) #13, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !146
  call void @arm_heavy_mb() #13
  %add.ptr28.i = getelementptr i8, ptr %21, i32 3868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 0) #13, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !147
  call void @arm_heavy_mb() #13
  %add.ptr32.i = getelementptr i8, ptr %21, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 32768) #13, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !148
  call void @arm_heavy_mb() #13
  %add.ptr36.i = getelementptr i8, ptr %21, i32 3880
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 234911488) #13, !srcloc !118
  %features.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %26 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features.i, align 16
  %and37.i = and i64 %27, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37.i)
  %tobool38.not.i = icmp eq i64 %and37.i, 0
  %spec.select.v.i = select i1 %tobool38.not.i, i32 68157584, i32 68158608
  %spec.select.i = or i32 %spec.select.v.i, %and.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !149
  call void @arm_heavy_mb() #13
  %28 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %28) #13, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !150
  call void @arm_heavy_mb() #13
  %add.ptr49.i = getelementptr i8, ptr %21, i32 3864
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 67108864) #13, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !151
  call void @arm_heavy_mb() #13
  %add.ptr53.i = getelementptr i8, ptr %21, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 409346048) #13, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !152
  call void @arm_heavy_mb() #13
  %add.ptr57.i = getelementptr i8, ptr %21, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 16777216) #13, !srcloc !118
  br label %xgmac_hw_init.exit

xgmac_hw_init.exit:                               ; preds = %if.end.i, %while.end.i.xgmac_hw_init.exit_crit_edge, %do.end16.i.xgmac_hw_init.exit_crit_edge
  %29 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr, align 64
  call fastcc void @xgmac_set_mac_addr(ptr noundef %1, ptr noundef %30, i32 noundef 0)
  %rx_pause = getelementptr i8, ptr %dev, i32 2704
  %31 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_pause, align 8
  %conv = zext i8 %32 to i32
  %tx_pause = getelementptr i8, ptr %dev, i32 2705
  %33 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tx_pause, align 1
  %conv14 = zext i8 %34 to i32
  call fastcc void @xgmac_set_flow_ctrl(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef %conv14)
  %call16 = call fastcc i32 @xgmac_dma_desc_rings_init(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %xgmac_hw_init.exit.cleanup_crit_edge, label %if.end19

xgmac_hw_init.exit.cleanup_crit_edge:             ; preds = %xgmac_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %xgmac_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #13, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  %36 = or i32 %35, 201326592
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %36) #13, !srcloc !118
  %add.ptr5.i = getelementptr i8, ptr %1, i32 3864
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !115
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  %38 = or i32 %37, 35651584
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !156
  call void @arm_heavy_mb() #13
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %38) #13, !srcloc !118
  %napi = getelementptr i8, ptr %dev, i32 2368
  call void @napi_enable(ptr noundef %napi) #13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %39 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %40, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !157
  call void @arm_heavy_mb() #13
  %add.ptr = getelementptr i8, ptr %1, i32 3860
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -6094592) #13, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !158
  call void @arm_heavy_mb() #13
  %add.ptr26 = getelementptr i8, ptr %1, i32 3868
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 -6094592) #13, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %xgmac_hw_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end19 ], [ %call16, %xgmac_hw_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_stop(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3868
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %napi = getelementptr i8, ptr %dev, i32 2368
  tail call void @napi_disable(ptr noundef %napi) #13
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !160
  tail call void @arm_heavy_mb() #13
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %4, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #13, !srcloc !118
  tail call fastcc void @local_bh_disable() #13
  %5 = tail call i32 @llvm.read_register.i32(metadata !105) #13
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #13
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 104
  %9 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp13.not.i = icmp eq i32 %10, 0
  br i1 %cmp13.not.i, label %do.body.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

do.body.netif_tx_disable.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %do.body
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %12, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #13
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %12, i32 %i.014.i, i32 11
  %13 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 %8, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %12, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %14 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #13
  %inc.i = add nuw i32 %i.014.i, 1
  %15 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %do.body.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #13
  tail call fastcc void @local_bh_enable() #13
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr.i11 = getelementptr i8, ptr %18, i32 3864
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !124
  %20 = and i32 %19, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %20) #13, !srcloc !118
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  %22 = and i32 %21, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %22) #13, !srcloc !118
  %rx_skbuff.i.i = getelementptr i8, ptr %dev, i32 2308
  %23 = ptrtoint ptr %rx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_skbuff.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i, label %netif_tx_disable.exit.xgmac_free_rx_skbufs.exit.i_crit_edge, label %for.cond.preheader.i.i

netif_tx_disable.exit.xgmac_free_rx_skbufs.exit.i_crit_edge: ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_free_rx_skbufs.exit.i

for.cond.preheader.i.i:                           ; preds = %netif_tx_disable.exit
  %device.i.i = getelementptr i8, ptr %dev, i32 2360
  %dma_buf_sz.i.i = getelementptr i8, ptr %dev, i32 2344
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cleanup.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.021.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %inc.i.i, %cleanup.i.i.for.body.i.i_crit_edge ]
  %25 = ptrtoint ptr %rx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_skbuff.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %26, i32 %i.021.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp2.i.i = icmp eq ptr %28, null
  br i1 %cmp2.i.i, label %for.body.i.i.cleanup.i.i_crit_edge, label %if.end4.i.i

for.body.i.i.cleanup.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i.i

if.end4.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %31 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %device.i.i, align 8
  %buf1_addr.i.i.i = getelementptr %struct.xgmac_dma_desc, ptr %30, i32 %i.021.i.i, i32 2
  %33 = ptrtoint ptr %buf1_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf1_addr.i.i.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #13
  %36 = ptrtoint ptr %dma_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_buf_sz.i.i, align 8
  %sub.i.i = add i32 %37, -2
  tail call void @dma_unmap_page_attrs(ptr noundef %32, i32 noundef %35, i32 noundef %sub.i.i, i32 noundef 2, i32 noundef 0) #13
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %28, i32 noundef 1) #13
  %38 = ptrtoint ptr %rx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_skbuff.i.i, align 4
  %arrayidx6.i.i = getelementptr ptr, ptr %39, i32 %i.021.i.i
  %40 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %arrayidx6.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end4.i.i, %for.body.i.i.cleanup.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 256
  br i1 %exitcond.not.i.i, label %cleanup.i.i.xgmac_free_rx_skbufs.exit.i_crit_edge, label %cleanup.i.i.for.body.i.i_crit_edge

cleanup.i.i.for.body.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

cleanup.i.i.xgmac_free_rx_skbufs.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_free_rx_skbufs.exit.i

xgmac_free_rx_skbufs.exit.i:                      ; preds = %cleanup.i.i.xgmac_free_rx_skbufs.exit.i_crit_edge, %netif_tx_disable.exit.xgmac_free_rx_skbufs.exit.i_crit_edge
  %tx_skbuff.i.i = getelementptr i8, ptr %dev, i32 2324
  %41 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_skbuff.i.i, align 4
  %tobool.not.i27.i = icmp eq ptr %42, null
  br i1 %tobool.not.i27.i, label %xgmac_free_rx_skbufs.exit.i.xgmac_free_tx_skbufs.exit.i_crit_edge, label %for.cond.preheader.i29.i

xgmac_free_rx_skbufs.exit.i.xgmac_free_tx_skbufs.exit.i_crit_edge: ; preds = %xgmac_free_rx_skbufs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_free_tx_skbufs.exit.i

for.cond.preheader.i29.i:                         ; preds = %xgmac_free_rx_skbufs.exit.i
  %dma_tx.i.i = getelementptr i8, ptr %dev, i32 2320
  %device.i28.i = getelementptr i8, ptr %dev, i32 2360
  br label %for.body.i32.i

for.body.i32.i:                                   ; preds = %for.inc.i.i.for.body.i32.i_crit_edge, %for.cond.preheader.i29.i
  %i.046.i.i = phi i32 [ 0, %for.cond.preheader.i29.i ], [ %inc.i34.i, %for.inc.i.i.for.body.i32.i_crit_edge ]
  %43 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_skbuff.i.i, align 4
  %arrayidx.i30.i = getelementptr ptr, ptr %44, i32 %i.046.i.i
  %45 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i30.i, align 4
  %cmp2.i31.i = icmp eq ptr %46, null
  br i1 %cmp2.i31.i, label %for.body.i32.i.for.inc.i.i_crit_edge, label %if.end4.i33.i

for.body.i32.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.end4.i33.i:                                    ; preds = %for.body.i32.i
  %47 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_tx.i.i, align 8
  %add.ptr.i.i = getelementptr %struct.xgmac_dma_desc, ptr %48, i32 %i.046.i.i
  %49 = ptrtoint ptr %device.i28.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device.i28.i, align 8
  %buf1_addr.i39.i.i = getelementptr %struct.xgmac_dma_desc, ptr %48, i32 %i.046.i.i, i32 2
  %51 = ptrtoint ptr %buf1_addr.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %buf1_addr.i39.i.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #13
  %buf_size.i40.i.i = getelementptr %struct.xgmac_dma_desc, ptr %48, i32 %i.046.i.i, i32 1
  %54 = ptrtoint ptr %buf_size.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %buf_size.i40.i.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #13
  %and.i41.i.i = and i32 %56, 8191
  %and1.i42.i.i = lshr i32 %56, 16
  %shr.i43.i.i = and i32 %and1.i42.i.i, 8191
  %add.i44.i.i = add nuw nsw i32 %shr.i43.i.i, %and.i41.i.i
  tail call void @dma_unmap_page_attrs(ptr noundef %50, i32 noundef %53, i32 noundef %add.i44.i.i, i32 noundef 1, i32 noundef 0) #13
  %57 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i, align 4
  %59 = and i32 %58, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool14.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool14.not.i.i, label %if.end4.i33.i.if.end18.i.i_crit_edge, label %if.then15.i.i

if.end4.i33.i.if.end18.i.i_crit_edge:             ; preds = %if.end4.i33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18.i.i

if.then15.i.i:                                    ; preds = %if.end4.i33.i
  call void @__sanitizer_cov_trace_pc() #15
  %60 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_skbuff.i.i, align 4
  %arrayidx17.i.i = getelementptr ptr, ptr %61, i32 %i.046.i.i
  %62 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx17.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %63, i32 noundef 1) #13
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then15.i.i, %if.end4.i33.i.if.end18.i.i_crit_edge
  %64 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_skbuff.i.i, align 4
  %arrayidx20.i.i = getelementptr ptr, ptr %65, i32 %i.046.i.i
  %66 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx20.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end18.i.i, %for.body.i32.i.for.inc.i.i_crit_edge
  %inc.i34.i = add nuw nsw i32 %i.046.i.i, 1
  %exitcond.not.i35.i = icmp eq i32 %inc.i34.i, 128
  br i1 %exitcond.not.i35.i, label %for.inc.i.i.xgmac_free_tx_skbufs.exit.i_crit_edge, label %for.inc.i.i.for.body.i32.i_crit_edge

for.inc.i.i.for.body.i32.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i32.i

for.inc.i.i.xgmac_free_tx_skbufs.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_free_tx_skbufs.exit.i

xgmac_free_tx_skbufs.exit.i:                      ; preds = %for.inc.i.i.xgmac_free_tx_skbufs.exit.i_crit_edge, %xgmac_free_rx_skbufs.exit.i.xgmac_free_tx_skbufs.exit.i_crit_edge
  %dma_tx.i = getelementptr i8, ptr %dev, i32 2320
  %67 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dma_tx.i, align 8
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %xgmac_free_tx_skbufs.exit.i.if.end.i_crit_edge, label %if.then.i

xgmac_free_tx_skbufs.exit.i.if.end.i_crit_edge:   ; preds = %xgmac_free_tx_skbufs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %xgmac_free_tx_skbufs.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %device.i = getelementptr i8, ptr %dev, i32 2360
  %69 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device.i, align 8
  %dma_tx_phy.i = getelementptr i8, ptr %dev, i32 2352
  %71 = ptrtoint ptr %dma_tx_phy.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_tx_phy.i, align 8
  tail call void @dma_free_attrs(ptr noundef %70, i32 noundef 4096, ptr noundef nonnull %68, i32 noundef %72, i32 noundef 0) #13
  %73 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %dma_tx.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %xgmac_free_tx_skbufs.exit.i.if.end.i_crit_edge
  %74 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr.i, align 8
  %tobool3.not.i = icmp eq ptr %75, null
  br i1 %tobool3.not.i, label %if.end.i.xgmac_free_dma_desc_rings.exit_crit_edge, label %if.then4.i

if.end.i.xgmac_free_dma_desc_rings.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %xgmac_free_dma_desc_rings.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %device5.i = getelementptr i8, ptr %dev, i32 2360
  %76 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device5.i, align 8
  %dma_rx_phy.i = getelementptr i8, ptr %dev, i32 2348
  %78 = ptrtoint ptr %dma_rx_phy.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_rx_phy.i, align 4
  tail call void @dma_free_attrs(ptr noundef %77, i32 noundef 8192, ptr noundef nonnull %75, i32 noundef %79, i32 noundef 0) #13
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %add.ptr.i, align 8
  br label %xgmac_free_dma_desc_rings.exit

xgmac_free_dma_desc_rings.exit:                   ; preds = %if.then4.i, %if.end.i.xgmac_free_dma_desc_rings.exit_crit_edge
  %81 = ptrtoint ptr %rx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_skbuff.i.i, align 4
  tail call void @kfree(ptr noundef %82) #13
  %83 = ptrtoint ptr %rx_skbuff.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %rx_skbuff.i.i, align 4
  %84 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_skbuff.i.i, align 4
  tail call void @kfree(ptr noundef %85) #13
  %86 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %tx_skbuff.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_xmit(ptr noundef %skb, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %3 to i32
  %tx_irq_cnt = getelementptr i8, ptr %dev, i32 2336
  %4 = ptrtoint ptr %tx_irq_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_irq_cnt, align 8
  %add = add i32 %5, 1
  %and = and i32 %add, 31
  store i32 %and, ptr %tx_irq_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 1073741824, i32 0
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %6 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ip_summed, align 8
  %7 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %7)
  %cmp = icmp eq i16 %7, 1536
  %cond7 = select i1 %cmp, i32 12582912, i32 0
  %tx_head = getelementptr i8, ptr %dev, i32 2328
  %8 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_head, align 8
  %dma_tx = getelementptr i8, ptr %dev, i32 2320
  %10 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_tx, align 8
  %add.ptr = getelementptr %struct.xgmac_dma_desc, ptr %11, i32 %9
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %13, %15
  %device = getelementptr i8, ptr %dev, i32 2360
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %19) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !137

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %17) #13
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %25, i32 noundef -1) #13
  br label %if.then

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %19, i32 noundef %sub.i) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %27 = ptrtoint ptr %19 to i32
  %sub.i179 = add i32 %27, 1073741824
  %shr.i = lshr i32 %sub.i179, 12
  %add.ptr.i180 = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i = and i32 %27, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i180, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #13
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %29, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then_crit_edge, label %if.end

dma_map_single_attrs.exit.if.then_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %dma_map_single_attrs.exit.if.then_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup100

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %tx_skbuff = getelementptr i8, ptr %dev, i32 2324
  %30 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx = getelementptr ptr, ptr %31, i32 %9
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %skb, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8184, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %sub.i, 8184
  %sub.i.i = shl i32 %sub.i, 16
  %or.i.i = add i32 %sub.i.i, -536338440
  %buf_sz.sink.i.i = select i1 %cmp.i.i, i32 %or.i.i, i32 %sub.i
  %33 = tail call i32 @llvm.bswap.i32(i32 %buf_sz.sink.i.i) #13
  %34 = getelementptr %struct.xgmac_dma_desc, ptr %11, i32 %9, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #13
  %buf1_addr.i.i = getelementptr %struct.xgmac_dma_desc, ptr %11, i32 %9, i32 2
  %37 = ptrtoint ptr %buf1_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buf1_addr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8184, i32 %sub.i)
  %cmp.i3.i = icmp sgt i32 %sub.i, 8184
  br i1 %cmp.i3.i, label %if.then.i.i, label %if.end.desc_set_buf_addr_and_size.exit_crit_edge

if.end.desc_set_buf_addr_and_size.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %desc_set_buf_addr_and_size.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i = add i32 %call41.i, 8184
  %38 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #13
  %buf2_addr.i.i = getelementptr %struct.xgmac_dma_desc, ptr %11, i32 %9, i32 3
  %39 = ptrtoint ptr %buf2_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %buf2_addr.i.i, align 4
  br label %desc_set_buf_addr_and_size.exit

desc_set_buf_addr_and_size.exit:                  ; preds = %if.then.i.i, %if.end.desc_set_buf_addr_and_size.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp13227.not = icmp eq i8 %3, 0
  br i1 %cmp13227.not, label %desc_set_buf_addr_and_size.exit.if.else_crit_edge, label %for.body.lr.ph

desc_set_buf_addr_and_size.exit.if.else_crit_edge: ; preds = %desc_set_buf_addr_and_size.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

for.body.lr.ph:                                   ; preds = %desc_set_buf_addr_and_size.exit
  %sub = add nsw i32 %conv, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0229 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %entry1.0228 = phi i32 [ %9, %for.body.lr.ph ], [ %and26, %for.inc.for.body_crit_edge ]
  %40 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %end.i, align 4
  %arrayidx16 = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 %i.0229
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 %i.0229, i32 1
  %42 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_len.i, align 4
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 8
  %46 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx16, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %41, i32 0, i32 12, i32 %i.0229, i32 2
  %48 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %45, ptr noundef %47, i32 noundef %49, i32 noundef %43, i32 noundef 1, i32 noundef 0) #13
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef %call2.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i182.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i182.not, label %dma_err, label %if.end24

if.end24:                                         ; preds = %for.body
  %add25 = add i32 %entry1.0228, 1
  %and26 = and i32 %add25, 127
  %52 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_tx, align 8
  %add.ptr28 = getelementptr %struct.xgmac_dma_desc, ptr %53, i32 %and26
  %54 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx30 = getelementptr ptr, ptr %55, i32 %and26
  %56 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %skb, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8184, i32 %43)
  %cmp.i.i184 = icmp ugt i32 %43, 8184
  %sub.i.i185 = shl i32 %43, 16
  %or.i.i186 = add i32 %sub.i.i185, -536338440
  %buf_sz.sink.i.i187 = select i1 %cmp.i.i184, i32 %or.i.i186, i32 %43
  %57 = tail call i32 @llvm.bswap.i32(i32 %buf_sz.sink.i.i187) #13
  %58 = getelementptr %struct.xgmac_dma_desc, ptr %53, i32 %and26, i32 1
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %58, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %call2.i) #13
  %buf1_addr.i.i188 = getelementptr %struct.xgmac_dma_desc, ptr %53, i32 %and26, i32 2
  %61 = ptrtoint ptr %buf1_addr.i.i188 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %buf1_addr.i.i188, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8184, i32 %43)
  %cmp.i3.i189 = icmp sgt i32 %43, 8184
  br i1 %cmp.i3.i189, label %if.then.i.i192, label %if.end24.desc_set_buf_addr_and_size.exit193_crit_edge

if.end24.desc_set_buf_addr_and_size.exit193_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %desc_set_buf_addr_and_size.exit193

if.then.i.i192:                                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  %add.i.i190 = add i32 %call2.i, 8184
  %62 = tail call i32 @llvm.bswap.i32(i32 %add.i.i190) #13
  %buf2_addr.i.i191 = getelementptr %struct.xgmac_dma_desc, ptr %53, i32 %and26, i32 3
  %63 = ptrtoint ptr %buf2_addr.i.i191 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %buf2_addr.i.i191, align 4
  br label %desc_set_buf_addr_and_size.exit193

desc_set_buf_addr_and_size.exit193:               ; preds = %if.then.i.i192, %if.end24.desc_set_buf_addr_and_size.exit193_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0229, i32 %sub)
  %cmp31 = icmp slt i32 %i.0229, %sub
  br i1 %cmp31, label %if.then33, label %desc_set_buf_addr_and_size.exit193.for.inc_crit_edge

desc_set_buf_addr_and_size.exit193.for.inc_crit_edge: ; preds = %desc_set_buf_addr_and_size.exit193
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then33:                                        ; preds = %desc_set_buf_addr_and_size.exit193
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr28, align 4
  %66 = shl i32 %65, 8
  %and.i194 = and i32 %66, 2097152
  %or.i = or i32 %cond7, %and.i194
  %or2.i = or i32 %or.i, -2147483648
  %67 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #13
  %68 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %add.ptr28, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %desc_set_buf_addr_and_size.exit193.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0229, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %cmp35.not = icmp eq ptr %add.ptr28, %add.ptr
  br i1 %cmp35.not, label %for.end.if.else_crit_edge, label %if.then37

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %69 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr28, align 4
  %71 = shl i32 %70, 8
  %and.i195 = and i32 %71, 2097152
  %or38 = or i32 %cond7, %cond
  %or.i196 = or i32 %or38, %and.i195
  %or2.i197 = or i32 %or.i196, -1610612736
  %72 = tail call i32 @llvm.bswap.i32(i32 %or2.i197) #13
  %73 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %add.ptr28, align 4
  br label %do.body

if.else:                                          ; preds = %for.end.if.else_crit_edge, %desc_set_buf_addr_and_size.exit.if.else_crit_edge
  %entry1.0.lcssa239 = phi i32 [ %and26, %for.end.if.else_crit_edge ], [ %9, %desc_set_buf_addr_and_size.exit.if.else_crit_edge ]
  %or39 = or i32 %cond, %cond7
  %or40 = or i32 %or39, 536870912
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then37
  %entry1.0.lcssa238 = phi i32 [ %and26, %if.then37 ], [ %entry1.0.lcssa239, %if.else ]
  %desc_flags.0 = phi i32 [ %cond7, %if.then37 ], [ %or40, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !161
  tail call void @arm_heavy_mb() #13
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr, align 4
  %76 = shl i32 %75, 8
  %and.i198 = and i32 %76, 2097152
  %or.i199 = or i32 %desc_flags.0, %and.i198
  %or2.i200 = or i32 %or.i199, -1879048192
  %77 = tail call i32 @llvm.bswap.i32(i32 %or2.i200) #13
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %add.ptr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !162
  tail call void @arm_heavy_mb() #13
  %base = getelementptr i8, ptr %dev, i32 2340
  %79 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base, align 4
  %add.ptr46 = getelementptr i8, ptr %80, i32 3844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 16777216) #13, !srcloc !118
  %add47 = add i32 %entry1.0.lcssa238, 1
  %and48 = and i32 %add47, 127
  %81 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and48, ptr %tx_head, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !163
  %tx_tail = getelementptr i8, ptr %dev, i32 2332
  %82 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tx_tail, align 4
  %84 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_head, align 8
  %add57.neg = xor i32 %85, -1
  %sub58 = add i32 %83, %add57.neg
  %and59 = and i32 %sub58, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %and59)
  %cmp60 = icmp ult i32 %and59, 18
  br i1 %cmp60, label %if.then64, label %do.body.cleanup100_crit_edge, !prof !164

do.body.cleanup100_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

if.then64:                                        ; preds = %do.body
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %86 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %87, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !165
  %88 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_tail, align 4
  %90 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tx_head, align 8
  %add73.neg = xor i32 %91, -1
  %sub74 = add i32 %89, %add73.neg
  %and75 = and i32 %sub74, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and75)
  %cmp76 = icmp ugt i32 %and75, 17
  br i1 %cmp76, label %if.then78, label %if.then64.cleanup100_crit_edge

if.then64.cleanup100_crit_edge:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup100

if.then78:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i202 = getelementptr inbounds %struct.netdev_queue, ptr %93, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i202) #13
  br label %cleanup100

dma_err:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0229)
  %cmp83231.not = icmp eq i32 %i.0229, 0
  br i1 %cmp83231.not, label %dma_err.for.end96_crit_edge, label %for.body85.preheader

dma_err.for.end96_crit_edge:                      ; preds = %dma_err
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end96

for.body85.preheader:                             ; preds = %dma_err
  %94 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tx_head, align 8
  br label %for.body85

for.body85:                                       ; preds = %for.body85.for.body85_crit_edge, %for.body85.preheader
  %i.1233 = phi i32 [ %dec, %for.body85.for.body85_crit_edge ], [ %i.0229, %for.body85.preheader ]
  %entry1.2232 = phi i32 [ %and87, %for.body85.for.body85_crit_edge ], [ %95, %for.body85.preheader ]
  %add86 = add i32 %entry1.2232, 1
  %and87 = and i32 %add86, 127
  %96 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dma_tx, align 8
  %add.ptr89 = getelementptr %struct.xgmac_dma_desc, ptr %97, i32 %and87
  %98 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx91 = getelementptr ptr, ptr %99, i32 %and87
  %100 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %arrayidx91, align 4
  %101 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %device, align 8
  %buf1_addr.i = getelementptr %struct.xgmac_dma_desc, ptr %97, i32 %and87, i32 2
  %103 = ptrtoint ptr %buf1_addr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %buf1_addr.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #13
  %buf_size.i = getelementptr %struct.xgmac_dma_desc, ptr %97, i32 %and87, i32 1
  %106 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %buf_size.i, align 4
  %108 = tail call i32 @llvm.bswap.i32(i32 %107) #13
  %and.i203 = and i32 %108, 8191
  %and1.i = lshr i32 %108, 16
  %shr.i204 = and i32 %and1.i, 8191
  %add.i = add nuw nsw i32 %shr.i204, %and.i203
  tail call void @dma_unmap_page_attrs(ptr noundef %102, i32 noundef %105, i32 noundef %add.i, i32 noundef 1, i32 noundef 0) #13
  %109 = ptrtoint ptr %add.ptr89 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr89, align 4
  %and.i205 = and i32 %110, 8192
  store i32 %and.i205, ptr %add.ptr89, align 4
  %dec = add nsw i32 %i.1233, -1
  %cmp83 = icmp sgt i32 %i.1233, 1
  br i1 %cmp83, label %for.body85.for.body85_crit_edge, label %for.body85.for.end96_crit_edge

for.body85.for.end96_crit_edge:                   ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end96

for.body85.for.body85_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body85

for.end96:                                        ; preds = %for.body85.for.end96_crit_edge, %dma_err.for.end96_crit_edge
  %111 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device, align 8
  %113 = ptrtoint ptr %buf1_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %buf1_addr.i.i, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #13
  %116 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %34, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #13
  %and.i208 = and i32 %118, 8191
  %and1.i209 = lshr i32 %118, 16
  %shr.i210 = and i32 %and1.i209, 8191
  %add.i211 = add nuw nsw i32 %shr.i210, %and.i208
  tail call void @dma_unmap_page_attrs(ptr noundef %112, i32 noundef %115, i32 noundef %add.i211, i32 noundef 1, i32 noundef 0) #13
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #13
  br label %cleanup100

cleanup100:                                       ; preds = %for.end96, %if.then78, %if.then64.cleanup100_crit_edge, %do.body.cleanup100_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_set_rx_mode(ptr noundef readonly %dev) #2 align 64 {
entry:
  %hash_filter = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %hash_filter) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_set_rx_mode.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_set_rx_mode, %if.then)) #13
          to label %do.end8 [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev5 = getelementptr i8, ptr %dev, i32 2356
  %2 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev5, align 4
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  %count6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %6 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count6, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_set_rx_mode.__UNIQUE_ID_ddebug349, ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %5, i32 noundef %7) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %and = lshr i32 %9, 8
  %and.lobit = and i32 %and, 1
  %10 = call ptr @memset(ptr %hash_filter, i32 0, i32 64)
  %uc12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %count13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %11 = ptrtoint ptr %count13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count13, align 8
  %max_macs = getelementptr i8, ptr %dev, i32 2592
  %13 = ptrtoint ptr %max_macs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_macs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp sgt i32 %12, %14
  %or15 = or i32 %and.lobit, 1026
  %value.1 = select i1 %cmp, i32 %or15, i32 %and.lobit
  %15 = ptrtoint ptr %uc12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %ha.0257 = load ptr, ptr %uc12, align 4
  %cmp22.not258 = icmp eq ptr %ha.0257, %uc12
  br i1 %cmp22.not258, label %do.end8.for.end_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end8.for.body_crit_edge
  %ha.0260 = phi ptr [ %ha.0, %for.inc.for.body_crit_edge ], [ %ha.0257, %do.end8.for.body_crit_edge ]
  %reg.0259 = phi i32 [ %reg.1, %for.inc.for.body_crit_edge ], [ 1, %do.end8.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0260, i32 0, i32 2
  br i1 %cmp, label %cond.end, label %if.else

cond.end:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call28 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #17
  %16 = lshr i32 %call28, 8
  %conv4.i.i = and i32 %16, 255
  %arrayidx.i10.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i
  %17 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i10.i.i, align 1
  %conv6.i.i = zext i8 %18 to i32
  %19 = shl nuw nsw i32 %conv6.i.i, 16
  %20 = and i32 %call28, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %20
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %22 to i32
  %23 = shl nuw i32 %conv2.i.i, 24
  %or.i13.i = or i32 %19, %23
  %neg = xor i32 %or.i13.i, -1
  %shr53 = lshr i32 %neg, 23
  %and54 = and i32 %shr53, 31
  %shl55 = shl nuw i32 1, %and54
  %shr56 = lshr i32 %neg, 28
  %arrayidx = getelementptr [16 x i32], ptr %hash_filter, i32 0, i32 %shr56
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx, align 4
  %or57 = or i32 %shl55, %25
  store i32 %or57, ptr %arrayidx, align 4
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xgmac_set_mac_addr(ptr noundef %1, ptr noundef %addr, i32 noundef %reg.0259)
  %inc = add i32 %reg.0259, 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %cond.end
  %reg.1 = phi i32 [ %reg.0259, %cond.end ], [ %inc, %if.else ]
  %26 = ptrtoint ptr %ha.0260 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.0 = load ptr, ptr %ha.0260, align 4
  %cmp22.not = icmp eq ptr %ha.0, %uc12
  br i1 %cmp22.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end8.for.end_crit_edge
  %reg.0.lcssa = phi i32 [ 1, %do.end8.for.end_crit_edge ], [ %reg.1, %for.inc.for.end_crit_edge ]
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 8
  %and67 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end71, label %if.then69

if.then69:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %or70 = or i32 %value.1, 16
  br label %out

if.end71:                                         ; preds = %for.end
  %mc72 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count73 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %29 = ptrtoint ptr %count73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %count73, align 8
  %add = add i32 %reg.0.lcssa, -1
  %sub = add i32 %add, %30
  %31 = ptrtoint ptr %max_macs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_macs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %32)
  %cmp75 = icmp sgt i32 %sub, %32
  %or77 = or i32 %value.1, 1028
  %value.2 = select i1 %cmp75, i32 %or77, i32 %value.1
  %33 = ptrtoint ptr %mc72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %ha.1261 = load ptr, ptr %mc72, align 4
  %cmp90.not262 = icmp eq ptr %ha.1261, %mc72
  br i1 %cmp90.not262, label %if.end71.out_crit_edge, label %if.end71.for.body93_crit_edge

if.end71.for.body93_crit_edge:                    ; preds = %if.end71
  br label %for.body93

if.end71.out_crit_edge:                           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body93:                                       ; preds = %for.inc144.for.body93_crit_edge, %if.end71.for.body93_crit_edge
  %ha.1264 = phi ptr [ %ha.1, %for.inc144.for.body93_crit_edge ], [ %ha.1261, %if.end71.for.body93_crit_edge ]
  %reg.2263 = phi i32 [ %reg.3, %for.inc144.for.body93_crit_edge ], [ %reg.0.lcssa, %if.end71.for.body93_crit_edge ]
  %addr98 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1264, i32 0, i32 2
  br i1 %cmp75, label %cond.end130, label %if.else139

cond.end130:                                      ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #15
  %call100 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr98, i32 noundef 6) #17
  %34 = lshr i32 %call100, 8
  %conv4.i.i243 = and i32 %34, 255
  %arrayidx.i10.i.i244 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i243
  %35 = ptrtoint ptr %arrayidx.i10.i.i244 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i10.i.i244, align 1
  %conv6.i.i245 = zext i8 %36 to i32
  %37 = shl nuw nsw i32 %conv6.i.i245, 16
  %38 = and i32 %call100, 255
  %arrayidx.i.i.i241 = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.i.i241 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i241, align 1
  %conv2.i.i242 = zext i8 %40 to i32
  %41 = shl nuw i32 %conv2.i.i242, 24
  %or.i13.i253 = or i32 %37, %41
  %neg132 = xor i32 %or.i13.i253, -1
  %shr133 = lshr i32 %neg132, 23
  %and134 = and i32 %shr133, 31
  %shl135 = shl nuw i32 1, %and134
  %shr136 = lshr i32 %neg132, 28
  %arrayidx137 = getelementptr [16 x i32], ptr %hash_filter, i32 0, i32 %shr136
  %42 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx137, align 4
  %or138 = or i32 %shl135, %43
  store i32 %or138, ptr %arrayidx137, align 4
  br label %for.inc144

if.else139:                                       ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @xgmac_set_mac_addr(ptr noundef %1, ptr noundef %addr98, i32 noundef %reg.2263)
  %inc142 = add i32 %reg.2263, 1
  br label %for.inc144

for.inc144:                                       ; preds = %if.else139, %cond.end130
  %reg.3 = phi i32 [ %reg.2263, %cond.end130 ], [ %inc142, %if.else139 ]
  %44 = ptrtoint ptr %ha.1264 to i32
  call void @__asan_load4_noabort(i32 %44)
  %ha.1 = load ptr, ptr %ha.1264, align 4
  %cmp90.not = icmp eq ptr %ha.1, %mc72
  br i1 %cmp90.not, label %for.inc144.out_crit_edge, label %for.inc144.for.body93_crit_edge

for.inc144.for.body93_crit_edge:                  ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body93

for.inc144.out_crit_edge:                         ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %for.inc144.out_crit_edge, %if.end71.out_crit_edge, %if.then69
  %reg.4 = phi i32 [ %reg.0.lcssa, %if.then69 ], [ %reg.0.lcssa, %if.end71.out_crit_edge ], [ %reg.3, %for.inc144.out_crit_edge ]
  %value.3 = phi i32 [ %or70, %if.then69 ], [ %value.2, %if.end71.out_crit_edge ], [ %value.2, %for.inc144.out_crit_edge ]
  %45 = ptrtoint ptr %max_macs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_macs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %reg.4, i32 %46)
  %cmp153.not266 = icmp sgt i32 %reg.4, %46
  br i1 %cmp153.not266, label %out.do.body161.preheader_crit_edge, label %out.for.body154_crit_edge

out.for.body154_crit_edge:                        ; preds = %out
  br label %for.body154

out.do.body161.preheader_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161.preheader

for.body154:                                      ; preds = %for.body154.for.body154_crit_edge, %out.for.body154_crit_edge
  %i.0267 = phi i32 [ %inc156, %for.body154.for.body154_crit_edge ], [ %reg.4, %out.for.body154_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !166
  tail call void @arm_heavy_mb() #13
  %mul28.i = shl i32 %i.0267, 3
  %add29.i = add i32 %mul28.i, 64
  %add.ptr30.i = getelementptr i8, ptr %1, i32 %add29.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i, i32 0) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !167
  tail call void @arm_heavy_mb() #13
  %add35.i = add i32 %mul28.i, 68
  %add.ptr36.i = getelementptr i8, ptr %1, i32 %add35.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36.i, i32 0) #13, !srcloc !118
  %inc156 = add i32 %i.0267, 1
  %47 = ptrtoint ptr %max_macs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_macs, align 8
  %cmp153.not = icmp sgt i32 %inc156, %48
  br i1 %cmp153.not, label %for.body154.do.body161.preheader_crit_edge, label %for.body154.for.body154_crit_edge

for.body154.for.body154_crit_edge:                ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body154

for.body154.do.body161.preheader_crit_edge:       ; preds = %for.body154
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161.preheader

do.body161.preheader:                             ; preds = %for.body154.do.body161.preheader_crit_edge, %out.do.body161.preheader_crit_edge
  br label %do.body161

do.body161:                                       ; preds = %do.body161.do.body161_crit_edge, %do.body161.preheader
  %i.1268 = phi i32 [ %inc168, %do.body161.do.body161_crit_edge ], [ 0, %do.body161.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !168
  tail call void @arm_heavy_mb() #13
  %arrayidx164 = getelementptr [16 x i32], ptr %hash_filter, i32 0, i32 %i.1268
  %49 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx164, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %mul = shl i32 %i.1268, 2
  %add165 = add nuw nsw i32 %mul, 768
  %add.ptr166 = getelementptr i8, ptr %1, i32 %add165
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr166, i32 %51) #13, !srcloc !118
  %inc168 = add nuw nsw i32 %i.1268, 1
  %exitcond.not = icmp eq i32 %inc168, 16
  br i1 %exitcond.not, label %do.body170, label %do.body161.do.body161_crit_edge

do.body161.do.body161_crit_edge:                  ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body161

do.body170:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !169
  tail call void @arm_heavy_mb() #13
  %52 = tail call i32 @llvm.bswap.i32(i32 %value.3)
  %add.ptr173 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr173, i32 %52) #13, !srcloc !118
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %hash_filter) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_set_mac_address(ptr noundef %dev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sa_data, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.i.not.i = icmp eq i32 %4, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %6 to i32
  %or.i.i = or i32 %3, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #13
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  tail call fastcc void @xgmac_set_mac_addr(ptr noundef %1, ptr noundef %8, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @xgmac_stop(ptr noundef %dev)
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  %call2 = tail call i32 @xgmac_open(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_tx_timeout(ptr noundef %dev, i32 noundef %txqueue) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_timeout_work = getelementptr i8, ptr %dev, i32 2712
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %tx_timeout_work) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_get_stats64(ptr noundef %dev, ptr nocapture noundef %storage) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr i8, ptr %dev, i32 2340
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %stats_lock = getelementptr i8, ptr %dev, i32 2656
  tail call void @_raw_spin_lock_bh(ptr noundef %stats_lock) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !170
  tail call void @arm_heavy_mb() #13
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #13, !srcloc !118
  %add.ptr2 = getelementptr i8, ptr %1, i32 2320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #13, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !171
  %conv = zext i32 %3 to i64
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 2
  %4 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %rx_bytes, align 8
  %add.ptr7 = getelementptr i8, ptr %1, i32 2324
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #13, !srcloc !115
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !172
  %conv11 = zext i32 %6 to i64
  %shl = shl nuw i64 %conv11, 32
  %7 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %rx_bytes, align 8
  %or = or i64 %shl, %8
  store i64 %or, ptr %rx_bytes, align 8
  %add.ptr15 = getelementptr i8, ptr %1, i32 2304
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #13, !srcloc !115
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !173
  %conv19 = zext i32 %10 to i64
  %11 = ptrtoint ptr %storage to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv19, ptr %storage, align 8
  %add.ptr22 = getelementptr i8, ptr %1, i32 2336
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #13, !srcloc !115
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !174
  %conv26 = zext i32 %13 to i64
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 8
  %14 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv26, ptr %multicast, align 8
  %add.ptr29 = getelementptr i8, ptr %1, i32 2344
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #13, !srcloc !115
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !175
  %conv33 = zext i32 %16 to i64
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 12
  %17 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv33, ptr %rx_crc_errors, align 8
  %add.ptr36 = getelementptr i8, ptr %1, i32 2424
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #13, !srcloc !115
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !176
  %conv40 = zext i32 %19 to i64
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 10
  %20 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv40, ptr %rx_length_errors, align 8
  %add.ptr43 = getelementptr i8, ptr %1, i32 2448
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #13, !srcloc !115
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !177
  %conv47 = zext i32 %22 to i64
  %rx_missed_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 15
  %23 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv47, ptr %rx_missed_errors, align 8
  %add.ptr50 = getelementptr i8, ptr %1, i32 2180
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50) #13, !srcloc !115
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !178
  %conv54 = zext i32 %25 to i64
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 3
  %26 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %conv54, ptr %tx_bytes, align 8
  %add.ptr57 = getelementptr i8, ptr %1, i32 2184
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #13, !srcloc !115
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !179
  %conv61 = zext i32 %28 to i64
  %shl62 = shl nuw i64 %conv61, 32
  %29 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_bytes, align 8
  %or64 = or i64 %shl62, %30
  store i64 %or64, ptr %tx_bytes, align 8
  %add.ptr67 = getelementptr i8, ptr %1, i32 2076
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #13, !srcloc !115
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !180
  %add.ptr73 = getelementptr i8, ptr %1, i32 2188
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr73) #13, !srcloc !115
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !181
  %sub = sub i32 %32, %34
  %conv77 = zext i32 %sub to i64
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 5
  %35 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %conv77, ptr %tx_errors, align 8
  %conv78 = zext i32 %32 to i64
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 1
  %36 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv78, ptr %tx_packets, align 8
  %add.ptr81 = getelementptr i8, ptr %1, i32 2172
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #13, !srcloc !115
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !182
  %conv85 = zext i32 %38 to i64
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %storage, i32 0, i32 18
  %39 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv85, ptr %tx_fifo_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !183
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !118
  tail call void @_raw_spin_unlock_bh(ptr noundef %stats_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #13
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @xgmac_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_set_features(ptr nocapture noundef readonly %dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %base = getelementptr i8, ptr %dev, i32 2340
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !184
  %5 = and i32 %4, -262145
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and4 = lshr i64 %features, 30
  %7 = trunc i64 %and4 to i32
  %8 = and i32 %7, 1024
  %ctrl.0 = or i32 %6, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !185
  tail call void @arm_heavy_mb() #13
  %9 = tail call i32 @llvm.bswap.i32(i32 %ctrl.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %9) #13, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgmac_set_mac_addr(ptr noundef %ioaddr, ptr noundef readonly %addr, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  br i1 %tobool.not, label %do.body25, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr i8, ptr %addr, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %addr, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %tobool3.not = icmp eq i32 %num, 0
  %cond = select i1 %tobool3.not, i32 0, i32 -2147483648
  %or = or i32 %cond, %conv2
  %or4 = or i32 %or, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !186
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or4)
  %mul = shl i32 %num, 3
  %add = add i32 %mul, 64
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #13, !srcloc !118
  %arrayidx5 = getelementptr i8, ptr %addr, i32 3
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %6 to i32
  %shl7 = shl nuw i32 %conv6, 24
  %arrayidx8 = getelementptr i8, ptr %addr, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %8 to i32
  %shl10 = shl nuw nsw i32 %conv9, 16
  %or11 = or i32 %shl10, %shl7
  %arrayidx12 = getelementptr i8, ptr %addr, i32 1
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %10 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %or15 = or i32 %or11, %shl14
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr, align 1
  %conv17 = zext i8 %12 to i32
  %or18 = or i32 %or15, %conv17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !187
  tail call void @arm_heavy_mb() #13
  %13 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %add23 = add i32 %mul, 68
  %add.ptr24 = getelementptr i8, ptr %ioaddr, i32 %add23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %13) #13, !srcloc !118
  br label %if.end

do.body25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !166
  tail call void @arm_heavy_mb() #13
  %mul28 = shl i32 %num, 3
  %add29 = add i32 %mul28, 64
  %add.ptr30 = getelementptr i8, ptr %ioaddr, i32 %add29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !167
  tail call void @arm_heavy_mb() #13
  %add35 = add i32 %mul28, 68
  %add.ptr36 = getelementptr i8, ptr %ioaddr, i32 %add35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 0) #13, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %do.body25, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgmac_set_flow_ctrl(ptr nocapture noundef %priv, i32 noundef %rx, i32 noundef %tx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %rx to i8
  %rx_pause = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %rx_pause, align 8
  %conv1 = trunc i32 %tx to i8
  %tx_pause = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 21
  %1 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1, ptr %tx_pause, align 1
  %2 = or i32 %tx, %rx
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %do.body20, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx)
  %tobool2.not = icmp eq i32 %tx, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx)
  %tobool.not = icmp eq i32 %rx, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 4
  %or7 = or i32 %spec.select, 2
  %flow.1 = select i1 %tobool2.not, i32 %spec.select, i32 %or7
  %or10 = or i32 %flow.1, 67108904
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !188
  tail call void @arm_heavy_mb() #13
  %4 = tail call i32 @llvm.bswap.i32(i32 %or10)
  %base = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 9
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #13, !srcloc !118
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 1024
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !189
  %10 = or i32 %9, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !190
  tail call void @arm_heavy_mb() #13
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %12, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %10) #13, !srcloc !118
  br label %if.end37

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !191
  tail call void @arm_heavy_mb() #13
  %base23 = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 9
  %13 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base23, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #13, !srcloc !118
  %15 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base23, align 4
  %add.ptr28 = getelementptr i8, ptr %16, i32 1024
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !192
  %18 = and i32 %17, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !193
  tail call void @arm_heavy_mb() #13
  %19 = ptrtoint ptr %base23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base23, align 4
  %add.ptr36 = getelementptr i8, ptr %20, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %18) #13, !srcloc !118
  br label %if.end37

if.end37:                                         ; preds = %do.body20, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgmac_dma_desc_rings_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %add3 = add i32 %1, 27
  %and = and i32 %add3, -8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_dma_desc_rings_init, %if.then)) #13
          to label %do.end11 [label %if.then], !srcloc !138

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %dev8 = getelementptr i8, ptr %dev, i32 2356
  %2 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev8, align 4
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug344, ptr noundef %3, ptr noundef nonnull @.str.15, i32 noundef %5, i32 noundef %and) #13
  br label %do.end11

do.end11:                                         ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1024) #18
  %rx_skbuff = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %rx_skbuff, align 4
  %tobool14.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool14.not, label %do.end11.cleanup_crit_edge, label %if.end16

do.end11.cleanup_crit_edge:                       ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end16:                                         ; preds = %do.end11
  %device = getelementptr i8, ptr %dev, i32 2360
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 8
  %dma_rx_phy = getelementptr i8, ptr %dev, i32 2348
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 8192, ptr noundef %dma_rx_phy, i32 noundef 3264, i32 noundef 0) #13
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %add.ptr.i, align 8
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.end16.err_dma_rx_crit_edge, label %if.end21

if.end16.err_dma_rx_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_dma_rx

if.end21:                                         ; preds = %if.end16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i117 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 512) #18
  %tx_skbuff = getelementptr i8, ptr %dev, i32 2324
  %12 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i117, ptr %tx_skbuff, align 4
  %tobool24.not = icmp eq ptr %call7.i.i.i117, null
  br i1 %tobool24.not, label %if.end21.err_tx_skb_crit_edge, label %if.end26

if.end21.err_tx_skb_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_tx_skb

if.end26:                                         ; preds = %if.end21
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 8
  %dma_tx_phy = getelementptr i8, ptr %dev, i32 2352
  %call.i118 = tail call ptr @dma_alloc_attrs(ptr noundef %14, i32 noundef 4096, ptr noundef %dma_tx_phy, i32 noundef 3264, i32 noundef 0) #13
  %dma_tx = getelementptr i8, ptr %dev, i32 2320
  %15 = ptrtoint ptr %dma_tx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i118, ptr %dma_tx, align 8
  %tobool30.not = icmp eq ptr %call.i118, null
  br i1 %tobool30.not, label %err_dma_tx, label %do.body34

do.body34:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_dma_desc_rings_init, %if.then46)) #13
          to label %do.end56 [label %if.then46], !srcloc !138

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #15
  %dev47 = getelementptr i8, ptr %dev, i32 2356
  %16 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev47, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i, align 8
  %20 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_tx, align 8
  %22 = ptrtoint ptr %dma_rx_phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_rx_phy, align 4
  %24 = ptrtoint ptr %dma_tx_phy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_tx_phy, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug345, ptr noundef %17, ptr noundef nonnull @.str.16, ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %25) #13
  br label %do.end56

do.end56:                                         ; preds = %if.then46, %do.body34
  %rx_tail = getelementptr i8, ptr %dev, i32 2312
  %26 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rx_tail, align 8
  %rx_head = getelementptr i8, ptr %dev, i32 2316
  %27 = ptrtoint ptr %rx_head to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %rx_head, align 4
  %dma_buf_sz = getelementptr i8, ptr %dev, i32 2344
  %28 = ptrtoint ptr %dma_buf_sz to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %dma_buf_sz, align 8
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr1.i = getelementptr %struct.xgmac_dma_desc, ptr %30, i32 255
  %31 = call ptr @memset(ptr %30, i32 0, i32 8192)
  %cmp.not1.i = icmp ult ptr %add.ptr1.i, %30
  br i1 %cmp.not1.i, label %do.end56.desc_init_rx_desc.exit_crit_edge, label %for.body.lr.ph.i

do.end56.desc_init_rx_desc.exit_crit_edge:        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %desc_init_rx_desc.exit

for.body.lr.ph.i:                                 ; preds = %do.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 8184, i32 %and)
  %cmp.i.i = icmp ugt i32 %and, 8184
  %sub.i.i = shl i32 %and, 16
  %or.i.i = add i32 %sub.i.i, -536338440
  %buf_sz.sink.i.i = select i1 %cmp.i.i, i32 %or.i.i, i32 %and
  %32 = tail call i32 @llvm.bswap.i32(i32 %buf_sz.sink.i.i) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %p.addr.02.i = phi ptr [ %30, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %33 = getelementptr inbounds %struct.xgmac_dma_desc, ptr %p.addr.02.i, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %33, align 4
  %incdec.ptr.i = getelementptr %struct.xgmac_dma_desc, ptr %p.addr.02.i, i32 1
  %cmp.not.i = icmp ugt ptr %incdec.ptr.i, %add.ptr1.i
  br i1 %cmp.not.i, label %for.body.i.desc_init_rx_desc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.desc_init_rx_desc.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %desc_init_rx_desc.exit

desc_init_rx_desc.exit:                           ; preds = %for.body.i.desc_init_rx_desc.exit_crit_edge, %do.end56.desc_init_rx_desc.exit_crit_edge
  %buf_size.i = getelementptr %struct.xgmac_dma_desc, ptr %30, i32 255, i32 1
  %35 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_size.i, align 4
  %or.i = or i32 %36, 8388608
  store i32 %or.i, ptr %buf_size.i, align 4
  tail call fastcc void @xgmac_rx_refill(ptr noundef %add.ptr.i)
  %tx_tail = getelementptr i8, ptr %dev, i32 2332
  %37 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tx_tail, align 4
  %tx_head = getelementptr i8, ptr %dev, i32 2328
  %38 = ptrtoint ptr %tx_head to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %tx_head, align 8
  %39 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dma_tx, align 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 4096)
  %arrayidx.i = getelementptr %struct.xgmac_dma_desc, ptr %40, i32 127
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 8192, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !194
  tail call void @arm_heavy_mb() #13
  %43 = ptrtoint ptr %dma_tx_phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_tx_phy, align 8
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %base = getelementptr i8, ptr %dev, i32 2340
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %47, i32 3856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %45) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !195
  tail call void @arm_heavy_mb() #13
  %48 = ptrtoint ptr %dma_rx_phy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_rx_phy, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr69 = getelementptr i8, ptr %52, i32 3852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 %50) #13, !srcloc !118
  br label %cleanup

err_dma_tx:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %53 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_skbuff, align 4
  tail call void @kfree(ptr noundef %54) #13
  br label %err_tx_skb

err_tx_skb:                                       ; preds = %err_dma_tx, %if.end21.err_tx_skb_crit_edge
  %55 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %device, align 8
  %57 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr.i, align 8
  %59 = ptrtoint ptr %dma_rx_phy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_rx_phy, align 4
  tail call void @dma_free_attrs(ptr noundef %56, i32 noundef 8192, ptr noundef %58, i32 noundef %60, i32 noundef 0) #13
  br label %err_dma_rx

err_dma_rx:                                       ; preds = %err_tx_skb, %if.end16.err_dma_rx_crit_edge
  %61 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rx_skbuff, align 4
  tail call void @kfree(ptr noundef %62) #13
  br label %cleanup

cleanup:                                          ; preds = %err_dma_rx, %desc_init_rx_desc.exit, %do.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %desc_init_rx_desc.exit ], [ -12, %err_dma_rx ], [ -12, %do.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgmac_rx_refill(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %rx_tail = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 2
  %rx_head = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_tail, align 8
  %2 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_head, align 4
  %add2.neg83 = xor i32 %3, -1
  %sub84 = add i32 %1, %add2.neg83
  %and85 = and i32 %sub84, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %cmp.not86 = icmp eq i32 %and85, 0
  br i1 %cmp.not86, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mtu, align 4
  %rx_skbuff = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 1
  %add.i.i = add i32 %7, 20
  %device = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 14
  %dma_buf_sz = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i32 [ %3, %while.body.lr.ph ], [ %55, %cleanup.while.body_crit_edge ]
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr %struct.xgmac_dma_desc, ptr %10, i32 %8
  %11 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx = getelementptr ptr, ptr %12, i32 %8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %14, null
  br i1 %cmp5, label %if.then, label %while.body.do.body21_crit_edge

while.body.do.body21_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

if.then:                                          ; preds = %while.body
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %16, i32 noundef %add.i.i, i32 noundef 2592) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.while.end_crit_edge, label %if.end

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %if.then
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %20, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %23 = ptrtoint ptr %dma_buf_sz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_buf_sz, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #13
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !137

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %22) #13
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i65 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i65, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %28, %if.end.i.i ], [ %26, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.19, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.20, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #13
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %30, i32 noundef -1) #13
  br label %if.then15

dma_map_single_attrs.exit:                        ; preds = %if.end
  %sub10 = add i32 %24, -2
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %add.ptr.i.i.i, i32 noundef %sub10) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %31 = load ptr, ptr @mem_map, align 4
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i = add i32 %32, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %31, i32 %shr.i
  %and.i = and i32 %32, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub10, i32 noundef 2, i32 noundef 0) #13
  %33 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %34, i32 noundef %call41.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then15_crit_edge, label %if.end16

dma_map_single_attrs.exit.if.then15_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then15

if.then15:                                        ; preds = %dma_map_single_attrs.exit.if.then15_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #13
  br label %while.end

if.end16:                                         ; preds = %dma_map_single_attrs.exit
  %35 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx18 = getelementptr ptr, ptr %36, i32 %8
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %arrayidx18, align 4
  %38 = ptrtoint ptr %dma_buf_sz to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_buf_sz, align 8
  %40 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #13
  %buf1_addr.i = getelementptr %struct.xgmac_dma_desc, ptr %10, i32 %8, i32 2
  %41 = ptrtoint ptr %buf1_addr.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %buf1_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8184, i32 %39)
  %cmp.i67 = icmp sgt i32 %39, 8184
  br i1 %cmp.i67, label %if.then.i68, label %if.end16.do.body21_crit_edge

if.end16.do.body21_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

if.then.i68:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %add.i = add i32 %call41.i, 8184
  %42 = tail call i32 @llvm.bswap.i32(i32 %add.i) #13
  %buf2_addr.i = getelementptr %struct.xgmac_dma_desc, ptr %10, i32 %8, i32 3
  %43 = ptrtoint ptr %buf2_addr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %buf2_addr.i, align 4
  br label %do.body21

do.body21:                                        ; preds = %if.then.i68, %if.end16.do.body21_crit_edge, %while.body.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_rx_refill.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_rx_refill, %if.then30)) #13
          to label %cleanup [label %if.then30], !srcloc !138

if.then30:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  %46 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %rx_head, align 4
  %48 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_tail, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_rx_refill.__UNIQUE_ID_ddebug343, ptr noundef %45, ptr noundef nonnull @.str.18, i32 noundef %47, i32 noundef %49) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %do.body21
  %50 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rx_head, align 4
  %add38 = add i32 %51, 1
  %and39 = and i32 %add38, 255
  store i32 %and39, ptr %rx_head, align 4
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 128, ptr %add.ptr, align 4
  %53 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx_tail, align 8
  %55 = load i32, ptr %rx_head, align 4
  %add2.neg = xor i32 %55, -1
  %sub = add i32 %54, %add2.neg
  %and = and i32 %sub, 254
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then15, %if.then.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgmac_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %wol) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 2360
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 34, ptr %supported, align 4
  %wolopts = getelementptr i8, ptr %dev, i32 2708
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wolopts, align 4
  %wolopts2 = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %6 = ptrtoint ptr %wolopts2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %wolopts2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr i8, ptr %dev, i32 2360
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and = and i32 %4, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %wolopts5 = getelementptr i8, ptr %dev, i32 2708
  %5 = ptrtoint ptr %wolopts5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %wolopts5, align 4
  %6 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wolopts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7.not = icmp eq i32 %7, 0
  %not.tobool7.not = xor i1 %tobool7.not, true
  %not.tobool7.not28 = xor i1 %tobool7.not, true
  %.27 = zext i1 %not.tobool7.not28 to i32
  %call10 = tail call i32 @device_set_wakeup_enable(ptr noundef %1, i1 noundef zeroext %not.tobool7.not) #13
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef %.27) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgmac_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pause) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pause = getelementptr i8, ptr %netdev, i32 2704
  %0 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_pause, align 8
  %conv = zext i8 %1 to i32
  %rx_pause1 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %rx_pause1, align 4
  %tx_pause = getelementptr i8, ptr %netdev, i32 2705
  %3 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tx_pause, align 1
  %conv2 = zext i8 %4 to i32
  %tx_pause3 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %tx_pause3, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_set_pauseparam(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %pause) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autoneg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %4 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_pause, align 4
  tail call fastcc void @xgmac_set_flow_ctrl(ptr noundef %add.ptr.i, i32 noundef %3, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %do.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %0 = call ptr @memcpy(ptr %data, ptr @xgmac_gstrings_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 7), i32 32)
  %add.ptr.7 = getelementptr i8, ptr %data, i32 256
  %8 = call ptr @memcpy(ptr %add.ptr.7, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 8), i32 32)
  %add.ptr.8 = getelementptr i8, ptr %data, i32 288
  %9 = call ptr @memcpy(ptr %add.ptr.8, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 9), i32 32)
  %add.ptr.9 = getelementptr i8, ptr %data, i32 320
  %10 = call ptr @memcpy(ptr %add.ptr.9, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 10), i32 32)
  %add.ptr.10 = getelementptr i8, ptr %data, i32 352
  %11 = call ptr @memcpy(ptr %add.ptr.10, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 11), i32 32)
  %add.ptr.11 = getelementptr i8, ptr %data, i32 384
  %12 = call ptr @memcpy(ptr %add.ptr.11, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 12), i32 32)
  %add.ptr.12 = getelementptr i8, ptr %data, i32 416
  %13 = call ptr @memcpy(ptr %add.ptr.12, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 13), i32 32)
  %add.ptr.13 = getelementptr i8, ptr %data, i32 448
  %14 = call ptr @memcpy(ptr %add.ptr.13, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 14), i32 32)
  %add.ptr.14 = getelementptr i8, ptr %data, i32 480
  %15 = call ptr @memcpy(ptr %add.ptr.14, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 15), i32 32)
  %add.ptr.15 = getelementptr i8, ptr %data, i32 512
  %16 = call ptr @memcpy(ptr %add.ptr.15, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 16), i32 32)
  %add.ptr.16 = getelementptr i8, ptr %data, i32 544
  %17 = call ptr @memcpy(ptr %add.ptr.16, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 17), i32 32)
  %add.ptr.17 = getelementptr i8, ptr %data, i32 576
  %18 = call ptr @memcpy(ptr %add.ptr.17, ptr getelementptr inbounds ([19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 18), i32 32)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1632, i32 noundef 9, ptr noundef null) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %for.body.preheader
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgmac_get_ethtool_stats(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %base = getelementptr i8, ptr %dev, i32 2340
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %data.addr.017 = phi ptr [ %data, %entry ], [ %data.addr.1, %for.inc.for.body_crit_edge ]
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %0 = and i32 %i.015, 536870910
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %0)
  %tobool.not = icmp ult i32 %0, 14
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %stat_offset = getelementptr [19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 %i.015, i32 1
  %3 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !115
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !196
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %stat_offset5 = getelementptr [19 x %struct.xgmac_stats], ptr @xgmac_gstrings_stats, i32 0, i32 %i.015, i32 1
  %7 = ptrtoint ptr %stat_offset5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_offset5, align 4
  %add.ptr6 = getelementptr i8, ptr %add.ptr.i, i32 %8
  %9 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr6, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %storemerge.in = phi i32 [ %10, %if.else ], [ %6, %if.then ]
  %data.addr.1 = getelementptr i64, ptr %data.addr.017, i32 1
  %storemerge = zext i32 %storemerge.in to i64
  %11 = ptrtoint ptr %data.addr.017 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %storemerge, ptr %data.addr.017, align 8
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 19
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgmac_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 19, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_ethtool_get_link_ksettings(ptr nocapture noundef readnone %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %autoneg, align 1
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %1 = ptrtoint ptr %duplex to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %duplex, align 4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10000, ptr %speed, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 0) #13
  %advertising = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising, i32 noundef 0) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgmac_tx_complete(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skbuff = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 5
  %tx_head = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 6
  %tx_tail = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_head, align 8
  %2 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tail, align 4
  %sub96 = sub i32 %1, %3
  %and97 = and i32 %sub96, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool.not98 = icmp eq i32 %and97, 0
  br i1 %tobool.not98, label %entry.do.end38_crit_edge, label %while.body.lr.ph

entry.do.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

while.body.lr.ph:                                 ; preds = %entry
  %dma_tx = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 4
  %dev = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %device = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 14
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %and31, %cleanup.while.body_crit_edge ]
  %5 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx = getelementptr ptr, ptr %6, i32 %4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_tx, align 8
  %add.ptr = getelementptr %struct.xgmac_dma_desc, ptr %10, i32 %4
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %.mask = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool3.not = icmp eq i32 %.mask, 0
  br i1 %tobool3.not, label %do.body4, label %while.body.do.end38_crit_edge

while.body.do.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

do.body4:                                         ; preds = %while.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_tx_complete.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_tx_complete, %if.then9)) #13
          to label %do.end14 [label %if.then9], !srcloc !138

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_head, align 8
  %17 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tx_tail, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_tx_complete.__UNIQUE_ID_ddebug346, ptr noundef %14, ptr noundef nonnull @.str.31, i32 noundef %16, i32 noundef %18) #13
  br label %do.end14

do.end14:                                         ; preds = %if.then9, %do.body4
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 8
  %buf1_addr.i85 = getelementptr %struct.xgmac_dma_desc, ptr %10, i32 %4, i32 2
  %21 = ptrtoint ptr %buf1_addr.i85 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buf1_addr.i85, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #13
  %buf_size.i86 = getelementptr %struct.xgmac_dma_desc, ptr %10, i32 %4, i32 1
  %24 = ptrtoint ptr %buf_size.i86 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %buf_size.i86, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #13
  %and.i87 = and i32 %26, 8191
  %and1.i88 = lshr i32 %26, 16
  %shr.i89 = and i32 %and1.i88, 8191
  %add.i90 = add nuw nsw i32 %shr.i89, %and.i87
  tail call void @dma_unmap_page_attrs(ptr noundef %20, i32 noundef %23, i32 noundef %add.i90, i32 noundef 1, i32 noundef 0) #13
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  %29 = and i32 %28, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool25.not = icmp eq i32 %29, 0
  br i1 %tobool25.not, label %do.end14.cleanup_crit_edge, label %if.then26

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then26:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @desc_get_tx_status(ptr noundef %priv, ptr noundef %add.ptr)
  tail call void @__dev_kfree_skb_any(ptr noundef %8, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %do.end14.cleanup_crit_edge
  %30 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx30 = getelementptr ptr, ptr %31, i32 %4
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx30, align 4
  %add = add i32 %4, 1
  %and31 = and i32 %add, 127
  %33 = ptrtoint ptr %tx_tail to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and31, ptr %tx_tail, align 4
  %34 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_head, align 8
  %sub = sub i32 %35, %add
  %and = and i32 %sub, 127
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cleanup.do.end38_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.do.end38_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end38

do.end38:                                         ; preds = %cleanup.do.end38_crit_edge, %while.body.do.end38_crit_edge, %entry.do.end38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !197
  %dev41 = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %36 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev41, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 103
  %38 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 13
  %40 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i.not, label %do.end38.if.end56_crit_edge, label %land.rhs

do.end38.if.end56_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

land.rhs:                                         ; preds = %do.end38
  %42 = ptrtoint ptr %tx_tail to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tx_tail, align 4
  %44 = ptrtoint ptr %tx_head to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tx_head, align 8
  %add45.neg = xor i32 %45, -1
  %sub46 = add i32 %43, %add45.neg
  %and47 = and i32 %sub46, 126
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and47)
  %cmp = icmp ugt i32 %and47, 17
  br i1 %cmp, label %if.then54, label %land.rhs.if.end56_crit_edge, !prof !164

land.rhs.if.end56_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.then54:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_wake_queue(ptr noundef %39) #13
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %land.rhs.if.end56_crit_edge, %do.end38.if.end56_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgmac_rx(ptr noundef %priv, i32 noundef %limit) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %limit)
  %cmp91.not = icmp eq i32 %limit, 0
  br i1 %cmp91.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rx_head = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 3
  %rx_tail = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 2
  %rx_skbuff = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 1
  %dev32 = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %device = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 14
  %dma_buf_sz = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 10
  %napi = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %count.092 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %cleanup.while.body_crit_edge ]
  %0 = ptrtoint ptr %rx_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_head, align 4
  %2 = ptrtoint ptr %rx_tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_tail, align 8
  %sub = sub i32 %1, %3
  %and = and i32 %sub, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end:                                           ; preds = %while.body
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %add.ptr = getelementptr %struct.xgmac_dma_desc, ptr %5, i32 %3
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %.mask = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.mask)
  %tobool3.not = icmp eq i32 %.mask, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end5:                                          ; preds = %if.end
  %inc = add nuw i32 %count.092, 1
  %add = add i32 %3, 1
  %and7 = and i32 %add, 255
  %8 = ptrtoint ptr %rx_tail to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and7, ptr %rx_tail, align 8
  %call9 = tail call fastcc i32 @desc_get_rx_status(ptr noundef %priv, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %9 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx = getelementptr ptr, ptr %10, i32 %3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.then17, label %if.end18, !prof !164

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %14, ptr noundef nonnull @.str.34) #16
  br label %while.end

if.end18:                                         ; preds = %if.end12
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #13
  %and.i84 = lshr i32 %18, 16
  %shr.i = and i32 %and.i84, 16383
  %and1.i = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  %sub.i = add nsw i32 %shr.i, -4
  %spec.select.i = select i1 %tobool.not.i, i32 %shr.i, i32 %sub.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgmac_rx.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgmac_rx, %if.then31)) #13
          to label %do.end35 [label %if.then31], !srcloc !138

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgmac_rx.__UNIQUE_ID_ddebug348, ptr noundef %20, ptr noundef nonnull @.str.36, i32 noundef %spec.select.i, i32 noundef %call9) #13
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %if.end18
  %call36 = tail call ptr @skb_put(ptr noundef nonnull %12, i32 noundef %spec.select.i) #13
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 8
  %buf1_addr.i = getelementptr %struct.xgmac_dma_desc, ptr %5, i32 %3, i32 2
  %23 = ptrtoint ptr %buf1_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %buf1_addr.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #13
  %26 = ptrtoint ptr %dma_buf_sz to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_buf_sz, align 8
  %sub38 = add i32 %27, -2
  tail call void @dma_unmap_page_attrs(ptr noundef %22, i32 noundef %25, i32 noundef %sub38, i32 noundef 2, i32 noundef 0) #13
  %28 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev32, align 4
  %call40 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %12, ptr noundef %29) #13
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %call40, ptr %protocol, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15
  %31 = trunc i32 %call9 to i16
  %32 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %32)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.value = shl i16 %31, 9
  %bf.shl = and i16 %bf.value, 1536
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %ip_summed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp41 = icmp eq i32 %call9, 0
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  %call44 = tail call i32 @netif_receive_skb(ptr noundef nonnull %12) #13
  br label %cleanup

if.else:                                          ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #15
  %call45 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef nonnull %12) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then43, %if.end5.cleanup_crit_edge
  %exitcond.not = icmp eq i32 %inc, %limit
  br i1 %exitcond.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.then17, %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %count.2 = phi i32 [ %inc, %if.then17 ], [ 0, %entry.while.end_crit_edge ], [ %limit, %cleanup.while.end_crit_edge ], [ %count.092, %while.body.while.end_crit_edge ], [ %count.092, %if.end.while.end_crit_edge ]
  tail call fastcc void @xgmac_rx_refill(ptr noundef %priv)
  ret i32 %count.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @desc_get_tx_status(ptr nocapture noundef %priv, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %xstats = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @desc_get_tx_status.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@desc_get_tx_status, %if.then5)) #13
          to label %do.end8 [label %if.then5], !srcloc !138

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @desc_get_tx_status.__UNIQUE_ID_ddebug339, ptr noundef %4, ptr noundef nonnull @.str.33, i32 noundef %2) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1
  %and9 = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.end8.if.end12_crit_edge, label %if.then11

do.end8.if.end12_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %xstats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xstats, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %xstats, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %do.end8.if.end12_crit_edge
  %and13 = and i32 %2, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end17_crit_edge, label %if.then15

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %tx_frame_flushed = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 1
  %7 = ptrtoint ptr %tx_frame_flushed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tx_frame_flushed, align 4
  %inc16 = add i32 %8, 1
  store i32 %inc16, ptr %tx_frame_flushed, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end12.if.end17_crit_edge
  %and18 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end21_crit_edge, label %if.then20

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.then20:                                        ; preds = %if.end17
  %base = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 9
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 1024
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !199
  tail call void @arm_heavy_mb() #13
  %12 = or i32 %11, 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #13, !srcloc !118
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then20
  %dec11.i = phi i32 [ 999, %if.then20 ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !200
  %14 = and i32 %13, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.end21_crit_edge, label %while.body.i

land.rhs.i.if.end21_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #13
  %dec.i = add nsw i32 %dec11.i, -1
  %cmp.not.i = icmp eq i32 %dec11.i, 0
  br i1 %cmp.not.i, label %while.body.i.if.end21_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.rhs.i

while.body.i.if.end21_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

if.end21:                                         ; preds = %while.body.i.if.end21_crit_edge, %land.rhs.i.if.end21_crit_edge, %if.end17.if.end21_crit_edge
  %and22 = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %tx_ip_header_error = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 3
  %16 = ptrtoint ptr %tx_ip_header_error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_ip_header_error, align 4
  %inc25 = add i32 %17, 1
  store i32 %inc25, ptr %tx_ip_header_error, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %and27 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end31_crit_edge, label %if.then29

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %tx_local_fault = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 4
  %18 = ptrtoint ptr %tx_local_fault to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_local_fault, align 4
  %inc30 = add i32 %19, 1
  store i32 %inc30, ptr %tx_local_fault, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end26.if.end31_crit_edge
  %and32 = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %tx_remote_fault = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 5
  %20 = ptrtoint ptr %tx_remote_fault to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_remote_fault, align 4
  %inc35 = add i32 %21, 1
  store i32 %inc35, ptr %tx_remote_fault, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %and37 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %tx_payload_error = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 2
  %22 = ptrtoint ptr %tx_payload_error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_payload_error, align 4
  %inc40 = add i32 %23, 1
  store i32 %inc40, ptr %tx_payload_error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end36.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @desc_get_rx_status(ptr nocapture noundef %priv, ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %ext_status1 = getelementptr inbounds %struct.xgmac_dma_desc, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %ext_status1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ext_status1, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %and = and i32 %2, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end9, label %do.body2

do.body2:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @desc_get_rx_status.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@desc_get_rx_status, %if.then6)) #13
          to label %do.end8 [label %if.then6], !srcloc !138

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @desc_get_rx_status.__UNIQUE_ID_ddebug340, ptr noundef %7, ptr noundef nonnull @.str.38) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %do.body2
  %rx_da_filter_fail = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 7
  %8 = ptrtoint ptr %rx_da_filter_fail to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_da_filter_fail, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %rx_da_filter_fail, align 4
  br label %cleanup

if.end9:                                          ; preds = %entry
  %10 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %10)
  %.not = icmp eq i32 %10, 768
  br i1 %.not, label %if.end15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %11 = and i32 %2, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %11)
  %.not123 = icmp ne i32 %11, 33
  %and21 = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp ne i32 %and21, 0
  %or.cond113 = select i1 %.not123, i1 true, i1 %tobool22.not
  %ret.0 = zext i1 %or.cond113 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @desc_get_rx_status.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@desc_get_rx_status, %if.then38)) #13
          to label %do.end46 [label %if.then38], !srcloc !138

if.then38:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %dev39 = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %12 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev39, align 4
  %and16 = lshr i32 %2, 5
  %and16.lobit = and i32 %and16, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @desc_get_rx_status.__UNIQUE_ID_ddebug341, ptr noundef %13, ptr noundef nonnull @.str.39, i32 noundef %and16.lobit, i32 noundef %ret.0, i32 noundef %5) #13
  br label %do.end46

do.end46:                                         ; preds = %if.then38, %if.end15
  %and47 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %do.end46.cleanup_crit_edge, label %if.end50

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end50:                                         ; preds = %do.end46
  %and51 = and i32 %2, 22658
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not.not = icmp eq i32 %and51, 0
  %14 = and i32 %2, 22659
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %.not124 = icmp eq i32 %14, 1
  %.mux = select i1 %tobool52.not.not, i32 %ret.0, i32 -1
  br i1 %.not124, label %if.then57, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then57:                                        ; preds = %if.end50
  %and58 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.then57.if.end62_crit_edge, label %if.then60

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

if.then60:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #15
  %rx_ip_header_error = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 9
  %15 = ptrtoint ptr %rx_ip_header_error to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_ip_header_error, align 4
  %inc61 = add i32 %16, 1
  store i32 %inc61, ptr %rx_ip_header_error, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.then57.if.end62_crit_edge
  %and63 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.do.body69_crit_edge, label %if.then65

if.end62.do.body69_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body69

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %rx_payload_error = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 17, i32 8
  %17 = ptrtoint ptr %rx_payload_error to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_payload_error, align 4
  %inc66 = add i32 %18, 1
  store i32 %inc66, ptr %rx_payload_error, align 4
  br label %do.body69

do.body69:                                        ; preds = %if.then65, %if.end62.do.body69_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @desc_get_rx_status.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@desc_get_rx_status, %if.then81)) #13
          to label %cleanup [label %if.then81], !srcloc !138

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  %dev82 = getelementptr inbounds %struct.xgmac_priv, ptr %priv, i32 0, i32 13
  %19 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev82, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @desc_get_rx_status.__UNIQUE_ID_ddebug342, ptr noundef %20, ptr noundef nonnull @.str.40, i32 noundef %5) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body69, %if.end50.cleanup_crit_edge, %do.end46.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -1, %do.end8 ], [ -1, %if.end9.cleanup_crit_edge ], [ %ret.0, %do.end46.cleanup_crit_edge ], [ %.mux, %if.end50.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %do.body69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @netif_device_detach(ptr noundef nonnull %1) #13
  %napi = getelementptr i8, ptr %1, i32 2368
  tail call void @napi_disable(ptr noundef %napi) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !201
  tail call void @arm_heavy_mb() #13
  %base = getelementptr i8, ptr %1, i32 2340
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #13, !srcloc !118
  %device = getelementptr i8, ptr %1, i32 2360
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 8
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 1
  %8 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.if.else_crit_edge, label %device_may_wakeup.exit

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

device_may_wakeup.exit:                           ; preds = %if.end
  %wakeup.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 6
  %9 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %10, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then4

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then4:                                         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %12, i32 3864
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !202
  %14 = and i32 %13, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !203
  tail call void @arm_heavy_mb() #13
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 3864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %14) #13, !srcloc !118
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %wolopts = getelementptr i8, ptr %1, i32 2708
  %19 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %wolopts, align 4
  %and.i = and i32 %20, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i30 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i30, i32 0, i32 3
  %and1.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or4.i = or i32 %spec.select.i, 513
  %pmt.1.i = select i1 %tobool2.not.i, i32 %spec.select.i, i32 %or4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !204
  tail call void @arm_heavy_mb() #13
  %21 = tail call i32 @llvm.bswap.i32(i32 %pmt.1.i) #13
  %add.ptr.i31 = getelementptr i8, ptr %18, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 %21) #13, !srcloc !118
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %if.end.if.else_crit_edge
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr.i32 = getelementptr i8, ptr %23, i32 3864
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !124
  %25 = and i32 %24, -35651585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !125
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %25) #13, !srcloc !118
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !126
  %27 = and i32 %26, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %27) #13, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then4, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgmac_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base = getelementptr i8, ptr %1, i32 2340
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !204
  tail call void @arm_heavy_mb() #13
  %add.ptr.i15 = getelementptr i8, ptr %3, i32 1796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #13, !srcloc !118
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !153
  %7 = or i32 %6, 201326592
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !154
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %7) #13, !srcloc !118
  %add.ptr5.i = getelementptr i8, ptr %3, i32 3864
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #13, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !155
  %9 = or i32 %8, 35651584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !156
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %9) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  tail call void @arm_heavy_mb() #13
  %add.ptr = getelementptr i8, ptr %3, i32 3860
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -6094592) #13, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !206
  tail call void @arm_heavy_mb() #13
  %add.ptr6 = getelementptr i8, ptr %3, i32 3868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -6094592) #13, !srcloc !118
  tail call void @netif_device_attach(ptr noundef %1) #13
  %napi = getelementptr i8, ptr %1, i32 2368
  tail call void @napi_enable(ptr noundef %napi) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_xgmac__351_1927_xgmac_driver_init6, !1, !"__initcall__kmod_xgmac__351_1927_xgmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1927, i32 1}
!2 = !{ptr @__exitcall_xgmac_driver_exit, !1, !"__exitcall_xgmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author352, !4, !"__UNIQUE_ID_author352", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1929, i32 1}
!5 = !{ptr @__UNIQUE_ID_description353, !6, !"__UNIQUE_ID_description353", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1930, i32 1}
!7 = !{ptr @__UNIQUE_ID_file354, !8, !"__UNIQUE_ID_file354", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1931, i32 1}
!9 = !{ptr @__UNIQUE_ID_license355, !8, !"__UNIQUE_ID_license355", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1919, i32 11}
!12 = !{ptr @xgmac_driver, !13, !"xgmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1917, i32 31}
!14 = !{ptr @xgmac_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1717, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @xgmac_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1718, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1727, i32 20}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1733, i32 20}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1745, i32 20}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1753, i32 20}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1760, i32 20}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1792, i32 21}
!32 = !{ptr @xgmac_netdev_ops, !33, !"xgmac_netdev_ops", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1509, i32 36}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1014, i32 3}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xgmac_open.__UNIQUE_ID_ddebug347, !35, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 730, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug344, !41, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 758, i32 2}
!46 = !{ptr @xgmac_dma_desc_rings_init.__UNIQUE_ID_ddebug345, !45, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 705, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xgmac_rx_refill.__UNIQUE_ID_ddebug343, !48, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1282, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @xgmac_set_rx_mode.__UNIQUE_ID_ddebug349, !56, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!59 = !{ptr @xgmac_ethtool_ops, !60, !"xgmac_ethtool_ops", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1673, i32 33}
!61 = !{ptr @xgmac_gstrings_stats, !62, !"xgmac_gstrings_stats", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1566, i32 33}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1397, i32 26}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1403, i32 26}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1407, i32 26}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1411, i32 26}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1416, i32 26}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1374, i32 3}
!75 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @xgmac_pmt_interrupt.__UNIQUE_ID_ddebug350, !74, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 877, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @xgmac_tx_complete.__UNIQUE_ID_ddebug346, !78, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 523, i32 2}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @desc_get_tx_status.__UNIQUE_ID_ddebug339, !82, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1195, i32 26}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1201, i32 3}
!89 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @xgmac_rx.__UNIQUE_ID_ddebug348, !88, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 550, i32 3}
!93 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @desc_get_rx_status.__UNIQUE_ID_ddebug340, !92, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 564, i32 2}
!97 = !{ptr @desc_get_rx_status.__UNIQUE_ID_ddebug341, !96, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 580, i32 3}
!100 = !{ptr @desc_get_rx_status.__UNIQUE_ID_ddebug342, !99, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!101 = !{ptr @xgmac_of_match, !102, !"xgmac_of_match", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1911, i32 34}
!103 = !{ptr @xgmac_pm_ops, !104, !"xgmac_pm_ops", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/calxeda/xgmac.c", i32 1909, i32 8}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i64 4702239}
!116 = !{i64 2156311138}
!117 = !{i64 2156311403}
!118 = !{i64 4701821}
!119 = !{i64 2156312203}
!120 = !{i64 2156312432}
!121 = !{i64 2156313391}
!122 = !{i64 2156231714}
!123 = !{i64 2156232311}
!124 = !{i64 2156227901}
!125 = !{i64 2156228152}
!126 = !{i64 2156228840}
!127 = !{i64 2156229091}
!128 = !{i64 2156250793}
!129 = !{i64 2156251489}
!130 = !{i64 2156251746}
!131 = !{i64 2156252493}
!132 = !{i64 2156252741}
!133 = !{i64 2156253216}
!134 = !{i64 2156253757}
!135 = !{i64 2156254945}
!136 = !{i64 2156256520}
!137 = !{!"branch_weights", i32 2000, i32 1}
!138 = !{i64 2149008469, i64 2149008474, i64 2149008487, i64 2149008531, i64 2149008565, i64 2149008586}
!139 = !{i64 2156290551}
!140 = !{i64 2156257731}
!141 = !{i64 2156257982}
!142 = !{i64 2156258670}
!143 = !{i64 2156258956}
!144 = !{i64 2156258798}
!145 = !{i64 2156259226}
!146 = !{i64 2156259634}
!147 = !{i64 2156260050}
!148 = !{i64 2156260482}
!149 = !{i64 2156261094}
!150 = !{i64 2156261519}
!151 = !{i64 2156262034}
!152 = !{i64 2156262574}
!153 = !{i64 2156225854}
!154 = !{i64 2156226105}
!155 = !{i64 2156226793}
!156 = !{i64 2156227044}
!157 = !{i64 2156266011}
!158 = !{i64 2156267578}
!159 = !{i64 2156268801}
!160 = !{i64 2156269030}
!161 = !{i64 2156269628}
!162 = !{i64 2156269868}
!163 = !{i64 2156270233}
!164 = !{!"branch_weights", i32 1, i32 2000}
!165 = !{i64 2156270905}
!166 = !{i64 2156230476}
!167 = !{i64 2156230928}
!168 = !{i64 2156287135}
!169 = !{i64 2156287588}
!170 = !{i64 2156291348}
!171 = !{i64 2156292041}
!172 = !{i64 2156292538}
!173 = !{i64 2156293035}
!174 = !{i64 2156293532}
!175 = !{i64 2156294029}
!176 = !{i64 2156294526}
!177 = !{i64 2156295023}
!178 = !{i64 2156295520}
!179 = !{i64 2156296017}
!180 = !{i64 2156296514}
!181 = !{i64 2156297011}
!182 = !{i64 2156297508}
!183 = !{i64 2156297731}
!184 = !{i64 2156298539}
!185 = !{i64 2156298920}
!186 = !{i64 2156229551}
!187 = !{i64 2156230015}
!188 = !{i64 2156232596}
!189 = !{i64 2156233301}
!190 = !{i64 2156233543}
!191 = !{i64 2156233953}
!192 = !{i64 2156234649}
!193 = !{i64 2156234891}
!194 = !{i64 2156244690}
!195 = !{i64 2156245154}
!196 = !{i64 2156303735}
!197 = !{i64 2156248757}
!198 = !{i64 2156213250}
!199 = !{i64 2156213501}
!200 = !{i64 2156214222}
!201 = !{i64 2156314716}
!202 = !{i64 2156315412}
!203 = !{i64 2156315667}
!204 = !{i64 2156314310}
!205 = !{i64 2156316719}
!206 = !{i64 2156318286}
