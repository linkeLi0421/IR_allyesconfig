; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sxgbe_priv_data = type { [8 x ptr], [16 x ptr], i8, i32, i32, i32, i32, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, i32, i32, i32, ptr, [32 x i32], i8, i8, %struct.sxgbe_extra_stats, ptr, %struct.sxgbe_hw_features, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.timer_list, i8, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sxgbe_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sxgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sxgbe_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sxgbe_ops = type { ptr, ptr, ptr, ptr, %struct.mii_regs, %struct.mac_link, i32, i32 }
%struct.mii_regs = type { i32, i32 }
%struct.mac_link = type { i32, i32, i32 }
%struct.sxgbe_dma_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sxgbe_plat_data = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sxgbe_rx_queue = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i8 }
%struct.sxgbe_rx_norm_desc = type { %union.anon.153, %union.anon.155 }
%union.anon.153 = type { i64 }
%union.anon.155 = type { %struct.anon.156 }
%struct.anon.156 = type { i64 }
%struct.sxgbe_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.sxgbe_tx_queue = type { i32, ptr, ptr, i32, ptr, ptr, %struct.timer_list, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.sxgbe_tx_norm_desc = type { i64, %union.anon.148 }
%union.anon.148 = type { %struct.anon.149 }
%struct.anon.149 = type { i32, %union.anon.150, i16 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i16, [2 x i8] }
%struct.sxgbe_dma_cfg = type { i32, i32, i32, i32 }
%struct.sxgbe_mtl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__param_str_eee_timer = internal constant [24 x i8] c"samsung_sxgbe.eee_timer\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@eee_timer = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_eee_timer = internal constant %struct.kernel_param { ptr @__param_str_eee_timer, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @eee_timer } }, section "__param", align 4
@__UNIQUE_ID_eee_timertype484 = internal constant [37 x i8] c"samsung_sxgbe.parmtype=eee_timer:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [20 x i8] c"samsung_sxgbe.debug\00", align 1
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype485 = internal constant [33 x i8] c"samsung_sxgbe.parmtype=debug:int\00", section ".modinfo", align 1
@sxgbe_eee_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&priv->eee_ctrl_timer)\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sxgbe_eee_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016samsung_sxgbe: Energy-Efficient Ethernet initialized\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sxgbe_eee_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c\00", [48 x i8] zeroinitializer }, align 32
@sxgbe_eee_init._entry_ptr = internal global ptr @sxgbe_eee_init._entry, section ".printk_index", align 4
@sxgbe_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @sxgbe_open, ptr @sxgbe_release, ptr @sxgbe_xmit, ptr null, ptr null, ptr null, ptr @sxgbe_set_rx_mode, ptr @eth_mac_addr, ptr null, ptr null, ptr @sxgbe_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_change_mtu, ptr null, ptr @sxgbe_tx_timeout, ptr @sxgbe_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@sxgbe_drv_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 2143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016samsung_sxgbe: Enable RX Mitigation via HW Watchdog Timer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sxgbe_drv_probe\00", [16 x i8] zeroinitializer }, align 32
@sxgbe_drv_probe._entry_ptr = internal global ptr @sxgbe_drv_probe._entry, section ".printk_index", align 4
@sxgbe_drv_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&priv->stats_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sam_sxgbeeth\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: warning: cannot get CSR clock\0A\00", [61 x i8] zeroinitializer }, align 32
@sxgbe_drv_probe.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.5, ptr @.str.3, ptr @.str.10, i8 2, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung_sxgbe\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: MDIO bus (id: %d) registration failed\0A\00", [53 x i8] zeroinitializer }, align 32
@sxgbe_drv_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.3, i32 2178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013samsung_sxgbe: %s: ERROR %i registering the device\0A\00", [42 x i8] zeroinitializer }, align 32
@sxgbe_drv_probe._entry_ptr.13 = internal global ptr @sxgbe_drv_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: removing driver\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__.sxgbe_drv_remove = private unnamed_addr constant [17 x i8] c"sxgbe_drv_remove\00", align 1
@__initcall__kmod_samsung_sxgbe__497_2279_sxgbe_init6 = internal global ptr @sxgbe_init, section ".initcall6.init", align 4
@__exitcall_sxgbe_exit = internal global ptr @sxgbe_exit, section ".exitcall.exit", align 4
@__setup_str_sxgbe_cmdline_opt = internal constant [10 x i8] c"sxgbeeth=\00", section ".init.rodata", align 1
@__setup_sxgbe_cmdline_opt = internal global %struct.obs_kernel_param { ptr @__setup_str_sxgbe_cmdline_opt, ptr @sxgbe_cmdline_opt, i32 0 }, section ".init.setup", align 4
@__UNIQUE_ID_description498 = internal constant [71 x i8] c"samsung_sxgbe.description=Samsung 10G/2.5G/1G Ethernet PLATFORM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_debug499 = internal constant [76 x i8] c"samsung_sxgbe.parm=debug:Message Level (-1: default, 0: no output, 16: all)\00", section ".modinfo", align 1
@__UNIQUE_ID_eee_timer500 = internal constant [60 x i8] c"samsung_sxgbe.parm=eee_timer:EEE-LPI Default LS timer value\00", section ".modinfo", align 1
@__UNIQUE_ID_author501 = internal constant [65 x i8] c"samsung_sxgbe.author=Siva Reddy Kallam <siva.kallam@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author502 = internal constant [54 x i8] c"samsung_sxgbe.author=ByungHo An <bh74.an@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author503 = internal constant [54 x i8] c"samsung_sxgbe.author=Girish K S <ks.giri@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author504 = internal constant [61 x i8] c"samsung_sxgbe.author=Vipul Pandya <vipul.pandya@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file505 = internal constant [68 x i8] c"samsung_sxgbe.file=drivers/net/ethernet/samsung/sxgbe/samsung-sxgbe\00", section ".modinfo", align 1
@__UNIQUE_ID_license506 = internal constant [26 x i8] c"samsung_sxgbe.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sxgbe_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 2020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016samsung_sxgbe: user ID: 0x%x, Controller ID: 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sxgbe_hw_init\00", [18 x i8] zeroinitializer }, align 32
@sxgbe_hw_init._entry_ptr = internal global ptr @sxgbe_hw_init._entry, section ".printk_index", align 4
@sxgbe_hw_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 2024, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016samsung_sxgbe: Hardware features not found\0A\00", [50 x i8] zeroinitializer }, align 32
@sxgbe_hw_init._entry_ptr.19 = internal global ptr @sxgbe_hw_init._entry.17, section ".printk_index", align 4
@sxgbe_hw_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 2027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016samsung_sxgbe: TX Checksum offload supported\0A\00", [48 x i8] zeroinitializer }, align 32
@sxgbe_hw_init._entry_ptr.22 = internal global ptr @sxgbe_hw_init._entry.20, section ".printk_index", align 4
@sxgbe_hw_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 2030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016samsung_sxgbe: RX Checksum offload supported\0A\00", [48 x i8] zeroinitializer }, align 32
@sxgbe_hw_init._entry_ptr.25 = internal global ptr @sxgbe_hw_init._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: Cannot attach to PHY (error: %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@__func__.sxgbe_open = private unnamed_addr constant [11 x i8] c"sxgbe_open\00", align 1
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: DMA initialization failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: ERROR: allocating the IRQ %d (error: %d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERROR: allocating the LPI IRQ %d (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: ERROR: allocating TX IRQ %d (error: %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@sxgbe_open.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @__func__.sxgbe_open, ptr @.str.3, ptr @.str.31, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA RX/TX processes started...\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%x\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sxgbe-%x\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02x\00", [24 x i8] zeroinitializer }, align 32
@sxgbe_init_phy.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sxgbe_init_phy\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: trying to attach to %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not attach to PHY\0A\00", [39 x i8] zeroinitializer }, align 32
@sxgbe_init_phy.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.35, ptr @.str.3, ptr @.str.38, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: attached to PHY (UID 0x%x) Link = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Speed (%d) not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@init_dma_desc_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 573, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TX DMA ring allocation failed!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"init_dma_desc_rings\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@init_dma_desc_rings._entry_ptr = internal global ptr @init_dma_desc_rings._entry, section ".printk_index", align 4
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RX DMA ring allocation failed!!\0A\00", [63 x i8] zeroinitializer }, align 32
@init_tx_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 399, ptr @.str.42, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No memory for TX queue of SXGBE\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_tx_ring\00", [19 x i8] zeroinitializer }, align 32
@init_tx_ring._entry_ptr = internal global ptr @init_tx_ring._entry, section ".printk_index", align 4
@init_rx_ring.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_rx_ring\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: bfsize %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No memory for RX queue\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: DMA mapping error\0A\00", [41 x i8] zeroinitializer }, align 32
@__func__.sxgbe_init_rx_buffers = private unnamed_addr constant [22 x i8] c"sxgbe_init_rx_buffers\00", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sxgbe_mtl_operation_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013samsung_sxgbe: ERROR: %s: Invalid TX threshold mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sxgbe_mtl_operation_mode\00", [39 x i8] zeroinitializer }, align 32
@sxgbe_mtl_operation_mode._entry_ptr = internal global ptr @sxgbe_mtl_operation_mode._entry, section ".printk_index", align 4
@sxgbe_tx_init_coalesce.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&p->txtimer)\00", [18 x i8] zeroinitializer }, align 32
@sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 -66, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sxgbe_tx_queue_clean\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: curr %d, dirty %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"samsung_sxgbe: %s: curr %d, dirty %d\0A\00", [58 x i8] zeroinitializer }, align 32
@sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.56, ptr @.str.3, ptr @.str.59, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: restart transmit\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"samsung_sxgbe: %s: restart transmit\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Tx Ring is full when %d queue is awake\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.sxgbe_xmit = private unnamed_addr constant [11 x i8] c"sxgbe_xmit\00", align 1
@.str.62 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: TX dma mapping failed!!\0A\00", [35 x i8] zeroinitializer }, align 32
@sxgbe_xmit.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @__func__.sxgbe_xmit, ptr @.str.3, ptr @.str.63, i8 1, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: curr %d dirty=%d entry=%d, first=%p, nfrags=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@sxgbe_xmit.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @__func__.sxgbe_xmit, ptr @.str.3, ptr @.str.64, i8 1, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: stop transmitted packets\0A\00", [34 x i8] zeroinitializer }, align 32
@sxgbe_tso_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.3, i32 1259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013samsung_sxgbe: %s: TX dma mapping failed!!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sxgbe_tso_prepare\00", [46 x i8] zeroinitializer }, align 32
@sxgbe_tso_prepare._entry_ptr = internal global ptr @sxgbe_tso_prepare._entry, section ".printk_index", align 4
@sxgbe_set_rx_mode.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 1, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sxgbe_set_rx_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: # mcasts %d, # unicast %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sxgbe_set_rx_mode.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.67, ptr @.str.3, ptr @.str.69, i8 1, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Filter: 0x%08x\0A\09Hash: HI 0x%08x, LO 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@.str.70 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"rx descriptor is not consistent\0A\00", [63 x i8] zeroinitializer }, align 32
@sxgbe_check_ether_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.3, i32 944, ptr @.str.73, ptr @.str.43 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device MAC address %pM\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sxgbe_check_ether_addr\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sxgbe_check_ether_addr._entry_ptr = internal global ptr @sxgbe_check_ether_addr._entry, section ".printk_index", align 4
@sxgbe_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 2270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013samsung_sxgbe: driver registration failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sxgbe_init\00", [21 x i8] zeroinitializer }, align 32
@sxgbe_init._entry_ptr = internal global ptr @sxgbe_init._entry, section ".printk_index", align 4
@.str.76 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\00", [30 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eee_timer:\00", [21 x i8] zeroinitializer }, align 32
@sxgbe_cmdline_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 2298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013samsung_sxgbe: %s: ERROR broken module parameter conversion\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sxgbe_cmdline_opt\00", [46 x i8] zeroinitializer }, align 32
@sxgbe_cmdline_opt._entry_ptr = internal global ptr @sxgbe_cmdline_opt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 32, i64 1000, i64 2500, i64 10000]
@___asan_gen_.81 = private unnamed_addr constant [10 x i8] c"eee_timer\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 55, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 54, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 134, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 142, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"sxgbe_netdev_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1961, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2143, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2148, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2150, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2152, i32 21 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2171, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2178, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2211, i32 20 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2019, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2024, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2027, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2030, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1073, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1089, i32 19 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1109, i32 19 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1122, i32 20 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1135, i32 20 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1168, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 278, i32 37 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 281, i32 37 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 284, i32 44 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 286, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 291, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 305, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 230, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 573, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 588, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 399, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 472, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 476, i32 19 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 354, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.256, i32 326, i32 6 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 726, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1036, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 759, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 784, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1309, i32 20 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1350, i32 21 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1405, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1411, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1259, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1856, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1907, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 1525, i32 26 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 943, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2270, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2289, i32 29 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2290, i32 21 }
@___asan_gen_.348 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.355 = private constant [51 x i8] c"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 2298, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author501, ptr @__UNIQUE_ID_author502, ptr @__UNIQUE_ID_author503, ptr @__UNIQUE_ID_author504, ptr @__UNIQUE_ID_debug499, ptr @__UNIQUE_ID_debugtype485, ptr @__UNIQUE_ID_description498, ptr @__UNIQUE_ID_eee_timer500, ptr @__UNIQUE_ID_eee_timertype484, ptr @__UNIQUE_ID_file505, ptr @__UNIQUE_ID_license506, ptr @__exitcall_sxgbe_exit, ptr @__initcall__kmod_samsung_sxgbe__497_2279_sxgbe_init6, ptr @__param_debug, ptr @__param_eee_timer, ptr @__setup_sxgbe_cmdline_opt, ptr @init_dma_desc_rings._entry, ptr @init_dma_desc_rings._entry_ptr, ptr @init_tx_ring._entry, ptr @init_tx_ring._entry_ptr, ptr @sxgbe_check_ether_addr._entry, ptr @sxgbe_check_ether_addr._entry_ptr, ptr @sxgbe_cmdline_opt._entry, ptr @sxgbe_cmdline_opt._entry_ptr, ptr @sxgbe_drv_probe._entry, ptr @sxgbe_drv_probe._entry.11, ptr @sxgbe_drv_probe._entry_ptr, ptr @sxgbe_drv_probe._entry_ptr.13, ptr @sxgbe_eee_init._entry, ptr @sxgbe_eee_init._entry_ptr, ptr @sxgbe_exit, ptr @sxgbe_hw_init._entry, ptr @sxgbe_hw_init._entry.17, ptr @sxgbe_hw_init._entry.20, ptr @sxgbe_hw_init._entry.23, ptr @sxgbe_hw_init._entry_ptr, ptr @sxgbe_hw_init._entry_ptr.19, ptr @sxgbe_hw_init._entry_ptr.22, ptr @sxgbe_hw_init._entry_ptr.25, ptr @sxgbe_init._entry, ptr @sxgbe_init._entry_ptr, ptr @sxgbe_mtl_operation_mode._entry, ptr @sxgbe_mtl_operation_mode._entry_ptr, ptr @sxgbe_tso_prepare._entry, ptr @sxgbe_tso_prepare._entry_ptr, ptr @eee_timer, ptr @debug, ptr @sxgbe_eee_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sxgbe_netdev_ops, ptr @.str.4, ptr @.str.5, ptr @sxgbe_drv_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @sxgbe_tx_init_coalesce.__key, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eee_timer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_eee_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_eee_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_drv_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_drv_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_drv_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_hw_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_hw_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_hw_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_dma_desc_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_tx_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_mtl_operation_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_tx_init_coalesce.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_tso_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_check_ether_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_cmdline_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sxgbe_disable_eee_mode(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 11
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %reset_eee_mode = getelementptr inbounds %struct.sxgbe_core_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %reset_eee_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset_eee_mode, align 4
  %ioaddr = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 8
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 8
  tail call void %5(ptr noundef %7) #14
  %eee_ctrl_timer = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 36
  %call = tail call i32 @del_timer_sync(ptr noundef %eee_ctrl_timer) #14
  %tx_path_in_lpi_mode = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 37
  %8 = ptrtoint ptr %tx_path_in_lpi_mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %tx_path_in_lpi_mode, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @sxgbe_eee_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eee = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 25, i32 3
  %0 = ptrtoint ptr %eee to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %phydev = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  %call = tail call i32 @phy_init_eee(ptr noundef %5, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %eee_active = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 40
  %6 = ptrtoint ptr %eee_active to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %eee_active, align 4
  %eee_ctrl_timer = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 36
  tail call void @init_timer_key(ptr noundef %eee_ctrl_timer, ptr noundef nonnull @sxgbe_eee_ctrl_timer, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @sxgbe_eee_init.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %8 = load i32, ptr @eee_timer, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #14
  %add = add i32 %call2.i, %7
  %expires = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 36, i32 1
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %eee_ctrl_timer) #14
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 11
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %set_eee_timer = getelementptr inbounds %struct.sxgbe_core_ops, ptr %13, i32 0, i32 13
  %14 = ptrtoint ptr %set_eee_timer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_eee_timer, align 4
  %ioaddr = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 8
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 8
  %tx_lpi_timer = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 41
  %18 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_lpi_timer, align 8
  tail call void %15(ptr noundef %17, i32 noundef 1000, i32 noundef %19) #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #17
  br label %if.end10

if.end10:                                         ; preds = %if.end, %entry.if.end10_crit_edge
  %20 = xor i1 %tobool.not, true
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ %20, %if.end10 ], [ false, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init_eee(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_eee_ctrl_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_path_in_lpi_mode.i = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %tx_path_in_lpi_mode.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tx_path_in_lpi_mode.i, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.then.i3, label %entry.sxgbe_enable_eee_mode.exit_crit_edge

entry.sxgbe_enable_eee_mode.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_enable_eee_mode.exit

if.then.i3:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %hw.i = getelementptr i8, ptr %t, i32 -676
  %2 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %set_eee_mode.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %set_eee_mode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_eee_mode.i, align 4
  %ioaddr.i = getelementptr i8, ptr %t, i32 -688
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 8
  tail call void %7(ptr noundef %9) #14
  br label %sxgbe_enable_eee_mode.exit

sxgbe_enable_eee_mode.exit:                       ; preds = %if.then.i3, %entry.sxgbe_enable_eee_mode.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = load i32, ptr @eee_timer, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %11) #14
  %add = add i32 %call2.i, %10
  %call1 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sxgbe_drv_probe(ptr noundef %device, ptr noundef %plat_dat, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 1104, i32 noundef 8, i32 noundef 16) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %device, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %device2 = getelementptr i8, ptr %call, i32 2656
  %1 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %device, ptr %device2, align 8
  %dev3 = getelementptr i8, ptr %call, i32 2652
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dev3, align 4
  tail call void @sxgbe_set_ethtool_ops(ptr noundef nonnull %call) #14
  %plat = getelementptr i8, ptr %call, i32 3184
  %3 = ptrtoint ptr %plat to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %plat_dat, ptr %plat, align 8
  %ioaddr = getelementptr i8, ptr %call, i32 2648
  %4 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %ioaddr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !222
  tail call void @arm_heavy_mb() #14
  %add.ptr.i156 = getelementptr i8, ptr %addr, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 16777216) #14, !srcloc !223
  br label %while.body.i

while.body.i:                                     ; preds = %while.body7.preheader.i.while.body.i_crit_edge, %if.end
  %dec14.i = phi i32 [ 9, %if.end ], [ %dec.i, %while.body7.preheader.i.while.body.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !225
  %6 = and i32 %5, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %while.end8.i, label %while.body7.preheader.i

while.body7.preheader.i:                          ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #14
  %dec.i = add nsw i32 %dec14.i, -1
  %tobool.not.i = icmp eq i32 %dec14.i, 0
  br i1 %tobool.not.i, label %while.body7.preheader.i.error_free_netdev_crit_edge, label %while.body7.preheader.i.while.body.i_crit_edge

while.body7.preheader.i.while.body.i_crit_edge:   ; preds = %while.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.body7.preheader.i.error_free_netdev_crit_edge: ; preds = %while.body7.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_netdev

while.end8.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec14.i)
  %cmp.i = icmp slt i32 %dec14.i, 0
  br i1 %cmp.i, label %while.end8.i.error_free_netdev_crit_edge, label %if.end8

while.end8.i.error_free_netdev_crit_edge:         ; preds = %while.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_netdev

if.end8:                                          ; preds = %while.end8.i
  %17 = load i32, ptr @eee_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i157 = icmp slt i32 %17, 0
  br i1 %cmp.i157, label %if.then.i, label %if.end8.sxgbe_verify_args.exit_crit_edge, !prof !226

if.end8.sxgbe_verify_args.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_verify_args.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  store i32 1000, ptr @eee_timer, align 4
  br label %sxgbe_verify_args.exit

sxgbe_verify_args.exit:                           ; preds = %if.then.i, %if.end8.sxgbe_verify_args.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3264, i32 noundef 44) #18
  %hw.i = getelementptr i8, ptr %call, i32 2660
  %19 = ptrtoint ptr %hw.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %hw.i, align 4
  %tobool.not.i158 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i158, label %sxgbe_verify_args.exit.error_free_netdev_crit_edge, label %if.end.i

sxgbe_verify_args.exit.error_free_netdev_crit_edge: ; preds = %sxgbe_verify_args.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_netdev

if.end.i:                                         ; preds = %sxgbe_verify_args.exit
  %call.i.i = tail call ptr @sxgbe_get_core_ops() #14
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %call7.i.i, align 8
  %call1.i.i = tail call ptr @sxgbe_get_desc_ops() #14
  %desc.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call1.i.i, ptr %desc.i.i, align 4
  %call2.i.i = tail call ptr @sxgbe_get_dma_ops() #14
  %dma.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call2.i.i, ptr %dma.i.i, align 8
  %call3.i.i = tail call ptr @sxgbe_get_mtl_ops() #14
  %mtl.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %mtl.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call3.i.i, ptr %mtl.i.i, align 4
  %mii.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %mii.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %mii.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 516, ptr %data.i.i, align 4
  %link.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %link.i.i, align 8
  %duplex.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %duplex.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %duplex.i.i, align 4
  %speed.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %call7.i.i, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %speed.i.i, align 8
  %29 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %get_controller_version.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %get_controller_version.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %get_controller_version.i, align 4
  %35 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioaddr, align 8
  %call4.i = tail call i32 %34(ptr noundef %36) #14
  %and.i = lshr i32 %call4.i, 16
  %shr.i = and i32 %and.i, 255
  %37 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw.i, align 4
  %ctrl_uid.i = getelementptr inbounds %struct.sxgbe_ops, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %ctrl_uid.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shr.i, ptr %ctrl_uid.i, align 4
  %and6.i = and i32 %call4.i, 255
  %40 = load ptr, ptr %hw.i, align 4
  %ctrl_id.i = getelementptr inbounds %struct.sxgbe_ops, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %ctrl_id.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and6.i, ptr %ctrl_id.i, align 4
  %42 = load ptr, ptr %hw.i, align 4
  %ctrl_uid9.i = getelementptr inbounds %struct.sxgbe_ops, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %ctrl_uid9.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctrl_uid9.i, align 4
  %ctrl_id11.i = getelementptr inbounds %struct.sxgbe_ops, ptr %42, i32 0, i32 7
  %45 = ptrtoint ptr %ctrl_id11.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ctrl_id11.i, align 4
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %44, i32 noundef %46) #17
  %47 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %get_hw_feature.i.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %get_hw_feature.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_hw_feature.i.i, align 4
  %53 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ioaddr, align 8
  %call.i51.i = tail call i32 %52(ptr noundef %54, i8 noundef zeroext 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %if.then.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw_cap.i.i = getelementptr i8, ptr %call, i32 3188
  %and.i.i = lshr i32 %call.i51.i, 6
  %55 = and i32 %and.i.i, 1
  %56 = ptrtoint ptr %hw_cap.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %hw_cap.i.i, align 4
  %and1.i.i = lshr i32 %call.i51.i, 7
  %57 = and i32 %and1.i.i, 1
  %pmt_magic_frame.i.i = getelementptr i8, ptr %call, i32 3192
  %58 = ptrtoint ptr %pmt_magic_frame.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %pmt_magic_frame.i.i, align 4
  %and3.i.i = lshr i32 %call.i51.i, 12
  %59 = and i32 %and3.i.i, 1
  %atime_stamp.i.i = getelementptr i8, ptr %call, i32 3196
  %60 = ptrtoint ptr %atime_stamp.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %atime_stamp.i.i, align 4
  %and5.i.i = lshr i32 %call.i51.i, 14
  %61 = and i32 %and5.i.i, 1
  %tx_csum_offload.i.i = getelementptr i8, ptr %call, i32 3204
  %62 = ptrtoint ptr %tx_csum_offload.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tx_csum_offload.i.i, align 4
  %and7.i.i = lshr i32 %call.i51.i, 16
  %63 = and i32 %and7.i.i, 1
  %rx_csum_offload.i.i = getelementptr i8, ptr %call, i32 3208
  %64 = ptrtoint ptr %rx_csum_offload.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rx_csum_offload.i.i, align 4
  %and9.i.i = lshr i32 %call.i51.i, 18
  %65 = and i32 %and9.i.i, 31
  %multi_macaddr.i.i = getelementptr i8, ptr %call, i32 3212
  %66 = ptrtoint ptr %multi_macaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %multi_macaddr.i.i, align 4
  %and11.i.i = lshr i32 %call.i51.i, 25
  %67 = and i32 %and11.i.i, 3
  %tstamp_srcselect.i.i = getelementptr i8, ptr %call, i32 3216
  %68 = ptrtoint ptr %tstamp_srcselect.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %tstamp_srcselect.i.i, align 4
  %and13.i.i = lshr i32 %call.i51.i, 27
  %69 = and i32 %and13.i.i, 1
  %sa_vlan_insert.i.i = getelementptr i8, ptr %call, i32 3220
  %70 = ptrtoint ptr %sa_vlan_insert.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %sa_vlan_insert.i.i, align 4
  %and15.i.i = lshr i32 %call.i51.i, 13
  %71 = and i32 %and15.i.i, 1
  %eee.i.i = getelementptr i8, ptr %call, i32 3200
  %72 = ptrtoint ptr %eee.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %eee.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.end.i.if.end.i.i_crit_edge
  %73 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw.i, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %74, align 4
  %get_hw_feature19.i.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %get_hw_feature19.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %get_hw_feature19.i.i, align 4
  %79 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ioaddr, align 8
  %call21.i.i = tail call i32 %78(ptr noundef %80, i8 noundef zeroext 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end.i.i.if.end43.i.i_crit_edge, label %if.then23.i.i

if.end.i.i.if.end43.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end43.i.i

if.then23.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and24.i.i = and i32 %call21.i.i, 31
  %rxfifo_size.i.i = getelementptr i8, ptr %call, i32 3224
  %81 = ptrtoint ptr %rxfifo_size.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %and24.i.i, ptr %rxfifo_size.i.i, align 4
  %and25.i.i = lshr i32 %call21.i.i, 6
  %82 = and i32 %and25.i.i, 31
  %txfifo_size.i.i = getelementptr i8, ptr %call, i32 3228
  %83 = ptrtoint ptr %txfifo_size.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %txfifo_size.i.i, align 4
  %atstmap_hword.i.i = getelementptr i8, ptr %call, i32 3232
  %84 = ptrtoint ptr %atstmap_hword.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %82, ptr %atstmap_hword.i.i, align 4
  %and29.i.i = lshr i32 %call21.i.i, 16
  %85 = and i32 %and29.i.i, 1
  %dcb_enable.i.i = getelementptr i8, ptr %call, i32 3236
  %86 = ptrtoint ptr %dcb_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %dcb_enable.i.i, align 4
  %and31.i.i = lshr i32 %call21.i.i, 17
  %87 = and i32 %and31.i.i, 1
  %splithead_enable.i.i = getelementptr i8, ptr %call, i32 3240
  %88 = ptrtoint ptr %splithead_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %splithead_enable.i.i, align 4
  %and33.i.i = lshr i32 %call21.i.i, 18
  %89 = and i32 %and33.i.i, 1
  %tcpseg_offload.i.i = getelementptr i8, ptr %call, i32 3244
  %90 = ptrtoint ptr %tcpseg_offload.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %tcpseg_offload.i.i, align 4
  %and35.i.i = lshr i32 %call21.i.i, 19
  %91 = and i32 %and35.i.i, 1
  %debug_mem.i.i = getelementptr i8, ptr %call, i32 3248
  %92 = ptrtoint ptr %debug_mem.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %debug_mem.i.i, align 4
  %and37.i.i = lshr i32 %call21.i.i, 20
  %93 = and i32 %and37.i.i, 1
  %rss_enable.i.i = getelementptr i8, ptr %call, i32 3252
  %94 = ptrtoint ptr %rss_enable.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %rss_enable.i.i, align 4
  %and39.i.i = lshr i32 %call21.i.i, 24
  %95 = and i32 %and39.i.i, 3
  %hash_tsize.i.i = getelementptr i8, ptr %call, i32 3256
  %96 = ptrtoint ptr %hash_tsize.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %hash_tsize.i.i, align 4
  %and41.i.i = lshr i32 %call21.i.i, 27
  %97 = and i32 %and41.i.i, 15
  %l3l4_filer_size.i.i = getelementptr i8, ptr %call, i32 3260
  %98 = ptrtoint ptr %l3l4_filer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %l3l4_filer_size.i.i, align 4
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.then23.i.i, %if.end.i.i.if.end43.i.i_crit_edge
  %99 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hw.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %get_hw_feature46.i.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %102, i32 0, i32 9
  %103 = ptrtoint ptr %get_hw_feature46.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %get_hw_feature46.i.i, align 4
  %105 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ioaddr, align 8
  %call48.i.i = tail call i32 %104(ptr noundef %106, i8 noundef zeroext 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i.i)
  %tobool49.not.i.i = icmp eq i32 %call48.i.i, 0
  br i1 %tobool49.not.i.i, label %do.end18.i, label %sxgbe_get_hw_features.exit.i

sxgbe_get_hw_features.exit.i:                     ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %and51.i.i = and i32 %call48.i.i, 15
  %rx_mtl_queues.i.i = getelementptr i8, ptr %call, i32 3272
  %107 = ptrtoint ptr %rx_mtl_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %and51.i.i, ptr %rx_mtl_queues.i.i, align 4
  %and52.i.i = lshr i32 %call48.i.i, 6
  %108 = and i32 %and52.i.i, 15
  %tx_mtl_queues.i.i = getelementptr i8, ptr %call, i32 3276
  %109 = ptrtoint ptr %tx_mtl_queues.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %tx_mtl_queues.i.i, align 4
  %and54.i.i = lshr i32 %call48.i.i, 12
  %110 = and i32 %and54.i.i, 15
  %rx_dma_channels.i.i = getelementptr i8, ptr %call, i32 3280
  %111 = ptrtoint ptr %rx_dma_channels.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %rx_dma_channels.i.i, align 4
  %and56.i.i = lshr i32 %call48.i.i, 18
  %112 = and i32 %and56.i.i, 15
  %tx_dma_channels.i.i = getelementptr i8, ptr %call, i32 3284
  %113 = ptrtoint ptr %tx_dma_channels.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %tx_dma_channels.i.i, align 4
  %and58.i.i = lshr i32 %call48.i.i, 24
  %114 = and i32 %and58.i.i, 7
  %pps_output_count.i.i = getelementptr i8, ptr %call, i32 3288
  %115 = ptrtoint ptr %pps_output_count.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %pps_output_count.i.i, align 4
  %and60.i.i = lshr i32 %call48.i.i, 28
  %116 = and i32 %and60.i.i, 7
  %aux_input_count.i.i = getelementptr i8, ptr %call, i32 3292
  %117 = ptrtoint ptr %aux_input_count.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %aux_input_count.i.i, align 4
  br label %if.end21.i

do.end18.i:                                       ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #17
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end18.i, %sxgbe_get_hw_features.exit.i
  %tx_csum_offload.i = getelementptr i8, ptr %call, i32 3204
  %118 = ptrtoint ptr %tx_csum_offload.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %tx_csum_offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool22.not.i = icmp eq i32 %119, 0
  br i1 %tobool22.not.i, label %if.end21.i.if.end29.i_crit_edge, label %do.end26.i

if.end21.i.if.end29.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

do.end26.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end26.i, %if.end21.i.if.end29.i_crit_edge
  %rx_csum_offload.i = getelementptr i8, ptr %call, i32 3208
  %120 = ptrtoint ptr %rx_csum_offload.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %rx_csum_offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool31.not.i = icmp eq i32 %121, 0
  br i1 %tobool31.not.i, label %if.end29.i.if.end12_crit_edge, label %do.end35.i

if.end29.i.if.end12_crit_edge:                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #17
  br label %if.end12

if.end12:                                         ; preds = %do.end35.i, %if.end29.i.if.end12_crit_edge
  %122 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %device2, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %123, i32 noundef 100, i32 noundef 3264) #14
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i, ptr %add.ptr.i, align 4
  %tobool.not.i160 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i160, label %if.end12.error_free_hw_crit_edge, label %for.cond.i

if.end12.error_free_hw_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.i:                                       ; preds = %if.end12
  %125 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device2, align 8
  %call.1.i = tail call noalias ptr @devm_kmalloc(ptr noundef %126, i32 noundef 100, i32 noundef 3264) #14
  %arrayidx.1.i = getelementptr i8, ptr %call, i32 2308
  %127 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %call.1.i, null
  br i1 %tobool.not.1.i, label %for.cond.i.error_free_hw_crit_edge, label %for.cond.1.i

for.cond.i.error_free_hw_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.1.i:                                     ; preds = %for.cond.i
  %128 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %device2, align 8
  %call.2.i = tail call noalias ptr @devm_kmalloc(ptr noundef %129, i32 noundef 100, i32 noundef 3264) #14
  %arrayidx.2.i = getelementptr i8, ptr %call, i32 2312
  %130 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call.2.i, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %call.2.i, null
  br i1 %tobool.not.2.i, label %for.cond.1.i.error_free_hw_crit_edge, label %for.cond.2.i

for.cond.1.i.error_free_hw_crit_edge:             ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %131 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %device2, align 8
  %call.3.i = tail call noalias ptr @devm_kmalloc(ptr noundef %132, i32 noundef 100, i32 noundef 3264) #14
  %arrayidx.3.i = getelementptr i8, ptr %call, i32 2316
  %133 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call.3.i, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %call.3.i, null
  br i1 %tobool.not.3.i, label %for.cond.2.i.error_free_hw_crit_edge, label %for.cond.3.i

for.cond.2.i.error_free_hw_crit_edge:             ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %134 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %device2, align 8
  %call.4.i = tail call noalias ptr @devm_kmalloc(ptr noundef %135, i32 noundef 100, i32 noundef 3264) #14
  %arrayidx.4.i = getelementptr i8, ptr %call, i32 2320
  %136 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.4.i, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %call.4.i, null
  br i1 %tobool.not.4.i, label %for.cond.3.i.error_free_hw_crit_edge, label %for.cond.4.i

for.cond.3.i.error_free_hw_crit_edge:             ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %137 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device2, align 8
  %call.5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %138, i32 noundef 100, i32 noundef 3264) #14
  %arrayidx.5.i = getelementptr i8, ptr %call, i32 2324
  %139 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call.5.i, ptr %arrayidx.5.i, align 4
  %tobool.not.5.i = icmp eq ptr %call.5.i, null
  br i1 %tobool.not.5.i, label %for.cond.4.i.error_free_hw_crit_edge, label %for.cond.5.i

for.cond.4.i.error_free_hw_crit_edge:             ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %140 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %device2, align 8
  %call.6.i = tail call noalias ptr @devm_kmalloc(ptr noundef %141, i32 noundef 100, i32 noundef 3264) #14
  %arrayidx.6.i = getelementptr i8, ptr %call, i32 2328
  %142 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call.6.i, ptr %arrayidx.6.i, align 4
  %tobool.not.6.i = icmp eq ptr %call.6.i, null
  br i1 %tobool.not.6.i, label %for.cond.5.i.error_free_hw_crit_edge, label %for.cond.6.i

for.cond.5.i.error_free_hw_crit_edge:             ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %143 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device2, align 8
  %call.7.i = tail call noalias ptr @devm_kmalloc(ptr noundef %144, i32 noundef 100, i32 noundef 3264) #14
  %arrayidx.7.i = getelementptr i8, ptr %call, i32 2332
  %145 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call.7.i, ptr %arrayidx.7.i, align 4
  %tobool.not.7.i = icmp eq ptr %call.7.i, null
  br i1 %tobool.not.7.i, label %for.cond.6.i.error_free_hw_crit_edge, label %for.cond.6.i.for.body.i_crit_edge

for.cond.6.i.for.body.i_crit_edge:                ; preds = %for.cond.6.i
  br label %for.body.i

for.cond.6.i.error_free_hw_crit_edge:             ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

for.cond.i163:                                    ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %queue_num.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %if.end20, label %for.cond.i163.for.body.i_crit_edge

for.cond.i163.for.body.i_crit_edge:               ; preds = %for.cond.i163
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i163.for.body.i_crit_edge, %for.cond.6.i.for.body.i_crit_edge
  %queue_num.08.i = phi i32 [ %inc.i, %for.cond.i163.for.body.i_crit_edge ], [ 0, %for.cond.6.i.for.body.i_crit_edge ]
  %146 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device2, align 8
  %call.i164 = tail call noalias ptr @devm_kmalloc(ptr noundef %147, i32 noundef 40, i32 noundef 3264) #14
  %arrayidx.i = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr.i, i32 0, i32 1, i32 %queue_num.08.i
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call.i164, ptr %arrayidx.i, align 4
  %tobool.not.i165 = icmp eq ptr %call.i164, null
  br i1 %tobool.not.i165, label %for.body.i.error_free_hw_crit_edge, label %for.cond.i163

for.body.i.error_free_hw_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %error_free_hw

if.end20:                                         ; preds = %for.cond.i163
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %149 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @sxgbe_netdev_ops, ptr %netdev_ops, align 8
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %150 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 1099512758291, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %151 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %151)
  %152 = load i64, ptr %features, align 16
  %or22 = or i64 %152, 1099512758323
  store i64 %or22, ptr %features, align 16
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %153 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 500, ptr %watchdog_timeo, align 4
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 15
  %154 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %priv_flags, align 16
  %or24 = or i64 %155, 4096
  store i64 %or24, ptr %priv_flags, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %156 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %157 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 9000, ptr %max_mtu, align 4
  %158 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %158)
  %cmp1.i = icmp ugt i32 %158, 31
  br i1 %cmp1.i, label %if.end20.netif_msg_init.exit_crit_edge, label %if.end.i167

if.end20.netif_msg_init.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_msg_init.exit

if.end.i167:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp2.i = icmp eq i32 %158, 0
  br i1 %cmp2.i, label %if.end.i167.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i167.netif_msg_init.exit_crit_edge:        ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i167
  call void @__sanitizer_cov_trace_pc() #16
  %notmask.i = shl nsw i32 -1, %158
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i167.netif_msg_init.exit_crit_edge, %if.end20.netif_msg_init.exit_crit_edge
  %retval.0.i168 = phi i32 [ %sub.i, %if.end4.i ], [ 63, %if.end20.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i167.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call, i32 3296
  %159 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %retval.0.i168, ptr %msg_enable, align 8
  %tcpseg_offload = getelementptr i8, ptr %call, i32 3244
  %160 = ptrtoint ptr %tcpseg_offload to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %tcpseg_offload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %161)
  %tobool26.not = icmp eq i32 %161, 0
  br i1 %tobool26.not, label %netif_msg_init.exit.if.end30_crit_edge, label %for.body.preheader

netif_msg_init.exit.if.end30_crit_edge:           ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

for.body.preheader:                               ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %162 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw.i, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %163, i32 0, i32 2
  %164 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dma, align 4
  %enable_tso = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %165, i32 0, i32 14
  %166 = ptrtoint ptr %enable_tso to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %enable_tso, align 4
  %168 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %ioaddr, align 8
  tail call void %167(ptr noundef %169, i8 noundef zeroext 0) #14
  %170 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %hw.i, align 4
  %dma.1 = getelementptr inbounds %struct.sxgbe_ops, ptr %171, i32 0, i32 2
  %172 = ptrtoint ptr %dma.1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dma.1, align 4
  %enable_tso.1 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %173, i32 0, i32 14
  %174 = ptrtoint ptr %enable_tso.1 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %enable_tso.1, align 4
  %176 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ioaddr, align 8
  tail call void %175(ptr noundef %177, i8 noundef zeroext 1) #14
  %178 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %hw.i, align 4
  %dma.2 = getelementptr inbounds %struct.sxgbe_ops, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %dma.2 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dma.2, align 4
  %enable_tso.2 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %181, i32 0, i32 14
  %182 = ptrtoint ptr %enable_tso.2 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %enable_tso.2, align 4
  %184 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ioaddr, align 8
  tail call void %183(ptr noundef %185, i8 noundef zeroext 2) #14
  %186 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw.i, align 4
  %dma.3 = getelementptr inbounds %struct.sxgbe_ops, ptr %187, i32 0, i32 2
  %188 = ptrtoint ptr %dma.3 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dma.3, align 4
  %enable_tso.3 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %189, i32 0, i32 14
  %190 = ptrtoint ptr %enable_tso.3 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %enable_tso.3, align 4
  %192 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %ioaddr, align 8
  tail call void %191(ptr noundef %193, i8 noundef zeroext 3) #14
  %194 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %hw.i, align 4
  %dma.4 = getelementptr inbounds %struct.sxgbe_ops, ptr %195, i32 0, i32 2
  %196 = ptrtoint ptr %dma.4 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dma.4, align 4
  %enable_tso.4 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %197, i32 0, i32 14
  %198 = ptrtoint ptr %enable_tso.4 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %enable_tso.4, align 4
  %200 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %ioaddr, align 8
  tail call void %199(ptr noundef %201, i8 noundef zeroext 4) #14
  %202 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hw.i, align 4
  %dma.5 = getelementptr inbounds %struct.sxgbe_ops, ptr %203, i32 0, i32 2
  %204 = ptrtoint ptr %dma.5 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dma.5, align 4
  %enable_tso.5 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %205, i32 0, i32 14
  %206 = ptrtoint ptr %enable_tso.5 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %enable_tso.5, align 4
  %208 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %ioaddr, align 8
  tail call void %207(ptr noundef %209, i8 noundef zeroext 5) #14
  %210 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hw.i, align 4
  %dma.6 = getelementptr inbounds %struct.sxgbe_ops, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %dma.6 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dma.6, align 4
  %enable_tso.6 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %213, i32 0, i32 14
  %214 = ptrtoint ptr %enable_tso.6 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %enable_tso.6, align 4
  %216 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %ioaddr, align 8
  tail call void %215(ptr noundef %217, i8 noundef zeroext 6) #14
  %218 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hw.i, align 4
  %dma.7 = getelementptr inbounds %struct.sxgbe_ops, ptr %219, i32 0, i32 2
  %220 = ptrtoint ptr %dma.7 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dma.7, align 4
  %enable_tso.7 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %221, i32 0, i32 14
  %222 = ptrtoint ptr %enable_tso.7 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %enable_tso.7, align 4
  %224 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %ioaddr, align 8
  tail call void %223(ptr noundef %225, i8 noundef zeroext 7) #14
  br label %if.end30

if.end30:                                         ; preds = %for.body.preheader, %netif_msg_init.exit.if.end30_crit_edge
  %226 = ptrtoint ptr %rx_csum_offload.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %rx_csum_offload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool32.not = icmp eq i32 %227, 0
  br i1 %tobool32.not, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %228 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %hw.i, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %enable_rx_csum = getelementptr inbounds %struct.sxgbe_core_ops, ptr %231, i32 0, i32 15
  %232 = ptrtoint ptr %enable_rx_csum to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %enable_rx_csum, align 4
  %234 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %ioaddr, align 8
  tail call void %233(ptr noundef %235) #14
  %rxcsum_insertion = getelementptr i8, ptr %call, i32 2672
  %236 = ptrtoint ptr %rxcsum_insertion to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 1, ptr %rxcsum_insertion, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end30.if.end36_crit_edge
  %rx_pause = getelementptr i8, ptr %call, i32 2864
  %237 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 1, ptr %rx_pause, align 8
  %tx_pause = getelementptr i8, ptr %call, i32 2865
  %238 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %tx_pause, align 1
  %239 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %plat, align 8
  %riwt_off = getelementptr inbounds %struct.sxgbe_plat_data, ptr %240, i32 0, i32 10
  %241 = ptrtoint ptr %riwt_off to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %riwt_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool38.not = icmp eq i32 %242, 0
  br i1 %tobool38.not, label %if.then39, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #16
  %use_riwt = getelementptr i8, ptr %call, i32 3320
  %243 = ptrtoint ptr %use_riwt to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 1, ptr %use_riwt, align 8
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #17
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %napi = getelementptr i8, ptr %call, i32 2424
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @sxgbe_poll, i32 noundef 64) #14
  %stats_lock = getelementptr i8, ptr %call, i32 2676
  tail call void @__raw_spin_lock_init(ptr noundef %stats_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @sxgbe_drv_probe.__key, i16 noundef signext 3) #14
  %244 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %device2, align 8
  %call47 = tail call ptr @clk_get(ptr noundef %245, ptr noundef nonnull @.str.7) #14
  %sxgbe_clk = getelementptr i8, ptr %call, i32 3300
  %246 = ptrtoint ptr %sxgbe_clk to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call47, ptr %sxgbe_clk, align 4
  %cmp.i169 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef nonnull %call, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #17
  br label %error_napi_del

if.end51:                                         ; preds = %if.end41
  %247 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %plat, align 8
  %clk_csr = getelementptr inbounds %struct.sxgbe_plat_data, ptr %248, i32 0, i32 6
  %249 = ptrtoint ptr %clk_csr to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %clk_csr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool53.not = icmp eq i32 %250, 0
  br i1 %tobool53.not, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sxgbe_clk_csr_set(ptr noundef %add.ptr.i)
  br label %if.end58

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  %clk_csr57 = getelementptr i8, ptr %call, i32 3304
  %251 = ptrtoint ptr %clk_csr57 to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %clk_csr57, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then54
  %call59 = tail call i32 @sxgbe_mdio_register(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %do.body64, label %if.end77

do.body64:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_drv_probe.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_drv_probe, %if.then70)) #14
          to label %error_clk_put [label %if.then70], !srcloc !227

if.then70:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #16
  %252 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %plat, align 8
  %bus_id = getelementptr inbounds %struct.sxgbe_plat_data, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %bus_id to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %bus_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_drv_probe.__UNIQUE_ID_ddebug496, ptr noundef nonnull %call, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef %255) #14
  br label %error_clk_put

if.end77:                                         ; preds = %if.end58
  %call78 = tail call i32 @register_netdev(ptr noundef nonnull %call) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end86, label %do.end83

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.5, i32 noundef %call78) #17
  %call87 = tail call i32 @sxgbe_mdio_unregister(ptr noundef nonnull %call) #14
  br label %error_clk_put

if.end86:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @sxgbe_check_ether_addr(ptr noundef %add.ptr.i)
  br label %cleanup

error_clk_put:                                    ; preds = %do.end83, %if.then70, %do.body64
  %256 = ptrtoint ptr %sxgbe_clk to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %sxgbe_clk, align 4
  tail call void @clk_put(ptr noundef %257) #14
  br label %error_napi_del

error_napi_del:                                   ; preds = %error_clk_put, %if.then50
  tail call void @__netif_napi_del(ptr noundef %napi) #14
  tail call void @synchronize_net() #14
  br label %error_free_hw

error_free_hw:                                    ; preds = %error_napi_del, %for.body.i.error_free_hw_crit_edge, %for.cond.6.i.error_free_hw_crit_edge, %for.cond.5.i.error_free_hw_crit_edge, %for.cond.4.i.error_free_hw_crit_edge, %for.cond.3.i.error_free_hw_crit_edge, %for.cond.2.i.error_free_hw_crit_edge, %for.cond.1.i.error_free_hw_crit_edge, %for.cond.i.error_free_hw_crit_edge, %if.end12.error_free_hw_crit_edge
  %258 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %hw.i, align 4
  tail call void @kfree(ptr noundef %259) #14
  br label %error_free_netdev

error_free_netdev:                                ; preds = %error_free_hw, %sxgbe_verify_args.exit.error_free_netdev_crit_edge, %while.end8.i.error_free_netdev_crit_edge, %while.body7.preheader.i.error_free_netdev_crit_edge
  tail call void @free_netdev(ptr noundef nonnull %call) #14
  br label %cleanup

cleanup:                                          ; preds = %error_free_netdev, %if.end86, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %error_free_netdev ], [ %add.ptr.i, %if.end86 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sxgbe_set_ethtool_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_poll(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %checksum.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -120
  %cur_rx_qnum = getelementptr i8, ptr %napi, i32 -24
  %0 = ptrtoint ptr %cur_rx_qnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cur_rx_qnum, align 8
  %napi_poll = getelementptr i8, ptr %napi, i32 484
  %2 = ptrtoint ptr %napi_poll to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %napi_poll, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %napi_poll, align 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %5) #14
  %arrayidx.1.i = getelementptr i8, ptr %napi, i32 -116
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %7) #14
  %arrayidx.2.i = getelementptr i8, ptr %napi, i32 -112
  %8 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2.i, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %9) #14
  %arrayidx.3.i = getelementptr i8, ptr %napi, i32 -108
  %10 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3.i, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %11) #14
  %arrayidx.4.i = getelementptr i8, ptr %napi, i32 -104
  %12 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.4.i, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %13) #14
  %arrayidx.5.i = getelementptr i8, ptr %napi, i32 -100
  %14 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.5.i, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %15) #14
  %arrayidx.6.i = getelementptr i8, ptr %napi, i32 -96
  %16 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.6.i, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %17) #14
  %arrayidx.7.i = getelementptr i8, ptr %napi, i32 -92
  %18 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.7.i, align 4
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %19) #14
  %eee_enabled.i = getelementptr i8, ptr %napi, i32 968
  %20 = ptrtoint ptr %eee_enabled.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eee_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %entry.sxgbe_tx_all_clean.exit_crit_edge, label %land.lhs.true.i

entry.sxgbe_tx_all_clean.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_tx_all_clean.exit

land.lhs.true.i:                                  ; preds = %entry
  %tx_path_in_lpi_mode.i = getelementptr i8, ptr %napi, i32 960
  %22 = ptrtoint ptr %tx_path_in_lpi_mode.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_path_in_lpi_mode.i, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool2.not.i = icmp eq i8 %23, 0
  br i1 %tobool2.not.i, label %sxgbe_enable_eee_mode.exit.i, label %land.lhs.true.i.sxgbe_tx_all_clean.exit_crit_edge

land.lhs.true.i.sxgbe_tx_all_clean.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_tx_all_clean.exit

sxgbe_enable_eee_mode.exit.i:                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw.i.i = getelementptr i8, ptr %napi, i32 236
  %24 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %set_eee_mode.i.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %set_eee_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %set_eee_mode.i.i, align 4
  %ioaddr.i.i = getelementptr i8, ptr %napi, i32 224
  %30 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr.i.i, align 8
  tail call void %29(ptr noundef %31) #14
  %eee_ctrl_timer.i = getelementptr i8, ptr %napi, i32 912
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = load i32, ptr @eee_timer, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %33) #14
  %add.i = add i32 %call2.i.i, %32
  %call3.i = tail call i32 @mod_timer(ptr noundef %eee_ctrl_timer.i, i32 noundef %add.i) #14
  br label %sxgbe_tx_all_clean.exit

sxgbe_tx_all_clean.exit:                          ; preds = %sxgbe_enable_eee_mode.exit.i, %land.lhs.true.i.sxgbe_tx_all_clean.exit_crit_edge, %entry.sxgbe_tx_all_clean.exit_crit_edge
  %34 = ptrtoint ptr %cur_rx_qnum to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cur_rx_qnum, align 8
  %dma_rx_size.i = getelementptr i8, ptr %napi, i32 -16
  %36 = ptrtoint ptr %dma_rx_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_rx_size.i, align 8
  %idxprom.i = zext i8 %35 to i32
  %arrayidx.i = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr, i32 0, i32 1, i32 %idxprom.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %cur_rx.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cur_rx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cur_rx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %checksum.i) #14
  %42 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %checksum.i, align 4, !annotation !228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp112.not.i = icmp eq i32 %budget, 0
  br i1 %cmp112.not.i, label %sxgbe_tx_all_clean.exit.while.end.i_crit_edge, label %while.body.lr.ph.i

sxgbe_tx_all_clean.exit.while.end.i_crit_edge:    ; preds = %sxgbe_tx_all_clean.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %sxgbe_tx_all_clean.exit
  %hw.i = getelementptr i8, ptr %napi, i32 236
  %xstats.i = getelementptr i8, ptr %napi, i32 444
  %rxcsum_insertion.i = getelementptr i8, ptr %napi, i32 248
  %dev.i = getelementptr i8, ptr %napi, i32 228
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %count.0114.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc.i, %cleanup.i.while.body.i_crit_edge ]
  %entry1.0113.i = phi i32 [ %41, %while.body.lr.ph.i ], [ %rem.i, %cleanup.i.while.body.i_crit_edge ]
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.i, align 4
  %dma_rx.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dma_rx.i, align 4
  %add.ptr.i = getelementptr %struct.sxgbe_rx_norm_desc, ptr %46, i32 %entry1.0113.i
  %47 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw.i, align 4
  %desc.i = getelementptr inbounds %struct.sxgbe_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc.i, align 4
  %get_rx_owner.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %50, i32 0, i32 28
  %51 = ptrtoint ptr %get_rx_owner.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %get_rx_owner.i, align 4
  %call.i = call i32 %52(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i11 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i11, label %if.end.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %inc.i = add nuw i32 %count.0114.i, 1
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i, align 4
  %cur_rx8.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cur_rx8.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_rx8.i, align 4
  %inc9.i = add i32 %56, 1
  store i32 %inc9.i, ptr %cur_rx8.i, align 4
  %rem.i = urem i32 %inc9.i, %37
  %57 = load ptr, ptr %arrayidx.i, align 4
  %dma_rx13.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %dma_rx13.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_rx13.i, align 4
  %add.ptr14.i = getelementptr %struct.sxgbe_rx_norm_desc, ptr %59, i32 %rem.i
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr14.i) #14, !srcloc !229
  %60 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hw.i, align 4
  %desc16.i = getelementptr inbounds %struct.sxgbe_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %desc16.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %desc16.i, align 4
  %rx_wbstatus.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %63, i32 0, i32 34
  %64 = ptrtoint ptr %rx_wbstatus.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rx_wbstatus.i, align 4
  %call17.i = call i32 %65(ptr noundef %add.ptr.i, ptr noundef %xstats.i, ptr noundef nonnull %checksum.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end.i.cleanup.i_crit_edge, label %if.end22.i, !prof !226

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i

if.end22.i:                                       ; preds = %if.end.i
  %66 = ptrtoint ptr %rxcsum_insertion.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rxcsum_insertion.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool23.not.i = icmp eq i32 %67, 0
  br i1 %tobool23.not.i, label %if.then32.i, label %if.end22.i.if.end33.i_crit_edge, !prof !226

if.end22.i.if.end33.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33.i

if.then32.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #16
  %68 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %checksum.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then32.i, %if.end22.i.if.end33.i_crit_edge
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx.i, align 4
  %rx_skbuff.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rx_skbuff.i, align 4
  %arrayidx37.i = getelementptr ptr, ptr %72, i32 %entry1.0113.i
  %73 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx37.i, align 4
  %tobool38.not.i = icmp eq ptr %74, null
  br i1 %tobool38.not.i, label %if.then47.i, label %if.end33.i.if.end48.i_crit_edge, !prof !226

if.end33.i.if.end48.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end48.i

if.then47.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %76, ptr noundef nonnull @.str.70) #17
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then47.i, %if.end33.i.if.end48.i_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 19
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %78, i32 -2
  call void asm sideeffect "pld\09${0:a}", "r"(ptr %add.ptr49.i) #14, !srcloc !229
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i, align 4
  %rx_skbuff53.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %rx_skbuff53.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rx_skbuff53.i, align 4
  %arrayidx54.i = getelementptr ptr, ptr %82, i32 %entry1.0113.i
  %83 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %arrayidx54.i, align 4
  %84 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hw.i, align 4
  %desc56.i = getelementptr inbounds %struct.sxgbe_ops, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %desc56.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc56.i, align 4
  %get_rx_frame_len.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %87, i32 0, i32 31
  %88 = ptrtoint ptr %get_rx_frame_len.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_rx_frame_len.i, align 4
  %call57.i = call i32 %89(ptr noundef %add.ptr.i) #14
  %call58.i = call ptr @skb_put(ptr noundef %74, i32 noundef %call57.i) #14
  %90 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %checksum.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %74, i32 0, i32 15
  %92 = trunc i32 %91 to i16
  %93 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.value.i = shl i16 %92, 9
  %bf.shl.i = and i16 %bf.value.i, 1536
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.shl.i, %bf.clear.i
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp59.i = icmp eq i32 %91, 0
  br i1 %cmp59.i, label %if.then61.i, label %if.else.i

if.then61.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %call62.i = call i32 @netif_receive_skb(ptr noundef %74) #14
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #16
  %call63.i = call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %74) #14
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.else.i, %if.then61.i, %if.end.i.cleanup.i_crit_edge
  %exitcond.not.i = icmp eq i32 %inc.i, %budget
  br i1 %exitcond.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %sxgbe_tx_all_clean.exit.while.end.i_crit_edge
  %count.0.lcssa.i = phi i32 [ 0, %sxgbe_tx_all_clean.exit.while.end.i_crit_edge ], [ %budget, %cleanup.i.while.end.i_crit_edge ], [ %count.0114.i, %while.body.i.while.end.i_crit_edge ]
  %94 = ptrtoint ptr %dma_rx_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_rx_size.i, align 8
  %dma_buf_sz.i.i = getelementptr i8, ptr %napi, i32 -12
  %96 = ptrtoint ptr %dma_buf_sz.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_buf_sz.i.i, align 4
  %98 = ptrtoint ptr %cur_rx_qnum to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cur_rx_qnum, align 8
  %dev.i.i = getelementptr i8, ptr %napi, i32 228
  %idxprom.i.i = zext i8 %99 to i32
  %arrayidx.i.i = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr, i32 0, i32 1, i32 %idxprom.i.i
  %100 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.i.i, align 4
  %cur_rx92.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %cur_rx92.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %cur_rx92.i.i, align 4
  %dirty_rx93.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %101, i32 0, i32 4
  %104 = ptrtoint ptr %dirty_rx93.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dirty_rx93.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %105)
  %cmp.not94.i.i = icmp eq i32 %103, %105
  br i1 %cmp.not94.i.i, label %while.end.i.sxgbe_rx.exit_crit_edge, label %for.body.lr.ph.i.i

while.end.i.sxgbe_rx.exit_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_rx.exit

for.body.lr.ph.i.i:                               ; preds = %while.end.i
  %add.i.i.i.i = add i32 %97, 2
  %device.i.i = getelementptr i8, ptr %napi, i32 232
  %hw.i.i12 = getelementptr i8, ptr %napi, i32 236
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %106 = phi i32 [ %105, %for.body.lr.ph.i.i ], [ %165, %for.inc.i.i.for.body.i.i_crit_edge ]
  %107 = phi ptr [ %101, %for.body.lr.ph.i.i ], [ %161, %for.inc.i.i.for.body.i.i_crit_edge ]
  %rem.i.i = urem i32 %106, %95
  %dma_rx.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dma_rx.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.sxgbe_rx_norm_desc, ptr %109, i32 %rem.i.i
  %rx_skbuff.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %107, i32 0, i32 2
  %110 = ptrtoint ptr %rx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rx_skbuff.i.i, align 4
  %arrayidx15.i.i = getelementptr ptr, ptr %111, i32 %rem.i.i
  %112 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx15.i.i, align 4
  %cmp16.i.i = icmp eq ptr %113, null
  br i1 %cmp16.i.i, label %if.then.i.i13, label %for.body.i.i.for.inc.i.i_crit_edge, !prof !230

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.then.i.i13:                                    ; preds = %for.body.i.i
  %114 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev.i.i, align 4
  %call.i.i.i.i = call ptr @__netdev_alloc_skb(ptr noundef %115, i32 noundef %add.i.i.i.i, i32 noundef 2592) #14
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i13.sxgbe_rx.exit_crit_edge, label %if.end.i.i14

if.then.i.i13.sxgbe_rx.exit_crit_edge:            ; preds = %if.then.i.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_rx.exit

if.end.i.i14:                                     ; preds = %if.then.i.i13
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 19
  %116 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %117, i32 2
  store ptr %add.ptr.i.i.i.i.i, ptr %data.i.i.i.i.i, align 4
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %118 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i = getelementptr i8, ptr %119, i32 2
  store ptr %add.ptr1.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %120 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx.i.i, align 4
  %rx_skbuff29.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %rx_skbuff29.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rx_skbuff29.i.i, align 4
  %arrayidx30.i.i = getelementptr ptr, ptr %123, i32 %rem.i.i
  %124 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i.i.i.i, ptr %arrayidx30.i.i, align 4
  %125 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device.i.i, align 8
  %127 = load ptr, ptr %data.i.i.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %127) #14
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i14
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.cleanup.i.i_crit_edge, label %if.then.i.i.i, !prof !230

land.rhs.i.i.i.cleanup.i.i_crit_edge:             ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %126) #14
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %126, i32 0, i32 3
  %128 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i88.i.i = icmp eq ptr %129, null
  br i1 %tobool.not.i.i88.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %126, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %131, %if.end.i.i.i.i ], [ %129, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #14
  br label %cleanup.i.i

if.end39.i.i.i:                                   ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #16
  call void @debug_dma_map_single(ptr noundef %126, ptr noundef %127, i32 noundef %97) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %132 = load ptr, ptr @mem_map, align 4
  %133 = ptrtoint ptr %127 to i32
  %sub.i.i.i15 = add i32 %133, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i15, 12
  %add.ptr.i.i.i = getelementptr %struct.page, ptr %132, i32 %shr.i.i.i
  %and.i.i.i = and i32 %133, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %126, ptr noundef %add.ptr.i.i.i, i32 noundef %and.i.i.i, i32 noundef %97, i32 noundef 2, i32 noundef 0) #14
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end39.i.i.i, %dev_name.exit.i.i.i, %land.rhs.i.i.i.cleanup.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call41.i.i.i, %if.end39.i.i.i ], [ -1, %dev_name.exit.i.i.i ], [ -1, %land.rhs.i.i.i.cleanup.i.i_crit_edge ]
  %134 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i, align 4
  %rx_skbuff_dma.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %135, i32 0, i32 7
  %136 = ptrtoint ptr %rx_skbuff_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rx_skbuff_dma.i.i, align 4
  %arrayidx35.i.i = getelementptr i32, ptr %137, i32 %rem.i.i
  %138 = ptrtoint ptr %arrayidx35.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %retval.0.i.i.i, ptr %arrayidx35.i.i, align 4
  %139 = load ptr, ptr %arrayidx.i.i, align 4
  %rx_skbuff_dma39.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %139, i32 0, i32 7
  %140 = ptrtoint ptr %rx_skbuff_dma39.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rx_skbuff_dma39.i.i, align 4
  %arrayidx40.i.i = getelementptr i32, ptr %141, i32 %rem.i.i
  %142 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx40.i.i, align 4
  %conv.i.i = zext i32 %143 to i64
  %rdes23.i.i = getelementptr %struct.sxgbe_rx_norm_desc, ptr %109, i32 %rem.i.i, i32 1
  %144 = ptrtoint ptr %rdes23.i.i to i32
  call void @__asan_load8_noabort(i32 %144)
  %bf.load.i.i = load i64, ptr %rdes23.i.i, align 8
  %bf.shl.i.i = shl nuw nsw i64 %conv.i.i, 2
  %bf.clear.i.i = and i64 %bf.load.i.i, 3
  %bf.set.i.i = or i64 %bf.clear.i.i, %bf.shl.i.i
  store i64 %bf.set.i.i, ptr %rdes23.i.i, align 8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %cleanup.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !231
  call void @arm_heavy_mb() #14
  %145 = ptrtoint ptr %hw.i.i12 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %hw.i.i12, align 4
  %desc.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %desc.i.i, align 4
  %set_rx_owner.i.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %148, i32 0, i32 29
  %149 = ptrtoint ptr %set_rx_owner.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %set_rx_owner.i.i, align 4
  call void %150(ptr noundef %add.ptr.i.i) #14
  %151 = ptrtoint ptr %hw.i.i12 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %hw.i.i12, align 4
  %desc43.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %desc43.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %desc43.i.i, align 4
  %set_rx_int_on_com.i.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %154, i32 0, i32 30
  %155 = ptrtoint ptr %set_rx_int_on_com.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %set_rx_int_on_com.i.i, align 4
  call void %156(ptr noundef %add.ptr.i.i) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !232
  call void @arm_heavy_mb() #14
  %157 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx.i.i, align 4
  %dirty_rx54.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %dirty_rx54.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dirty_rx54.i.i, align 4
  %inc.i.i = add i32 %160, 1
  store i32 %inc.i.i, ptr %dirty_rx54.i.i, align 4
  %161 = load ptr, ptr %arrayidx.i.i, align 4
  %cur_rx.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %161, i32 0, i32 3
  %162 = ptrtoint ptr %cur_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cur_rx.i.i, align 4
  %dirty_rx.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %161, i32 0, i32 4
  %164 = ptrtoint ptr %dirty_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dirty_rx.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %163, %165
  br i1 %cmp.not.i.i, label %for.inc.i.i.sxgbe_rx.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

for.inc.i.i.sxgbe_rx.exit_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_rx.exit

sxgbe_rx.exit:                                    ; preds = %for.inc.i.i.sxgbe_rx.exit_crit_edge, %if.then.i.i13.sxgbe_rx.exit_crit_edge, %while.end.i.sxgbe_rx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %checksum.i) #14
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0.lcssa.i, i32 %budget)
  %cmp = icmp slt i32 %count.0.lcssa.i, %budget
  br i1 %cmp, label %if.then, label %sxgbe_rx.exit.if.end_crit_edge

sxgbe_rx.exit.if.end_crit_edge:                   ; preds = %sxgbe_rx.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %sxgbe_rx.exit
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %count.0.lcssa.i) #14
  %hw = getelementptr i8, ptr %napi, i32 236
  %166 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %167, i32 0, i32 2
  %168 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dma, align 4
  %enable_dma_irq = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %enable_dma_irq to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %enable_dma_irq, align 4
  %ioaddr = getelementptr i8, ptr %napi, i32 224
  %172 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %ioaddr, align 8
  %conv = zext i8 %1 to i32
  call void %171(ptr noundef %173, i32 noundef %conv) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %sxgbe_rx.exit.if.end_crit_edge
  ret i32 %count.0.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sxgbe_clk_csr_set(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sxgbe_clk = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 27
  %0 = ptrtoint ptr %sxgbe_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sxgbe_clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000000, i32 %call)
  %cmp = icmp ult i32 %call, 150000000
  br i1 %cmp, label %entry.if.end24.sink.split_crit_edge, label %if.else

entry.if.end24.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.sink.split

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000001, i32 %call)
  %cmp1 = icmp ult i32 %call, 250000001
  br i1 %cmp1, label %if.else.if.end24.sink.split_crit_edge, label %if.else4

if.else.if.end24.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.sink.split

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000001, i32 %call)
  %cmp5 = icmp ult i32 %call, 300000001
  br i1 %cmp5, label %if.else4.if.end24.sink.split_crit_edge, label %if.else8

if.else4.if.end24.sink.split_crit_edge:           ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.sink.split

if.else8:                                         ; preds = %if.else4
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000001, i32 %call)
  %cmp9 = icmp ult i32 %call, 350000001
  br i1 %cmp9, label %if.else8.if.end24.sink.split_crit_edge, label %if.else12

if.else8.if.end24.sink.split_crit_edge:           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.sink.split

if.else12:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000001, i32 %call)
  %cmp13 = icmp ult i32 %call, 400000001
  br i1 %cmp13, label %if.else12.if.end24.sink.split_crit_edge, label %if.else16

if.else12.if.end24.sink.split_crit_edge:          ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.sink.split

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000001, i32 %call)
  %cmp17 = icmp ult i32 %call, 500000001
  br i1 %cmp17, label %if.else16.if.end24.sink.split_crit_edge, label %if.else16.if.end24_crit_edge

if.else16.if.end24_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.else16.if.end24.sink.split_crit_edge:          ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.else16.if.end24.sink.split_crit_edge, %if.else12.if.end24.sink.split_crit_edge, %if.else8.if.end24.sink.split_crit_edge, %if.else4.if.end24.sink.split_crit_edge, %if.else.if.end24.sink.split_crit_edge, %entry.if.end24.sink.split_crit_edge
  %.sink = phi i32 [ 0, %entry.if.end24.sink.split_crit_edge ], [ 1, %if.else.if.end24.sink.split_crit_edge ], [ 2, %if.else4.if.end24.sink.split_crit_edge ], [ 3, %if.else8.if.end24.sink.split_crit_edge ], [ 4, %if.else12.if.end24.sink.split_crit_edge ], [ 5, %if.else16.if.end24.sink.split_crit_edge ]
  %clk_csr3 = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 28
  %2 = ptrtoint ptr %clk_csr3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %clk_csr3, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else16.if.end24_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_mdio_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sxgbe_check_ether_addr(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %addr.i = alloca [6 x i8], align 1
  %addr = alloca [6 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
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
  call void @__sanitizer_cov_trace_pc() #16
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
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.then_crit_edge, label %is_valid_ether_addr.exit.do.end_crit_edge

is_valid_ether_addr.exit.do.end_crit_edge:        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

is_valid_ether_addr.exit.if.then_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

if.then:                                          ; preds = %is_valid_ether_addr.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #14
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 11
  %9 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %get_umac_addr = getelementptr inbounds %struct.sxgbe_core_ops, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %get_umac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_umac_addr, align 4
  %ioaddr = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 8
  %16 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioaddr, align 8
  call void %15(ptr noundef %17, ptr noundef nonnull %addr, i32 noundef 0) #14
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 4
  %20 = and i32 %19, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not.i16 = icmp eq i32 %20, 0
  br i1 %tobool.i.not.i16, label %is_valid_ether_addr.exit22, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

is_valid_ether_addr.exit22:                       ; preds = %if.then
  %21 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 4
  %conv.i.i18 = zext i16 %23 to i32
  %or.i.i19 = or i32 %19, %conv.i.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i19)
  %cmp.i.i20.not = icmp eq i32 %or.i.i19, 0
  br i1 %cmp.i.i20.not, label %is_valid_ether_addr.exit22.if.else_crit_edge, label %if.then3

is_valid_ether_addr.exit22.if.else_crit_edge:     ; preds = %is_valid_ether_addr.exit22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then3:                                         ; preds = %is_valid_ether_addr.exit22
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  call void @dev_addr_mod(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #14
  br label %if.end

if.else:                                          ; preds = %is_valid_ether_addr.exit22.if.else_crit_edge, %if.then.if.else_crit_edge
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #14
  %28 = call ptr @memset(ptr %addr.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %29 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %addr.i, align 1
  %31 = and i8 %30, -4
  %32 = or i8 %31, 2
  store i8 %32, ptr %addr.i, align 1
  call void @dev_addr_mod(ptr noundef %27, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #14
  %addr_assign_type.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 55
  %33 = ptrtoint ptr %addr_assign_type.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %addr_assign_type.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #14
  br label %do.end

do.end:                                           ; preds = %if.end, %is_valid_ether_addr.exit.do.end_crit_edge
  %device = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 10
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 8
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %dev_addr9 = getelementptr inbounds %struct.net_device, ptr %37, i32 0, i32 86
  %38 = ptrtoint ptr %dev_addr9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_addr9, align 64
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.71, ptr noundef %39) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_mdio_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sxgbe_drv_remove(ptr noundef %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %ndev, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.sxgbe_drv_remove) #17
  %hw = getelementptr i8, ptr %ndev, i32 2660
  %ioaddr = getelementptr i8, ptr %ndev, i32 2648
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %disable_rxqueue = getelementptr inbounds %struct.sxgbe_core_ops, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %disable_rxqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_rxqueue, align 4
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 8
  tail call void %5(ptr noundef %7, i32 noundef 0) #14
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %disable_rxqueue.1 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %disable_rxqueue.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable_rxqueue.1, align 4
  %14 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr, align 8
  tail call void %13(ptr noundef %15, i32 noundef 1) #14
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %disable_rxqueue.2 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %disable_rxqueue.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disable_rxqueue.2, align 4
  %22 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr, align 8
  tail call void %21(ptr noundef %23, i32 noundef 2) #14
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %disable_rxqueue.3 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %27, i32 0, i32 18
  %28 = ptrtoint ptr %disable_rxqueue.3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %disable_rxqueue.3, align 4
  %30 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioaddr, align 8
  tail call void %29(ptr noundef %31, i32 noundef 3) #14
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %disable_rxqueue.4 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %35, i32 0, i32 18
  %36 = ptrtoint ptr %disable_rxqueue.4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %disable_rxqueue.4, align 4
  %38 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioaddr, align 8
  tail call void %37(ptr noundef %39, i32 noundef 4) #14
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %disable_rxqueue.5 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %disable_rxqueue.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %disable_rxqueue.5, align 4
  %46 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr, align 8
  tail call void %45(ptr noundef %47, i32 noundef 5) #14
  %48 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hw, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %disable_rxqueue.6 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %51, i32 0, i32 18
  %52 = ptrtoint ptr %disable_rxqueue.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %disable_rxqueue.6, align 4
  %54 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr, align 8
  tail call void %53(ptr noundef %55, i32 noundef 6) #14
  %56 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hw, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %disable_rxqueue.7 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %disable_rxqueue.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %disable_rxqueue.7, align 4
  %62 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioaddr, align 8
  tail call void %61(ptr noundef %63, i32 noundef 7) #14
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %disable_rxqueue.8 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %67, i32 0, i32 18
  %68 = ptrtoint ptr %disable_rxqueue.8 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %disable_rxqueue.8, align 4
  %70 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ioaddr, align 8
  tail call void %69(ptr noundef %71, i32 noundef 8) #14
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %disable_rxqueue.9 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %75, i32 0, i32 18
  %76 = ptrtoint ptr %disable_rxqueue.9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %disable_rxqueue.9, align 4
  %78 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr, align 8
  tail call void %77(ptr noundef %79, i32 noundef 9) #14
  %80 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hw, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %disable_rxqueue.10 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %83, i32 0, i32 18
  %84 = ptrtoint ptr %disable_rxqueue.10 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %disable_rxqueue.10, align 4
  %86 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioaddr, align 8
  tail call void %85(ptr noundef %87, i32 noundef 10) #14
  %88 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hw, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %disable_rxqueue.11 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %91, i32 0, i32 18
  %92 = ptrtoint ptr %disable_rxqueue.11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %disable_rxqueue.11, align 4
  %94 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ioaddr, align 8
  tail call void %93(ptr noundef %95, i32 noundef 11) #14
  %96 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %hw, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %disable_rxqueue.12 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %99, i32 0, i32 18
  %100 = ptrtoint ptr %disable_rxqueue.12 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %disable_rxqueue.12, align 4
  %102 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ioaddr, align 8
  tail call void %101(ptr noundef %103, i32 noundef 12) #14
  %104 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %hw, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %disable_rxqueue.13 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %107, i32 0, i32 18
  %108 = ptrtoint ptr %disable_rxqueue.13 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %disable_rxqueue.13, align 4
  %110 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ioaddr, align 8
  tail call void %109(ptr noundef %111, i32 noundef 13) #14
  %112 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 4
  %disable_rxqueue.14 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %115, i32 0, i32 18
  %116 = ptrtoint ptr %disable_rxqueue.14 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %disable_rxqueue.14, align 4
  %118 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ioaddr, align 8
  tail call void %117(ptr noundef %119, i32 noundef 14) #14
  %120 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw, align 4
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %121, align 4
  %disable_rxqueue.15 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %123, i32 0, i32 18
  %124 = ptrtoint ptr %disable_rxqueue.15 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %disable_rxqueue.15, align 4
  %126 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ioaddr, align 8
  tail call void %125(ptr noundef %127, i32 noundef 15) #14
  %128 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %129, i32 0, i32 2
  %130 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dma, align 4
  %stop_rx = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %131, i32 0, i32 10
  %132 = ptrtoint ptr %stop_rx to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %stop_rx, align 4
  %134 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ioaddr, align 8
  tail call void %133(ptr noundef %135, i32 noundef 16) #14
  %136 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %hw, align 4
  %dma6 = getelementptr inbounds %struct.sxgbe_ops, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %dma6 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dma6, align 4
  %stop_tx = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %139, i32 0, i32 7
  %140 = ptrtoint ptr %stop_tx to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %stop_tx, align 4
  %142 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ioaddr, align 8
  tail call void %141(ptr noundef %143, i32 noundef 8) #14
  %144 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %hw, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %145, align 4
  %enable_tx = getelementptr inbounds %struct.sxgbe_core_ops, ptr %147, i32 0, i32 7
  %148 = ptrtoint ptr %enable_tx to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %enable_tx, align 4
  %150 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ioaddr, align 8
  tail call void %149(ptr noundef %151, i1 noundef zeroext false) #14
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %enable_rx = getelementptr inbounds %struct.sxgbe_core_ops, ptr %155, i32 0, i32 6
  %156 = ptrtoint ptr %enable_rx to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %enable_rx, align 4
  %158 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %ioaddr, align 8
  tail call void %157(ptr noundef %159, i1 noundef zeroext false) #14
  tail call void @unregister_netdev(ptr noundef %ndev) #14
  %call14 = tail call i32 @sxgbe_mdio_unregister(ptr noundef %ndev) #14
  %sxgbe_clk = getelementptr i8, ptr %ndev, i32 3300
  %160 = ptrtoint ptr %sxgbe_clk to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %sxgbe_clk, align 4
  tail call void @clk_put(ptr noundef %161) #14
  %napi = getelementptr i8, ptr %ndev, i32 2424
  tail call void @__netif_napi_del(ptr noundef %napi) #14
  tail call void @synchronize_net() #14
  %162 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %hw, align 4
  tail call void @kfree(ptr noundef %163) #14
  tail call void @free_netdev(ptr noundef %ndev) #14
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sxgbe_suspend(ptr nocapture noundef readnone %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sxgbe_resume(ptr nocapture noundef readnone %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sxgbe_freeze(ptr nocapture noundef readnone %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @sxgbe_restore(ptr nocapture noundef readnone %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -38
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @sxgbe_unregister_platform() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sxgbe_unregister_platform() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sxgbe_register_platform() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_cmdline_opt(ptr noundef %str) #5 section ".init.text" align 64 {
entry:
  %str.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %str, ptr %str.addr, align 4
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %call12 = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.76) #14
  %cmp.not13 = icmp eq ptr %call12, null
  br i1 %cmp.not13, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

while.body:                                       ; preds = %if.end9.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call14 = phi ptr [ %call, %if.end9.while.body_crit_edge ], [ %call12, %while.cond.preheader.while.body_crit_edge ]
  %call2 = call i32 @strncmp(ptr noundef nonnull %call14, ptr noundef nonnull dereferenceable(11) @.str.77, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %while.body.if.end9_crit_edge

while.body.if.end9_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then4:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %call14, i32 10
  %call5 = call i32 @kstrtoint(ptr noundef %add.ptr, i32 noundef 0, ptr noundef nonnull @eee_timer) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end9_crit_edge, label %do.end

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.end9:                                          ; preds = %if.then4.if.end9_crit_edge, %while.body.if.end9_crit_edge
  %call = call ptr @strsep(ptr noundef nonnull %str.addr, ptr noundef nonnull @.str.76) #14
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %if.end9.cleanup_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end9.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sxgbe_get_core_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sxgbe_get_desc_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sxgbe_get_dma_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sxgbe_get_mtl_ops() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sxgbe_clk = getelementptr i8, ptr %dev, i32 3300
  %0 = ptrtoint ptr %sxgbe_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sxgbe_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @clk_unprepare(ptr noundef %1) #14
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  tail call fastcc void @sxgbe_check_ether_addr(ptr noundef %add.ptr.i)
  %call2 = tail call fastcc i32 @sxgbe_init_phy(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__.sxgbe_open, i32 noundef %call2) #17
  br label %phy_error

if.end:                                           ; preds = %clk_prepare_enable.exit
  %dma_tx_size = getelementptr i8, ptr %dev, i32 2404
  %2 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %dma_tx_size, align 4
  %dma_rx_size = getelementptr i8, ptr %dev, i32 2408
  %3 = ptrtoint ptr %dma_rx_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1024, ptr %dma_rx_size, align 8
  %dma_buf_sz = getelementptr i8, ptr %dev, i32 2412
  %4 = ptrtoint ptr %dma_buf_sz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2048, ptr %dma_buf_sz, align 4
  %tx_tc = getelementptr i8, ptr %dev, i32 3328
  %5 = ptrtoint ptr %tx_tc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 64, ptr %tx_tc, align 8
  %rx_tc = getelementptr i8, ptr %dev, i32 3332
  %6 = ptrtoint ptr %rx_tc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 64, ptr %rx_tc, align 4
  %device.i = getelementptr i8, ptr %dev, i32 2656
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i237.for.body.i_crit_edge, %if.end
  %queue_num.045.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i237.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 8
  %conv.i = trunc i32 %queue_num.045.i to i8
  %arrayidx.i = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %queue_num.045.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.45) #17
  br label %do.end.i

if.end.i.i:                                       ; preds = %for.body.i
  %dma_tx_phy.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 3
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %8, i32 noundef 12288, ptr noundef %dma_tx_phy.i.i, i32 noundef 3264, i32 noundef 0) #14
  %dma_tx.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i.i, ptr %dma_tx.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.end.i_crit_edge, label %devm_kcalloc.exit.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end.i

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i.i
  %call5.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 2048, i32 noundef 3520) #14
  %tx_skbuff_dma.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 4
  %12 = ptrtoint ptr %tx_skbuff_dma.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i.i.i, ptr %tx_skbuff_dma.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %devm_kcalloc.exit.i.i.dmamem_err.i.i_crit_edge, label %devm_kcalloc.exit41.i.i

devm_kcalloc.exit.i.i.dmamem_err.i.i_crit_edge:   ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dmamem_err.i.i

devm_kcalloc.exit41.i.i:                          ; preds = %devm_kcalloc.exit.i.i
  %call5.i.i38.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 2048, i32 noundef 3520) #14
  %tx_skbuff.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i38.i.i, ptr %tx_skbuff.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %call5.i.i38.i.i, null
  br i1 %tobool12.not.i.i, label %devm_kcalloc.exit41.i.i.dmamem_err.i.i_crit_edge, label %if.end.i237

devm_kcalloc.exit41.i.i.dmamem_err.i.i_crit_edge: ; preds = %devm_kcalloc.exit41.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dmamem_err.i.i

dmamem_err.i.i:                                   ; preds = %devm_kcalloc.exit41.i.i.dmamem_err.i.i_crit_edge, %devm_kcalloc.exit.i.i.dmamem_err.i.i_crit_edge
  %dma_tx.i.i.le = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 2
  %14 = ptrtoint ptr %dma_tx.i.i.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_tx.i.i.le, align 4
  %16 = ptrtoint ptr %dma_tx_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_tx_phy.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %8, i32 noundef 12288, ptr noundef %15, i32 noundef %17, i32 noundef 0) #14
  br label %do.end.i

do.end.i:                                         ; preds = %dmamem_err.i.i, %if.end.i.i.do.end.i_crit_edge, %do.end.i.i
  %dev.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue_num.045.i)
  %tobool20.not49.i = icmp eq i32 %queue_num.045.i, 0
  br i1 %tobool20.not49.i, label %do.end.i.init_dma_desc_rings.exit_crit_edge, label %while.body.i

do.end.i.init_dma_desc_rings.exit_crit_edge:      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

if.end.i237:                                      ; preds = %devm_kcalloc.exit41.i.i
  %queue_no15.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 14
  %18 = ptrtoint ptr %queue_no15.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %queue_no15.i.i, align 2
  %dirty_tx.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 8
  %19 = ptrtoint ptr %dirty_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dirty_tx.i.i, align 4
  %cur_tx.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %10, i32 0, i32 7
  %20 = ptrtoint ptr %cur_tx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cur_tx.i.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %priv_ptr.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %priv_ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i, ptr %priv_ptr.i, align 4
  %inc.i = add nuw nsw i32 %queue_num.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %if.end.i237.for.body7.i_crit_edge, label %if.end.i237.for.body.i_crit_edge

if.end.i237.for.body.i_crit_edge:                 ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end.i237.for.body7.i_crit_edge:                ; preds = %if.end.i237
  br label %for.body7.i

for.body7.i:                                      ; preds = %if.end13.i.for.body7.i_crit_edge, %if.end.i237.for.body7.i_crit_edge
  %queue_num.146.i = phi i32 [ %inc18.i, %if.end13.i.for.body7.i_crit_edge ], [ 0, %if.end.i237.for.body7.i_crit_edge ]
  %conv8.i = trunc i32 %queue_num.146.i to i8
  %arrayidx9.i = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr.i, i32 0, i32 1, i32 %queue_num.146.i
  %24 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx9.i, align 4
  %call10.i = tail call fastcc i32 @init_rx_ring(ptr noundef %dev, i8 noundef zeroext %conv8.i, ptr noundef %25, i32 noundef 1024) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body7.i
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queue_num.146.i)
  %tobool26.not47.i = icmp eq i32 %queue_num.146.i, 0
  br i1 %tobool26.not47.i, label %if.then12.i.init_dma_desc_rings.exit_crit_edge, label %if.then12.i.while.body27.i_crit_edge

if.then12.i.while.body27.i_crit_edge:             ; preds = %if.then12.i
  br label %while.body27.i

if.then12.i.init_dma_desc_rings.exit_crit_edge:   ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

if.end13.i:                                       ; preds = %for.body7.i
  %26 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx9.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %27, align 4
  %inc18.i = add nuw nsw i32 %queue_num.146.i, 1
  %exitcond73.not.i = icmp eq i32 %inc18.i, 16
  br i1 %exitcond73.not.i, label %for.end19.i, label %if.end13.i.for.body7.i_crit_edge

if.end13.i.for.body7.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body7.i

for.end19.i:                                      ; preds = %if.end13.i
  %29 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_tx_size, align 4
  %31 = ptrtoint ptr %dma_rx_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dma_rx_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp246.not.i.i = icmp eq i32 %32, 0
  %hw.i.i = getelementptr i8, ptr %dev, i32 2660
  %use_riwt.i.i = getelementptr i8, ptr %dev, i32 3320
  %mode.i.i = getelementptr i8, ptr %dev, i32 3308
  %sub.i.i = add i32 %32, -1
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.inc6.i.i.for.cond1.preheader.i.i_crit_edge, %for.end19.i
  %j.048.i.i = phi i32 [ 0, %for.end19.i ], [ %inc7.i.i, %for.inc6.i.i.for.cond1.preheader.i.i_crit_edge ]
  br i1 %cmp246.not.i.i, label %for.cond1.preheader.i.i.for.inc6.i.i_crit_edge, label %for.body3.lr.ph.i.i

for.cond1.preheader.i.i.for.inc6.i.i_crit_edge:   ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc6.i.i

for.body3.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %arrayidx.i.i = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr.i, i32 0, i32 1, i32 %j.048.i.i
  br label %for.body3.i.i

for.cond9.preheader.i.i:                          ; preds = %for.inc6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp1450.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp1450.not.i.i, label %for.cond9.preheader.i.i.init_dma_desc_rings.exit_crit_edge, label %for.cond9.preheader.i.i.for.body16.i.i_crit_edge

for.cond9.preheader.i.i.for.body16.i.i_crit_edge: ; preds = %for.cond9.preheader.i.i
  br label %for.body16.i.i

for.cond9.preheader.i.i.init_dma_desc_rings.exit_crit_edge: ; preds = %for.cond9.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %i.047.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ]
  %33 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw.i.i, align 4
  %desc.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc.i.i, align 4
  %init_rx_desc.i.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %36, i32 0, i32 27
  %37 = ptrtoint ptr %init_rx_desc.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init_rx_desc.i.i, align 4
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %dma_rx.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %dma_rx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_rx.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.sxgbe_rx_norm_desc, ptr %42, i32 %i.047.i.i
  %43 = ptrtoint ptr %use_riwt.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %use_riwt.i.i, align 8
  %45 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.047.i.i, i32 %sub.i.i)
  %cmp5.i.i = icmp eq i32 %i.047.i.i, %sub.i.i
  %conv.i.i = zext i1 %cmp5.i.i to i32
  tail call void %38(ptr noundef %arrayidx4.i.i, i32 noundef %44, i32 noundef %46, i32 noundef %conv.i.i) #14
  %inc.i.i = add nuw i32 %i.047.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %32
  br i1 %exitcond.not.i.i, label %for.body3.i.i.for.inc6.i.i_crit_edge, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3.i.i

for.body3.i.i.for.inc6.i.i_crit_edge:             ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc6.i.i

for.inc6.i.i:                                     ; preds = %for.body3.i.i.for.inc6.i.i_crit_edge, %for.cond1.preheader.i.i.for.inc6.i.i_crit_edge
  %inc7.i.i = add nuw nsw i32 %j.048.i.i, 1
  %exitcond54.not.i.i = icmp eq i32 %inc7.i.i, 16
  br i1 %exitcond54.not.i.i, label %for.cond9.preheader.i.i, label %for.inc6.i.i.for.cond1.preheader.i.i_crit_edge

for.inc6.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.inc6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.preheader.i.i

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %for.cond9.preheader.i.i.for.body16.i.i_crit_edge
  %i.151.i.i = phi i32 [ %inc22.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ], [ 0, %for.cond9.preheader.i.i.for.body16.i.i_crit_edge ]
  %47 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw.i.i, align 4
  %desc18.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %desc18.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %desc18.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %dma_tx.i1.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dma_tx.i1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_tx.i1.i, align 4
  %arrayidx20.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %56, i32 %i.151.i.i
  tail call void %52(ptr noundef %arrayidx20.i.i) #14
  %inc22.i.i = add nuw i32 %i.151.i.i, 1
  %exitcond55.not.i.i = icmp eq i32 %inc22.i.i, %30
  br i1 %exitcond55.not.i.i, label %for.body16.lr.ph.1.i.i, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.i.i

for.body16.lr.ph.1.i.i:                           ; preds = %for.body16.i.i
  %arrayidx19.1.i.i = getelementptr i8, ptr %dev, i32 2308
  br label %for.body16.1.i.i

for.body16.1.i.i:                                 ; preds = %for.body16.1.i.i.for.body16.1.i.i_crit_edge, %for.body16.lr.ph.1.i.i
  %i.151.1.i.i = phi i32 [ 0, %for.body16.lr.ph.1.i.i ], [ %inc22.1.i.i, %for.body16.1.i.i.for.body16.1.i.i_crit_edge ]
  %57 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw.i.i, align 4
  %desc18.1.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %desc18.1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc18.1.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %63 = ptrtoint ptr %arrayidx19.1.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx19.1.i.i, align 4
  %dma_tx.1.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %dma_tx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma_tx.1.i.i, align 4
  %arrayidx20.1.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %66, i32 %i.151.1.i.i
  tail call void %62(ptr noundef %arrayidx20.1.i.i) #14
  %inc22.1.i.i = add nuw i32 %i.151.1.i.i, 1
  %exitcond55.1.not.i.i = icmp eq i32 %inc22.1.i.i, %30
  br i1 %exitcond55.1.not.i.i, label %for.body16.lr.ph.2.i.i, label %for.body16.1.i.i.for.body16.1.i.i_crit_edge

for.body16.1.i.i.for.body16.1.i.i_crit_edge:      ; preds = %for.body16.1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.1.i.i

for.body16.lr.ph.2.i.i:                           ; preds = %for.body16.1.i.i
  %arrayidx19.2.i.i = getelementptr i8, ptr %dev, i32 2312
  br label %for.body16.2.i.i

for.body16.2.i.i:                                 ; preds = %for.body16.2.i.i.for.body16.2.i.i_crit_edge, %for.body16.lr.ph.2.i.i
  %i.151.2.i.i = phi i32 [ 0, %for.body16.lr.ph.2.i.i ], [ %inc22.2.i.i, %for.body16.2.i.i.for.body16.2.i.i_crit_edge ]
  %67 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw.i.i, align 4
  %desc18.2.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %desc18.2.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %desc18.2.i.i, align 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %70, align 4
  %73 = ptrtoint ptr %arrayidx19.2.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx19.2.i.i, align 4
  %dma_tx.2.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dma_tx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_tx.2.i.i, align 4
  %arrayidx20.2.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %76, i32 %i.151.2.i.i
  tail call void %72(ptr noundef %arrayidx20.2.i.i) #14
  %inc22.2.i.i = add nuw i32 %i.151.2.i.i, 1
  %exitcond55.2.not.i.i = icmp eq i32 %inc22.2.i.i, %30
  br i1 %exitcond55.2.not.i.i, label %for.body16.lr.ph.3.i.i, label %for.body16.2.i.i.for.body16.2.i.i_crit_edge

for.body16.2.i.i.for.body16.2.i.i_crit_edge:      ; preds = %for.body16.2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.2.i.i

for.body16.lr.ph.3.i.i:                           ; preds = %for.body16.2.i.i
  %arrayidx19.3.i.i = getelementptr i8, ptr %dev, i32 2316
  br label %for.body16.3.i.i

for.body16.3.i.i:                                 ; preds = %for.body16.3.i.i.for.body16.3.i.i_crit_edge, %for.body16.lr.ph.3.i.i
  %i.151.3.i.i = phi i32 [ 0, %for.body16.lr.ph.3.i.i ], [ %inc22.3.i.i, %for.body16.3.i.i.for.body16.3.i.i_crit_edge ]
  %77 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw.i.i, align 4
  %desc18.3.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %desc18.3.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %desc18.3.i.i, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %83 = ptrtoint ptr %arrayidx19.3.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx19.3.i.i, align 4
  %dma_tx.3.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %dma_tx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dma_tx.3.i.i, align 4
  %arrayidx20.3.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %86, i32 %i.151.3.i.i
  tail call void %82(ptr noundef %arrayidx20.3.i.i) #14
  %inc22.3.i.i = add nuw i32 %i.151.3.i.i, 1
  %exitcond55.3.not.i.i = icmp eq i32 %inc22.3.i.i, %30
  br i1 %exitcond55.3.not.i.i, label %for.body16.lr.ph.4.i.i, label %for.body16.3.i.i.for.body16.3.i.i_crit_edge

for.body16.3.i.i.for.body16.3.i.i_crit_edge:      ; preds = %for.body16.3.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.3.i.i

for.body16.lr.ph.4.i.i:                           ; preds = %for.body16.3.i.i
  %arrayidx19.4.i.i = getelementptr i8, ptr %dev, i32 2320
  br label %for.body16.4.i.i

for.body16.4.i.i:                                 ; preds = %for.body16.4.i.i.for.body16.4.i.i_crit_edge, %for.body16.lr.ph.4.i.i
  %i.151.4.i.i = phi i32 [ 0, %for.body16.lr.ph.4.i.i ], [ %inc22.4.i.i, %for.body16.4.i.i.for.body16.4.i.i_crit_edge ]
  %87 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw.i.i, align 4
  %desc18.4.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %desc18.4.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %desc18.4.i.i, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %90, align 4
  %93 = ptrtoint ptr %arrayidx19.4.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx19.4.i.i, align 4
  %dma_tx.4.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %dma_tx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dma_tx.4.i.i, align 4
  %arrayidx20.4.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %96, i32 %i.151.4.i.i
  tail call void %92(ptr noundef %arrayidx20.4.i.i) #14
  %inc22.4.i.i = add nuw i32 %i.151.4.i.i, 1
  %exitcond55.4.not.i.i = icmp eq i32 %inc22.4.i.i, %30
  br i1 %exitcond55.4.not.i.i, label %for.body16.lr.ph.5.i.i, label %for.body16.4.i.i.for.body16.4.i.i_crit_edge

for.body16.4.i.i.for.body16.4.i.i_crit_edge:      ; preds = %for.body16.4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.4.i.i

for.body16.lr.ph.5.i.i:                           ; preds = %for.body16.4.i.i
  %arrayidx19.5.i.i = getelementptr i8, ptr %dev, i32 2324
  br label %for.body16.5.i.i

for.body16.5.i.i:                                 ; preds = %for.body16.5.i.i.for.body16.5.i.i_crit_edge, %for.body16.lr.ph.5.i.i
  %i.151.5.i.i = phi i32 [ 0, %for.body16.lr.ph.5.i.i ], [ %inc22.5.i.i, %for.body16.5.i.i.for.body16.5.i.i_crit_edge ]
  %97 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw.i.i, align 4
  %desc18.5.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %desc18.5.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %desc18.5.i.i, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %100, align 4
  %103 = ptrtoint ptr %arrayidx19.5.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx19.5.i.i, align 4
  %dma_tx.5.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %dma_tx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dma_tx.5.i.i, align 4
  %arrayidx20.5.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %106, i32 %i.151.5.i.i
  tail call void %102(ptr noundef %arrayidx20.5.i.i) #14
  %inc22.5.i.i = add nuw i32 %i.151.5.i.i, 1
  %exitcond55.5.not.i.i = icmp eq i32 %inc22.5.i.i, %30
  br i1 %exitcond55.5.not.i.i, label %for.body16.lr.ph.6.i.i, label %for.body16.5.i.i.for.body16.5.i.i_crit_edge

for.body16.5.i.i.for.body16.5.i.i_crit_edge:      ; preds = %for.body16.5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.5.i.i

for.body16.lr.ph.6.i.i:                           ; preds = %for.body16.5.i.i
  %arrayidx19.6.i.i = getelementptr i8, ptr %dev, i32 2328
  br label %for.body16.6.i.i

for.body16.6.i.i:                                 ; preds = %for.body16.6.i.i.for.body16.6.i.i_crit_edge, %for.body16.lr.ph.6.i.i
  %i.151.6.i.i = phi i32 [ 0, %for.body16.lr.ph.6.i.i ], [ %inc22.6.i.i, %for.body16.6.i.i.for.body16.6.i.i_crit_edge ]
  %107 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %hw.i.i, align 4
  %desc18.6.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %desc18.6.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %desc18.6.i.i, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %113 = ptrtoint ptr %arrayidx19.6.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx19.6.i.i, align 4
  %dma_tx.6.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %dma_tx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dma_tx.6.i.i, align 4
  %arrayidx20.6.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %116, i32 %i.151.6.i.i
  tail call void %112(ptr noundef %arrayidx20.6.i.i) #14
  %inc22.6.i.i = add nuw i32 %i.151.6.i.i, 1
  %exitcond55.6.not.i.i = icmp eq i32 %inc22.6.i.i, %30
  br i1 %exitcond55.6.not.i.i, label %for.body16.lr.ph.7.i.i, label %for.body16.6.i.i.for.body16.6.i.i_crit_edge

for.body16.6.i.i.for.body16.6.i.i_crit_edge:      ; preds = %for.body16.6.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.6.i.i

for.body16.lr.ph.7.i.i:                           ; preds = %for.body16.6.i.i
  %arrayidx19.7.i.i = getelementptr i8, ptr %dev, i32 2332
  br label %for.body16.7.i.i

for.body16.7.i.i:                                 ; preds = %for.body16.7.i.i.for.body16.7.i.i_crit_edge, %for.body16.lr.ph.7.i.i
  %i.151.7.i.i = phi i32 [ 0, %for.body16.lr.ph.7.i.i ], [ %inc22.7.i.i, %for.body16.7.i.i.for.body16.7.i.i_crit_edge ]
  %117 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %hw.i.i, align 4
  %desc18.7.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %desc18.7.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %desc18.7.i.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %123 = ptrtoint ptr %arrayidx19.7.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx19.7.i.i, align 4
  %dma_tx.7.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %dma_tx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dma_tx.7.i.i, align 4
  %arrayidx20.7.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %126, i32 %i.151.7.i.i
  tail call void %122(ptr noundef %arrayidx20.7.i.i) #14
  %inc22.7.i.i = add nuw i32 %i.151.7.i.i, 1
  %exitcond55.7.not.i.i = icmp eq i32 %inc22.7.i.i, %30
  br i1 %exitcond55.7.not.i.i, label %for.body16.7.i.i.init_dma_desc_rings.exit_crit_edge, label %for.body16.7.i.i.for.body16.7.i.i_crit_edge

for.body16.7.i.i.for.body16.7.i.i_crit_edge:      ; preds = %for.body16.7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body16.7.i.i

for.body16.7.i.i.init_dma_desc_rings.exit_crit_edge: ; preds = %for.body16.7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

while.body.i:                                     ; preds = %do.end.i
  %dec.i = add nsw i32 %queue_num.045.i, -1
  %127 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %device.i, align 8
  %arrayidx23.i = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %dec.i
  %129 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %arrayidx23.i, align 4
  %dma_tx.i3.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %130, i32 0, i32 2
  %131 = ptrtoint ptr %dma_tx.i3.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dma_tx.i3.i, align 4
  %dma_tx_phy.i4.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %130, i32 0, i32 3
  %133 = ptrtoint ptr %dma_tx_phy.i4.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dma_tx_phy.i4.i, align 4
  tail call void @dma_free_attrs(ptr noundef %128, i32 noundef 12288, ptr noundef %132, i32 noundef %134, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool20.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool20.not.i, label %while.body.i.init_dma_desc_rings.exit_crit_edge, label %while.body.i.1

while.body.i.init_dma_desc_rings.exit_crit_edge:  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

while.body.i.1:                                   ; preds = %while.body.i
  %dec.i.1 = add nsw i32 %queue_num.045.i, -2
  %135 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %device.i, align 8
  %arrayidx23.i.1 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %dec.i.1
  %137 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx23.i.1, align 4
  %dma_tx.i3.i.1 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %dma_tx.i3.i.1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dma_tx.i3.i.1, align 4
  %dma_tx_phy.i4.i.1 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %138, i32 0, i32 3
  %141 = ptrtoint ptr %dma_tx_phy.i4.i.1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %dma_tx_phy.i4.i.1, align 4
  tail call void @dma_free_attrs(ptr noundef %136, i32 noundef 12288, ptr noundef %140, i32 noundef %142, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool20.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool20.not.i.1, label %while.body.i.1.init_dma_desc_rings.exit_crit_edge, label %while.body.i.2

while.body.i.1.init_dma_desc_rings.exit_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  %dec.i.2 = add nsw i32 %queue_num.045.i, -3
  %143 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %device.i, align 8
  %arrayidx23.i.2 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %dec.i.2
  %145 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx23.i.2, align 4
  %dma_tx.i3.i.2 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %dma_tx.i3.i.2 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dma_tx.i3.i.2, align 4
  %dma_tx_phy.i4.i.2 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %146, i32 0, i32 3
  %149 = ptrtoint ptr %dma_tx_phy.i4.i.2 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %dma_tx_phy.i4.i.2, align 4
  tail call void @dma_free_attrs(ptr noundef %144, i32 noundef 12288, ptr noundef %148, i32 noundef %150, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.2)
  %tobool20.not.i.2 = icmp eq i32 %dec.i.2, 0
  br i1 %tobool20.not.i.2, label %while.body.i.2.init_dma_desc_rings.exit_crit_edge, label %while.body.i.3

while.body.i.2.init_dma_desc_rings.exit_crit_edge: ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

while.body.i.3:                                   ; preds = %while.body.i.2
  %dec.i.3 = add nsw i32 %queue_num.045.i, -4
  %151 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %device.i, align 8
  %arrayidx23.i.3 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %dec.i.3
  %153 = ptrtoint ptr %arrayidx23.i.3 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx23.i.3, align 4
  %dma_tx.i3.i.3 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %dma_tx.i3.i.3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dma_tx.i3.i.3, align 4
  %dma_tx_phy.i4.i.3 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %154, i32 0, i32 3
  %157 = ptrtoint ptr %dma_tx_phy.i4.i.3 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %dma_tx_phy.i4.i.3, align 4
  tail call void @dma_free_attrs(ptr noundef %152, i32 noundef 12288, ptr noundef %156, i32 noundef %158, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.3)
  %tobool20.not.i.3 = icmp eq i32 %dec.i.3, 0
  br i1 %tobool20.not.i.3, label %while.body.i.3.init_dma_desc_rings.exit_crit_edge, label %while.body.i.4

while.body.i.3.init_dma_desc_rings.exit_crit_edge: ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

while.body.i.4:                                   ; preds = %while.body.i.3
  %dec.i.4 = add nsw i32 %queue_num.045.i, -5
  %159 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %device.i, align 8
  %arrayidx23.i.4 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %dec.i.4
  %161 = ptrtoint ptr %arrayidx23.i.4 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx23.i.4, align 4
  %dma_tx.i3.i.4 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %162, i32 0, i32 2
  %163 = ptrtoint ptr %dma_tx.i3.i.4 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dma_tx.i3.i.4, align 4
  %dma_tx_phy.i4.i.4 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %162, i32 0, i32 3
  %165 = ptrtoint ptr %dma_tx_phy.i4.i.4 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %dma_tx_phy.i4.i.4, align 4
  tail call void @dma_free_attrs(ptr noundef %160, i32 noundef 12288, ptr noundef %164, i32 noundef %166, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.4)
  %tobool20.not.i.4 = icmp eq i32 %dec.i.4, 0
  br i1 %tobool20.not.i.4, label %while.body.i.4.init_dma_desc_rings.exit_crit_edge, label %while.body.i.5

while.body.i.4.init_dma_desc_rings.exit_crit_edge: ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

while.body.i.5:                                   ; preds = %while.body.i.4
  %dec.i.5 = add nsw i32 %queue_num.045.i, -6
  %167 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %device.i, align 8
  %arrayidx23.i.5 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %dec.i.5
  %169 = ptrtoint ptr %arrayidx23.i.5 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx23.i.5, align 4
  %dma_tx.i3.i.5 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %dma_tx.i3.i.5 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dma_tx.i3.i.5, align 4
  %dma_tx_phy.i4.i.5 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %170, i32 0, i32 3
  %173 = ptrtoint ptr %dma_tx_phy.i4.i.5 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %dma_tx_phy.i4.i.5, align 4
  tail call void @dma_free_attrs(ptr noundef %168, i32 noundef 12288, ptr noundef %172, i32 noundef %174, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.5)
  %tobool20.not.i.5 = icmp eq i32 %dec.i.5, 0
  br i1 %tobool20.not.i.5, label %while.body.i.5.init_dma_desc_rings.exit_crit_edge, label %while.body.i.6

while.body.i.5.init_dma_desc_rings.exit_crit_edge: ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

while.body.i.6:                                   ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #16
  %dec.i.6 = add nsw i32 %queue_num.045.i, -7
  %175 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %device.i, align 8
  %arrayidx23.i.6 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %dec.i.6
  %177 = ptrtoint ptr %arrayidx23.i.6 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx23.i.6, align 4
  %dma_tx.i3.i.6 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %178, i32 0, i32 2
  %179 = ptrtoint ptr %dma_tx.i3.i.6 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dma_tx.i3.i.6, align 4
  %dma_tx_phy.i4.i.6 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %178, i32 0, i32 3
  %181 = ptrtoint ptr %dma_tx_phy.i4.i.6 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %dma_tx_phy.i4.i.6, align 4
  tail call void @dma_free_attrs(ptr noundef %176, i32 noundef 12288, ptr noundef %180, i32 noundef %182, i32 noundef 0) #14
  br label %init_dma_desc_rings.exit

while.body27.i:                                   ; preds = %while.body27.i.while.body27.i_crit_edge, %if.then12.i.while.body27.i_crit_edge
  %queue_num.348.i = phi i32 [ %dec25.i, %while.body27.i.while.body27.i_crit_edge ], [ %queue_num.146.i, %if.then12.i.while.body27.i_crit_edge ]
  %dec25.i = add nsw i32 %queue_num.348.i, -1
  %183 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %device.i, align 8
  %arrayidx30.i = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr.i, i32 0, i32 1, i32 %dec25.i
  %185 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx30.i, align 4
  %dma_rx.i6.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %186, i32 0, i32 1
  %187 = ptrtoint ptr %dma_rx.i6.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dma_rx.i6.i, align 4
  %dma_rx_phy.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %186, i32 0, i32 8
  %189 = ptrtoint ptr %dma_rx_phy.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %dma_rx_phy.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %184, i32 noundef 16384, ptr noundef %188, i32 noundef %190, i32 noundef 0) #14
  %rx_skbuff_dma.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %186, i32 0, i32 7
  %191 = ptrtoint ptr %rx_skbuff_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %rx_skbuff_dma.i.i, align 4
  tail call void @kfree(ptr noundef %192) #14
  %rx_skbuff.i.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %186, i32 0, i32 2
  %193 = ptrtoint ptr %rx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rx_skbuff.i.i, align 4
  tail call void @kfree(ptr noundef %194) #14
  %tobool26.not.i = icmp eq i32 %dec25.i, 0
  br i1 %tobool26.not.i, label %while.body27.i.init_dma_desc_rings.exit_crit_edge, label %while.body27.i.while.body27.i_crit_edge

while.body27.i.while.body27.i_crit_edge:          ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body27.i

while.body27.i.init_dma_desc_rings.exit_crit_edge: ; preds = %while.body27.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %init_dma_desc_rings.exit

init_dma_desc_rings.exit:                         ; preds = %while.body27.i.init_dma_desc_rings.exit_crit_edge, %while.body.i.6, %while.body.i.5.init_dma_desc_rings.exit_crit_edge, %while.body.i.4.init_dma_desc_rings.exit_crit_edge, %while.body.i.3.init_dma_desc_rings.exit_crit_edge, %while.body.i.2.init_dma_desc_rings.exit_crit_edge, %while.body.i.1.init_dma_desc_rings.exit_crit_edge, %while.body.i.init_dma_desc_rings.exit_crit_edge, %for.body16.7.i.i.init_dma_desc_rings.exit_crit_edge, %for.cond9.preheader.i.i.init_dma_desc_rings.exit_crit_edge, %if.then12.i.init_dma_desc_rings.exit_crit_edge, %do.end.i.init_dma_desc_rings.exit_crit_edge
  %plat.i = getelementptr i8, ptr %dev, i32 3184
  %195 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %plat.i, align 8
  %dma_cfg.i = getelementptr inbounds %struct.sxgbe_plat_data, ptr %196, i32 0, i32 5
  %197 = ptrtoint ptr %dma_cfg.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dma_cfg.i, align 4
  %tobool.not.i238 = icmp eq ptr %198, null
  br i1 %tobool.not.i238, label %init_dma_desc_rings.exit.if.end.i241_crit_edge, label %if.then.i

init_dma_desc_rings.exit.if.end.i241_crit_edge:   ; preds = %init_dma_desc_rings.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i241

if.then.i:                                        ; preds = %init_dma_desc_rings.exit
  call void @__sanitizer_cov_trace_pc() #16
  %199 = ptrtoint ptr %198 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %198, align 4
  %fixed_burst6.i = getelementptr inbounds %struct.sxgbe_dma_cfg, ptr %198, i32 0, i32 1
  %201 = ptrtoint ptr %fixed_burst6.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %fixed_burst6.i, align 4
  %burst_map9.i = getelementptr inbounds %struct.sxgbe_dma_cfg, ptr %198, i32 0, i32 2
  %203 = ptrtoint ptr %burst_map9.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %burst_map9.i, align 4
  br label %if.end.i241

if.end.i241:                                      ; preds = %if.then.i, %init_dma_desc_rings.exit.if.end.i241_crit_edge
  %pbl.0.i = phi i32 [ %200, %if.then.i ], [ 8, %init_dma_desc_rings.exit.if.end.i241_crit_edge ]
  %fixed_burst.0.i = phi i32 [ %202, %if.then.i ], [ 0, %init_dma_desc_rings.exit.if.end.i241_crit_edge ]
  %burst_map.0.i = phi i32 [ %204, %if.then.i ], [ 0, %init_dma_desc_rings.exit.if.end.i241_crit_edge ]
  %hw.i = getelementptr i8, ptr %dev, i32 2660
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2648
  br label %for.body.i245

for.body.i245:                                    ; preds = %for.body.i245.for.body.i245_crit_edge, %if.end.i241
  %queue_num.030.i = phi i32 [ 0, %if.end.i241 ], [ %inc.i243, %for.body.i245.for.body.i245_crit_edge ]
  %205 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw.i, align 4
  %dma.i = getelementptr inbounds %struct.sxgbe_ops, ptr %206, i32 0, i32 2
  %207 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dma.i, align 4
  %cha_init.i = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %208, i32 0, i32 1
  %209 = ptrtoint ptr %cha_init.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %cha_init.i, align 4
  %211 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %ioaddr.i, align 8
  %arrayidx.i242 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %queue_num.030.i
  %213 = ptrtoint ptr %arrayidx.i242 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.i242, align 4
  %dma_tx_phy.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %214, i32 0, i32 3
  %215 = ptrtoint ptr %dma_tx_phy.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dma_tx_phy.i, align 4
  %arrayidx10.i = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr.i, i32 0, i32 1, i32 %queue_num.030.i
  %217 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx10.i, align 4
  %dma_rx_phy.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %218, i32 0, i32 8
  %219 = ptrtoint ptr %dma_rx_phy.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %dma_rx_phy.i, align 4
  %221 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %dma_tx_size, align 4
  %223 = ptrtoint ptr %dma_rx_size to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %dma_rx_size, align 8
  tail call void %210(ptr noundef %212, i32 noundef %queue_num.030.i, i32 noundef %fixed_burst.0.i, i32 noundef %pbl.0.i, i32 noundef %216, i32 noundef %220, i32 noundef %222, i32 noundef %224) #14
  %inc.i243 = add nuw nsw i32 %queue_num.030.i, 1
  %exitcond.not.i244 = icmp eq i32 %inc.i243, 8
  br i1 %exitcond.not.i244, label %sxgbe_init_dma_engine.exit, label %for.body.i245.for.body.i245_crit_edge

for.body.i245.for.body.i245_crit_edge:            ; preds = %for.body.i245
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i245

sxgbe_init_dma_engine.exit:                       ; preds = %for.body.i245
  %225 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %hw.i, align 4
  %dma12.i = getelementptr inbounds %struct.sxgbe_ops, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %dma12.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %dma12.i, align 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %228, align 4
  %231 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %ioaddr.i, align 8
  %call.i246 = tail call i32 %230(ptr noundef %232, i32 noundef %fixed_burst.0.i, i32 noundef %burst_map.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %cmp = icmp slt i32 %call.i246, 0
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %sxgbe_init_dma_engine.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.sxgbe_open) #17
  br label %init_error

if.end6:                                          ; preds = %sxgbe_init_dma_engine.exit
  %tx_mtl_qsize.i = getelementptr i8, ptr %dev, i32 3268
  %233 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %hw.i, align 4
  %mtl.i = getelementptr inbounds %struct.sxgbe_ops, ptr %234, i32 0, i32 3
  %235 = ptrtoint ptr %mtl.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mtl.i, align 4
  %mtl_set_txfifosize.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %236, i32 0, i32 1
  %237 = ptrtoint ptr %mtl_set_txfifosize.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mtl_set_txfifosize.i, align 4
  %239 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %ioaddr.i, align 8
  %241 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %238(ptr noundef %240, i32 noundef 0, i32 noundef %242) #14
  %243 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %hw.i, align 4
  %mtl2.i = getelementptr inbounds %struct.sxgbe_ops, ptr %244, i32 0, i32 3
  %245 = ptrtoint ptr %mtl2.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %mtl2.i, align 4
  %mtl_enable_txqueue.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %mtl_enable_txqueue.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mtl_enable_txqueue.i, align 4
  %249 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %ioaddr.i, align 8
  tail call void %248(ptr noundef %250, i32 noundef 0) #14
  %251 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %hw.i, align 4
  %mtl.1.i = getelementptr inbounds %struct.sxgbe_ops, ptr %252, i32 0, i32 3
  %253 = ptrtoint ptr %mtl.1.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mtl.1.i, align 4
  %mtl_set_txfifosize.1.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %254, i32 0, i32 1
  %255 = ptrtoint ptr %mtl_set_txfifosize.1.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mtl_set_txfifosize.1.i, align 4
  %257 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ioaddr.i, align 8
  %259 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %256(ptr noundef %258, i32 noundef 1, i32 noundef %260) #14
  %261 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %hw.i, align 4
  %mtl2.1.i = getelementptr inbounds %struct.sxgbe_ops, ptr %262, i32 0, i32 3
  %263 = ptrtoint ptr %mtl2.1.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mtl2.1.i, align 4
  %mtl_enable_txqueue.1.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %264, i32 0, i32 3
  %265 = ptrtoint ptr %mtl_enable_txqueue.1.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %mtl_enable_txqueue.1.i, align 4
  %267 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %ioaddr.i, align 8
  tail call void %266(ptr noundef %268, i32 noundef 1) #14
  %269 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %hw.i, align 4
  %mtl.2.i = getelementptr inbounds %struct.sxgbe_ops, ptr %270, i32 0, i32 3
  %271 = ptrtoint ptr %mtl.2.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %mtl.2.i, align 4
  %mtl_set_txfifosize.2.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %272, i32 0, i32 1
  %273 = ptrtoint ptr %mtl_set_txfifosize.2.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %mtl_set_txfifosize.2.i, align 4
  %275 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %ioaddr.i, align 8
  %277 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %274(ptr noundef %276, i32 noundef 2, i32 noundef %278) #14
  %279 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hw.i, align 4
  %mtl2.2.i = getelementptr inbounds %struct.sxgbe_ops, ptr %280, i32 0, i32 3
  %281 = ptrtoint ptr %mtl2.2.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %mtl2.2.i, align 4
  %mtl_enable_txqueue.2.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %282, i32 0, i32 3
  %283 = ptrtoint ptr %mtl_enable_txqueue.2.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mtl_enable_txqueue.2.i, align 4
  %285 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %ioaddr.i, align 8
  tail call void %284(ptr noundef %286, i32 noundef 2) #14
  %287 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %hw.i, align 4
  %mtl.3.i = getelementptr inbounds %struct.sxgbe_ops, ptr %288, i32 0, i32 3
  %289 = ptrtoint ptr %mtl.3.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %mtl.3.i, align 4
  %mtl_set_txfifosize.3.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %290, i32 0, i32 1
  %291 = ptrtoint ptr %mtl_set_txfifosize.3.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mtl_set_txfifosize.3.i, align 4
  %293 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %ioaddr.i, align 8
  %295 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %292(ptr noundef %294, i32 noundef 3, i32 noundef %296) #14
  %297 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %hw.i, align 4
  %mtl2.3.i = getelementptr inbounds %struct.sxgbe_ops, ptr %298, i32 0, i32 3
  %299 = ptrtoint ptr %mtl2.3.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mtl2.3.i, align 4
  %mtl_enable_txqueue.3.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %300, i32 0, i32 3
  %301 = ptrtoint ptr %mtl_enable_txqueue.3.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mtl_enable_txqueue.3.i, align 4
  %303 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %ioaddr.i, align 8
  tail call void %302(ptr noundef %304, i32 noundef 3) #14
  %305 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %hw.i, align 4
  %mtl.4.i = getelementptr inbounds %struct.sxgbe_ops, ptr %306, i32 0, i32 3
  %307 = ptrtoint ptr %mtl.4.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %mtl.4.i, align 4
  %mtl_set_txfifosize.4.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %308, i32 0, i32 1
  %309 = ptrtoint ptr %mtl_set_txfifosize.4.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %mtl_set_txfifosize.4.i, align 4
  %311 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %ioaddr.i, align 8
  %313 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %310(ptr noundef %312, i32 noundef 4, i32 noundef %314) #14
  %315 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %hw.i, align 4
  %mtl2.4.i = getelementptr inbounds %struct.sxgbe_ops, ptr %316, i32 0, i32 3
  %317 = ptrtoint ptr %mtl2.4.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %mtl2.4.i, align 4
  %mtl_enable_txqueue.4.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %318, i32 0, i32 3
  %319 = ptrtoint ptr %mtl_enable_txqueue.4.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %mtl_enable_txqueue.4.i, align 4
  %321 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %ioaddr.i, align 8
  tail call void %320(ptr noundef %322, i32 noundef 4) #14
  %323 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %hw.i, align 4
  %mtl.5.i = getelementptr inbounds %struct.sxgbe_ops, ptr %324, i32 0, i32 3
  %325 = ptrtoint ptr %mtl.5.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mtl.5.i, align 4
  %mtl_set_txfifosize.5.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %326, i32 0, i32 1
  %327 = ptrtoint ptr %mtl_set_txfifosize.5.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mtl_set_txfifosize.5.i, align 4
  %329 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ioaddr.i, align 8
  %331 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %328(ptr noundef %330, i32 noundef 5, i32 noundef %332) #14
  %333 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hw.i, align 4
  %mtl2.5.i = getelementptr inbounds %struct.sxgbe_ops, ptr %334, i32 0, i32 3
  %335 = ptrtoint ptr %mtl2.5.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %mtl2.5.i, align 4
  %mtl_enable_txqueue.5.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %336, i32 0, i32 3
  %337 = ptrtoint ptr %mtl_enable_txqueue.5.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %mtl_enable_txqueue.5.i, align 4
  %339 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %ioaddr.i, align 8
  tail call void %338(ptr noundef %340, i32 noundef 5) #14
  %341 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %hw.i, align 4
  %mtl.6.i = getelementptr inbounds %struct.sxgbe_ops, ptr %342, i32 0, i32 3
  %343 = ptrtoint ptr %mtl.6.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %mtl.6.i, align 4
  %mtl_set_txfifosize.6.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %mtl_set_txfifosize.6.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %mtl_set_txfifosize.6.i, align 4
  %347 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %ioaddr.i, align 8
  %349 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %346(ptr noundef %348, i32 noundef 6, i32 noundef %350) #14
  %351 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %hw.i, align 4
  %mtl2.6.i = getelementptr inbounds %struct.sxgbe_ops, ptr %352, i32 0, i32 3
  %353 = ptrtoint ptr %mtl2.6.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mtl2.6.i, align 4
  %mtl_enable_txqueue.6.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %354, i32 0, i32 3
  %355 = ptrtoint ptr %mtl_enable_txqueue.6.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %mtl_enable_txqueue.6.i, align 4
  %357 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %ioaddr.i, align 8
  tail call void %356(ptr noundef %358, i32 noundef 6) #14
  %359 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %hw.i, align 4
  %mtl.7.i = getelementptr inbounds %struct.sxgbe_ops, ptr %360, i32 0, i32 3
  %361 = ptrtoint ptr %mtl.7.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %mtl.7.i, align 4
  %mtl_set_txfifosize.7.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %362, i32 0, i32 1
  %363 = ptrtoint ptr %mtl_set_txfifosize.7.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %mtl_set_txfifosize.7.i, align 4
  %365 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %ioaddr.i, align 8
  %367 = ptrtoint ptr %tx_mtl_qsize.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %tx_mtl_qsize.i, align 4
  tail call void %364(ptr noundef %366, i32 noundef 7, i32 noundef %368) #14
  %369 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %hw.i, align 4
  %mtl2.7.i = getelementptr inbounds %struct.sxgbe_ops, ptr %370, i32 0, i32 3
  %371 = ptrtoint ptr %mtl2.7.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %mtl2.7.i, align 4
  %mtl_enable_txqueue.7.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %372, i32 0, i32 3
  %373 = ptrtoint ptr %mtl_enable_txqueue.7.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %mtl_enable_txqueue.7.i, align 4
  %375 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %ioaddr.i, align 8
  tail call void %374(ptr noundef %376, i32 noundef 7) #14
  %377 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %hw.i, align 4
  %379 = ptrtoint ptr %378 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %378, align 4
  %set_umac_addr = getelementptr inbounds %struct.sxgbe_core_ops, ptr %380, i32 0, i32 4
  %381 = ptrtoint ptr %set_umac_addr to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %set_umac_addr, align 4
  %383 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ioaddr.i, align 8
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %385 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %dev_addr, align 64
  tail call void %382(ptr noundef %384, ptr noundef %386, i32 noundef 0) #14
  %387 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %hw.i, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %388, align 4
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %390, align 4
  %393 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %ioaddr.i, align 8
  tail call void %392(ptr noundef %394) #14
  %395 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %hw.i, align 4
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %396, align 4
  %enable_rxqueue = getelementptr inbounds %struct.sxgbe_core_ops, ptr %398, i32 0, i32 17
  %399 = ptrtoint ptr %enable_rxqueue to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %enable_rxqueue, align 4
  %401 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %ioaddr.i, align 8
  tail call void %400(ptr noundef %402, i32 noundef 0) #14
  %403 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %hw.i, align 4
  %405 = ptrtoint ptr %404 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %404, align 4
  %enable_rxqueue.1 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %406, i32 0, i32 17
  %407 = ptrtoint ptr %enable_rxqueue.1 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %enable_rxqueue.1, align 4
  %409 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %ioaddr.i, align 8
  tail call void %408(ptr noundef %410, i32 noundef 1) #14
  %411 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %hw.i, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %412, align 4
  %enable_rxqueue.2 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %414, i32 0, i32 17
  %415 = ptrtoint ptr %enable_rxqueue.2 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %enable_rxqueue.2, align 4
  %417 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %ioaddr.i, align 8
  tail call void %416(ptr noundef %418, i32 noundef 2) #14
  %419 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %419)
  %420 = load ptr, ptr %hw.i, align 4
  %421 = ptrtoint ptr %420 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load ptr, ptr %420, align 4
  %enable_rxqueue.3 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %422, i32 0, i32 17
  %423 = ptrtoint ptr %enable_rxqueue.3 to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %enable_rxqueue.3, align 4
  %425 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %ioaddr.i, align 8
  tail call void %424(ptr noundef %426, i32 noundef 3) #14
  %427 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %hw.i, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %428, align 4
  %enable_rxqueue.4 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %430, i32 0, i32 17
  %431 = ptrtoint ptr %enable_rxqueue.4 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %enable_rxqueue.4, align 4
  %433 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %ioaddr.i, align 8
  tail call void %432(ptr noundef %434, i32 noundef 4) #14
  %435 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %hw.i, align 4
  %437 = ptrtoint ptr %436 to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %436, align 4
  %enable_rxqueue.5 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %438, i32 0, i32 17
  %439 = ptrtoint ptr %enable_rxqueue.5 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %enable_rxqueue.5, align 4
  %441 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %ioaddr.i, align 8
  tail call void %440(ptr noundef %442, i32 noundef 5) #14
  %443 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %hw.i, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %444, align 4
  %enable_rxqueue.6 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %446, i32 0, i32 17
  %447 = ptrtoint ptr %enable_rxqueue.6 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %enable_rxqueue.6, align 4
  %449 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %ioaddr.i, align 8
  tail call void %448(ptr noundef %450, i32 noundef 6) #14
  %451 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load ptr, ptr %hw.i, align 4
  %453 = ptrtoint ptr %452 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %452, align 4
  %enable_rxqueue.7 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %454, i32 0, i32 17
  %455 = ptrtoint ptr %enable_rxqueue.7 to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %enable_rxqueue.7, align 4
  %457 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %ioaddr.i, align 8
  tail call void %456(ptr noundef %458, i32 noundef 7) #14
  %459 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %hw.i, align 4
  %461 = ptrtoint ptr %460 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load ptr, ptr %460, align 4
  %enable_rxqueue.8 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %462, i32 0, i32 17
  %463 = ptrtoint ptr %enable_rxqueue.8 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %enable_rxqueue.8, align 4
  %465 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load ptr, ptr %ioaddr.i, align 8
  tail call void %464(ptr noundef %466, i32 noundef 8) #14
  %467 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %hw.i, align 4
  %469 = ptrtoint ptr %468 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %468, align 4
  %enable_rxqueue.9 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %470, i32 0, i32 17
  %471 = ptrtoint ptr %enable_rxqueue.9 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %enable_rxqueue.9, align 4
  %473 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load ptr, ptr %ioaddr.i, align 8
  tail call void %472(ptr noundef %474, i32 noundef 9) #14
  %475 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %hw.i, align 4
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %476, align 4
  %enable_rxqueue.10 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %478, i32 0, i32 17
  %479 = ptrtoint ptr %enable_rxqueue.10 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %enable_rxqueue.10, align 4
  %481 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %ioaddr.i, align 8
  tail call void %480(ptr noundef %482, i32 noundef 10) #14
  %483 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %hw.i, align 4
  %485 = ptrtoint ptr %484 to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %484, align 4
  %enable_rxqueue.11 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %486, i32 0, i32 17
  %487 = ptrtoint ptr %enable_rxqueue.11 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %enable_rxqueue.11, align 4
  %489 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %ioaddr.i, align 8
  tail call void %488(ptr noundef %490, i32 noundef 11) #14
  %491 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %hw.i, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %492, align 4
  %enable_rxqueue.12 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %494, i32 0, i32 17
  %495 = ptrtoint ptr %enable_rxqueue.12 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %enable_rxqueue.12, align 4
  %497 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %ioaddr.i, align 8
  tail call void %496(ptr noundef %498, i32 noundef 12) #14
  %499 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load ptr, ptr %hw.i, align 4
  %501 = ptrtoint ptr %500 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %500, align 4
  %enable_rxqueue.13 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %502, i32 0, i32 17
  %503 = ptrtoint ptr %enable_rxqueue.13 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load ptr, ptr %enable_rxqueue.13, align 4
  %505 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %ioaddr.i, align 8
  tail call void %504(ptr noundef %506, i32 noundef 13) #14
  %507 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %hw.i, align 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %508, align 4
  %enable_rxqueue.14 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %510, i32 0, i32 17
  %511 = ptrtoint ptr %enable_rxqueue.14 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %enable_rxqueue.14, align 4
  %513 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load ptr, ptr %ioaddr.i, align 8
  tail call void %512(ptr noundef %514, i32 noundef 14) #14
  %515 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load ptr, ptr %hw.i, align 4
  %517 = ptrtoint ptr %516 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %516, align 4
  %enable_rxqueue.15 = getelementptr inbounds %struct.sxgbe_core_ops, ptr %518, i32 0, i32 17
  %519 = ptrtoint ptr %enable_rxqueue.15 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load ptr, ptr %enable_rxqueue.15, align 4
  %521 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %ioaddr.i, align 8
  tail call void %520(ptr noundef %522, i32 noundef 15) #14
  %523 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %device.i, align 8
  %irq = getelementptr i8, ptr %dev, i32 2668
  %525 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %irq, align 4
  %call.i249 = tail call i32 @devm_request_threaded_irq(ptr noundef %524, i32 noundef %526, ptr noundef nonnull @sxgbe_common_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i249)
  %cmp15 = icmp slt i32 %call.i249, 0
  br i1 %cmp15, label %if.then18, label %if.end20, !prof !226

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %527 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.sxgbe_open, i32 noundef %528, i32 noundef %call.i249) #17
  br label %init_error

if.end20:                                         ; preds = %if.end6
  %lpi_irq = getelementptr i8, ptr %dev, i32 3388
  %529 = ptrtoint ptr %lpi_irq to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %lpi_irq, align 4
  %irq21 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %531 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %irq21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %530, i32 %532)
  %cmp22.not = icmp eq i32 %530, %532
  br i1 %cmp22.not, label %if.end20.if.end39_crit_edge, label %if.then23

if.end20.if.end39_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then23:                                        ; preds = %if.end20
  %533 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %device.i, align 8
  %call.i250 = tail call i32 @devm_request_threaded_irq(ptr noundef %534, i32 noundef %530, ptr noundef nonnull @sxgbe_common_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %cmp29 = icmp slt i32 %call.i250, 0
  br i1 %cmp29, label %if.then36, label %if.then23.if.end39_crit_edge, !prof !226

if.then23.if.end39_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then36:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  %535 = ptrtoint ptr %lpi_irq to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %lpi_irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.sxgbe_open, i32 noundef %536, i32 noundef %call.i250) #17
  br label %init_error

if.end39:                                         ; preds = %if.then23.if.end39_crit_edge, %if.end20.if.end39_crit_edge
  %537 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %device.i, align 8
  %539 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %add.ptr.i, align 4
  %541 = ptrtoint ptr %540 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %540, align 4
  %call.i251 = tail call i32 @devm_request_threaded_irq(ptr noundef %538, i32 noundef %542, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %540) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251)
  %cmp49 = icmp slt i32 %call.i251, 0
  br i1 %cmp49, label %if.end39.if.then56_crit_edge, label %for.cond40, !prof !226

if.end39.if.then56_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.cond40:                                       ; preds = %if.end39
  %543 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %device.i, align 8
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 2308
  %545 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %arrayidx.1, align 4
  %547 = ptrtoint ptr %546 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %546, align 4
  %call.i251.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %544, i32 noundef %548, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %546) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.1)
  %cmp49.1 = icmp slt i32 %call.i251.1, 0
  br i1 %cmp49.1, label %for.cond40.if.then56_crit_edge, label %for.cond40.1, !prof !226

for.cond40.if.then56_crit_edge:                   ; preds = %for.cond40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.cond40.1:                                     ; preds = %for.cond40
  %549 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %device.i, align 8
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 2312
  %551 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load ptr, ptr %arrayidx.2, align 4
  %553 = ptrtoint ptr %552 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %552, align 4
  %call.i251.2 = tail call i32 @devm_request_threaded_irq(ptr noundef %550, i32 noundef %554, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %552) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.2)
  %cmp49.2 = icmp slt i32 %call.i251.2, 0
  br i1 %cmp49.2, label %for.cond40.1.if.then56_crit_edge, label %for.cond40.2, !prof !226

for.cond40.1.if.then56_crit_edge:                 ; preds = %for.cond40.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.cond40.2:                                     ; preds = %for.cond40.1
  %555 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load ptr, ptr %device.i, align 8
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 2316
  %557 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load ptr, ptr %arrayidx.3, align 4
  %559 = ptrtoint ptr %558 to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %558, align 4
  %call.i251.3 = tail call i32 @devm_request_threaded_irq(ptr noundef %556, i32 noundef %560, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %558) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.3)
  %cmp49.3 = icmp slt i32 %call.i251.3, 0
  br i1 %cmp49.3, label %for.cond40.2.if.then56_crit_edge, label %for.cond40.3, !prof !226

for.cond40.2.if.then56_crit_edge:                 ; preds = %for.cond40.2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.cond40.3:                                     ; preds = %for.cond40.2
  %561 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %device.i, align 8
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 2320
  %563 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %arrayidx.4, align 4
  %565 = ptrtoint ptr %564 to i32
  call void @__asan_load4_noabort(i32 %565)
  %566 = load i32, ptr %564, align 4
  %call.i251.4 = tail call i32 @devm_request_threaded_irq(ptr noundef %562, i32 noundef %566, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %564) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.4)
  %cmp49.4 = icmp slt i32 %call.i251.4, 0
  br i1 %cmp49.4, label %for.cond40.3.if.then56_crit_edge, label %for.cond40.4, !prof !226

for.cond40.3.if.then56_crit_edge:                 ; preds = %for.cond40.3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.cond40.4:                                     ; preds = %for.cond40.3
  %567 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %device.i, align 8
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 2324
  %569 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load ptr, ptr %arrayidx.5, align 4
  %571 = ptrtoint ptr %570 to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %570, align 4
  %call.i251.5 = tail call i32 @devm_request_threaded_irq(ptr noundef %568, i32 noundef %572, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %570) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.5)
  %cmp49.5 = icmp slt i32 %call.i251.5, 0
  br i1 %cmp49.5, label %for.cond40.4.if.then56_crit_edge, label %for.cond40.5, !prof !226

for.cond40.4.if.then56_crit_edge:                 ; preds = %for.cond40.4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.cond40.5:                                     ; preds = %for.cond40.4
  %573 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %device.i, align 8
  %arrayidx.6 = getelementptr i8, ptr %dev, i32 2328
  %575 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %arrayidx.6, align 4
  %577 = ptrtoint ptr %576 to i32
  call void @__asan_load4_noabort(i32 %577)
  %578 = load i32, ptr %576, align 4
  %call.i251.6 = tail call i32 @devm_request_threaded_irq(ptr noundef %574, i32 noundef %578, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %576) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.6)
  %cmp49.6 = icmp slt i32 %call.i251.6, 0
  br i1 %cmp49.6, label %for.cond40.5.if.then56_crit_edge, label %for.cond40.6, !prof !226

for.cond40.5.if.then56_crit_edge:                 ; preds = %for.cond40.5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

for.cond40.6:                                     ; preds = %for.cond40.5
  %579 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load ptr, ptr %device.i, align 8
  %arrayidx.7 = getelementptr i8, ptr %dev, i32 2332
  %581 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %581)
  %582 = load ptr, ptr %arrayidx.7, align 4
  %583 = ptrtoint ptr %582 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %582, align 4
  %call.i251.7 = tail call i32 @devm_request_threaded_irq(ptr noundef %580, i32 noundef %584, ptr noundef nonnull @sxgbe_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %582) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.7)
  %cmp49.7 = icmp slt i32 %call.i251.7, 0
  br i1 %cmp49.7, label %for.cond40.6.if.then56_crit_edge, label %for.cond40.6.for.body64_crit_edge, !prof !226

for.cond40.6.for.body64_crit_edge:                ; preds = %for.cond40.6
  br label %for.body64

for.cond40.6.if.then56_crit_edge:                 ; preds = %for.cond40.6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then56

if.then56:                                        ; preds = %for.cond40.6.if.then56_crit_edge, %for.cond40.5.if.then56_crit_edge, %for.cond40.4.if.then56_crit_edge, %for.cond40.3.if.then56_crit_edge, %for.cond40.2.if.then56_crit_edge, %for.cond40.1.if.then56_crit_edge, %for.cond40.if.then56_crit_edge, %if.end39.if.then56_crit_edge
  %call.i251.lcssa = phi i32 [ %call.i251, %if.end39.if.then56_crit_edge ], [ %call.i251.1, %for.cond40.if.then56_crit_edge ], [ %call.i251.2, %for.cond40.1.if.then56_crit_edge ], [ %call.i251.3, %for.cond40.2.if.then56_crit_edge ], [ %call.i251.4, %for.cond40.3.if.then56_crit_edge ], [ %call.i251.5, %for.cond40.4.if.then56_crit_edge ], [ %call.i251.6, %for.cond40.5.if.then56_crit_edge ], [ %call.i251.7, %for.cond40.6.if.then56_crit_edge ]
  %585 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.sxgbe_open, i32 noundef %586, i32 noundef %call.i251.lcssa) #17
  br label %init_error

for.cond62:                                       ; preds = %for.body64
  %inc84 = add nuw nsw i32 %queue_num.2296, 1
  %exitcond.not = icmp eq i32 %inc84, 16
  br i1 %exitcond.not, label %for.end85, label %for.cond62.for.body64_crit_edge

for.cond62.for.body64_crit_edge:                  ; preds = %for.cond62
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body64

for.body64:                                       ; preds = %for.cond62.for.body64_crit_edge, %for.cond40.6.for.body64_crit_edge
  %queue_num.2296 = phi i32 [ %inc84, %for.cond62.for.body64_crit_edge ], [ 0, %for.cond40.6.for.body64_crit_edge ]
  %587 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %device.i, align 8
  %arrayidx66 = getelementptr %struct.sxgbe_priv_data, ptr %add.ptr.i, i32 0, i32 1, i32 %queue_num.2296
  %589 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load ptr, ptr %arrayidx66, align 4
  %irq_no67 = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %590, i32 0, i32 5
  %591 = ptrtoint ptr %irq_no67 to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %irq_no67, align 4
  %call.i252 = tail call i32 @devm_request_threaded_irq(ptr noundef %588, i32 noundef %592, ptr noundef nonnull @sxgbe_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %590) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %cmp73 = icmp slt i32 %call.i252, 0
  br i1 %cmp73, label %if.then80, label %for.cond62, !prof !226

if.then80:                                        ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #16
  %593 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %593)
  %594 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, ptr noundef nonnull @__func__.sxgbe_open, i32 noundef %594, i32 noundef %call.i252) #17
  br label %init_error

for.end85:                                        ; preds = %for.cond62
  %595 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %hw.i, align 4
  %597 = ptrtoint ptr %596 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %596, align 4
  %enable_tx = getelementptr inbounds %struct.sxgbe_core_ops, ptr %598, i32 0, i32 7
  %599 = ptrtoint ptr %enable_tx to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %enable_tx, align 4
  %601 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %ioaddr.i, align 8
  tail call void %600(ptr noundef %602, i1 noundef zeroext true) #14
  %603 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %hw.i, align 4
  %605 = ptrtoint ptr %604 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %604, align 4
  %enable_rx = getelementptr inbounds %struct.sxgbe_core_ops, ptr %606, i32 0, i32 6
  %607 = ptrtoint ptr %enable_rx to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %enable_rx, align 4
  %609 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %ioaddr.i, align 8
  tail call void %608(ptr noundef %610, i1 noundef zeroext true) #14
  %611 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %plat.i, align 8
  %force_sf_dma_mode.i = getelementptr inbounds %struct.sxgbe_plat_data, ptr %612, i32 0, i32 8
  %613 = ptrtoint ptr %force_sf_dma_mode.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %force_sf_dma_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %614)
  %tobool.not.i254 = icmp eq i32 %614, 0
  br i1 %tobool.not.i254, label %if.else.i, label %for.cond.preheader.i, !prof !226

for.cond.preheader.i:                             ; preds = %for.end85
  %tx_mtl_queues.i = getelementptr i8, ptr %dev, i32 3276
  %615 = ptrtoint ptr %tx_mtl_queues.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %tx_mtl_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %616)
  %cmp78.not.i = icmp eq i32 %616, 0
  br i1 %cmp78.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i259_crit_edge

for.cond.preheader.i.for.body.i259_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i259

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i259:                                    ; preds = %for.body.i259.for.body.i259_crit_edge, %for.cond.preheader.i.for.body.i259_crit_edge
  %queue_num.079.i = phi i32 [ %inc.i258, %for.body.i259.for.body.i259_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i259_crit_edge ]
  %617 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load ptr, ptr %hw.i, align 4
  %mtl.i257 = getelementptr inbounds %struct.sxgbe_ops, ptr %618, i32 0, i32 3
  %619 = ptrtoint ptr %mtl.i257 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %mtl.i257, align 4
  %set_tx_mtl_mode.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %620, i32 0, i32 5
  %621 = ptrtoint ptr %set_tx_mtl_mode.i to i32
  call void @__asan_load4_noabort(i32 %621)
  %622 = load ptr, ptr %set_tx_mtl_mode.i, align 4
  %623 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load ptr, ptr %ioaddr.i, align 8
  tail call void %622(ptr noundef %624, i32 noundef %queue_num.079.i, i32 noundef 2) #14
  %inc.i258 = add nuw i32 %queue_num.079.i, 1
  %625 = ptrtoint ptr %tx_mtl_queues.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %tx_mtl_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i258, %626
  br i1 %cmp.i, label %for.body.i259.for.body.i259_crit_edge, label %for.body.i259.for.end.i_crit_edge

for.body.i259.for.end.i_crit_edge:                ; preds = %for.body.i259
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end.i

for.body.i259.for.body.i259_crit_edge:            ; preds = %for.body.i259
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i259

for.end.i:                                        ; preds = %for.body.i259.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %627 = ptrtoint ptr %tx_tc to i32
  call void @__asan_store4_noabort(i32 %627)
  store i32 2, ptr %tx_tc, align 8
  %rx_mtl_queues.i = getelementptr i8, ptr %dev, i32 3272
  %628 = ptrtoint ptr %rx_mtl_queues.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %rx_mtl_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %629)
  %cmp580.not.i = icmp eq i32 %629, 0
  br i1 %cmp580.not.i, label %for.end.i.for.end12.i_crit_edge, label %for.end.i.for.body6.i_crit_edge

for.end.i.for.body6.i_crit_edge:                  ; preds = %for.end.i
  br label %for.body6.i

for.end.i.for.end12.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end12.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.end.i.for.body6.i_crit_edge
  %queue_num.181.i = phi i32 [ %inc11.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.end.i.for.body6.i_crit_edge ]
  %630 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %hw.i, align 4
  %mtl8.i = getelementptr inbounds %struct.sxgbe_ops, ptr %631, i32 0, i32 3
  %632 = ptrtoint ptr %mtl8.i to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %mtl8.i, align 4
  %set_rx_mtl_mode.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %633, i32 0, i32 6
  %634 = ptrtoint ptr %set_rx_mtl_mode.i to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %set_rx_mtl_mode.i, align 4
  %636 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %ioaddr.i, align 8
  tail call void %635(ptr noundef %637, i32 noundef %queue_num.181.i, i32 noundef 2) #14
  %inc11.i = add nuw i32 %queue_num.181.i, 1
  %638 = ptrtoint ptr %rx_mtl_queues.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %rx_mtl_queues.i, align 4
  %cmp5.i = icmp ult i32 %inc11.i, %639
  br i1 %cmp5.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.for.end12.i_crit_edge

for.body6.i.for.end12.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end12.i

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body6.i

for.end12.i:                                      ; preds = %for.body6.i.for.end12.i_crit_edge, %for.end.i.for.end12.i_crit_edge
  %640 = ptrtoint ptr %rx_tc to i32
  call void @__asan_store4_noabort(i32 %640)
  store i32 2, ptr %rx_tc, align 4
  br label %sxgbe_mtl_operation_mode.exit

if.else.i:                                        ; preds = %for.end85
  %force_thresh_dma_mode.i = getelementptr inbounds %struct.sxgbe_plat_data, ptr %612, i32 0, i32 9
  %641 = ptrtoint ptr %force_thresh_dma_mode.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %force_thresh_dma_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %642)
  %tobool14.not.i = icmp eq i32 %642, 0
  br i1 %tobool14.not.i, label %do.end.i261, label %for.cond22.preheader.i, !prof !230

for.cond22.preheader.i:                           ; preds = %if.else.i
  %tx_mtl_queues24.i = getelementptr i8, ptr %dev, i32 3276
  %643 = ptrtoint ptr %tx_mtl_queues24.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %tx_mtl_queues24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %644)
  %cmp2582.not.i = icmp eq i32 %644, 0
  br i1 %cmp2582.not.i, label %for.cond22.preheader.i.for.cond35.preheader.i_crit_edge, label %for.cond22.preheader.i.for.body26.i_crit_edge

for.cond22.preheader.i.for.body26.i_crit_edge:    ; preds = %for.cond22.preheader.i
  br label %for.body26.i

for.cond22.preheader.i.for.cond35.preheader.i_crit_edge: ; preds = %for.cond22.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader.i

for.cond35.preheader.i:                           ; preds = %for.body26.i.for.cond35.preheader.i_crit_edge, %for.cond22.preheader.i.for.cond35.preheader.i_crit_edge
  %rx_mtl_queues37.i = getelementptr i8, ptr %dev, i32 3272
  %645 = ptrtoint ptr %rx_mtl_queues37.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %rx_mtl_queues37.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %646)
  %cmp3884.not.i = icmp eq i32 %646, 0
  br i1 %cmp3884.not.i, label %for.cond35.preheader.i.sxgbe_mtl_operation_mode.exit_crit_edge, label %for.cond35.preheader.i.for.body39.i_crit_edge

for.cond35.preheader.i.for.body39.i_crit_edge:    ; preds = %for.cond35.preheader.i
  br label %for.body39.i

for.cond35.preheader.i.sxgbe_mtl_operation_mode.exit_crit_edge: ; preds = %for.cond35.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_mtl_operation_mode.exit

for.body26.i:                                     ; preds = %for.body26.i.for.body26.i_crit_edge, %for.cond22.preheader.i.for.body26.i_crit_edge
  %queue_num.283.i = phi i32 [ %inc33.i, %for.body26.i.for.body26.i_crit_edge ], [ 0, %for.cond22.preheader.i.for.body26.i_crit_edge ]
  %647 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %647)
  %648 = load ptr, ptr %hw.i, align 4
  %mtl28.i = getelementptr inbounds %struct.sxgbe_ops, ptr %648, i32 0, i32 3
  %649 = ptrtoint ptr %mtl28.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load ptr, ptr %mtl28.i, align 4
  %set_tx_mtl_mode29.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %650, i32 0, i32 5
  %651 = ptrtoint ptr %set_tx_mtl_mode29.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load ptr, ptr %set_tx_mtl_mode29.i, align 4
  %653 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load ptr, ptr %ioaddr.i, align 8
  %655 = ptrtoint ptr %tx_tc to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load i32, ptr %tx_tc, align 8
  tail call void %652(ptr noundef %654, i32 noundef %queue_num.283.i, i32 noundef %656) #14
  %inc33.i = add nuw i32 %queue_num.283.i, 1
  %657 = ptrtoint ptr %tx_mtl_queues24.i to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load i32, ptr %tx_mtl_queues24.i, align 4
  %cmp25.i = icmp ult i32 %inc33.i, %658
  br i1 %cmp25.i, label %for.body26.i.for.body26.i_crit_edge, label %for.body26.i.for.cond35.preheader.i_crit_edge

for.body26.i.for.cond35.preheader.i_crit_edge:    ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond35.preheader.i

for.body26.i.for.body26.i_crit_edge:              ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body26.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.cond35.preheader.i.for.body39.i_crit_edge
  %queue_num.385.i = phi i32 [ %inc46.i, %for.body39.i.for.body39.i_crit_edge ], [ 0, %for.cond35.preheader.i.for.body39.i_crit_edge ]
  %659 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %hw.i, align 4
  %mtl41.i = getelementptr inbounds %struct.sxgbe_ops, ptr %660, i32 0, i32 3
  %661 = ptrtoint ptr %mtl41.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %mtl41.i, align 4
  %set_rx_mtl_mode42.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %662, i32 0, i32 6
  %663 = ptrtoint ptr %set_rx_mtl_mode42.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %set_rx_mtl_mode42.i, align 4
  %665 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %ioaddr.i, align 8
  %667 = ptrtoint ptr %rx_tc to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load i32, ptr %rx_tc, align 4
  tail call void %664(ptr noundef %666, i32 noundef %queue_num.385.i, i32 noundef %668) #14
  %inc46.i = add nuw i32 %queue_num.385.i, 1
  %669 = ptrtoint ptr %rx_mtl_queues37.i to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load i32, ptr %rx_mtl_queues37.i, align 4
  %cmp38.i = icmp ult i32 %inc46.i, %670
  br i1 %cmp38.i, label %for.body39.i.for.body39.i_crit_edge, label %for.body39.i.sxgbe_mtl_operation_mode.exit_crit_edge

for.body39.i.sxgbe_mtl_operation_mode.exit_crit_edge: ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_mtl_operation_mode.exit

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body39.i

do.end.i261:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #17
  br label %sxgbe_mtl_operation_mode.exit

sxgbe_mtl_operation_mode.exit:                    ; preds = %do.end.i261, %for.body39.i.sxgbe_mtl_operation_mode.exit_crit_edge, %for.cond35.preheader.i.sxgbe_mtl_operation_mode.exit_crit_edge, %for.end12.i
  %xstats = getelementptr i8, ptr %dev, i32 2868
  %671 = call ptr @memset(ptr %xstats, i32 0, i32 316)
  %672 = ptrtoint ptr %tx_tc to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %tx_tc, align 8
  %tx_threshold = getelementptr i8, ptr %dev, i32 2880
  %674 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store4_noabort(i32 %674)
  store i32 %673, ptr %tx_threshold, align 4
  %675 = ptrtoint ptr %rx_tc to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load i32, ptr %rx_tc, align 4
  %rx_threshold = getelementptr i8, ptr %dev, i32 2884
  %677 = ptrtoint ptr %rx_threshold to i32
  call void @__asan_store4_noabort(i32 %677)
  store i32 %676, ptr %rx_threshold, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_open.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_open, %if.then105)) #14
          to label %do.end108 [label %if.then105], !srcloc !227

if.then105:                                       ; preds = %sxgbe_mtl_operation_mode.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_open.__UNIQUE_ID_ddebug491, ptr noundef %dev, ptr noundef nonnull @.str.31) #14
  br label %do.end108

do.end108:                                        ; preds = %if.then105, %sxgbe_mtl_operation_mode.exit
  %678 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %hw.i, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %679, i32 0, i32 2
  %680 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %dma, align 4
  %start_tx = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %681, i32 0, i32 5
  %682 = ptrtoint ptr %start_tx to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %start_tx, align 4
  %684 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %685 = load ptr, ptr %ioaddr.i, align 8
  tail call void %683(ptr noundef %685, i32 noundef 8) #14
  %686 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %hw.i, align 4
  %dma112 = getelementptr inbounds %struct.sxgbe_ops, ptr %687, i32 0, i32 2
  %688 = ptrtoint ptr %dma112 to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load ptr, ptr %dma112, align 4
  %start_rx = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %689, i32 0, i32 9
  %690 = ptrtoint ptr %start_rx to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %start_rx, align 4
  %692 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load ptr, ptr %ioaddr.i, align 8
  tail call void %691(ptr noundef %693, i32 noundef 16) #14
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %694 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load ptr, ptr %phydev, align 16
  %tobool114.not = icmp eq ptr %695, null
  br i1 %tobool114.not, label %do.end108.for.body.i263.preheader_crit_edge, label %if.then115

do.end108.for.body.i263.preheader_crit_edge:      ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i263.preheader

if.then115:                                       ; preds = %do.end108
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_start(ptr noundef nonnull %695) #14
  br label %for.body.i263.preheader

for.body.i263.preheader:                          ; preds = %if.then115, %do.end108.for.body.i263.preheader_crit_edge
  br label %for.body.i263

for.body.i263:                                    ; preds = %for.body.i263.for.body.i263_crit_edge, %for.body.i263.preheader
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.body.i263.for.body.i263_crit_edge ], [ 0, %for.body.i263.preheader ]
  %arrayidx.i262 = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %indvars.iv.i
  %696 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_load4_noabort(i32 %696)
  %697 = load ptr, ptr %arrayidx.i262, align 4
  %tx_coal_frames.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %697, i32 0, i32 10
  %698 = ptrtoint ptr %tx_coal_frames.i to i32
  call void @__asan_store4_noabort(i32 %698)
  store i32 128, ptr %tx_coal_frames.i, align 4
  %tx_coal_timer.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %697, i32 0, i32 11
  %699 = ptrtoint ptr %tx_coal_timer.i to i32
  call void @__asan_store4_noabort(i32 %699)
  store i32 40000, ptr %tx_coal_timer.i, align 4
  %txtimer.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %697, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %txtimer.i, ptr noundef nonnull @sxgbe_tx_timer, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef nonnull @sxgbe_tx_init_coalesce.__key) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %700 = load volatile i32, ptr @jiffies, align 128
  %701 = ptrtoint ptr %tx_coal_timer.i to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %tx_coal_timer.i, align 4
  %call3.i.i = tail call i32 @__usecs_to_jiffies(i32 noundef %702) #14
  %add.i = add i32 %call3.i.i, %700
  %expires.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %697, i32 0, i32 6, i32 1
  %703 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %txtimer.i) #14
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i265 = icmp eq i32 %indvars.iv.next.i, 8
  br i1 %exitcond.not.i265, label %sxgbe_tx_init_coalesce.exit, label %for.body.i263.for.body.i263_crit_edge

for.body.i263.for.body.i263_crit_edge:            ; preds = %for.body.i263
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i263

sxgbe_tx_init_coalesce.exit:                      ; preds = %for.body.i263
  %use_riwt = getelementptr i8, ptr %dev, i32 3320
  %704 = ptrtoint ptr %use_riwt to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load i32, ptr %use_riwt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %705)
  %tobool118.not = icmp eq i32 %705, 0
  br i1 %tobool118.not, label %sxgbe_tx_init_coalesce.exit.if.end127_crit_edge, label %land.lhs.true

sxgbe_tx_init_coalesce.exit.if.end127_crit_edge:  ; preds = %sxgbe_tx_init_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

land.lhs.true:                                    ; preds = %sxgbe_tx_init_coalesce.exit
  %706 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %hw.i, align 4
  %dma120 = getelementptr inbounds %struct.sxgbe_ops, ptr %707, i32 0, i32 2
  %708 = ptrtoint ptr %dma120 to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %dma120, align 4
  %rx_watchdog = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %709, i32 0, i32 13
  %710 = ptrtoint ptr %rx_watchdog to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load ptr, ptr %rx_watchdog, align 4
  %tobool121.not = icmp eq ptr %711, null
  br i1 %tobool121.not, label %land.lhs.true.if.end127_crit_edge, label %if.then122

land.lhs.true.if.end127_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end127

if.then122:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %rx_riwt = getelementptr i8, ptr %dev, i32 2416
  %712 = ptrtoint ptr %rx_riwt to i32
  call void @__asan_store4_noabort(i32 %712)
  store i32 112, ptr %rx_riwt, align 8
  %713 = ptrtoint ptr %dma120 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load ptr, ptr %dma120, align 4
  %rx_watchdog125 = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %714, i32 0, i32 13
  %715 = ptrtoint ptr %rx_watchdog125 to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %rx_watchdog125, align 4
  %717 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %ioaddr.i, align 8
  tail call void %716(ptr noundef %718, i32 noundef 112) #14
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %land.lhs.true.if.end127_crit_edge, %sxgbe_tx_init_coalesce.exit.if.end127_crit_edge
  %tx_lpi_timer = getelementptr i8, ptr %dev, i32 3400
  %719 = ptrtoint ptr %tx_lpi_timer to i32
  call void @__asan_store4_noabort(i32 %719)
  store i32 1000, ptr %tx_lpi_timer, align 8
  %call128 = tail call zeroext i1 @sxgbe_eee_init(ptr noundef %add.ptr.i)
  %conv = zext i1 %call128 to i32
  %eee_enabled = getelementptr i8, ptr %dev, i32 3392
  %720 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_store4_noabort(i32 %720)
  store i32 %conv, ptr %eee_enabled, align 8
  %napi = getelementptr i8, ptr %dev, i32 2424
  tail call void @napi_enable(ptr noundef %napi) #14
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %721 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %722 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %722, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #14
  br label %cleanup

init_error:                                       ; preds = %if.then80, %if.then56, %if.then36, %if.then18, %if.then5
  %ret.0 = phi i32 [ %call.i246, %if.then5 ], [ %call.i249, %if.then18 ], [ %call.i250, %if.then36 ], [ %call.i251.lcssa, %if.then56 ], [ %call.i252, %if.then80 ]
  tail call fastcc void @free_dma_desc_resources(ptr noundef %add.ptr.i)
  %phydev129 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %723 = ptrtoint ptr %phydev129 to i32
  call void @__asan_load4_noabort(i32 %723)
  %724 = load ptr, ptr %phydev129, align 16
  %tobool130.not = icmp eq ptr %724, null
  br i1 %tobool130.not, label %init_error.phy_error_crit_edge, label %if.then131

init_error.phy_error_crit_edge:                   ; preds = %init_error
  call void @__sanitizer_cov_trace_pc() #16
  br label %phy_error

if.then131:                                       ; preds = %init_error
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_disconnect(ptr noundef nonnull %724) #14
  br label %phy_error

phy_error:                                        ; preds = %if.then131, %init_error.phy_error_crit_edge, %if.then
  %ret.1 = phi i32 [ %call2, %if.then ], [ %ret.0, %if.then131 ], [ %ret.0, %init_error.phy_error_crit_edge ]
  %725 = ptrtoint ptr %sxgbe_clk to i32
  call void @__asan_load4_noabort(i32 %725)
  %726 = load ptr, ptr %sxgbe_clk, align 4
  tail call void @clk_disable(ptr noundef %726) #14
  tail call void @clk_unprepare(ptr noundef %726) #14
  br label %cleanup

cleanup:                                          ; preds = %phy_error, %if.end127
  %retval.0 = phi i32 [ %ret.1, %phy_error ], [ 0, %if.end127 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %eee_enabled = getelementptr i8, ptr %dev, i32 3392
  %0 = ptrtoint ptr %eee_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %eee_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %eee_ctrl_timer = getelementptr i8, ptr %dev, i32 3336
  %call1 = tail call i32 @del_timer_sync(ptr noundef %eee_ctrl_timer) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %phydev = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_stop(ptr noundef nonnull %3) #14
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev, align 16
  tail call void @phy_disconnect(ptr noundef %5) #14
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call void @netif_tx_stop_all_queues(ptr noundef %dev) #14
  %napi = getelementptr i8, ptr %dev, i32 2424
  tail call void @napi_disable(ptr noundef %napi) #14
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %txtimer.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %7, i32 0, i32 6
  %call.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.i) #14
  %arrayidx.1.i = getelementptr i8, ptr %dev, i32 2308
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.1.i, align 4
  %txtimer.1.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %9, i32 0, i32 6
  %call.1.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.1.i) #14
  %arrayidx.2.i = getelementptr i8, ptr %dev, i32 2312
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i, align 4
  %txtimer.2.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %11, i32 0, i32 6
  %call.2.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.2.i) #14
  %arrayidx.3.i = getelementptr i8, ptr %dev, i32 2316
  %12 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3.i, align 4
  %txtimer.3.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %13, i32 0, i32 6
  %call.3.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.3.i) #14
  %arrayidx.4.i = getelementptr i8, ptr %dev, i32 2320
  %14 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.4.i, align 4
  %txtimer.4.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %15, i32 0, i32 6
  %call.4.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.4.i) #14
  %arrayidx.5.i = getelementptr i8, ptr %dev, i32 2324
  %16 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.5.i, align 4
  %txtimer.5.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %17, i32 0, i32 6
  %call.5.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.5.i) #14
  %arrayidx.6.i = getelementptr i8, ptr %dev, i32 2328
  %18 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.6.i, align 4
  %txtimer.6.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %19, i32 0, i32 6
  %call.6.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.6.i) #14
  %arrayidx.7.i = getelementptr i8, ptr %dev, i32 2332
  %20 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.7.i, align 4
  %txtimer.7.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %21, i32 0, i32 6
  %call.7.i = tail call i32 @del_timer_sync(ptr noundef %txtimer.7.i) #14
  %hw = getelementptr i8, ptr %dev, i32 2660
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma, align 4
  %stop_tx = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %stop_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stop_tx, align 4
  %ioaddr = getelementptr i8, ptr %dev, i32 2648
  %28 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ioaddr, align 8
  tail call void %27(ptr noundef %29, i32 noundef 8) #14
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 4
  %dma8 = getelementptr inbounds %struct.sxgbe_ops, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dma8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma8, align 4
  %stop_rx = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %stop_rx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stop_rx, align 4
  %36 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr, align 8
  tail call void %35(ptr noundef %37, i32 noundef 16) #14
  %38 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw, align 4
  %mtl.i = getelementptr inbounds %struct.sxgbe_ops, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %mtl.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mtl.i, align 4
  %mtl_disable_txqueue.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %mtl_disable_txqueue.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mtl_disable_txqueue.i, align 4
  %44 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr, align 8
  tail call void %43(ptr noundef %45, i32 noundef 0) #14
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %mtl.1.i = getelementptr inbounds %struct.sxgbe_ops, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %mtl.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mtl.1.i, align 4
  %mtl_disable_txqueue.1.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %mtl_disable_txqueue.1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mtl_disable_txqueue.1.i, align 4
  %52 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ioaddr, align 8
  tail call void %51(ptr noundef %53, i32 noundef 1) #14
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 4
  %mtl.2.i = getelementptr inbounds %struct.sxgbe_ops, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %mtl.2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mtl.2.i, align 4
  %mtl_disable_txqueue.2.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %mtl_disable_txqueue.2.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mtl_disable_txqueue.2.i, align 4
  %60 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioaddr, align 8
  tail call void %59(ptr noundef %61, i32 noundef 2) #14
  %62 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw, align 4
  %mtl.3.i = getelementptr inbounds %struct.sxgbe_ops, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %mtl.3.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mtl.3.i, align 4
  %mtl_disable_txqueue.3.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %mtl_disable_txqueue.3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mtl_disable_txqueue.3.i, align 4
  %68 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr, align 8
  tail call void %67(ptr noundef %69, i32 noundef 3) #14
  %70 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %hw, align 4
  %mtl.4.i = getelementptr inbounds %struct.sxgbe_ops, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %mtl.4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mtl.4.i, align 4
  %mtl_disable_txqueue.4.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %73, i32 0, i32 4
  %74 = ptrtoint ptr %mtl_disable_txqueue.4.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mtl_disable_txqueue.4.i, align 4
  %76 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ioaddr, align 8
  tail call void %75(ptr noundef %77, i32 noundef 4) #14
  %78 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw, align 4
  %mtl.5.i = getelementptr inbounds %struct.sxgbe_ops, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %mtl.5.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mtl.5.i, align 4
  %mtl_disable_txqueue.5.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %81, i32 0, i32 4
  %82 = ptrtoint ptr %mtl_disable_txqueue.5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mtl_disable_txqueue.5.i, align 4
  %84 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioaddr, align 8
  tail call void %83(ptr noundef %85, i32 noundef 5) #14
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 4
  %mtl.6.i = getelementptr inbounds %struct.sxgbe_ops, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %mtl.6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mtl.6.i, align 4
  %mtl_disable_txqueue.6.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %mtl_disable_txqueue.6.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mtl_disable_txqueue.6.i, align 4
  %92 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ioaddr, align 8
  tail call void %91(ptr noundef %93, i32 noundef 6) #14
  %94 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hw, align 4
  %mtl.7.i = getelementptr inbounds %struct.sxgbe_ops, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %mtl.7.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mtl.7.i, align 4
  %mtl_disable_txqueue.7.i = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %mtl_disable_txqueue.7.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mtl_disable_txqueue.7.i, align 4
  %100 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ioaddr, align 8
  tail call void %99(ptr noundef %101, i32 noundef 7) #14
  tail call fastcc void @free_dma_desc_resources(ptr noundef %add.ptr.i)
  %102 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hw, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %103, align 4
  %enable_tx = getelementptr inbounds %struct.sxgbe_core_ops, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %enable_tx to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %enable_tx, align 4
  %108 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ioaddr, align 8
  tail call void %107(ptr noundef %109, i1 noundef zeroext false) #14
  %110 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %111, align 4
  %enable_rx = getelementptr inbounds %struct.sxgbe_core_ops, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %enable_rx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %enable_rx, align 4
  %116 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioaddr, align 8
  tail call void %115(ptr noundef %117, i1 noundef zeroext false) #14
  %sxgbe_clk = getelementptr i8, ptr %dev, i32 3300
  %118 = ptrtoint ptr %sxgbe_clk to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %sxgbe_clk, align 4
  tail call void @clk_disable(ptr noundef %119) #14
  tail call void @clk_unprepare(ptr noundef %119) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %dma_tx_size = getelementptr i8, ptr %dev, i32 2404
  %2 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_tx_size, align 4
  %arrayidx = getelementptr [8 x ptr], ptr %add.ptr.i, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %end.i, align 4
  %nr_frags4 = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %nr_frags4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %nr_frags4, align 2
  %conv5 = zext i8 %9 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %11, %13
  %gso_size = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %gso_size, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %16 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.not = icmp eq i16 %15, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %prev_mss = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 13
  %18 = ptrtoint ptr %prev_mss to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %prev_mss, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %15)
  %cmp.not = icmp eq i16 %19, %15
  br i1 %cmp.not, label %land.rhs.if.end_crit_edge, label %if.then, !prof !230

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %ctxt_desc_req.0 = phi i32 [ 1, %if.then ], [ 0, %land.rhs.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %20 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool16.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool16.not, label %lor.rhs, label %if.end.if.then29_crit_edge, !prof !230

if.end.if.then29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

lor.rhs:                                          ; preds = %if.end
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_flags, align 1
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool19.not = icmp eq i8 %23, 0
  br i1 %tobool19.not, label %lor.rhs.if.end30_crit_edge, label %land.rhs20

lor.rhs.if.end30_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs20:                                       ; preds = %lor.rhs
  %hwts_tx_en = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 12
  %24 = ptrtoint ptr %hwts_tx_en to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwts_tx_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool21.not = icmp eq i32 %25, 0
  br i1 %tobool21.not, label %land.rhs20.if.end30_crit_edge, label %land.rhs20.if.then29_crit_edge, !prof !230

land.rhs20.if.then29_crit_edge:                   ; preds = %land.rhs20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then29

land.rhs20.if.end30_crit_edge:                    ; preds = %land.rhs20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then29:                                        ; preds = %land.rhs20.if.then29_crit_edge, %if.end.if.then29_crit_edge
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.rhs20.if.end30_crit_edge, %lor.rhs.if.end30_crit_edge
  %ctxt_desc_req.1 = phi i32 [ 1, %if.then29 ], [ %ctxt_desc_req.0, %land.rhs20.if.end30_crit_edge ], [ %ctxt_desc_req.0, %lor.rhs.if.end30_crit_edge ]
  %tx_path_in_lpi_mode = getelementptr i8, ptr %dev, i32 3384
  %26 = ptrtoint ptr %tx_path_in_lpi_mode to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tx_path_in_lpi_mode, align 8, !range !221
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool31.not = icmp eq i8 %27, 0
  br i1 %tobool31.not, label %if.end30.if.end33_crit_edge, label %if.then32

if.end30.if.end33_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  %hw.i = getelementptr i8, ptr %dev, i32 2660
  %28 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %reset_eee_mode.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %reset_eee_mode.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reset_eee_mode.i, align 4
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2648
  %34 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr.i, align 8
  tail call void %33(ptr noundef %35) #14
  %eee_ctrl_timer.i = getelementptr i8, ptr %dev, i32 3336
  %call.i377 = tail call i32 @del_timer_sync(ptr noundef %eee_ctrl_timer.i) #14
  %36 = ptrtoint ptr %tx_path_in_lpi_mode to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %tx_path_in_lpi_mode, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end30.if.end33_crit_edge
  %dirty_tx.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 8
  %37 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dirty_tx.i, align 4
  %add.i = add i32 %38, %3
  %cur_tx.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 7
  %39 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cur_tx.i, align 4
  %41 = xor i32 %40, -1
  %sub1.i = add i32 %add.i, %41
  %add = add nuw nsw i32 %conv5, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv5)
  %cmp35.not = icmp ugt i32 %sub1.i, %conv5
  br i1 %cmp35.not, label %if.end47, label %if.then43, !prof !230

if.then43:                                        ; preds = %if.end33
  %state.i378 = getelementptr %struct.netdev_queue, ptr %17, i32 %conv, i32 13
  %42 = ptrtoint ptr %state.i378 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %state.i378, align 4
  %and1.i.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i379.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i379.not, label %if.then45, label %if.then43.cleanup_crit_edge

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i378) #14
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.sxgbe_xmit, i32 noundef %conv) #17
  br label %cleanup

if.end47:                                         ; preds = %if.end33
  %rem = urem i32 %40, %3
  %dma_tx = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 2
  %44 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_tx, align 4
  %add.ptr = getelementptr %struct.sxgbe_tx_norm_desc, ptr %45, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ctxt_desc_req.1)
  %tobool48.not = icmp eq i32 %ctxt_desc_req.1, 0
  %spec.select = select i1 %tobool48.not, ptr null, ptr %add.ptr
  %tx_skbuff = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 5
  %46 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx51 = getelementptr ptr, ptr %47, i32 %rem
  %48 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %skb, ptr %arrayidx51, align 4
  %49 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %end.i, align 4
  %gso_size.i381 = getelementptr inbounds %struct.skb_shared_info, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %gso_size.i381 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %gso_size.i381, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.i382.not = icmp eq i16 %52, 0
  br i1 %tobool.i382.not, label %if.else, label %if.then61, !prof !226

if.then61:                                        ; preds = %if.end47
  %prev_mss62 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 13
  %53 = ptrtoint ptr %prev_mss62 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %prev_mss62, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %54, i16 %15)
  %cmp65.not = icmp eq i16 %54, %15
  br i1 %cmp65.not, label %if.then61.if.end87_crit_edge, label %if.then73, !prof !230

if.then61.if.end87_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end87

if.then73:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #16
  %hw = getelementptr i8, ptr %dev, i32 2660
  %55 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw, align 4
  %desc = getelementptr inbounds %struct.sxgbe_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc, align 4
  %tx_ctxt_desc_set_mss = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %tx_ctxt_desc_set_mss to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_ctxt_desc_set_mss, align 4
  tail call void %60(ptr noundef %spec.select, i16 noundef zeroext %15) #14
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 4
  %desc75 = getelementptr inbounds %struct.sxgbe_ops, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %desc75 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %desc75, align 4
  %tx_ctxt_desc_set_tcmssv = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %64, i32 0, i32 18
  %65 = ptrtoint ptr %tx_ctxt_desc_set_tcmssv to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tx_ctxt_desc_set_tcmssv, align 4
  tail call void %66(ptr noundef %spec.select) #14
  %67 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw, align 4
  %desc77 = getelementptr inbounds %struct.sxgbe_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %desc77 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %desc77, align 4
  %tx_ctxt_desc_reset_ostc = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %tx_ctxt_desc_reset_ostc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tx_ctxt_desc_reset_ostc, align 4
  tail call void %72(ptr noundef %spec.select) #14
  %73 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw, align 4
  %desc79 = getelementptr inbounds %struct.sxgbe_ops, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %desc79 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %desc79, align 4
  %tx_ctxt_desc_set_ctxt = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %76, i32 0, i32 13
  %77 = ptrtoint ptr %tx_ctxt_desc_set_ctxt to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_ctxt_desc_set_ctxt, align 4
  tail call void %78(ptr noundef %spec.select) #14
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 4
  %desc81 = getelementptr inbounds %struct.sxgbe_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %desc81 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %desc81, align 4
  %tx_ctxt_desc_set_owner = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %82, i32 0, i32 14
  %83 = ptrtoint ptr %tx_ctxt_desc_set_owner to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %tx_ctxt_desc_set_owner, align 4
  tail call void %84(ptr noundef %spec.select) #14
  %85 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %cur_tx.i, align 4
  %inc = add i32 %86, 1
  store i32 %inc, ptr %cur_tx.i, align 4
  %rem83 = urem i32 %inc, %3
  %87 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dma_tx, align 4
  %add.ptr85 = getelementptr %struct.sxgbe_tx_norm_desc, ptr %88, i32 %rem83
  %89 = ptrtoint ptr %prev_mss62 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %15, ptr %prev_mss62, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then73, %if.then61.if.end87_crit_edge
  %first_desc.0 = phi ptr [ %add.ptr85, %if.then73 ], [ %add.ptr, %if.then61.if.end87_crit_edge ]
  %entry1.0 = phi i32 [ %rem83, %if.then73 ], [ %rem, %if.then61.if.end87_crit_edge ]
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %90 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %92 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %93 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %91, i32 %conv.i.i.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %94 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %95 = lshr i16 %bf.load.i.i.i, 10
  %96 = and i16 %95, 60
  %mul.i.i.i = zext i16 %96 to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %97 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i383 = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %device.i = getelementptr i8, ptr %dev, i32 2656
  %99 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %device.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %98) #14
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end87
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !230

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %100) #14
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %102, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %100, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %104, %if.end.i.i.i ], [ %102, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %100, ptr noundef %98, i32 noundef %add.i383) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %105 = load ptr, ptr @mem_map, align 4
  %sub.i.i384 = add i32 %sub.ptr.rhs.cast.i.i, 1073741824
  %shr.i.i = lshr i32 %sub.i.i384, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %105, i32 %shr.i.i
  %and.i.i = and i32 %sub.ptr.rhs.cast.i.i, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %100, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add.i383, i32 noundef 1, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %conv.i = zext i32 %retval.0.i.i to i64
  %106 = ptrtoint ptr %first_desc.0 to i32
  call void @__asan_store8_noabort(i32 %106)
  store i64 %conv.i, ptr %first_desc.0, align 8
  %107 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %device.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %108, i32 noundef %retval.0.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %do.end.i, label %dma_map_single_attrs.exit.i.sxgbe_tso_prepare.exit_crit_edge

dma_map_single_attrs.exit.i.sxgbe_tso_prepare.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_tso_prepare.exit

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #17
  br label %sxgbe_tso_prepare.exit

sxgbe_tso_prepare.exit:                           ; preds = %do.end.i, %dma_map_single_attrs.exit.i.sxgbe_tso_prepare.exit_crit_edge
  %first_desc8.i = getelementptr inbounds %struct.sxgbe_tx_norm_desc, ptr %first_desc.0, i32 0, i32 1, i32 0, i32 2
  %109 = ptrtoint ptr %first_desc8.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %bf.load.i = load i16, ptr %first_desc8.i, align 8
  %bf.set.i = or i16 %bf.load.i, 4
  store i16 %bf.set.i, ptr %first_desc8.i, align 8
  %hw.i385 = getelementptr i8, ptr %dev, i32 2660
  %110 = ptrtoint ptr %hw.i385 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hw.i385, align 4
  %desc.i = getelementptr inbounds %struct.sxgbe_ops, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %desc.i, align 4
  %tx_desc_enable_tse.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %tx_desc_enable_tse.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tx_desc_enable_tse.i, align 4
  %116 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %len.i, align 4
  %sub.i387 = sub i32 %117, %add.i383
  tail call void %115(ptr noundef %first_desc.0, i8 noundef zeroext 1, i32 noundef %add.i383, i32 noundef %mul.i.i.i, i32 noundef %sub.i387) #14
  br label %if.end100

if.else:                                          ; preds = %if.end47
  %device = getelementptr i8, ptr %dev, i32 2656
  %118 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %device, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %120 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %data, align 4
  %call88 = tail call fastcc i32 @dma_map_single_attrs(ptr noundef %119, ptr noundef %121, i32 noundef %sub.i, i32 noundef 1)
  %conv89 = zext i32 %call88 to i64
  %122 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %conv89, ptr %add.ptr, align 8
  %123 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %124, i32 noundef %call88) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call88)
  %cmp.i389.not = icmp eq i32 %call88, -1
  br i1 %cmp.i389.not, label %if.then95, label %if.else.if.end96_crit_edge

if.else.if.end96_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end96

if.then95:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, ptr noundef nonnull @__func__.sxgbe_xmit) #17
  br label %if.end96

if.end96:                                         ; preds = %if.then95, %if.else.if.end96_crit_edge
  %hw97 = getelementptr i8, ptr %dev, i32 2660
  %125 = ptrtoint ptr %hw97 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw97, align 4
  %desc98 = getelementptr inbounds %struct.sxgbe_ops, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %desc98 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %desc98, align 4
  %prepare_tx_desc = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %prepare_tx_desc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %prepare_tx_desc, align 4
  tail call void %130(ptr noundef %add.ptr, i8 noundef zeroext 1, i32 noundef %sub.i, i32 noundef %sub.i, i32 noundef 0) #14
  br label %if.end100

if.end100:                                        ; preds = %if.end96, %sxgbe_tso_prepare.exit
  %first_desc.1 = phi ptr [ %first_desc.0, %sxgbe_tso_prepare.exit ], [ %add.ptr, %if.end96 ]
  %entry1.1 = phi i32 [ %entry1.0, %sxgbe_tso_prepare.exit ], [ %rem, %if.end96 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp101402.not = icmp eq i8 %9, 0
  br i1 %cmp101402.not, label %if.end100.for.end_crit_edge, label %for.body.lr.ph

if.end100.for.end_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end100
  %device111 = getelementptr i8, ptr %dev, i32 2656
  %tx_skbuff_dma = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 4
  %hw120 = getelementptr i8, ptr %dev, i32 2660
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %frag_num.0403 = phi i32 [ 0, %for.body.lr.ph ], [ %inc125, %for.body.for.body_crit_edge ]
  %131 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %end.i, align 4
  %arrayidx104 = getelementptr %struct.skb_shared_info, ptr %132, i32 0, i32 12, i32 %frag_num.0403
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %132, i32 0, i32 12, i32 %frag_num.0403, i32 1
  %133 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %bv_len.i, align 4
  %135 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cur_tx.i, align 4
  %inc107 = add i32 %136, 1
  store i32 %inc107, ptr %cur_tx.i, align 4
  %rem108 = urem i32 %inc107, %3
  %137 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_tx, align 4
  %add.ptr110 = getelementptr %struct.sxgbe_tx_norm_desc, ptr %138, i32 %rem108
  %139 = ptrtoint ptr %device111 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %device111, align 8
  %141 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx104, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %132, i32 0, i32 12, i32 %frag_num.0403, i32 2
  %143 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %140, ptr noundef %142, i32 noundef %144, i32 noundef %134, i32 noundef 1, i32 noundef 0) #14
  %conv113 = zext i32 %call2.i to i64
  %145 = ptrtoint ptr %add.ptr110 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %conv113, ptr %add.ptr110, align 8
  %146 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %tx_skbuff_dma, align 4
  %arrayidx117 = getelementptr i32, ptr %147, i32 %rem108
  %148 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %call2.i, ptr %arrayidx117, align 4
  %149 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx119 = getelementptr ptr, ptr %150, i32 %rem108
  %151 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %arrayidx119, align 4
  %152 = ptrtoint ptr %hw120 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw120, align 4
  %desc121 = getelementptr inbounds %struct.sxgbe_ops, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %desc121 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %desc121, align 4
  %prepare_tx_desc122 = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %155, i32 0, i32 2
  %156 = ptrtoint ptr %prepare_tx_desc122 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %prepare_tx_desc122, align 4
  tail call void %157(ptr noundef %add.ptr110, i8 noundef zeroext 0, i32 noundef %134, i32 noundef %134, i32 noundef 0) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !233
  tail call void @arm_heavy_mb() #14
  %158 = ptrtoint ptr %hw120 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw120, align 4
  %desc124 = getelementptr inbounds %struct.sxgbe_ops, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %desc124 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %desc124, align 4
  %set_tx_owner = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %set_tx_owner to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %set_tx_owner, align 4
  tail call void %163(ptr noundef %add.ptr110) #14
  %inc125 = add nuw nsw i32 %frag_num.0403, 1
  %exitcond.not = icmp eq i32 %inc125, %conv5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end100.for.end_crit_edge
  %tx_desc.0.lcssa = phi ptr [ %add.ptr, %if.end100.for.end_crit_edge ], [ %add.ptr110, %for.body.for.end_crit_edge ]
  %entry1.2.lcssa = phi i32 [ %entry1.1, %if.end100.for.end_crit_edge ], [ %rem108, %for.body.for.end_crit_edge ]
  %hw126 = getelementptr i8, ptr %dev, i32 2660
  %164 = ptrtoint ptr %hw126 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw126, align 4
  %desc127 = getelementptr inbounds %struct.sxgbe_ops, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %desc127 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %desc127, align 4
  %close_tx_desc = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %167, i32 0, i32 6
  %168 = ptrtoint ptr %close_tx_desc to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %close_tx_desc, align 4
  tail call void %169(ptr noundef %tx_desc.0.lcssa) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !234
  tail call void @arm_heavy_mb() #14
  %tx_count_frames = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 9
  %170 = ptrtoint ptr %tx_count_frames to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %tx_count_frames, align 4
  %add132 = add i32 %add, %171
  store i32 %add132, ptr %tx_count_frames, align 4
  %tx_coal_frames = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 10
  %172 = ptrtoint ptr %tx_coal_frames to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %tx_coal_frames, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add132, i32 %173)
  %cmp134 = icmp ugt i32 %add132, %173
  br i1 %cmp134, label %if.then136, label %if.else143

if.then136:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %174 = ptrtoint ptr %hw126 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %hw126, align 4
  %desc138 = getelementptr inbounds %struct.sxgbe_ops, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %desc138 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %desc138, align 4
  %clear_tx_ic = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %177, i32 0, i32 8
  %178 = ptrtoint ptr %clear_tx_ic to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %clear_tx_ic, align 4
  tail call void %179(ptr noundef %tx_desc.0.lcssa) #14
  %tx_reset_ic_bit = getelementptr i8, ptr %dev, i32 2916
  %180 = ptrtoint ptr %tx_reset_ic_bit to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %tx_reset_ic_bit, align 4
  %inc139 = add i32 %181, 1
  store i32 %inc139, ptr %tx_reset_ic_bit, align 4
  %txtimer = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %182 = load volatile i32, ptr @jiffies, align 128
  %tx_coal_timer = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 11
  %183 = ptrtoint ptr %tx_coal_timer to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %tx_coal_timer, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %184) #14
  %add141 = add i32 %call3.i, %182
  %call142 = tail call i32 @mod_timer(ptr noundef %txtimer, i32 noundef %add141) #14
  br label %if.end145

if.else143:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  %185 = ptrtoint ptr %tx_count_frames to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 0, ptr %tx_count_frames, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.else143, %if.then136
  %186 = ptrtoint ptr %hw126 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %hw126, align 4
  %desc147 = getelementptr inbounds %struct.sxgbe_ops, ptr %187, i32 0, i32 1
  %188 = ptrtoint ptr %desc147 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %desc147, align 4
  %set_tx_owner148 = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %set_tx_owner148 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %set_tx_owner148, align 4
  tail call void %191(ptr noundef %first_desc.1) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !235
  tail call void @arm_heavy_mb() #14
  %192 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %cur_tx.i, align 4
  %inc153 = add i32 %193, 1
  store i32 %inc153, ptr %cur_tx.i, align 4
  %msg_enable = getelementptr i8, ptr %dev, i32 3296
  %194 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %msg_enable, align 8
  %and155 = and i32 %195, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end145.do.end176_crit_edge, label %do.body158

if.end145.do.end176_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end176

do.body158:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_xmit.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_xmit, %if.then167)) #14
          to label %do.end176 [label %if.then167], !srcloc !227

if.then167:                                       ; preds = %do.body158
  call void @__sanitizer_cov_trace_pc() #16
  %196 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %cur_tx.i, align 4
  %rem169 = urem i32 %197, %3
  %198 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %dirty_tx.i, align 4
  %rem170 = urem i32 %199, %3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_xmit.__UNIQUE_ID_ddebug492, ptr noundef %dev, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.sxgbe_xmit, i32 noundef %rem169, i32 noundef %rem170, i32 noundef %entry1.2.lcssa, ptr noundef %first_desc.1, i32 noundef %conv5) #14
  br label %do.end176

do.end176:                                        ; preds = %if.then167, %do.body158, %if.end145.do.end176_crit_edge
  %200 = ptrtoint ptr %dirty_tx.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %dirty_tx.i, align 4
  %add.i392 = add i32 %201, %3
  %202 = ptrtoint ptr %cur_tx.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %cur_tx.i, align 4
  %204 = xor i32 %203, -1
  %sub1.i394 = add i32 %add.i392, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub1.i394)
  %cmp178 = icmp ult i32 %sub1.i394, 19
  br i1 %cmp178, label %do.body187, label %do.end176.if.end211_crit_edge, !prof !226

do.end176.if.end211_crit_edge:                    ; preds = %do.end176
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end211

do.body187:                                       ; preds = %do.end176
  %205 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %msg_enable, align 8
  %and189 = and i32 %206, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and189)
  %tobool190.not = icmp eq i32 %and189, 0
  br i1 %tobool190.not, label %do.body187.do.end210_crit_edge, label %do.body192

do.body187.do.end210_crit_edge:                   ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end210

do.body192:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_xmit.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_xmit, %if.then204)) #14
          to label %do.end210 [label %if.then204], !srcloc !227

if.then204:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_xmit.__UNIQUE_ID_ddebug493, ptr noundef %dev, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.sxgbe_xmit) #14
  br label %do.end210

do.end210:                                        ; preds = %if.then204, %do.body192, %do.body187.do.end210_crit_edge
  %state.i374 = getelementptr %struct.netdev_queue, ptr %17, i32 %conv, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i374) #14
  br label %if.end211

if.end211:                                        ; preds = %do.end210, %do.end176.if.end211_crit_edge
  %207 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %len.i, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %209 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %tx_bytes, align 4
  %add213 = add i32 %210, %208
  store i32 %add213, ptr %tx_bytes, align 4
  %211 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %end.i, align 4
  %tx_flags215 = getelementptr inbounds %struct.skb_shared_info, ptr %212, i32 0, i32 3
  %213 = ptrtoint ptr %tx_flags215 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %tx_flags215, align 1
  %215 = and i8 %214, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool218.not = icmp eq i8 %215, 0
  br i1 %tobool218.not, label %if.end211.if.end236_crit_edge, label %land.rhs219

if.end211.if.end236_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end236

land.rhs219:                                      ; preds = %if.end211
  %hwts_tx_en220 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 12
  %216 = ptrtoint ptr %hwts_tx_en220 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %hwts_tx_en220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool221.not = icmp eq i32 %217, 0
  br i1 %tobool221.not, label %land.rhs219.if.end236_crit_edge, label %if.then229, !prof !230

land.rhs219.if.end236_crit_edge:                  ; preds = %land.rhs219
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end236

if.then229:                                       ; preds = %land.rhs219
  call void @__sanitizer_cov_trace_pc() #16
  %218 = or i8 %214, 4
  %219 = ptrtoint ptr %tx_flags215 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %218, ptr %tx_flags215, align 1
  %220 = ptrtoint ptr %hw126 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %hw126, align 4
  %desc235 = getelementptr inbounds %struct.sxgbe_ops, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %desc235 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %desc235, align 4
  %tx_enable_tstamp = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %223, i32 0, i32 11
  %224 = ptrtoint ptr %tx_enable_tstamp to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %tx_enable_tstamp, align 4
  tail call void %225(ptr noundef %first_desc.1) #14
  br label %if.end236

if.end236:                                        ; preds = %if.then229, %land.rhs219.if.end236_crit_edge, %if.end211.if.end236_crit_edge
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #14
  %226 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %227, i32 0, i32 3
  %228 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %tx_flags.i, align 1
  %230 = and i8 %229, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %230)
  %tobool.not.i = icmp eq i8 %230, 0
  br i1 %tobool.not.i, label %if.end236.skb_tx_timestamp.exit_crit_edge, label %if.then.i398

if.end236.skb_tx_timestamp.exit_crit_edge:        ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_tx_timestamp.exit

if.then.i398:                                     ; preds = %if.end236
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #14
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i398, %if.end236.skb_tx_timestamp.exit_crit_edge
  %231 = ptrtoint ptr %hw126 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %hw126, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %232, i32 0, i32 2
  %233 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dma, align 4
  %enable_dma_transmission = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %234, i32 0, i32 2
  %235 = ptrtoint ptr %enable_dma_transmission to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %enable_dma_transmission, align 4
  %ioaddr = getelementptr i8, ptr %dev, i32 2648
  %237 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ioaddr, align 8
  tail call void %236(ptr noundef %238, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %skb_tx_timestamp.exit, %if.then45, %if.then43.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %skb_tx_timestamp.exit ], [ 16, %if.then45 ], [ 16, %if.then43.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_set_rx_mode(ptr noundef %dev) #0 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2648
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #14
  %2 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_set_rx_mode.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_set_rx_mode, %if.then)) #14
          to label %do.end8 [label %if.then], !srcloc !227

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 8
  %count6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %5 = ptrtoint ptr %count6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count6, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_set_rx_mode.__UNIQUE_ID_ddebug494, ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef %4, i32 noundef %6) #14
  br label %do.end8

do.end8:                                          ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 8
  %and = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %do.end8.if.end85_crit_edge

do.end8.if.end85_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.else:                                          ; preds = %do.end8
  %mc11 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count12 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %10)
  %cmp = icmp slt i32 %10, 65
  %and14 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %cmp, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.else24, label %if.then16

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !236
  tail call void @arm_heavy_mb() #14
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #14, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !237
  tail call void @arm_heavy_mb() #14
  %add.ptr23 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 -1) #14, !srcloc !223
  br label %if.end85

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp27 = icmp eq i32 %10, 0
  br i1 %cmp27, label %if.else24.if.end85_crit_edge, label %if.then28

if.else24.if.end85_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

if.then28:                                        ; preds = %if.else24
  %11 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %mc_filter, align 8
  %12 = ptrtoint ptr %mc11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0204 = load ptr, ptr %mc11, align 4
  %cmp35.not205 = icmp eq ptr %ha.0204, %mc11
  br i1 %cmp35.not205, label %if.then28.do.body73_crit_edge, label %if.then28.cond.end_crit_edge

if.then28.cond.end_crit_edge:                     ; preds = %if.then28
  br label %cond.end

if.then28.do.body73_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body73

cond.end:                                         ; preds = %cond.end.cond.end_crit_edge, %if.then28.cond.end_crit_edge
  %ha.0206 = phi ptr [ %ha.0, %cond.end.cond.end_crit_edge ], [ %ha.0204, %if.then28.cond.end_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0206, i32 0, i32 2
  %call39 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #19
  %neg = and i32 %call39, 255
  %13 = xor i32 %neg, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv2.i.i = zext i8 %15 to i32
  %shr63 = lshr i32 %conv2.i.i, 2
  %and64 = and i32 %shr63, 31
  %shl65 = shl nuw i32 1, %and64
  %16 = lshr i32 %conv2.i.i, 7
  %arrayidx = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %or67 = or i32 %shl65, %18
  store i32 %or67, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %ha.0206 to i32
  call void @__asan_load4_noabort(i32 %19)
  %ha.0 = load ptr, ptr %ha.0206, align 4
  %cmp35.not = icmp eq ptr %ha.0, %mc11
  br i1 %cmp35.not, label %cond.end.do.body73_crit_edge, label %cond.end.cond.end_crit_edge

cond.end.cond.end_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.end.do.body73_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body73

do.body73:                                        ; preds = %cond.end.do.body73_crit_edge, %if.then28.do.body73_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !238
  tail call void @arm_heavy_mb() #14
  %20 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mc_filter, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %add.ptr77 = getelementptr i8, ptr %1, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %22) #14, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !239
  tail call void @arm_heavy_mb() #14
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %2, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %add.ptr82 = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 %25) #14, !srcloc !223
  br label %if.end85

if.end85:                                         ; preds = %do.body73, %if.else24.if.end85_crit_edge, %if.then16, %do.end8.if.end85_crit_edge
  %value.0 = phi i32 [ 16, %if.then16 ], [ 0, %if.else24.if.end85_crit_edge ], [ 4, %do.body73 ], [ 1, %do.end8.if.end85_crit_edge ]
  %uc86 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65
  %count87 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 65, i32 1
  %26 = ptrtoint ptr %count87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %count87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp88 = icmp sgt i32 %27, 32
  br i1 %cmp88, label %if.then89, label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %if.end85
  %28 = ptrtoint ptr %uc86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %ha.1207 = load ptr, ptr %uc86, align 4
  %cmp102.not208 = icmp eq ptr %ha.1207, %uc86
  br i1 %cmp102.not208, label %for.cond98.preheader.do.body116_crit_edge, label %for.cond98.preheader.for.body105_crit_edge

for.cond98.preheader.for.body105_crit_edge:       ; preds = %for.cond98.preheader
  br label %for.body105

for.cond98.preheader.do.body116_crit_edge:        ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body116

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #16
  %or90 = or i32 %value.0, 1
  br label %do.body116

for.body105:                                      ; preds = %for.body105.for.body105_crit_edge, %for.cond98.preheader.for.body105_crit_edge
  %ha.1210 = phi ptr [ %ha.1, %for.body105.for.body105_crit_edge ], [ %ha.1207, %for.cond98.preheader.for.body105_crit_edge ]
  %reg.0209 = phi i32 [ %inc, %for.body105.for.body105_crit_edge ], [ 1, %for.cond98.preheader.for.body105_crit_edge ]
  %addr106 = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1210, i32 0, i32 2
  %arrayidx.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1210, i32 0, i32 2, i32 5
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %30 to i32
  %shl.i199 = shl nuw nsw i32 %conv.i, 8
  %arrayidx1.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1210, i32 0, i32 2, i32 4
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %32 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !240
  tail call void @arm_heavy_mb() #14
  %or.i200 = or i32 %shl.i199, %conv2.i
  %or3.i = or i32 %or.i200, -2147483648
  %33 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg.0209)
  %cmp.i = icmp ugt i32 %reg.0209, 15
  %cond.i = select i1 %cmp.i, i32 2048, i32 64
  %mul.i = shl i32 %reg.0209, 3
  %add.i = add i32 %cond.i, %mul.i
  %add.ptr.i201 = getelementptr i8, ptr %1, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i201, i32 %33) #14, !srcloc !223
  %arrayidx5.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1210, i32 0, i32 2, i32 3
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %35 to i32
  %shl7.i = shl nuw i32 %conv6.i, 24
  %arrayidx8.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1210, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %37 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or11.i = or i32 %shl10.i, %shl7.i
  %arrayidx12.i = getelementptr %struct.netdev_hw_addr, ptr %ha.1210, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %39 to i32
  %shl14.i = shl nuw nsw i32 %conv13.i, 8
  %or15.i = or i32 %or11.i, %shl14.i
  %40 = ptrtoint ptr %addr106 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %addr106, align 1
  %conv17.i = zext i8 %41 to i32
  %or18.i = or i32 %or15.i, %conv17.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !241
  tail call void @arm_heavy_mb() #14
  %42 = tail call i32 @llvm.bswap.i32(i32 %or18.i) #14
  %cond24.i = select i1 %cmp.i, i32 2052, i32 68
  %add26.i = add i32 %cond24.i, %mul.i
  %add.ptr27.i = getelementptr i8, ptr %1, i32 %add26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %42) #14, !srcloc !223
  %inc = add i32 %reg.0209, 1
  %43 = ptrtoint ptr %ha.1210 to i32
  call void @__asan_load4_noabort(i32 %43)
  %ha.1 = load ptr, ptr %ha.1210, align 4
  %cmp102.not = icmp eq ptr %ha.1, %uc86
  br i1 %cmp102.not, label %for.body105.do.body116_crit_edge, label %for.body105.for.body105_crit_edge

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body105

for.body105.do.body116_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body116

do.body116:                                       ; preds = %for.body105.do.body116_crit_edge, %if.then89, %for.cond98.preheader.do.body116_crit_edge
  %value.1 = phi i32 [ %or90, %if.then89 ], [ %value.0, %for.cond98.preheader.do.body116_crit_edge ], [ %value.0, %for.body105.do.body116_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !242
  tail call void @arm_heavy_mb() #14
  %44 = tail call i32 @llvm.bswap.i32(i32 %value.1)
  %add.ptr119 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %44) #14, !srcloc !223
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_set_rx_mode.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_set_rx_mode, %if.then133)) #14
          to label %do.end154 [label %if.then133], !srcloc !227

if.then133:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #16
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #14, !srcloc !224
  %46 = tail call i32 @llvm.bswap.i32(i32 %45)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !243
  %add.ptr140 = getelementptr i8, ptr %1, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr140) #14, !srcloc !224
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !244
  %add.ptr146 = getelementptr i8, ptr %1, i32 12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #14, !srcloc !224
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !245
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_set_rx_mode.__UNIQUE_ID_ddebug495, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %46, i32 noundef %48, i32 noundef %50) #14
  br label %do.end154

do.end154:                                        ; preds = %if.then133, %do.body116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @phy_do_ioctl(ptr noundef %dev, ptr noundef %rq, i32 noundef %cmd) #14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %new_mtu, ptr %mtu, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 @sxgbe_release(ptr noundef %dev)
  %call2 = tail call i32 @sxgbe_open(ptr noundef %dev)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_tx_timeout(ptr nocapture noundef readonly %dev, i32 noundef %txqueue) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 0) #14
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 1) #14
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 2) #14
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 3) #14
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 4) #14
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 5) #14
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 6) #14
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %add.ptr.i, i32 noundef 7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_get_stats64(ptr noundef %dev, ptr nocapture noundef writeonly %stats) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr i8, ptr %dev, i32 2648
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 8
  %stats_lock = getelementptr i8, ptr %dev, i32 2676
  tail call void @_raw_spin_lock(ptr noundef %stats_lock) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !246
  tail call void @arm_heavy_mb() #14
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #14, !srcloc !223
  %add.ptr.i44 = getelementptr i8, ptr %1, i32 2320
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i = getelementptr i8, ptr %1, i32 2324
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #14
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %9 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %rx_bytes, align 8
  %add.ptr.i45 = getelementptr i8, ptr %1, i32 2304
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i46 = getelementptr i8, ptr %1, i32 2308
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i46) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %12 = zext i32 %11 to i64
  %13 = zext i32 %10 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #14
  %17 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %stats, align 8
  %add.ptr.i47 = getelementptr i8, ptr %1, i32 2336
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i48 = getelementptr i8, ptr %1, i32 2340
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i48) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %20 = zext i32 %19 to i64
  %21 = zext i32 %18 to i64
  %22 = shl nuw i64 %21, 32
  %23 = or i64 %22, %20
  %24 = tail call i64 @llvm.bswap.i64(i64 %23) #14
  %multicast = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %25 = ptrtoint ptr %multicast to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %multicast, align 8
  %add.ptr.i49 = getelementptr i8, ptr %1, i32 2344
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i50 = getelementptr i8, ptr %1, i32 2348
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i50) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %28 = zext i32 %27 to i64
  %29 = zext i32 %26 to i64
  %30 = shl nuw i64 %29, 32
  %31 = or i64 %30, %28
  %32 = tail call i64 @llvm.bswap.i64(i64 %31) #14
  %rx_crc_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %33 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %32, ptr %rx_crc_errors, align 8
  %add.ptr.i51 = getelementptr i8, ptr %1, i32 2424
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i52 = getelementptr i8, ptr %1, i32 2428
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i52) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %36 = zext i32 %35 to i64
  %37 = zext i32 %34 to i64
  %38 = shl nuw i64 %37, 32
  %39 = or i64 %38, %36
  %40 = tail call i64 @llvm.bswap.i64(i64 %39) #14
  %rx_length_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %41 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %rx_length_errors, align 8
  %add.ptr.i53 = getelementptr i8, ptr %1, i32 2448
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i54 = getelementptr i8, ptr %1, i32 2452
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i54) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %44 = zext i32 %43 to i64
  %45 = zext i32 %42 to i64
  %46 = shl nuw i64 %45, 32
  %47 = or i64 %46, %44
  %48 = tail call i64 @llvm.bswap.i64(i64 %47) #14
  %rx_missed_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 15
  %49 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %rx_missed_errors, align 8
  %add.ptr.i55 = getelementptr i8, ptr %1, i32 2180
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i56 = getelementptr i8, ptr %1, i32 2184
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i56) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %52 = zext i32 %51 to i64
  %53 = zext i32 %50 to i64
  %54 = shl nuw i64 %53, 32
  %55 = or i64 %54, %52
  %56 = tail call i64 @llvm.bswap.i64(i64 %55) #14
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %57 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %tx_bytes, align 8
  %add.ptr.i57 = getelementptr i8, ptr %1, i32 2076
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i58 = getelementptr i8, ptr %1, i32 2080
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i58) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %60 = zext i32 %59 to i64
  %61 = zext i32 %58 to i64
  %62 = shl nuw i64 %61, 32
  %63 = or i64 %62, %60
  %64 = tail call i64 @llvm.bswap.i64(i64 %63) #14
  %add.ptr.i59 = getelementptr i8, ptr %1, i32 2188
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i60 = getelementptr i8, ptr %1, i32 2192
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i60) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %67 = zext i32 %66 to i64
  %68 = zext i32 %65 to i64
  %69 = shl nuw i64 %68, 32
  %70 = or i64 %69, %67
  %71 = tail call i64 @llvm.bswap.i64(i64 %70) #14
  %tx_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %sub = sub i64 %64, %71
  %72 = ptrtoint ptr %tx_errors to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %sub, ptr %tx_errors, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %73 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %64, ptr %tx_packets, align 8
  %add.ptr.i61 = getelementptr i8, ptr %1, i32 2172
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !247
  %add.ptr4.i62 = getelementptr i8, ptr %1, i32 2176
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i62) #14, !srcloc !224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !248
  %76 = zext i32 %75 to i64
  %77 = zext i32 %74 to i64
  %78 = shl nuw i64 %77, 32
  %79 = or i64 %78, %76
  %80 = tail call i64 @llvm.bswap.i64(i64 %79) #14
  %tx_fifo_errors = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 18
  %81 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %80, ptr %tx_fifo_errors, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !249
  tail call void @arm_heavy_mb() #14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #14, !srcloc !223
  tail call void @_raw_spin_unlock(ptr noundef %stats_lock) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_poll_controller(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %dev, i32 2668
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #14
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call i32 @sxgbe_rx_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_set_features(ptr nocapture noundef %dev, i64 noundef %features) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %and2 = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  %hw5 = getelementptr i8, ptr %dev, i32 2660
  %2 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw5, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %enable_rx_csum = getelementptr inbounds %struct.sxgbe_core_ops, ptr %5, i32 0, i32 15
  %disable_rx_csum = getelementptr inbounds %struct.sxgbe_core_ops, ptr %5, i32 0, i32 16
  %enable_rx_csum.sink = select i1 %tobool3.not, ptr %disable_rx_csum, ptr %enable_rx_csum
  %not.tobool3.not = xor i1 %tobool3.not, true
  %.sink = zext i1 %not.tobool3.not to i32
  %6 = ptrtoint ptr %enable_rx_csum.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_rx_csum.sink, align 4
  %ioaddr = getelementptr i8, ptr %dev, i32 2648
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 8
  tail call void %7(ptr noundef %9) #14
  %rxcsum_insertion = getelementptr i8, ptr %dev, i32 2672
  %10 = ptrtoint ptr %rxcsum_insertion to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %rxcsum_insertion, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sxgbe_init_phy(ptr noundef %ndev) unnamed_addr #0 align 64 {
entry:
  %phy_id_fmt = alloca [64 x i8], align 1
  %bus_id = alloca [61 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %phy_id_fmt) #14
  %0 = call ptr @memset(ptr %phy_id_fmt, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %bus_id) #14
  %1 = call ptr @memset(ptr %bus_id, i32 255, i32 61)
  %plat = getelementptr i8, ptr %ndev, i32 3184
  %2 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat, align 8
  %interface = getelementptr inbounds %struct.sxgbe_plat_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interface, align 4
  %oldlink = getelementptr i8, ptr %ndev, i32 2720
  %6 = ptrtoint ptr %oldlink to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %oldlink, align 8
  %speed = getelementptr i8, ptr %ndev, i32 2724
  %7 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %speed, align 4
  %oldduplex = getelementptr i8, ptr %ndev, i32 2728
  %8 = ptrtoint ptr %oldduplex to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 255, ptr %oldduplex, align 8
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %10, null
  %bus_id9 = getelementptr inbounds %struct.sxgbe_plat_data, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %bus_id9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bus_id9, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bus_id, i32 noundef 61, ptr noundef nonnull @.str.32, ptr noundef nonnull %10, i32 noundef %12)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %bus_id, i32 noundef 61, ptr noundef nonnull @.str.33, i32 noundef %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plat, align 8
  %phy_addr = getelementptr inbounds %struct.sxgbe_plat_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %phy_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %phy_addr, align 4
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %phy_id_fmt, i32 noundef 64, ptr noundef nonnull @.str.34, ptr noundef nonnull %bus_id, i32 noundef %16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_init_phy.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_init_phy, %if.then20)) #14
          to label %do.end24 [label %if.then20], !srcloc !227

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_init_phy.__UNIQUE_ID_ddebug486, ptr noundef %ndev, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35, ptr noundef nonnull %phy_id_fmt) #14
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %if.end
  %call26 = call ptr @phy_connect(ptr noundef %ndev, ptr noundef nonnull %phy_id_fmt, ptr noundef nonnull @sxgbe_adjust_link, i32 noundef %5) #14
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end30

if.then28:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %ndev, ptr noundef nonnull @.str.37) #17
  %17 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end30:                                         ; preds = %do.end24
  %18 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end30.if.end34_crit_edge [
    i32 2, label %if.end30.if.then32_crit_edge
    i32 7, label %if.end30.if.then32_crit_edge88
  ]

if.end30.if.then32_crit_edge88:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

if.end30.if.then32_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then32

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then32:                                        ; preds = %if.end30.if.then32_crit_edge, %if.end30.if.then32_crit_edge88
  %call33 = call i32 @phy_set_max_speed(ptr noundef %call26, i32 noundef 1000) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end30.if.end34_crit_edge
  %phy_id = getelementptr inbounds %struct.phy_device, ptr %call26, i32 0, i32 2
  %19 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phy_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp35 = icmp eq i32 %20, 0
  br i1 %cmp35, label %if.then36, label %do.body39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  call void @phy_disconnect(ptr noundef %call26) #14
  br label %cleanup

do.body39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_init_phy.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_init_phy, %if.then51)) #14
          to label %cleanup [label %if.then51], !srcloc !227

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  %21 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phy_id, align 4
  %link = getelementptr inbounds %struct.phy_device, ptr %call26, i32 0, i32 4
  %23 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @sxgbe_init_phy.__UNIQUE_ID_ddebug487, ptr noundef %ndev, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.35, i32 noundef %22, i32 noundef %bf.cast) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %do.body39, %if.then36, %if.then28
  %retval.0 = phi i32 [ %17, %if.then28 ], [ -19, %if.then36 ], [ 0, %if.then51 ], [ 0, %do.body39 ]
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %bus_id) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %phy_id_fmt) #14
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_common_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr i8, ptr %dev_id, i32 2660
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %host_irq_status = getelementptr inbounds %struct.sxgbe_core_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %host_irq_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_irq_status, align 4
  %ioaddr = getelementptr i8, ptr %dev_id, i32 2648
  %6 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr, align 8
  %xstats = getelementptr i8, ptr %dev_id, i32 2868
  %call1 = tail call i32 %5(ptr noundef %7, ptr noundef %xstats) #14
  %and = and i32 %call1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %tx_lpi_entry_n = getelementptr i8, ptr %dev_id, i32 2972
  %8 = ptrtoint ptr %tx_lpi_entry_n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_lpi_entry_n, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_lpi_entry_n, align 4
  %tx_path_in_lpi_mode = getelementptr i8, ptr %dev_id, i32 3384
  %10 = ptrtoint ptr %tx_path_in_lpi_mode to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %tx_path_in_lpi_mode, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %call1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %tx_lpi_exit_n = getelementptr i8, ptr %dev_id, i32 2976
  %11 = ptrtoint ptr %tx_lpi_exit_n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_lpi_exit_n, align 4
  %inc7 = add i32 %12, 1
  store i32 %inc7, ptr %tx_lpi_exit_n, align 4
  %tx_path_in_lpi_mode8 = getelementptr i8, ptr %dev_id, i32 3384
  %13 = ptrtoint ptr %tx_path_in_lpi_mode8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %tx_path_in_lpi_mode8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %and10 = and i32 %call1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end15_crit_edge, label %if.then12

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %rx_lpi_entry_n = getelementptr i8, ptr %dev_id, i32 2980
  %14 = ptrtoint ptr %rx_lpi_entry_n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_lpi_entry_n, align 4
  %inc14 = add i32 %15, 1
  store i32 %inc14, ptr %rx_lpi_entry_n, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end9.if.end15_crit_edge
  %and16 = and i32 %call1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end21_crit_edge, label %if.then18

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %rx_lpi_exit_n = getelementptr i8, ptr %dev_id, i32 2984
  %16 = ptrtoint ptr %rx_lpi_exit_n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_lpi_exit_n, align 4
  %inc20 = add i32 %17, 1
  store i32 %inc20, ptr %rx_lpi_exit_n, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end15.if.end21_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_tx_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ptr = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %priv_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ptr, align 4
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %tx_dma_int_status = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %tx_dma_int_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_dma_int_status, align 4
  %ioaddr = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 8
  %queue_no = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %dev_id, i32 0, i32 14
  %10 = ptrtoint ptr %queue_no to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %queue_no, align 2
  %conv = zext i8 %11 to i32
  %xstats = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 23
  %call = tail call i32 %7(ptr noundef %9, i32 noundef %conv, ptr noundef %xstats) #14
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !226

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %napi = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 7
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %and3 = and i32 %call, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %if.then11, !prof !230

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %queue_no to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %queue_no, align 2
  %conv13 = zext i8 %13 to i32
  tail call fastcc void @sxgbe_restart_tx_queue(ptr noundef %1, i32 noundef %conv13)
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %and15 = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end39_crit_edge, label %land.lhs.true

if.end14.if.end39_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end14
  %tx_tc = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 34
  %14 = ptrtoint ptr %tx_tc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_tc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not = icmp ne i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp19 = icmp slt i32 %15, 512
  %spec.select = and i1 %cmp.not, %cmp19
  br i1 %spec.select, label %if.then27, label %land.lhs.true.if.end39_crit_edge, !prof !226

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

if.then27:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %15)
  %cmp29 = icmp slt i32 %15, 128
  %cond = select i1 %cmp29, i32 32, i32 64
  %add = add nsw i32 %cond, %15
  %16 = ptrtoint ptr %tx_tc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %tx_tc, align 8
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 4
  %mtl = getelementptr inbounds %struct.sxgbe_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %mtl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mtl, align 4
  %set_tx_mtl_mode = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %set_tx_mtl_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %set_tx_mtl_mode, align 4
  %23 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr, align 8
  %25 = ptrtoint ptr %queue_no to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %queue_no, align 2
  %conv35 = zext i8 %26 to i32
  tail call void %22(ptr noundef %24, i32 noundef %conv35, i32 noundef %add) #14
  %27 = ptrtoint ptr %tx_tc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_tc, align 8
  %tx_threshold = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 23, i32 3
  %29 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tx_threshold, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then27, %land.lhs.true.if.end39_crit_edge, %if.end14.if.end39_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_rx_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 4
  %rx_dma_int_status = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %rx_dma_int_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_dma_int_status, align 4
  %ioaddr = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 8
  %queue_no = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %dev_id, i32 0, i32 9
  %10 = ptrtoint ptr %queue_no to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %queue_no, align 4
  %conv = zext i8 %11 to i32
  %xstats = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 23
  %call = tail call i32 %7(ptr noundef %9, i32 noundef %conv, ptr noundef %xstats) #14
  %and = and i32 %call, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs, !prof !226

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs:                                         ; preds = %entry
  %napi = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #14
  br i1 %call1, label %if.then, label %land.rhs.if.end_crit_edge, !prof !230

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 4
  %dma6 = getelementptr inbounds %struct.sxgbe_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dma6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma6, align 4
  %disable_dma_irq = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %disable_dma_irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %disable_dma_irq, align 4
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 8
  %20 = ptrtoint ptr %queue_no to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %queue_no, align 4
  %conv9 = zext i8 %21 to i32
  tail call void %17(ptr noundef %19, i32 noundef %conv9) #14
  tail call void @__napi_schedule(ptr noundef %napi) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %and11 = and i32 %call, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end34_crit_edge, label %land.lhs.true

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %rx_tc = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 35
  %22 = ptrtoint ptr %rx_tc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.not = icmp ne i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %23)
  %cmp16 = icmp slt i32 %23, 128
  %spec.select = and i1 %cmp.not, %cmp16
  br i1 %spec.select, label %if.then25, label %land.lhs.true.if.end34_crit_edge, !prof !226

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %add = add nsw i32 %23, 32
  %24 = ptrtoint ptr %rx_tc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add, ptr %rx_tc, align 4
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 4
  %mtl = getelementptr inbounds %struct.sxgbe_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %mtl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mtl, align 4
  %set_rx_mtl_mode = getelementptr inbounds %struct.sxgbe_mtl_ops, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %set_rx_mtl_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_rx_mtl_mode, align 4
  %31 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr, align 8
  %33 = ptrtoint ptr %queue_no to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %queue_no, align 4
  %conv30 = zext i8 %34 to i32
  tail call void %30(ptr noundef %32, i32 noundef %conv30, i32 noundef %add) #14
  %35 = ptrtoint ptr %rx_tc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_tc, align 4
  %rx_threshold = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 23, i32 4
  %37 = ptrtoint ptr %rx_threshold to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %rx_threshold, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %land.lhs.true.if.end34_crit_edge, %if.end.if.end34_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_dma_desc_resources(ptr nocapture noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_tx_size = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_tx_size, align 4
  %dma_rx_size = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 4
  %2 = ptrtoint ptr %dma_rx_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_rx_size, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %tx_free_ring_skbufs.exit.i.for.body.i_crit_edge, %entry
  %queue_num.03.i = phi i32 [ 0, %entry ], [ %inc.i, %tx_free_ring_skbufs.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x ptr], ptr %priv, i32 0, i32 %queue_num.03.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %priv_ptr.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %priv_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv_ptr.i.i, align 4
  %dma_tx_size.i.i = getelementptr inbounds %struct.sxgbe_priv_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dma_tx_size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_tx_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp23.i.i = icmp sgt i32 %9, 0
  br i1 %cmp23.i.i, label %for.body.lr.ph.i.i, label %for.body.i.tx_free_ring_skbufs.exit.i_crit_edge

for.body.i.tx_free_ring_skbufs.exit.i_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_free_ring_skbufs.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %tx_skbuff_dma.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 4
  %dma_tx.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 2
  %device.i.i = getelementptr inbounds %struct.sxgbe_priv_data, ptr %7, i32 0, i32 10
  %hw.i.i = getelementptr inbounds %struct.sxgbe_priv_data, ptr %7, i32 0, i32 11
  %tx_skbuff.i.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %5, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %dma_desc.024.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %tx_skbuff_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_skbuff_dma.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %11, i32 %dma_desc.024.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %dma_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_tx.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %15, i32 %dma_desc.024.i.i
  %16 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i.i, align 8
  %18 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i.i, align 4
  %desc.i.i = getelementptr inbounds %struct.sxgbe_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc.i.i, align 4
  %get_tx_len.i.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %get_tx_len.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_tx_len.i.i, align 4
  %call.i.i = tail call i32 %23(ptr noundef %add.ptr.i.i) #14
  tail call void @dma_unmap_page_attrs(ptr noundef %17, i32 noundef %13, i32 noundef %call.i.i, i32 noundef 1, i32 noundef 0) #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i.if.end.i.i_crit_edge
  %24 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_skbuff.i.i, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %25, i32 %dma_desc.024.i.i
  %26 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3.i.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %27, i32 noundef 1) #14
  %28 = ptrtoint ptr %tx_skbuff.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_skbuff.i.i, align 4
  %arrayidx5.i.i = getelementptr ptr, ptr %29, i32 %dma_desc.024.i.i
  %30 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx5.i.i, align 4
  %31 = ptrtoint ptr %tx_skbuff_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_skbuff_dma.i.i, align 4
  %arrayidx7.i.i = getelementptr i32, ptr %32, i32 %dma_desc.024.i.i
  %33 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %arrayidx7.i.i, align 4
  %inc.i.i = add nuw nsw i32 %dma_desc.024.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %9
  br i1 %exitcond.not.i.i, label %if.end.i.i.tx_free_ring_skbufs.exit.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.end.i.i.tx_free_ring_skbufs.exit.i_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_free_ring_skbufs.exit.i

tx_free_ring_skbufs.exit.i:                       ; preds = %if.end.i.i.tx_free_ring_skbufs.exit.i_crit_edge, %for.body.i.tx_free_ring_skbufs.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %queue_num.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.cond.preheader, label %tx_free_ring_skbufs.exit.i.for.body.i_crit_edge

tx_free_ring_skbufs.exit.i.for.body.i_crit_edge:  ; preds = %tx_free_ring_skbufs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.cond.preheader:                               ; preds = %tx_free_ring_skbufs.exit.i
  %device = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 10
  %mul.i = mul i32 %1, 24
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 8
  %36 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv, align 4
  %dma_tx.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_tx.i, align 4
  %dma_tx_phy.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %dma_tx_phy.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_tx_phy.i, align 4
  tail call void @dma_free_attrs(ptr noundef %35, i32 noundef %mul.i, ptr noundef %39, i32 noundef %41, i32 noundef 0) #14
  %42 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device, align 8
  %arrayidx.1 = getelementptr [8 x ptr], ptr %priv, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.1, align 4
  %dma_tx.i.1 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dma_tx.i.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_tx.i.1, align 4
  %dma_tx_phy.i.1 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %dma_tx_phy.i.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_tx_phy.i.1, align 4
  tail call void @dma_free_attrs(ptr noundef %43, i32 noundef %mul.i, ptr noundef %47, i32 noundef %49, i32 noundef 0) #14
  %50 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %device, align 8
  %arrayidx.2 = getelementptr [8 x ptr], ptr %priv, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.2, align 4
  %dma_tx.i.2 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dma_tx.i.2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_tx.i.2, align 4
  %dma_tx_phy.i.2 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %53, i32 0, i32 3
  %56 = ptrtoint ptr %dma_tx_phy.i.2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_tx_phy.i.2, align 4
  tail call void @dma_free_attrs(ptr noundef %51, i32 noundef %mul.i, ptr noundef %55, i32 noundef %57, i32 noundef 0) #14
  %58 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %device, align 8
  %arrayidx.3 = getelementptr [8 x ptr], ptr %priv, i32 0, i32 3
  %60 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.3, align 4
  %dma_tx.i.3 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dma_tx.i.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_tx.i.3, align 4
  %dma_tx_phy.i.3 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %61, i32 0, i32 3
  %64 = ptrtoint ptr %dma_tx_phy.i.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_tx_phy.i.3, align 4
  tail call void @dma_free_attrs(ptr noundef %59, i32 noundef %mul.i, ptr noundef %63, i32 noundef %65, i32 noundef 0) #14
  %66 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device, align 8
  %arrayidx.4 = getelementptr [8 x ptr], ptr %priv, i32 0, i32 4
  %68 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.4, align 4
  %dma_tx.i.4 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %dma_tx.i.4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_tx.i.4, align 4
  %dma_tx_phy.i.4 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %69, i32 0, i32 3
  %72 = ptrtoint ptr %dma_tx_phy.i.4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %dma_tx_phy.i.4, align 4
  tail call void @dma_free_attrs(ptr noundef %67, i32 noundef %mul.i, ptr noundef %71, i32 noundef %73, i32 noundef 0) #14
  %74 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device, align 8
  %arrayidx.5 = getelementptr [8 x ptr], ptr %priv, i32 0, i32 5
  %76 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.5, align 4
  %dma_tx.i.5 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dma_tx.i.5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dma_tx.i.5, align 4
  %dma_tx_phy.i.5 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %77, i32 0, i32 3
  %80 = ptrtoint ptr %dma_tx_phy.i.5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_tx_phy.i.5, align 4
  tail call void @dma_free_attrs(ptr noundef %75, i32 noundef %mul.i, ptr noundef %79, i32 noundef %81, i32 noundef 0) #14
  %82 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device, align 8
  %arrayidx.6 = getelementptr [8 x ptr], ptr %priv, i32 0, i32 6
  %84 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.6, align 4
  %dma_tx.i.6 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %dma_tx.i.6 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dma_tx.i.6, align 4
  %dma_tx_phy.i.6 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %dma_tx_phy.i.6 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_tx_phy.i.6, align 4
  tail call void @dma_free_attrs(ptr noundef %83, i32 noundef %mul.i, ptr noundef %87, i32 noundef %89, i32 noundef 0) #14
  %90 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %device, align 8
  %arrayidx.7 = getelementptr [8 x ptr], ptr %priv, i32 0, i32 7
  %92 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.7, align 4
  %dma_tx.i.7 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dma_tx.i.7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dma_tx.i.7, align 4
  %dma_tx_phy.i.7 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %93, i32 0, i32 3
  %96 = ptrtoint ptr %dma_tx_phy.i.7 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_tx_phy.i.7, align 4
  tail call void @dma_free_attrs(ptr noundef %91, i32 noundef %mul.i, ptr noundef %95, i32 noundef %97, i32 noundef 0) #14
  %mul.i20 = shl i32 %3, 4
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.cond.preheader
  %queue_num.122 = phi i32 [ 0, %for.cond.preheader ], [ %inc7, %for.body3.for.body3_crit_edge ]
  %98 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %device, align 8
  %arrayidx5 = getelementptr %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 1, i32 %queue_num.122
  %100 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx5, align 4
  %dma_rx.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %dma_rx.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dma_rx.i, align 4
  %dma_rx_phy.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %101, i32 0, i32 8
  %104 = ptrtoint ptr %dma_rx_phy.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_rx_phy.i, align 4
  tail call void @dma_free_attrs(ptr noundef %99, i32 noundef %mul.i20, ptr noundef %103, i32 noundef %105, i32 noundef 0) #14
  %rx_skbuff_dma.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %101, i32 0, i32 7
  %106 = ptrtoint ptr %rx_skbuff_dma.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rx_skbuff_dma.i, align 4
  tail call void @kfree(ptr noundef %107) #14
  %rx_skbuff.i = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %101, i32 0, i32 2
  %108 = ptrtoint ptr %rx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %rx_skbuff.i, align 4
  tail call void @kfree(ptr noundef %109) #14
  %inc7 = add nuw nsw i32 %queue_num.122, 1
  %exitcond.not = icmp eq i32 %inc7, 16
  br i1 %exitcond.not, label %for.end8, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body3

for.end8:                                         ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_adjust_link(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %link, align 8
  %3 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool2.not = icmp eq i16 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %speed4 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %speed4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %speed4, align 8
  %speed5 = getelementptr i8, ptr %dev, i32 2724
  %6 = ptrtoint ptr %speed5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %speed5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp eq i32 %5, %7
  br i1 %cmp.not, label %if.then3.if.end16_crit_edge, label %if.then6

if.then3.if.end16_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.then6:                                         ; preds = %if.then3
  %8 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %5, label %do.body [
    i32 10000, label %if.then6.sw.epilog_crit_edge
    i32 2500, label %sw.bb8
    i32 1000, label %sw.bb9
  ]

if.then6.sw.epilog_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

do.body:                                          ; preds = %if.then6
  %msg_enable = getelementptr i8, ptr %dev, i32 3296
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body.sw.epilog_crit_edge, label %if.then11

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %5) #17
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %do.body.sw.epilog_crit_edge, %sw.bb9, %sw.bb8, %if.then6.sw.epilog_crit_edge
  %speed.0 = phi i8 [ -1, %if.then11 ], [ -1, %do.body.sw.epilog_crit_edge ], [ 2, %sw.bb9 ], [ 1, %sw.bb8 ], [ 0, %if.then6.sw.epilog_crit_edge ]
  %11 = ptrtoint ptr %speed4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %speed4, align 8
  %13 = ptrtoint ptr %speed5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %speed5, align 4
  %hw = getelementptr i8, ptr %dev, i32 2660
  %14 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %set_speed = getelementptr inbounds %struct.sxgbe_core_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %set_speed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %set_speed, align 4
  %ioaddr = getelementptr i8, ptr %dev, i32 2648
  %20 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioaddr, align 8
  tail call void %19(ptr noundef %21, i8 noundef zeroext %speed.0) #14
  br label %if.end16

if.end16:                                         ; preds = %sw.epilog, %if.then3.if.end16_crit_edge
  %oldlink = getelementptr i8, ptr %dev, i32 2720
  %22 = ptrtoint ptr %oldlink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %oldlink, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool17.not = icmp eq i32 %23, 0
  br i1 %tobool17.not, label %if.then18, label %if.end16.if.end33_crit_edge

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then18:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %oldlink to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %oldlink, align 8
  br label %if.end33

if.else:                                          ; preds = %if.end
  %oldlink21 = getelementptr i8, ptr %dev, i32 2720
  %25 = ptrtoint ptr %oldlink21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %oldlink21, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %if.else.if.end33_crit_edge, label %if.then23

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end33

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %oldlink21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %oldlink21, align 8
  %speed25 = getelementptr i8, ptr %dev, i32 2724
  %28 = ptrtoint ptr %speed25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %speed25, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then23, %if.else.if.end33_crit_edge, %if.then18, %if.end16.if.end33_crit_edge
  %eee_enabled.i = getelementptr i8, ptr %dev, i32 3392
  %29 = ptrtoint ptr %eee_enabled.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %eee_enabled.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %if.end33.cleanup_crit_edge, label %if.then.i

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %dev.i = getelementptr i8, ptr %dev, i32 2652
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %hw.i = getelementptr i8, ptr %dev, i32 2660
  %33 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %set_eee_pls.i = getelementptr inbounds %struct.sxgbe_core_ops, ptr %36, i32 0, i32 14
  %37 = ptrtoint ptr %set_eee_pls.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %set_eee_pls.i, align 4
  %ioaddr.i = getelementptr i8, ptr %dev, i32 2648
  %39 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr.i, align 8
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 145
  %41 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phydev.i, align 16
  %link.i = getelementptr inbounds %struct.phy_device, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %link.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i = load i16, ptr %link.i, align 8
  %bf.lshr.i = lshr i16 %bf.load.i, 2
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %bf.clear.i to i32
  tail call void %38(ptr noundef %40, i32 noundef %bf.cast.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_rx_ring(ptr noundef %dev, i8 noundef zeroext %queue_no, ptr noundef %rx_ring, i32 noundef %rx_rsize) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %add3 = add i32 %1, 27
  %and = and i32 %add3, -8
  %msg_enable = getelementptr i8, ptr %dev, i32 3296
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.body5

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_rx_ring.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@init_rx_ring, %if.then10)) #14
          to label %do.end13 [label %if.then10], !srcloc !227

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @init_rx_ring.__UNIQUE_ID_ddebug488, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, i32 noundef %and) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %do.body5, %entry.do.end13_crit_edge
  %cmp = icmp eq ptr %rx_ring, null
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #17
  br label %cleanup48

if.end15:                                         ; preds = %do.end13
  %queue_no16 = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 9
  %4 = ptrtoint ptr %queue_no16 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %queue_no, ptr %queue_no16, align 4
  %device = getelementptr i8, ptr %dev, i32 2656
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 8
  %mul = shl i32 %rx_rsize, 4
  %dma_rx_phy = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 8
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %6, i32 noundef %mul, ptr noundef %dma_rx_phy, i32 noundef 3264, i32 noundef 0) #14
  %dma_rx = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 1
  %7 = ptrtoint ptr %dma_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %dma_rx, align 4
  %cmp19 = icmp eq ptr %call.i, null
  br i1 %cmp19, label %if.end15.cleanup48_crit_edge, label %if.end21

if.end15.cleanup48_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup48

if.end21:                                         ; preds = %if.end15
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %rx_rsize, i32 4) #14
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  br i1 %9, label %kmalloc_array.exit.thread, label %kmalloc_array.exit.thread164, !prof !226

kmalloc_array.exit.thread:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %rx_skbuff_dma138 = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 7
  %11 = ptrtoint ptr %rx_skbuff_dma138 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rx_skbuff_dma138, align 4
  br label %err_free_dma_rx

kmalloc_array.exit.thread164:                     ; preds = %if.end21
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #20
  %rx_skbuff_dma166 = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 7
  %12 = ptrtoint ptr %rx_skbuff_dma166 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %rx_skbuff_dma166, align 4
  %tobool24.not167 = icmp eq ptr %call8.i, null
  br i1 %tobool24.not167, label %kmalloc_array.exit.thread164.err_free_dma_rx_crit_edge, label %if.end7.i125

kmalloc_array.exit.thread164.err_free_dma_rx_crit_edge: ; preds = %kmalloc_array.exit.thread164
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_dma_rx

if.end7.i125:                                     ; preds = %kmalloc_array.exit.thread164
  %call8.i124 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #20
  %rx_skbuff = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 2
  %13 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i124, ptr %rx_skbuff, align 4
  %tobool29.not = icmp eq ptr %call8.i124, null
  br i1 %tobool29.not, label %if.end7.i125.err_free_skbuff_dma_crit_edge, label %for.cond.preheader

if.end7.i125.err_free_skbuff_dma_crit_edge:       ; preds = %if.end7.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_skbuff_dma

for.cond.preheader:                               ; preds = %if.end7.i125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_rsize)
  %cmp32151.not = icmp eq i32 %rx_rsize, 0
  br i1 %cmp32151.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.i.i = or i32 %and, 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %desc_index.0152 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %14 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_rx, align 4
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add.i.i, i32 noundef 3264) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.sxgbe_init_rx_buffers.exit_crit_edge, label %if.end.i128

for.body.sxgbe_init_rx_buffers.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %sxgbe_init_rx_buffers.exit

if.end.i128:                                      ; preds = %for.body
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %19, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %20 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx.i = getelementptr ptr, ptr %21, i32 %desc_index.0152
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %23 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device, align 8
  %25 = load ptr, ptr %data.i.i.i, align 4
  %call.i27.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %25) #14
  br i1 %call.i27.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i128
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i28.i, !prof !230

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dma_map_single_attrs.exit.i

if.then.i28.i:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %24) #14
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 3
  %26 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i129 = icmp eq ptr %27, null
  br i1 %tobool.not.i.i.i129, label %if.end.i.i.i130, label %if.then.i28.i.dev_name.exit.i.i_crit_edge

if.then.i28.i.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit.i.i

if.end.i.i.i130:                                  ; preds = %if.then.i28.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %24, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i130, %if.then.i28.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %29, %if.end.i.i.i130 ], [ %27, %if.then.i28.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #14
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %24, ptr noundef %25, i32 noundef %and) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %30 = load ptr, ptr @mem_map, align 4
  %31 = ptrtoint ptr %25 to i32
  %sub.i.i = add i32 %31, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i29.i = getelementptr %struct.page, ptr %30, i32 %shr.i.i
  %and.i.i = and i32 %31, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %24, ptr noundef %add.ptr.i29.i, i32 noundef %and.i.i, i32 noundef %and, i32 noundef 2, i32 noundef 0) #14
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %32 = ptrtoint ptr %rx_skbuff_dma166 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_skbuff_dma166, align 4
  %arrayidx3.i = getelementptr i32, ptr %33, i32 %desc_index.0152
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %retval.0.i.i, ptr %arrayidx3.i, align 4
  %35 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device, align 8
  %37 = load ptr, ptr %rx_skbuff_dma166, align 4
  %arrayidx6.i = getelementptr i32, ptr %37, i32 %desc_index.0152
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx6.i, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %36, i32 noundef %39) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp.i.not.i = icmp eq i32 %39, -1
  br i1 %cmp.i.not.i, label %if.then9.i, label %for.inc

if.then9.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.sxgbe_init_rx_buffers) #17
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #14
  br label %sxgbe_init_rx_buffers.exit

sxgbe_init_rx_buffers.exit:                       ; preds = %if.then9.i, %for.body.sxgbe_init_rx_buffers.exit_crit_edge
  %retval.0.i131 = phi i32 [ -22, %if.then9.i ], [ -12, %for.body.sxgbe_init_rx_buffers.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_index.0152)
  %cmp38154.not = icmp eq i32 %desc_index.0152, 0
  br i1 %cmp38154.not, label %sxgbe_init_rx_buffers.exit.while.end_crit_edge, label %sxgbe_init_rx_buffers.exit.while.body_crit_edge

sxgbe_init_rx_buffers.exit.while.body_crit_edge:  ; preds = %sxgbe_init_rx_buffers.exit
  br label %while.body

sxgbe_init_rx_buffers.exit.while.end_crit_edge:   ; preds = %sxgbe_init_rx_buffers.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

for.inc:                                          ; preds = %dma_map_single_attrs.exit.i
  %40 = ptrtoint ptr %rx_skbuff_dma166 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rx_skbuff_dma166, align 4
  %arrayidx12.i = getelementptr i32, ptr %41, i32 %desc_index.0152
  %42 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx12.i, align 4
  %conv.i = zext i32 %43 to i64
  %rdes23.i = getelementptr %struct.sxgbe_rx_norm_desc, ptr %15, i32 %desc_index.0152, i32 1
  %44 = ptrtoint ptr %rdes23.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %bf.load.i = load i64, ptr %rdes23.i, align 8
  %bf.shl.i = shl nuw nsw i64 %conv.i, 2
  %bf.clear.i = and i64 %bf.load.i, 3
  %bf.set.i = or i64 %bf.clear.i, %bf.shl.i
  store i64 %bf.set.i, ptr %rdes23.i, align 8
  %inc = add nuw nsw i32 %desc_index.0152, 1
  %exitcond.not = icmp eq i32 %inc, %rx_rsize
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %cur_rx = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 3
  %45 = ptrtoint ptr %cur_rx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %cur_rx, align 4
  %dirty_rx = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %rx_ring, i32 0, i32 4
  %46 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %dirty_rx, align 4
  %dma_buf_sz = getelementptr i8, ptr %dev, i32 2412
  %47 = ptrtoint ptr %dma_buf_sz to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and, ptr %dma_buf_sz, align 4
  br label %cleanup48

while.body:                                       ; preds = %while.body.while.body_crit_edge, %sxgbe_init_rx_buffers.exit.while.body_crit_edge
  %dec155.in = phi i32 [ %dec155, %while.body.while.body_crit_edge ], [ %desc_index.0152, %sxgbe_init_rx_buffers.exit.while.body_crit_edge ]
  %dec155 = add nsw i32 %dec155.in, -1
  %48 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_skbuff, align 4
  %arrayidx.i133 = getelementptr ptr, ptr %49, i32 %dec155
  %50 = ptrtoint ptr %arrayidx.i133 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i133, align 4
  tail call void @kfree_skb_reason(ptr noundef %51, i32 noundef 0) #14
  %52 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device, align 8
  %54 = ptrtoint ptr %rx_skbuff_dma166 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rx_skbuff_dma166, align 4
  %arrayidx1.i = getelementptr i32, ptr %55, i32 %dec155
  %56 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx1.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %53, i32 noundef %57, i32 noundef %and, i32 noundef 2, i32 noundef 0) #14
  %cmp38 = icmp sgt i32 %dec155.in, 1
  br i1 %cmp38, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %sxgbe_init_rx_buffers.exit.while.end_crit_edge
  %58 = ptrtoint ptr %rx_skbuff to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rx_skbuff, align 4
  tail call void @kfree(ptr noundef %59) #14
  br label %err_free_skbuff_dma

err_free_skbuff_dma:                              ; preds = %while.end, %if.end7.i125.err_free_skbuff_dma_crit_edge
  %ret.0 = phi i32 [ %retval.0.i131, %while.end ], [ -12, %if.end7.i125.err_free_skbuff_dma_crit_edge ]
  %60 = ptrtoint ptr %rx_skbuff_dma166 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_skbuff_dma166, align 4
  tail call void @kfree(ptr noundef %61) #14
  br label %err_free_dma_rx

err_free_dma_rx:                                  ; preds = %err_free_skbuff_dma, %kmalloc_array.exit.thread164.err_free_dma_rx_crit_edge, %kmalloc_array.exit.thread
  %ret.1 = phi i32 [ %ret.0, %err_free_skbuff_dma ], [ -12, %kmalloc_array.exit.thread ], [ -12, %kmalloc_array.exit.thread164.err_free_dma_rx_crit_edge ]
  %62 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %device, align 8
  %64 = ptrtoint ptr %dma_rx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dma_rx, align 4
  %66 = ptrtoint ptr %dma_rx_phy to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_rx_phy, align 4
  tail call void @dma_free_attrs(ptr noundef %63, i32 noundef %mul, ptr noundef %65, i32 noundef %67, i32 noundef 0) #14
  br label %cleanup48

cleanup48:                                        ; preds = %err_free_dma_rx, %for.end, %if.end15.cleanup48_crit_edge, %if.then14
  %retval.0 = phi i32 [ -12, %if.then14 ], [ %ret.1, %err_free_dma_rx ], [ 0, %for.end ], [ -12, %if.end15.cleanup48_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dma_map_single_attrs(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size, i32 noundef %dir) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %ptr) #14
  br i1 %call, label %land.rhs, label %if.end39

land.rhs:                                         ; preds = %entry
  %.b1 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1, label %land.rhs.return_crit_edge, label %if.then, !prof !230

land.rhs.return_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %land.rhs
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16 = tail call ptr @dev_driver_string(ptr noundef %dev) #14
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.then.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.51, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.52, ptr noundef %call16, ptr noundef %retval.0.i) #14
  br label %return

if.end39:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %ptr, i32 noundef %size) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %4 = load ptr, ptr @mem_map, align 4
  %5 = ptrtoint ptr %ptr to i32
  %sub = add i32 %5, 1073741824
  %shr = lshr i32 %sub, 12
  %add.ptr = getelementptr %struct.page, ptr %4, i32 %shr
  %and = and i32 %5, 4095
  %call41 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %and, i32 noundef %size, i32 noundef %dir, i32 noundef 0) #14
  br label %return

return:                                           ; preds = %if.end39, %dev_name.exit, %land.rhs.return_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end39 ], [ -1, %dev_name.exit ], [ -1, %land.rhs.return_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sxgbe_restart_tx_queue(ptr nocapture noundef readonly %priv, i32 noundef %queue_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x ptr], ptr %priv, i32 0, i32 %queue_num
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %5, i32 %queue_num, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 11
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  %dma = getelementptr inbounds %struct.sxgbe_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma, align 4
  %stop_tx_queue = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %stop_tx_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stop_tx_queue, align 4
  %ioaddr = getelementptr inbounds %struct.sxgbe_priv_data, ptr %priv, i32 0, i32 8
  %12 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr, align 8
  tail call void %11(ptr noundef %13, i32 noundef %queue_num) #14
  %priv_ptr.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %priv_ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv_ptr.i, align 4
  %dma_tx_size.i = getelementptr inbounds %struct.sxgbe_priv_data, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dma_tx_size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_tx_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23.i = icmp sgt i32 %17, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %entry.tx_free_ring_skbufs.exit_crit_edge

entry.tx_free_ring_skbufs.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_free_ring_skbufs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %tx_skbuff_dma.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %1, i32 0, i32 4
  %dma_tx.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %1, i32 0, i32 2
  %device.i = getelementptr inbounds %struct.sxgbe_priv_data, ptr %15, i32 0, i32 10
  %hw.i = getelementptr inbounds %struct.sxgbe_priv_data, ptr %15, i32 0, i32 11
  %tx_skbuff.i = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %1, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dma_desc.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %tx_skbuff_dma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skbuff_dma.i, align 4
  %arrayidx.i17 = getelementptr i32, ptr %19, i32 %dma_desc.024.i
  %20 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %dma_tx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_tx.i, align 4
  %add.ptr.i = getelementptr %struct.sxgbe_tx_norm_desc, ptr %23, i32 %dma_desc.024.i
  %24 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device.i, align 8
  %26 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i, align 4
  %desc.i = getelementptr inbounds %struct.sxgbe_ops, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i, align 4
  %get_tx_len.i = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %get_tx_len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_tx_len.i, align 4
  %call.i = tail call i32 %31(ptr noundef %add.ptr.i) #14
  tail call void @dma_unmap_page_attrs(ptr noundef %25, i32 noundef %21, i32 noundef %call.i, i32 noundef 1, i32 noundef 0) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %32 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_skbuff.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %33, i32 %dma_desc.024.i
  %34 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3.i, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %35, i32 noundef 1) #14
  %36 = ptrtoint ptr %tx_skbuff.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_skbuff.i, align 4
  %arrayidx5.i = getelementptr ptr, ptr %37, i32 %dma_desc.024.i
  %38 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx5.i, align 4
  %39 = ptrtoint ptr %tx_skbuff_dma.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_skbuff_dma.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %40, i32 %dma_desc.024.i
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %arrayidx7.i, align 4
  %inc.i = add nuw nsw i32 %dma_desc.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %17
  br i1 %exitcond.not.i, label %if.end.i.tx_free_ring_skbufs.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end.i.tx_free_ring_skbufs.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tx_free_ring_skbufs.exit

tx_free_ring_skbufs.exit:                         ; preds = %if.end.i.tx_free_ring_skbufs.exit_crit_edge, %entry.tx_free_ring_skbufs.exit_crit_edge
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %5, i32 %queue_num
  %cur_tx = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %1, i32 0, i32 7
  %42 = ptrtoint ptr %cur_tx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %cur_tx, align 4
  %dirty_tx = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %1, i32 0, i32 8
  %43 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %dirty_tx, align 4
  %44 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hw, align 4
  %dma2 = getelementptr inbounds %struct.sxgbe_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dma2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma2, align 4
  %start_tx_queue = getelementptr inbounds %struct.sxgbe_dma_ops, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %start_tx_queue to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %start_tx_queue, align 4
  %50 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ioaddr, align 8
  tail call void %49(ptr noundef %51, i32 noundef %queue_num) #14
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %53, i32 0, i32 36, i32 5
  %54 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %55, 1
  store i32 %inc, ptr %tx_errors, align 4
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sxgbe_tx_timer(ptr nocapture noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -24
  tail call fastcc void @sxgbe_tx_queue_clean(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sxgbe_tx_queue_clean(ptr nocapture noundef %tqueue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_ptr = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %tqueue, i32 0, i32 1
  %0 = ptrtoint ptr %priv_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv_ptr, align 4
  %dma_tx_size = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_tx_size, align 4
  %queue_no1 = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %tqueue, i32 0, i32 14
  %4 = ptrtoint ptr %queue_no1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %queue_no1, align 2
  %dev = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %conv = zext i8 %5 to i32
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv
  %10 = tail call i32 @llvm.read_register.i32(metadata !211) #14
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %_xmit_lock.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i) #14
  %xmit_lock_owner.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv, i32 11
  %14 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 %13, ptr %xmit_lock_owner.i, align 4
  %tx_clean = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 23, i32 11
  %15 = ptrtoint ptr %tx_clean to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_clean, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %tx_clean, align 4
  %dirty_tx = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %tqueue, i32 0, i32 8
  %cur_tx = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %tqueue, i32 0, i32 7
  %17 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dirty_tx, align 4
  %19 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.not134 = icmp eq i32 %18, %20
  br i1 %cmp.not134, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tx_skbuff = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %tqueue, i32 0, i32 5
  %dma_tx = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %tqueue, i32 0, i32 2
  %hw = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 11
  %msg_enable = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 26
  %tx_skbuff_dma = getelementptr inbounds %struct.sxgbe_tx_queue, ptr %tqueue, i32 0, i32 4
  %device = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %21 = phi i32 [ %18, %while.body.lr.ph ], [ %inc49, %cleanup.while.body_crit_edge ]
  %rem = urem i32 %21, %3
  %22 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx = getelementptr ptr, ptr %23, i32 %rem
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %dma_tx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_tx, align 4
  %add.ptr = getelementptr %struct.sxgbe_tx_norm_desc, ptr %27, i32 %rem
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 4
  %desc = getelementptr inbounds %struct.sxgbe_ops, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc, align 4
  %get_tx_owner = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %get_tx_owner to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get_tx_owner, align 4
  %call6 = tail call i32 %33(ptr noundef %add.ptr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end:                                           ; preds = %while.body
  %34 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable, align 8
  %and = and i32 %35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.if.end17_crit_edge, label %do.body

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_tx_queue_clean, %if.then13)) #14
          to label %if.end17 [label %if.then13], !srcloc !227

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %36 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cur_tx, align 4
  %38 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dirty_tx, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug489, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %37, i32 noundef %39) #14
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.body, %if.end.if.end17_crit_edge
  %40 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_skbuff_dma, align 4
  %arrayidx18 = getelementptr i32, ptr %41, i32 %rem
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool19.not = icmp eq i32 %43, 0
  br i1 %tobool19.not, label %if.end17.if.end34_crit_edge, label %if.then26, !prof !226

if.end17.if.end34_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 8
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  %desc30 = getelementptr inbounds %struct.sxgbe_ops, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %desc30 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc30, align 4
  %get_tx_len = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %49, i32 0, i32 10
  %50 = ptrtoint ptr %get_tx_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %get_tx_len, align 4
  %call31 = tail call i32 %51(ptr noundef %add.ptr) #14
  tail call void @dma_unmap_page_attrs(ptr noundef %45, i32 noundef %43, i32 noundef %call31, i32 noundef 1, i32 noundef 0) #14
  %52 = ptrtoint ptr %tx_skbuff_dma to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tx_skbuff_dma, align 4
  %arrayidx33 = getelementptr i32, ptr %53, i32 %rem
  %54 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %arrayidx33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then26, %if.end17.if.end34_crit_edge
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %if.end34.cleanup_crit_edge, label %if.then42, !prof !226

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @consume_skb(ptr noundef nonnull %25) #14
  %55 = ptrtoint ptr %tx_skbuff to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_skbuff, align 4
  %arrayidx44 = getelementptr ptr, ptr %56, i32 %rem
  %57 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %arrayidx44, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end34.cleanup_crit_edge
  %58 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hw, align 4
  %desc47 = getelementptr inbounds %struct.sxgbe_ops, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %desc47 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc47, align 4
  %release_tx_desc = getelementptr inbounds %struct.sxgbe_desc_ops, ptr %61, i32 0, i32 7
  %62 = ptrtoint ptr %release_tx_desc to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %release_tx_desc, align 4
  tail call void %63(ptr noundef %add.ptr) #14
  %64 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dirty_tx, align 4
  %inc49 = add i32 %65, 1
  store i32 %inc49, ptr %dirty_tx, align 4
  %66 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_tx, align 4
  %cmp.not = icmp eq i32 %inc49, %67
  br i1 %cmp.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %state.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv, i32 13
  %68 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %while.end.if.end86_crit_edge, label %land.rhs

while.end.if.end86_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

land.rhs:                                         ; preds = %while.end
  %70 = ptrtoint ptr %dirty_tx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dirty_tx, align 4
  %add.i = add i32 %71, %3
  %72 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %cur_tx, align 4
  %74 = xor i32 %73, -1
  %sub1.i = add i32 %add.i, %74
  %75 = ptrtoint ptr %dma_tx_size to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_tx_size, align 4
  %div124 = lshr i32 %76, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %div124)
  %cmp56 = icmp ugt i32 %sub1.i, %div124
  br i1 %cmp56, label %if.then64, label %land.rhs.if.end86_crit_edge, !prof !226

land.rhs.if.end86_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then64:                                        ; preds = %land.rhs
  %msg_enable65 = getelementptr inbounds %struct.sxgbe_priv_data, ptr %1, i32 0, i32 26
  %77 = ptrtoint ptr %msg_enable65 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %msg_enable65, align 8
  %and66 = and i32 %78, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66)
  %tobool67.not = icmp eq i32 %and66, 0
  br i1 %tobool67.not, label %if.then64.if.end85_crit_edge, label %do.body69

if.then64.if.end85_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end85

do.body69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_tx_queue_clean, %if.then81)) #14
          to label %if.end85 [label %if.then81], !srcloc !227

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug490, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.56) #14
  br label %if.end85

if.end85:                                         ; preds = %if.then81, %do.body69, %if.then64.if.end85_crit_edge
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #14
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %land.rhs.if.end86_crit_edge, %while.end.if.end86_crit_edge
  %79 = ptrtoint ptr %xmit_lock_owner.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile i32 -1, ptr %xmit_lock_owner.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_do_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_register_platform() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !106, !108, !110, !111, !112, !114, !116, !117, !119, !121, !122, !123, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141, !143, !145, !146, !147, !149, !150, !151, !152, !154, !155, !157, !158, !159, !160, !162, !163, !164, !166, !168, !170, !172, !173, !175, !176, !178, !179, !180, !181, !183, !184, !185, !187, !188, !190, !192, !193, !194, !195, !196, !198, !199, !200, !201, !202, !204, !206, !208, !209, !210}
!llvm.named.register.sp = !{!211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @__param_eee_timer, !1, !"__param_eee_timer", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_eee_timertype484, !1, !"__UNIQUE_ID_eee_timertype484", i1 false, i1 false}
!3 = !{ptr @__param_debug, !4, !"__param_debug", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 59, i32 1}
!5 = !{ptr @__UNIQUE_ID_debugtype485, !4, !"__UNIQUE_ID_debugtype485", i1 false, i1 false}
!6 = !{ptr @sxgbe_eee_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 134, i32 3}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 142, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sxgbe_eee_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @sxgbe_eee_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2143, i32 3}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sxgbe_drv_probe._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @sxgbe_drv_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @sxgbe_drv_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2148, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2150, i32 42}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2152, i32 21}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2171, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @sxgbe_drv_probe.__UNIQUE_ID_ddebug496, !28, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2178, i32 3}
!33 = !{ptr @sxgbe_drv_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sxgbe_drv_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2211, i32 20}
!37 = !{ptr @__func__.sxgbe_drv_remove, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2211, i32 45}
!39 = !{ptr @__initcall__kmod_samsung_sxgbe__497_2279_sxgbe_init6, !40, !"__initcall__kmod_samsung_sxgbe__497_2279_sxgbe_init6", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2279, i32 1}
!41 = !{ptr @__exitcall_sxgbe_exit, !42, !"__exitcall_sxgbe_exit", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2280, i32 1}
!43 = !{ptr @__setup_sxgbe_cmdline_opt, !44, !"__setup_sxgbe_cmdline_opt", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2302, i32 1}
!45 = !{ptr @__UNIQUE_ID_description498, !46, !"__UNIQUE_ID_description498", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2307, i32 1}
!47 = !{ptr @__UNIQUE_ID_debug499, !48, !"__UNIQUE_ID_debug499", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2309, i32 1}
!49 = !{ptr @__UNIQUE_ID_eee_timer500, !50, !"__UNIQUE_ID_eee_timer500", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2310, i32 1}
!51 = !{ptr @__UNIQUE_ID_author501, !52, !"__UNIQUE_ID_author501", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2312, i32 1}
!53 = !{ptr @__UNIQUE_ID_author502, !54, !"__UNIQUE_ID_author502", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2313, i32 1}
!55 = !{ptr @__UNIQUE_ID_author503, !56, !"__UNIQUE_ID_author503", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2314, i32 1}
!57 = !{ptr @__UNIQUE_ID_author504, !58, !"__UNIQUE_ID_author504", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2315, i32 1}
!59 = !{ptr @__UNIQUE_ID_file505, !60, !"__UNIQUE_ID_file505", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2317, i32 1}
!61 = !{ptr @__UNIQUE_ID_license506, !60, !"__UNIQUE_ID_license506", i1 false, i1 false}
!62 = !{ptr @__param_str_eee_timer, !1, !"__param_str_eee_timer", i1 false, i1 false}
!63 = !{ptr @eee_timer, !64, !"eee_timer", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 55, i32 12}
!65 = !{ptr @__param_str_debug, !4, !"__param_str_debug", i1 false, i1 false}
!66 = !{ptr @debug, !67, !"debug", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 54, i32 12}
!68 = !{ptr @.str.15, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2019, i32 2}
!70 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sxgbe_hw_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @sxgbe_hw_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.18, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2024, i32 3}
!75 = !{ptr @sxgbe_hw_init._entry.17, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sxgbe_hw_init._entry_ptr.19, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2027, i32 3}
!79 = !{ptr @sxgbe_hw_init._entry.20, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sxgbe_hw_init._entry_ptr.22, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2030, i32 3}
!83 = !{ptr @sxgbe_hw_init._entry.23, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sxgbe_hw_init._entry_ptr.25, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @sxgbe_netdev_ops, !86, !"sxgbe_netdev_ops", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1961, i32 36}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1073, i32 19}
!89 = !{ptr @__func__.sxgbe_open, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1074, i32 7}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1089, i32 19}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1109, i32 19}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1122, i32 20}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1135, i32 20}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1168, i32 2}
!101 = !{ptr @sxgbe_open.__UNIQUE_ID_ddebug491, !100, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!102 = !{ptr @.str.32, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 278, i32 37}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 281, i32 37}
!106 = !{ptr @.str.34, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 284, i32 44}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 286, i32 2}
!110 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sxgbe_init_phy.__UNIQUE_ID_ddebug486, !109, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 291, i32 20}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 305, i32 2}
!116 = !{ptr @sxgbe_init_phy.__UNIQUE_ID_ddebug487, !115, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 230, i32 5}
!119 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 573, i32 4}
!121 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.42, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @init_dma_desc_rings._entry, !120, !"_entry", i1 false, i1 false}
!125 = !{ptr @init_dma_desc_rings._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 588, i32 21}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 399, i32 3}
!130 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @init_tx_ring._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @init_tx_ring._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 472, i32 2}
!135 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @init_rx_ring.__UNIQUE_ID_ddebug488, !134, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!137 = !{ptr @.str.49, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 476, i32 19}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 354, i32 19}
!141 = !{ptr @__func__.sxgbe_init_rx_buffers, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 354, i32 46}
!143 = distinct !{null, !144, !"__already_done", i1 false, i1 false}
!144 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!145 = !{ptr @.str.51, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.52, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 726, i32 3}
!149 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @sxgbe_mtl_operation_mode._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @sxgbe_mtl_operation_mode._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @sxgbe_tx_init_coalesce.__key, !153, !"__key", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1036, i32 3}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 759, i32 4}
!157 = !{ptr @.str.57, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug489, !156, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!159 = !{ptr @.str.58, !156, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 784, i32 4}
!162 = !{ptr @sxgbe_tx_queue_clean.__UNIQUE_ID_ddebug490, !161, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!163 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1309, i32 20}
!166 = !{ptr @__func__.sxgbe_xmit, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1310, i32 8}
!168 = !{ptr @.str.62, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1350, i32 21}
!170 = !{ptr @.str.63, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1405, i32 2}
!172 = !{ptr @sxgbe_xmit.__UNIQUE_ID_ddebug492, !171, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!173 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1411, i32 3}
!175 = !{ptr @sxgbe_xmit.__UNIQUE_ID_ddebug493, !174, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!176 = !{ptr @.str.65, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1259, i32 3}
!178 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @sxgbe_tso_prepare._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @sxgbe_tso_prepare._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.67, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1856, i32 2}
!183 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @sxgbe_set_rx_mode.__UNIQUE_ID_ddebug494, !182, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!185 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1907, i32 2}
!187 = !{ptr @sxgbe_set_rx_mode.__UNIQUE_ID_ddebug495, !186, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!188 = !{ptr @.str.70, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 1525, i32 26}
!190 = !{ptr @.str.71, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 943, i32 2}
!192 = !{ptr @.str.72, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.73, !191, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @sxgbe_check_ether_addr._entry, !191, !"_entry", i1 false, i1 false}
!195 = !{ptr @sxgbe_check_ether_addr._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.74, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2270, i32 2}
!198 = !{ptr @.str.75, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @sxgbe_init._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @sxgbe_init._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @__setup_str_sxgbe_cmdline_opt, !44, !"__setup_str_sxgbe_cmdline_opt", i1 false, i1 false}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2289, i32 29}
!204 = !{ptr @.str.77, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2290, i32 21}
!206 = !{ptr @.str.78, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_main.c", i32 2298, i32 2}
!208 = !{ptr @.str.79, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @sxgbe_cmdline_opt._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @sxgbe_cmdline_opt._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{!"sp"}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{i8 0, i8 2}
!222 = !{i64 2157767395}
!223 = !{i64 6316862}
!224 = !{i64 6317280}
!225 = !{i64 2157768205}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{i64 2148783833, i64 2148783838, i64 2148783851, i64 2148783895, i64 2148783929, i64 2148783950}
!228 = !{!"auto-init"}
!229 = !{i64 799509}
!230 = !{!"branch_weights", i32 2000, i32 1}
!231 = !{i64 2157737008}
!232 = !{i64 2157737156}
!233 = !{i64 2157730159}
!234 = !{i64 2157730307}
!235 = !{i64 2157730509}
!236 = !{i64 2157745715}
!237 = !{i64 2157746147}
!238 = !{i64 2157750692}
!239 = !{i64 2157751132}
!240 = !{i64 2157741846}
!241 = !{i64 2157742464}
!242 = !{i64 2157755073}
!243 = !{i64 2157758637}
!244 = !{i64 2157759142}
!245 = !{i64 2157759647}
!246 = !{i64 2157740498}
!247 = !{i64 2157739783}
!248 = !{i64 2157740261}
!249 = !{i64 2157741049}
