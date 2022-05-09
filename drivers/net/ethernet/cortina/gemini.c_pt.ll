; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cortina/gemini.c_pt.bc'
source_filename = "../drivers/net/ethernet/cortina/gemini.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.125 }
%struct.atomic_t = type { i32 }
%union.anon.125 = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gmac_max_framelen = type { i32, i8 }
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
%struct.gemini_ethernet = type { ptr, ptr, ptr, ptr, i8, %struct.spinlock, i32, i32, ptr, i32, ptr, i32, %struct.spinlock }
%struct.gmac_rxdesc = type { %union.gmac_rxdesc_0, %union.gmac_rxdesc_1, %union.gmac_rxdesc_2, %union.gmac_rxdesc_3 }
%union.gmac_rxdesc_0 = type { i32 }
%union.gmac_rxdesc_1 = type { i32 }
%union.gmac_rxdesc_2 = type { i32 }
%union.gmac_rxdesc_3 = type { i32 }
%struct.gmac_queue_page = type { ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
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
%struct.gemini_ethernet_port = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [3 x i32], ptr, ptr, i32, %struct.napi_struct, %struct.hrtimer, i32, i32, [1 x %struct.gmac_txq], i32, i32, i32, i32, i32, %struct.spinlock, %struct.u64_stats_sync, %struct.u64_stats_sync, %struct.u64_stats_sync, %struct.rtnl_link_stats64, [6 x i64], [16 x i64], [8 x i64], i64, [16 x i64], i64, i64 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.gmac_txq = type { ptr, ptr, i32, i32 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.nontoe_qhdr = type { %union.nontoe_qhdr0, %union.nontoe_qhdr1 }
%union.nontoe_qhdr0 = type { i32 }
%union.nontoe_qhdr1 = type { i32 }
%struct.gmac_txdesc = type { %union.gmac_txdesc_0, %union.gmac_txdesc_1, %union.gmac_txdesc_2, %union.gmac_txdesc_3 }
%union.gmac_txdesc_0 = type { i32 }
%union.gmac_txdesc_1 = type { i32 }
%union.gmac_txdesc_2 = type { i32 }
%union.gmac_txdesc_3 = type { i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }

@__param_str_debug = internal constant [13 x i8] c"gemini.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype484 = internal constant [26 x i8] c"gemini.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug485 = internal constant [50 x i8] c"gemini.parm=debug:Debug level (0=none,...,16=all)\00", section ".modinfo", align 1
@__initcall__kmod_gemini__509_2623_gemini_ethernet_module_init6 = internal global ptr @gemini_ethernet_module_init, section ".initcall6.init", align 4
@gemini_ethernet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gemini_ethernet_probe, ptr @gemini_ethernet_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gemini_ethernet_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gemini_ethernet_port_probe, ptr @gemini_ethernet_port_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gemini_ethernet_port_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gemini_ethernet_module_exit = internal global ptr @gemini_ethernet_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author510 = internal constant [55 x i8] c"gemini.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description511 = internal constant [60 x i8] c"gemini.description=StorLink SL351x (Gemini) ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file512 = internal constant [48 x i8] c"gemini.file=drivers/net/ethernet/cortina/gemini\00", section ".modinfo", align 1
@__UNIQUE_ID_license513 = internal constant [19 x i8] c"gemini.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias514 = internal constant [34 x i8] c"gemini.alias=platform:gmac-gemini\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gmac-gemini\00", [20 x i8] zeroinitializer }, align 32
@gemini_ethernet_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cortina,gemini-ethernet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@gemini_ethernet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to reset ethernet\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gemini_ethernet_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/ethernet/cortina/gemini.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gemini_ethernet_probe._entry_ptr = internal global ptr @gemini_ethernet_probe._entry, section ".printk_index", align 4
@gemini_ethernet_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2568, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Ethernet device ID: 0x%03x, revision 0x%01x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gemini_ethernet_probe._entry_ptr.9 = internal global ptr @gemini_ethernet_probe._entry.6, section ".printk_index", align 4
@gemini_ethernet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&geth->irq_lock\00", [16 x i8] zeroinitializer }, align 32
@gemini_ethernet_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&geth->freeq_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gemini-ethernet-port\00", [43 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cortina,gemini-ethernet-port\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ethernet0\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ethernet1\00", [22 x i8] zeroinitializer }, align 32
@__const.gemini_ethernet_port_probe.port_names = private unnamed_addr constant [2 x ptr] [ptr @.str.15, ptr @.str.16], align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"60008000.ethernet-port\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"6000c000.ethernet-port\00", [41 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 2385, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"probe %s ID %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gemini_ethernet_port_probe\00", [37 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry_ptr = internal global ptr @gemini_ethernet_port_probe._entry, section ".printk_index", align 4
@gemini_ethernet_port_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 2389, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Can't allocate ethernet device #%d\0A\00", [60 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry_ptr.23 = internal global ptr @gemini_ethernet_port_probe._entry.21, section ".printk_index", align 4
@gemini_ethernet_port_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 2404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get DMA address failed\0A\00", [40 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry_ptr.26 = internal global ptr @gemini_ethernet_port_probe._entry.24, section ".printk_index", align 4
@gemini_ethernet_port_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 2411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"get GMAC address failed\0A\00", [39 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry_ptr.29 = internal global ptr @gemini_ethernet_port_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCLK\00", [27 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.20, ptr @.str.3, i32 2424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no PCLK\0A\00", [23 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry_ptr.33 = internal global ptr @gemini_ethernet_port_probe._entry.31, section ".printk_index", align 4
@gemini_ethernet_port_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.20, ptr @.str.3, i32 2437, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no reset\0A\00", [22 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry_ptr.36 = internal global ptr @gemini_ethernet_port_probe._entry.34, section ".printk_index", align 4
@gmac_351x_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr @gmac_init, ptr null, ptr @gmac_open, ptr @gmac_stop, ptr @gmac_start_xmit, ptr null, ptr null, ptr null, ptr @gmac_set_rx_mode, ptr @gmac_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gmac_change_mtu, ptr null, ptr @gmac_tx_timeout, ptr @gmac_get_stats64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gmac_fix_features, ptr @gmac_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@gmac_351x_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 35, i32 0, ptr @gmac_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr @gmac_get_msglevel, ptr @gmac_set_msglevel, ptr @gmac_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @gmac_get_coalesce, ptr @gmac_set_coalesce, ptr @gmac_get_ringparam, ptr @gmac_set_ringparam, ptr null, ptr @gmac_get_pauseparam, ptr null, ptr null, ptr @gmac_get_strings, ptr null, ptr @gmac_get_ethtool_stats, ptr null, ptr null, ptr null, ptr null, ptr @gmac_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gmac_get_ksettings, ptr @gmac_set_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&port->config_lock\00", [45 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.20, ptr @.str.3, ptr @.str.39, i8 2, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gemini\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ethernet address 0x%08x%08x%08x invalid\0A\00", [55 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.20, ptr @.str.3, i32 2482, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"using a random ethernet address\0A\00", [63 x i8] zeroinitializer }, align 32
@gemini_ethernet_port_probe._entry_ptr.42 = internal global ptr @gemini_ethernet_port_probe._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"PHY init failed\0A\00", [47 x i8] zeroinitializer }, align 32
@gmac_maxlens = internal constant { [6 x %struct.gmac_max_framelen], [48 x i8] } { [6 x %struct.gmac_max_framelen] [%struct.gmac_max_framelen { i32 1518, i8 1 }, %struct.gmac_max_framelen { i32 1522, i8 2 }, %struct.gmac_max_framelen { i32 1536, i8 0 }, %struct.gmac_max_framelen { i32 1542, i8 3 }, %struct.gmac_max_framelen { i32 9212, i8 4 }, %struct.gmac_max_framelen { i32 10236, i8 5 }], [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no IRQ\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not resize freeq\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not setup RXQ\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"could not setup TXQs\0A\00", [42 x i8] zeroinitializer }, align 32
@gmac_open.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 1, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gmac_open\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"opened\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hw failure/sw bug\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IRQ status: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"IRQ enable: 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"RX DMA regs: 0x%08x 0x%08x, ptr: %u %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"RX DMA descriptor: 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"TX DMA regs: 0x%08x 0x%08x, ptr: %u %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"TX DMA descriptor: 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FQ SW ptr: %u %u, HW ptr: %u %u\0A\00", [63 x i8] zeroinitializer }, align 32
@gmac_tx_irq_enable.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 1, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gmac_tx_irq_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s device %d\0A\00", [18 x i8] zeroinitializer }, align 32
@gmac_enable_rx_irq.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gmac_enable_rx_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s device %d %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@geth_resize_freeq.__UNIQUE_ID_ddebug495 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 1, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"geth_resize_freeq\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port %d size: %d order %d\0A\00", [37 x i8] zeroinitializer }, align 32
@geth_resize_freeq.__UNIQUE_ID_ddebug496 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 1, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@geth_resize_freeq.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set shared queue to size %d order %d\0A\00", [58 x i8] zeroinitializer }, align 32
@geth_setup_freeq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.3, i32 943, ptr @.str.70, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"queue ring base is not aligned\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"geth_setup_freeq\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@geth_setup_freeq._entry_ptr = internal global ptr @geth_setup_freeq._entry, section ".printk_index", align 4
@geth_setup_freeq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.69, ptr @.str.3, i32 954, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"allocate %d pages for queue\0A\00", [35 x i8] zeroinitializer }, align 32
@geth_setup_freeq._entry_ptr.73 = internal global ptr @geth_setup_freeq._entry.71, section ".printk_index", align 4
@geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug492 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 -47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"geth_freeq_alloc_map_page\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"allocate page %d fragment length %d fragments per page %d, freeq entry %p\0A\00", [53 x i8] zeroinitializer }, align 32
@geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.74, ptr @.str.3, ptr @.str.76, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"page %d, DMA addr: %08x, page %p\0A\00", [62 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@geth_fill_freeq.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.80, ptr @.str.3, ptr @.str.81, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"geth_fill_freeq\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fill entry %d page ref count %d add %d refs\0A\00", [51 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@gmac_setup_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.3, i32 718, ptr @.str.70, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RX queue base is not aligned\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gmac_setup_rxq\00", [17 x i8] zeroinitializer }, align 32
@gmac_setup_rxq._entry_ptr = internal global ptr @gmac_setup_rxq._entry, section ".printk_index", align 4
@gmac_setup_txqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 575, ptr @.str.70, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TX queue base is not aligned\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gmac_setup_txqs\00", [16 x i8] zeroinitializer }, align 32
@gmac_setup_txqs._entry_ptr = internal global ptr @gmac_setup_txqs._entry, section ".printk_index", align 4
@gmac_cleanup_rxq.gpage = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@gmac_cleanup_rxq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.3, i32 793, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"could not find page\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gmac_cleanup_rxq\00", [47 x i8] zeroinitializer }, align 32
@gmac_cleanup_rxq._entry_ptr = internal global ptr @gmac_cleanup_rxq._entry, section ".printk_index", align 4
@gmac_get_queue_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 740, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"try to get page with no page list\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gmac_get_queue_page\00", [44 x i8] zeroinitializer }, align 32
@gmac_get_queue_page._entry_ptr = internal global ptr @gmac_get_queue_page._entry, section ".printk_index", align 4
@gmac_enable_irq.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.90, ptr @.str.3, ptr @.str.61, i8 1, i8 72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gmac_enable_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tx timeout\0A\00", [20 x i8] zeroinitializer }, align 32
@gmac_stats_strings = internal constant { [49 x [32 x i8]], [384 x i8] } { [49 x [32 x i8]] [[32 x i8] c"GMAC_IN_DISCARDS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"GMAC_IN_ERRORS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"GMAC_IN_MCAST\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"GMAC_IN_BCAST\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"GMAC_IN_MAC1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"GMAC_IN_MAC2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_GOOD_FRAME\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_TOO_LONG_GOOD_CRC\00\00\00\00\00", [32 x i8] c"RX_STATUS_RUNT_FRAME\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_SFD_NOT_FOUND\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_CRC_ERROR\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_TOO_LONG_BAD_CRC\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_ALIGNMENT_ERROR\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_TOO_LONG_BAD_ALIGN\00\00\00\00", [32 x i8] c"RX_STATUS_RX_ERR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_DA_FILTERED\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_BUFFER_FULL\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_11\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_13\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_STATUS_15\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_IP_UDP_TCP_OK\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_IP_OK_ONLY\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_NONE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_IP_ERR_UNKNOWN\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_IP_ERR\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_TCP_UDP_ERR\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_CHKSUM_7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"RX_NAPI_EXITS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[1]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[2]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[3]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[4]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[5]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[6]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[7]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[8]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[9]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[10]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[11]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[12]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[13]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[14]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[15]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS[16+]\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_FRAGS_LINEARIZED\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"TX_HW_CSUMMED\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [384 x i8] zeroinitializer }, align 32
@gmac_rx.skb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"rxq[%u]: HW BUG: zero DMA desc\0A\00", [32 x i8] zeroinitializer }, align 32
@gmac_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 1443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not find mapping\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gmac_rx\00", [24 x i8] zeroinitializer }, align 32
@gmac_rx._entry_ptr = internal global ptr @gmac_rx._entry, section ".printk_index", align 4
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Received fragment with len = 0\0A\00", [32 x i8] zeroinitializer }, align 32
@gmac_setup_phy.__UNIQUE_ID_ddebug489 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gmac_setup_phy\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"MII: set GMAC0 to GMII mode, GMAC1 disabled\0A\00", [51 x i8] zeroinitializer }, align 32
@gmac_setup_phy.__UNIQUE_ID_ddebug490 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.98, ptr @.str.3, ptr @.str.100, i8 0, i8 97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"GMII: set GMAC0 to GMII mode, GMAC1 disabled\0A\00", [50 x i8] zeroinitializer }, align 32
@gmac_setup_phy.__UNIQUE_ID_ddebug491 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.98, ptr @.str.3, ptr @.str.101, i8 0, i8 99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RGMII: set GMAC0 and GMAC1 to MII/RGMII mode\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported MII interface\0A\00", [37 x i8] zeroinitializer }, align 32
@gmac_speed_set.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.103, ptr @.str.3, ptr @.str.104, i8 0, i8 77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gmac_speed_set\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"connect %s to RGMII @ 1Gbit\0A\00", [35 x i8] zeroinitializer }, align 32
@gmac_speed_set.__UNIQUE_ID_ddebug487 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.103, ptr @.str.3, ptr @.str.105, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"connect %s to RGMII @ 100 Mbit\0A\00", [32 x i8] zeroinitializer }, align 32
@gmac_speed_set.__UNIQUE_ID_ddebug488 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.38, ptr @.str.103, ptr @.str.3, ptr @.str.106, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"connect %s to RGMII @ 10 Mbit\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported PHY speed (%d) on %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"link flow control: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"both\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 2, i64 3, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@__sancov_gen_cov_switch_values.114 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 4, i64 5, i64 6, i64 7, i64 10]
@__sancov_gen_cov_switch_values.115 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 7, i64 10]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.117 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 49, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"gemini_ethernet_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2598, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"gemini_ethernet_port_driver\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2532, i32 31 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2600, i32 11 }
@___asan_gen_.129 = private unnamed_addr constant [25 x i8] c"gemini_ethernet_of_match\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2590, i32 34 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2564, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2567, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2570, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2571, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 717, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2534, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant [30 x i8] c"gemini_ethernet_port_of_match\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2524, i32 34 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2365, i32 26 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2365, i32 39 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2378, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2380, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2385, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2389, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2404, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2411, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2422, i32 33 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2424, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2437, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant [14 x i8] c"gmac_351x_ops\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2206, i32 36 }
@___asan_gen_.237 = private unnamed_addr constant [22 x i8] c"gmac_351x_ethtool_ops\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2220, i32 33 }
@___asan_gen_.240 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2461, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2479, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2482, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 2500, i32 7 }
@___asan_gen_.261 = private unnamed_addr constant [13 x i8] c"gmac_maxlens\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 422, i32 39 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1772, i32 22 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1784, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1790, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1796, i32 22 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1812, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1684, i32 22 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1547, i32 21 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1556, i32 21 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1564, i32 21 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1571, i32 21 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1581, i32 21 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1588, i32 21 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1601, i32 21 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1114, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1341, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 271, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1060, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1074, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 943, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 954, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 836, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 856, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.367, i32 326, i32 6 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 898, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 718, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 575, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [6 x i8] c"gpage\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 759, i32 33 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 793, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 740, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1312, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1301, i32 21 }
@___asan_gen_.420 = private unnamed_addr constant [19 x i8] c"gmac_stats_strings\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 171, i32 19 }
@___asan_gen_.423 = private unnamed_addr constant [4 x i8] c"skb\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1402, i32 25 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1436, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1443, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 1475, i32 23 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 382, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 387, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 395, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 400, i32 22 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 310, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 317, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 324, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 328, i32 23 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 350, i32 23 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 352, i32 32 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 352, i32 39 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 353, i32 32 }
@___asan_gen_.483 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.484 = private constant [41 x i8] c"../drivers/net/ethernet/cortina/gemini.c\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.484, i32 353, i32 39 }
@llvm.compiler.used = appending global [150 x ptr] [ptr @__UNIQUE_ID_alias514, ptr @__UNIQUE_ID_author510, ptr @__UNIQUE_ID_debug485, ptr @__UNIQUE_ID_debugtype484, ptr @__UNIQUE_ID_description511, ptr @__UNIQUE_ID_file512, ptr @__UNIQUE_ID_license513, ptr @__exitcall_gemini_ethernet_module_exit, ptr @__initcall__kmod_gemini__509_2623_gemini_ethernet_module_init6, ptr @__param_debug, ptr @gemini_ethernet_module_exit, ptr @gemini_ethernet_port_probe._entry, ptr @gemini_ethernet_port_probe._entry.21, ptr @gemini_ethernet_port_probe._entry.24, ptr @gemini_ethernet_port_probe._entry.27, ptr @gemini_ethernet_port_probe._entry.31, ptr @gemini_ethernet_port_probe._entry.34, ptr @gemini_ethernet_port_probe._entry.40, ptr @gemini_ethernet_port_probe._entry_ptr, ptr @gemini_ethernet_port_probe._entry_ptr.23, ptr @gemini_ethernet_port_probe._entry_ptr.26, ptr @gemini_ethernet_port_probe._entry_ptr.29, ptr @gemini_ethernet_port_probe._entry_ptr.33, ptr @gemini_ethernet_port_probe._entry_ptr.36, ptr @gemini_ethernet_port_probe._entry_ptr.42, ptr @gemini_ethernet_probe._entry, ptr @gemini_ethernet_probe._entry.6, ptr @gemini_ethernet_probe._entry_ptr, ptr @gemini_ethernet_probe._entry_ptr.9, ptr @geth_setup_freeq._entry, ptr @geth_setup_freeq._entry.71, ptr @geth_setup_freeq._entry_ptr, ptr @geth_setup_freeq._entry_ptr.73, ptr @gmac_cleanup_rxq._entry, ptr @gmac_cleanup_rxq._entry_ptr, ptr @gmac_get_queue_page._entry, ptr @gmac_get_queue_page._entry_ptr, ptr @gmac_rx._entry, ptr @gmac_rx._entry_ptr, ptr @gmac_setup_rxq._entry, ptr @gmac_setup_rxq._entry_ptr, ptr @gmac_setup_txqs._entry, ptr @gmac_setup_txqs._entry_ptr, ptr @debug, ptr @gemini_ethernet_driver, ptr @gemini_ethernet_port_driver, ptr @.str, ptr @gemini_ethernet_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @gemini_ethernet_probe.__key, ptr @.str.10, ptr @gemini_ethernet_probe.__key.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @gemini_ethernet_port_of_match, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @gmac_351x_ops, ptr @gmac_351x_ethtool_ops, ptr @gemini_ethernet_port_probe.__key, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @gmac_maxlens, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @gmac_cleanup_rxq.gpage, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @gmac_stats_strings, ptr @gmac_rx.skb, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_351x_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_351x_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gemini_ethernet_port_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_maxlens to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geth_setup_freeq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geth_setup_freeq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_setup_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_setup_txqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_cleanup_rxq.gpage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_cleanup_rxq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_get_queue_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_stats_strings to i32), i32 1568, i32 1952, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_rx.skb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gmac_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_ethernet_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gemini_ethernet_port_driver, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @gemini_ethernet_driver, ptr noundef null) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @platform_driver_unregister(ptr noundef nonnull @gemini_ethernet_port_driver) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gemini_ethernet_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @platform_driver_unregister(ptr noundef nonnull @gemini_ethernet_driver) #18
  tail call void @platform_driver_unregister(ptr noundef nonnull @gemini_ethernet_port_driver) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_ethernet_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef null) #18
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 429496) #18
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !274
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %land.rhs, label %if.end8.do.end23_crit_edge

if.end8.do.end23_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end23

land.rhs:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 429496) #18
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !274
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool13.not.1 = icmp eq i32 %10, 0
  br i1 %tobool13.not.1, label %land.rhs.1, label %land.rhs.do.end23_crit_edge

land.rhs.do.end23_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end23

land.rhs.1:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 429496) #18
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !274
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not.2 = icmp eq i32 %14, 0
  br i1 %tobool13.not.2, label %land.rhs.2, label %land.rhs.1.do.end23_crit_edge

land.rhs.1.do.end23_crit_edge:                    ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end23

land.rhs.2:                                       ; preds = %land.rhs.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #18
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !274
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool13.not.3 = icmp eq i32 %18, 0
  br i1 %tobool13.not.3, label %land.rhs.3, label %land.rhs.2.do.end23_crit_edge

land.rhs.2.do.end23_crit_edge:                    ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end23

land.rhs.3:                                       ; preds = %land.rhs.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 429496) #18
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !274
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !275
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not.4 = icmp eq i32 %22, 0
  br i1 %tobool13.not.4, label %land.rhs.4, label %land.rhs.3.do.end23_crit_edge

land.rhs.3.do.end23_crit_edge:                    ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end23

land.rhs.4:                                       ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #21
  br label %cleanup

do.end23:                                         ; preds = %land.rhs.3.do.end23_crit_edge, %land.rhs.2.do.end23_crit_edge, %land.rhs.1.do.end23_crit_edge, %land.rhs.do.end23_crit_edge, %if.end8.do.end23_crit_edge
  %.lcssa = phi i32 [ %6, %if.end8.do.end23_crit_edge ], [ %10, %land.rhs.do.end23_crit_edge ], [ %14, %land.rhs.1.do.end23_crit_edge ], [ %18, %land.rhs.2.do.end23_crit_edge ], [ %22, %land.rhs.3.do.end23_crit_edge ]
  %23 = tail call i32 @llvm.bswap.i32(i32 %.lcssa)
  %shr = lshr i32 %23, 4
  %and = and i32 %shr, 4095
  %and24 = and i32 %23, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %and, i32 noundef %and24) #21
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @gemini_ethernet_probe.__key, i16 noundef signext 3) #18
  %freeq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %freeq_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @gemini_ethernet_probe.__key.11, i16 noundef signext 3) #18
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call33 = tail call i32 @devm_of_platform_populate(ptr noundef %dev1) #18
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %land.rhs.4, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %call33, %do.end23 ], [ -5, %land.rhs.4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_ethernet_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @geth_cleanup_freeq(ptr noundef %1)
  %initialized = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %initialized, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @geth_cleanup_freeq(ptr nocapture noundef readonly %geth) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %freeq_frag_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 7
  %0 = ptrtoint ptr %freeq_frag_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freeq_frag_order, align 4
  %sub = sub i32 12, %1
  %shl = shl nuw i32 1, %1
  %freeq_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 6
  %2 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freeq_order, align 4
  %shl2 = shl nuw i32 1, %3
  %shr = lshr i32 %shl2, %sub
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !276
  tail call void @arm_heavy_mb() #18
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #18, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !278
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %6) #18, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !280
  tail call void @arm_heavy_mb() #18
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 0) #18, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp43.not = icmp eq i32 %shr, 0
  br i1 %cmp43.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %freeq_ring = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 8
  %freeq_pages = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %pn.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %11 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %freeq_ring, align 4
  %shl12 = shl i32 %pn.044, %sub
  %word2 = getelementptr %struct.gmac_rxdesc, ptr %12, i32 %shl12, i32 2
  %13 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %word2, align 4
  %15 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %geth, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %16, i32 noundef %14, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #18
  %17 = ptrtoint ptr %freeq_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %freeq_pages, align 4
  %arrayidx13 = getelementptr %struct.gmac_queue_page, ptr %18, i32 %pn.044
  %19 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx13, align 4
  %_refcount.i40 = getelementptr inbounds %struct.page, ptr %20, i32 0, i32 3
  %call.i.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i40, i32 noundef 4) #18
  %21 = ptrtoint ptr %_refcount.i40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %_refcount.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1542 = icmp sgt i32 %22, 0
  br i1 %cmp1542, label %for.body.while.body_crit_edge, label %for.body.while.end_crit_edge

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %for.body.while.body_crit_edge
  %23 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx13, align 4
  %25 = getelementptr inbounds %struct.page, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !282

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %27, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %24 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %28, %if.end.i.i ]
  %29 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %29, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %30 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i.i.i.i = icmp eq i32 %31, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %32 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %32, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !284
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %33 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !286
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %33, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@geth_cleanup_freeq, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !288

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %29, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %29) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %34 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx13, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #18
  %36 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i, align 4
  %cmp15 = icmp sgt i32 %37, 0
  br i1 %cmp15, label %put_page.exit.while.body_crit_edge, label %put_page.exit.while.end_crit_edge

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %for.body.while.end_crit_edge
  %inc = add nuw i32 %pn.044, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  %freeq_pages17 = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 10
  %38 = ptrtoint ptr %freeq_pages17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %freeq_pages17, align 4
  tail call void @kfree(ptr noundef %39) #18
  %40 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %geth, align 4
  %42 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %freeq_order, align 4
  %shl20 = shl i32 16, %43
  %freeq_ring21 = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 8
  %44 = ptrtoint ptr %freeq_ring21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %freeq_ring21, align 4
  %freeq_dma_base = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 9
  %46 = ptrtoint ptr %freeq_dma_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %freeq_dma_base, align 4
  tail call void @dma_free_attrs(ptr noundef %41, i32 noundef %shl20, ptr noundef %45, i32 noundef %47, i32 noundef 0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_ethernet_port_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent2 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent2, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %dev_name.exit, label %dev_name.exit.thread

dev_name.exit:                                    ; preds = %entry
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(23) @.str.17) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %dev_name.exit.if.end.i238_crit_edge, label %dev_name.exit235

dev_name.exit.if.end.i238_crit_edge:              ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i238

dev_name.exit.thread:                             ; preds = %entry
  %call4251 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(23) @.str.17) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4251)
  %tobool.not252 = icmp eq i32 %call4251, 0
  br i1 %tobool.not252, label %dev_name.exit.thread.dev_name.exit240_crit_edge, label %dev_name.exit235.thread

dev_name.exit.thread.dev_name.exit240_crit_edge:  ; preds = %dev_name.exit.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit240

dev_name.exit235:                                 ; preds = %dev_name.exit
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %call6 = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(23) @.str.18) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %dev_name.exit235.if.end.i238_crit_edge, label %dev_name.exit235.cleanup_crit_edge

dev_name.exit235.cleanup_crit_edge:               ; preds = %dev_name.exit235
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

dev_name.exit235.if.end.i238_crit_edge:           ; preds = %dev_name.exit235
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end.i238

dev_name.exit235.thread:                          ; preds = %dev_name.exit.thread
  %call6269 = tail call i32 @strcmp(ptr noundef nonnull %5, ptr noundef nonnull dereferenceable(23) @.str.18) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6269)
  %tobool7.not270 = icmp eq i32 %call6269, 0
  br i1 %tobool7.not270, label %dev_name.exit235.thread.dev_name.exit240_crit_edge, label %dev_name.exit235.thread.cleanup_crit_edge

dev_name.exit235.thread.cleanup_crit_edge:        ; preds = %dev_name.exit235.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

dev_name.exit235.thread.dev_name.exit240_crit_edge: ; preds = %dev_name.exit235.thread
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit240

if.end.i238:                                      ; preds = %dev_name.exit235.if.end.i238_crit_edge, %dev_name.exit.if.end.i238_crit_edge
  %id.0267 = phi i32 [ 0, %dev_name.exit.if.end.i238_crit_edge ], [ 1, %dev_name.exit235.if.end.i238_crit_edge ]
  %10 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit240

dev_name.exit240:                                 ; preds = %if.end.i238, %dev_name.exit235.thread.dev_name.exit240_crit_edge, %dev_name.exit.thread.dev_name.exit240_crit_edge
  %id.0260 = phi i32 [ %id.0267, %if.end.i238 ], [ 0, %dev_name.exit.thread.dev_name.exit240_crit_edge ], [ 1, %dev_name.exit235.thread.dev_name.exit240_crit_edge ]
  %tobool.not254259 = phi i1 [ %tobool.not, %if.end.i238 ], [ true, %dev_name.exit.thread.dev_name.exit240_crit_edge ], [ false, %dev_name.exit235.thread.dev_name.exit240_crit_edge ]
  %retval.0.i239 = phi ptr [ %11, %if.end.i238 ], [ %5, %dev_name.exit.thread.dev_name.exit240_crit_edge ], [ %5, %dev_name.exit235.thread.dev_name.exit240_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i239, i32 noundef %id.0260) #21
  %call12 = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %dev1, i32 noundef 1104, i32 noundef 1, i32 noundef 1) #18
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.end17, label %if.end18

do.end17:                                         ; preds = %dev_name.exit240
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %id.0260) #21
  br label %cleanup

if.end18:                                         ; preds = %dev_name.exit240
  %add.ptr.i = getelementptr i8, ptr %call12, i32 2304
  %parent21 = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %parent21, align 8
  %netdev22 = getelementptr i8, ptr %call12, i32 2312
  %13 = ptrtoint ptr %netdev22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call12, ptr %netdev22, align 8
  %conv = trunc i32 %id.0260 to i8
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %add.ptr.i, align 8
  %geth24 = getelementptr i8, ptr %call12, i32 2308
  %15 = ptrtoint ptr %geth24 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %geth24, align 4
  %dev25 = getelementptr i8, ptr %call12, i32 2316
  %16 = ptrtoint ptr %dev25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %dev25, align 4
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %17)
  %cmp1.i = icmp ugt i32 %17, 31
  br i1 %cmp1.i, label %if.end18.netif_msg_init.exit_crit_edge, label %if.end.i241

if.end18.netif_msg_init.exit_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_msg_init.exit

if.end.i241:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2.i = icmp eq i32 %17, 0
  br i1 %cmp2.i, label %if.end.i241.netif_msg_init.exit_crit_edge, label %if.end4.i

if.end.i241.netif_msg_init.exit_crit_edge:        ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_msg_init.exit

if.end4.i:                                        ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #20
  %notmask.i = shl nsw i32 -1, %17
  %sub.i = xor i32 %notmask.i, -1
  br label %netif_msg_init.exit

netif_msg_init.exit:                              ; preds = %if.end4.i, %if.end.i241.netif_msg_init.exit_crit_edge, %if.end18.netif_msg_init.exit_crit_edge
  %retval.0.i242 = phi i32 [ %sub.i, %if.end4.i ], [ 7, %if.end18.netif_msg_init.exit_crit_edge ], [ 0, %if.end.i241.netif_msg_init.exit_crit_edge ]
  %msg_enable = getelementptr i8, ptr %call12, i32 2680
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i242, ptr %msg_enable, align 8
  %call27 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef null) #18
  %dma_base = getelementptr i8, ptr %call12, i32 2320
  %19 = ptrtoint ptr %dma_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call27, ptr %dma_base, align 8
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end33, label %if.end36

do.end33:                                         ; preds = %netif_msg_init.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #21
  %20 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_base, align 8
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end36:                                         ; preds = %netif_msg_init.exit
  %call37 = tail call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 1, ptr noundef null) #18
  %gmac_base = getelementptr i8, ptr %call12, i32 2324
  %23 = ptrtoint ptr %gmac_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call37, ptr %gmac_base, align 4
  %cmp.i243 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %do.end43, label %if.end46

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #21
  %24 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %gmac_base, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  %call47 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp = icmp slt i32 %call47, 1
  br i1 %cmp, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool50.not = icmp eq i32 %call47, 0
  %spec.select = select i1 %tobool50.not, i32 -19, i32 %call47
  br label %cleanup

if.end51:                                         ; preds = %if.end46
  %irq52 = getelementptr i8, ptr %call12, i32 2336
  %27 = ptrtoint ptr %irq52 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call47, ptr %irq52, align 8
  %call53 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.30) #18
  %pclk = getelementptr i8, ptr %call12, i32 2328
  %28 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call53, ptr %pclk, align 8
  %cmp.i244 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244, label %do.end59, label %if.end62

do.end59:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #21
  %29 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pclk, align 8
  %31 = ptrtoint ptr %30 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end51
  %call.i = tail call i32 @clk_prepare(ptr noundef %call53) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i245 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i245, label %if.end.i246, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end.i246:                                      ; preds = %if.end62
  %call1.i = tail call i32 @clk_enable(ptr noundef %call53) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end67, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @clk_unprepare(ptr noundef %call53) #18
  br label %cleanup

if.end67:                                         ; preds = %if.end.i246
  %32 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gmac_base, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !289
  %mac_addr.i = getelementptr i8, ptr %call12, i32 2340
  %35 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %mac_addr.i, align 4
  %36 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %gmac_base, align 4
  %add.ptr5.i = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !290
  %arrayidx10.i = getelementptr i8, ptr %call12, i32 2344
  %39 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx10.i, align 4
  %40 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gmac_base, align 4
  %add.ptr14.i = getelementptr i8, ptr %41, i32 8
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !291
  %arrayidx19.i = getelementptr i8, ptr %call12, i32 2348
  %43 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %arrayidx19.i, align 4
  %call.i248 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #18
  %reset = getelementptr i8, ptr %call12, i32 2332
  %44 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i248, ptr %reset, align 4
  %cmp.i249 = icmp ugt ptr %call.i248, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end74, label %if.end77

do.end74:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35) #21
  %45 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reset, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %unprepare

if.end77:                                         ; preds = %if.end67
  %call79 = tail call i32 @reset_control_reset(ptr noundef %call.i248) #18
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 500, i32 noundef 2) #18
  %port1 = getelementptr inbounds %struct.gemini_ethernet, ptr %3, i32 0, i32 3
  %port0 = getelementptr inbounds %struct.gemini_ethernet, ptr %3, i32 0, i32 2
  %port1.sink = select i1 %tobool.not254259, ptr %port0, ptr %port1
  %48 = ptrtoint ptr %port1.sink to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %add.ptr.i, ptr %port1.sink, align 4
  tail call fastcc void @gemini_ethernet_init(ptr noundef %3)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %add.ptr.i, align 8
  %conv85 = zext i8 %51 to i16
  %dev_id = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 60
  %52 = ptrtoint ptr %dev_id to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv85, ptr %dev_id, align 2
  %irq86 = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 64
  %53 = ptrtoint ptr %irq86 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call47, ptr %irq86, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 16
  %54 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @gmac_351x_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 44
  %55 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @gmac_351x_ethtool_ops, ptr %ethtool_ops, align 16
  %config_lock = getelementptr i8, ptr %call12, i32 2684
  tail call void @__raw_spin_lock_init(ptr noundef %config_lock, ptr noundef nonnull @.str.37, ptr noundef nonnull @gemini_ethernet_port_probe.__key, i16 noundef signext 3) #18
  tail call fastcc void @gmac_clear_hw_stats(ptr noundef nonnull %call12)
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 24
  %56 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 1099513004051, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 23
  %57 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %features, align 16
  %or = or i64 %58, 1099513020435
  store i64 %or, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 30
  %59 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 68, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 31
  %60 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10218, ptr %max_mtu, align 4
  %freeq_refill = getelementptr i8, ptr %call12, i32 2644
  %61 = ptrtoint ptr %freeq_refill to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %freeq_refill, align 4
  %napi = getelementptr i8, ptr %call12, i32 2368
  tail call void @netif_napi_add(ptr noundef nonnull %call12, ptr noundef %napi, ptr noundef nonnull @gmac_napi_poll, i32 noundef 64) #18
  %62 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mac_addr.i, align 4
  %64 = and i32 %63, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.i.not.i = icmp eq i32 %64, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end77.do.body96_crit_edge

if.end77.do.body96_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body96

is_valid_ether_addr.exit:                         ; preds = %if.end77
  %65 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx10.i, align 2
  %conv.i.i = zext i16 %66 to i32
  %or.i.i = or i32 %63, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.do.body96_crit_edge, label %if.then92

is_valid_ether_addr.exit.do.body96_crit_edge:     ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body96

if.then92:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dev_addr_mod(ptr noundef nonnull %call12, i32 noundef 0, ptr noundef %mac_addr.i, i32 noundef 6) #18
  br label %if.end113

do.body96:                                        ; preds = %is_valid_ether_addr.exit.do.body96_crit_edge, %if.end77.do.body96_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gemini_ethernet_port_probe.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gemini_ethernet_port_probe, %if.then101)) #18
          to label %do.end112 [label %if.then101], !srcloc !288

if.then101:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #20
  %67 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mac_addr.i, align 4
  %69 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx10.i, align 4
  %71 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx19.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gemini_ethernet_port_probe.__UNIQUE_ID_ddebug508, ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %68, i32 noundef %70, i32 noundef %72) #18
  br label %do.end112

do.end112:                                        ; preds = %if.then101, %do.body96
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.41) #21
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call12)
  br label %if.end113

if.end113:                                        ; preds = %do.end112, %if.then92
  tail call fastcc void @gmac_write_mac_address(ptr noundef nonnull %call12)
  %73 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev25, align 4
  %75 = ptrtoint ptr %irq52 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq52, align 8
  %77 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %add.ptr.i, align 8
  %idxprom = zext i8 %78 to i32
  %arrayidx117 = getelementptr [2 x ptr], ptr @__const.gemini_ethernet_port_probe.port_names, i32 0, i32 %idxprom
  %79 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx117, align 4
  %call118 = tail call i32 @devm_request_threaded_irq(ptr noundef %74, i32 noundef %76, ptr noundef nonnull @gemini_port_irq, ptr noundef nonnull @gemini_port_irq_thread, i32 noundef 128, ptr noundef %80, ptr noundef %add.ptr.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.end121, label %if.end113.unprepare_crit_edge

if.end113.unprepare_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  br label %unprepare

if.end121:                                        ; preds = %if.end113
  %call122 = tail call fastcc i32 @gmac_setup_phy(ptr noundef nonnull %call12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end125, label %if.then124

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef nonnull %call12, ptr noundef nonnull @.str.43) #21
  br label %unprepare

if.end125:                                        ; preds = %if.end121
  %call126 = tail call i32 @register_netdev(ptr noundef nonnull %call12) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end125.cleanup_crit_edge, label %if.end125.unprepare_crit_edge

if.end125.unprepare_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #20
  br label %unprepare

if.end125.cleanup_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

unprepare:                                        ; preds = %if.end125.unprepare_crit_edge, %if.then124, %if.end113.unprepare_crit_edge, %do.end74
  %ret.0 = phi i32 [ %47, %do.end74 ], [ %call118, %if.end113.unprepare_crit_edge ], [ %call122, %if.then124 ], [ %call126, %if.end125.unprepare_crit_edge ]
  %81 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pclk, align 8
  tail call void @clk_disable(ptr noundef %82) #18
  tail call void @clk_unprepare(ptr noundef %82) #18
  br label %cleanup

cleanup:                                          ; preds = %unprepare, %if.end125.cleanup_crit_edge, %if.then3.i, %if.end62.cleanup_crit_edge, %do.end59, %if.then49, %do.end43, %do.end33, %do.end17, %dev_name.exit235.thread.cleanup_crit_edge, %dev_name.exit235.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %do.end33 ], [ %26, %do.end43 ], [ %spec.select, %if.then49 ], [ %31, %do.end59 ], [ %ret.0, %unprepare ], [ -12, %do.end17 ], [ -19, %dev_name.exit235.cleanup_crit_edge ], [ 0, %if.end125.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end62.cleanup_crit_edge ], [ -19, %dev_name.exit235.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_ethernet_port_remove(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev.i = getelementptr inbounds %struct.gemini_ethernet_port, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.gemini_port_remove.exit_crit_edge, label %if.then.i

entry.gemini_port_remove.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %gemini_port_remove.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %phydev.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 145
  %4 = ptrtoint ptr %phydev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phydev.i, align 16
  tail call void @phy_disconnect(ptr noundef %5) #18
  %6 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev.i, align 8
  tail call void @unregister_netdev(ptr noundef %7) #18
  br label %gemini_port_remove.exit

gemini_port_remove.exit:                          ; preds = %if.then.i, %entry.gemini_port_remove.exit_crit_edge
  %pclk.i = getelementptr inbounds %struct.gemini_ethernet_port, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %pclk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk.i, align 8
  tail call void @clk_disable(ptr noundef %9) #18
  tail call void @clk_unprepare(ptr noundef %9) #18
  %geth.i = getelementptr inbounds %struct.gemini_ethernet_port, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %geth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %geth.i, align 4
  tail call fastcc void @geth_cleanup_freeq(ptr noundef %11) #18
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gemini_ethernet_init(ptr nocapture noundef %geth) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %initialized = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 4
  %0 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %initialized, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  %port0 = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 2
  %2 = ptrtoint ptr %port0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port0, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %land.lhs.true

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

land.lhs.true:                                    ; preds = %if.end
  %port1 = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 3
  %4 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.return_crit_edge, label %if.then3

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  %6 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %initialized, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !293
  tail call void @arm_heavy_mb() #18
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !294
  tail call void @arm_heavy_mb() #18
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !295
  tail call void @arm_heavy_mb() #18
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !296
  tail call void @arm_heavy_mb() #18
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %14, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !297
  tail call void @arm_heavy_mb() #18
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %16, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !298
  tail call void @arm_heavy_mb() #18
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr25 = getelementptr i8, ptr %18, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 -1072694068) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !299
  tail call void @arm_heavy_mb() #18
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %20, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 33615872) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !300
  tail call void @arm_heavy_mb() #18
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %22, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 -1) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !301
  tail call void @arm_heavy_mb() #18
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %24, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 -1) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !302
  tail call void @arm_heavy_mb() #18
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr41 = getelementptr i8, ptr %26, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 50331903) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !303
  tail call void @arm_heavy_mb() #18
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr45 = getelementptr i8, ptr %28, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 -1) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !304
  tail call void @arm_heavy_mb() #18
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr49 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 -1) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !305
  tail call void @arm_heavy_mb() #18
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %32, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 -1) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !306
  tail call void @arm_heavy_mb() #18
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr57 = getelementptr i8, ptr %34, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 -1) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !307
  tail call void @arm_heavy_mb() #18
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %36, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 -1) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !308
  tail call void @arm_heavy_mb() #18
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr65 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !309
  tail call void @arm_heavy_mb() #18
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr69 = getelementptr i8, ptr %40, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !310
  tail call void @arm_heavy_mb() #18
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr73 = getelementptr i8, ptr %42, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 0) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !311
  tail call void @arm_heavy_mb() #18
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base, align 4
  %add.ptr77 = getelementptr i8, ptr %44, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #18, !srcloc !281
  %freeq_frag_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 7
  %45 = ptrtoint ptr %freeq_frag_order to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 11, ptr %freeq_frag_order, align 4
  %freeq_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 6
  %46 = ptrtoint ptr %freeq_order to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %freeq_order, align 4
  br label %return

return:                                           ; preds = %if.then3, %land.lhs.true.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_clear_hw_stats(ptr nocapture noundef readonly %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !312
  %3 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gmac_base, align 4
  %add.ptr6 = getelementptr i8, ptr %4, i32 52
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !313
  %6 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmac_base, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !314
  %9 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gmac_base, align 4
  %add.ptr20 = getelementptr i8, ptr %10, i32 60
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !315
  %12 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gmac_base, align 4
  %add.ptr27 = getelementptr i8, ptr %13, i32 64
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !316
  %15 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gmac_base, align 4
  %add.ptr34 = getelementptr i8, ptr %16, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !317
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_napi_poll(ptr noundef %napi, i32 noundef %budget) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %geth1 = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %geth1, align 4
  %freeq_order = getelementptr inbounds %struct.gemini_ethernet, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freeq_order, align 4
  %sub = add i32 %5, -1
  %shl = shl nuw i32 1, %sub
  %rx_stats_syncp = getelementptr i8, ptr %1, i32 2760
  tail call fastcc void @u64_stats_update_begin(ptr noundef %rx_stats_syncp)
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call3 = tail call fastcc i32 @gmac_rx(ptr noundef %7, i32 noundef %budget)
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %budget)
  %cmp = icmp ult i32 %call3, %budget
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @napi_gro_flush(ptr noundef %napi, i1 noundef zeroext false) #18
  %call4 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %call3) #18
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call fastcc void @gmac_enable_rx_irq(ptr noundef %9, i32 noundef 1)
  %rx_napi_exits = getelementptr i8, ptr %1, i32 3256
  %10 = ptrtoint ptr %rx_napi_exits to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %rx_napi_exits, align 8
  %inc = add i64 %11, 1
  store i64 %inc, ptr %rx_napi_exits, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sub6 = sub i32 %budget, %call3
  %freeq_refill = getelementptr i8, ptr %1, i32 2644
  %12 = ptrtoint ptr %freeq_refill to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %freeq_refill, align 4
  %add = add i32 %13, %sub6
  store i32 %add, ptr %freeq_refill, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %shl)
  %cmp8 = icmp ugt i32 %add, %shl
  br i1 %cmp8, label %if.then9, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %sub11 = sub i32 %add, %shl
  %14 = ptrtoint ptr %freeq_refill to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub11, ptr %freeq_refill, align 4
  %call12 = tail call fastcc i32 @geth_fill_freeq(ptr noundef %3, i1 noundef zeroext true)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %dep_map.i.i = getelementptr i8, ptr %1, i32 2764
  %15 = tail call ptr @llvm.returnaddress(i32 0) #18
  %16 = ptrtoint ptr %15 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %16) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %17 = ptrtoint ptr %rx_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_stats_syncp, align 4
  %inc.i.i.i = add i32 %18, 1
  store i32 %inc.i.i.i, ptr %rx_stats_syncp, align 4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #8 align 64 {
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
define internal fastcc void @gmac_write_mac_address(ptr nocapture noundef readonly %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %addr.sroa.0.0.copyload = load i32, ptr %1, align 1
  %addr.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %1, i32 4
  %3 = ptrtoint ptr %addr.sroa.6.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %addr.sroa.6.0.copyload = load i16, ptr %addr.sroa.6.0..sroa_idx, align 1
  %addr.sroa.6.0.insert.ext = zext i16 %addr.sroa.6.0.copyload to i32
  %addr.sroa.6.0.insert.shift = shl nuw i32 %addr.sroa.6.0.insert.ext, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !319
  tail call void @arm_heavy_mb() #18
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %4 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmac_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %addr.sroa.0.0.copyload) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !320
  tail call void @arm_heavy_mb() #18
  %6 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmac_base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %addr.sroa.6.0.insert.shift) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !321
  tail call void @arm_heavy_mb() #18
  %8 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gmac_base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #18, !srcloc !281
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_port_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr inbounds %struct.gemini_ethernet_port, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #18
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !322
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 100
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !323
  %8 = and i32 %4, 16777216
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %10 = and i32 %7, -16777731
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !324
  tail call void @arm_heavy_mb() #18
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %12, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %10) #18, !srcloc !281
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 2, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #18
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gemini_port_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr inbounds %struct.gemini_ethernet_port, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  %call = tail call fastcc i32 @geth_fill_freeq(ptr noundef %1, i1 noundef zeroext true)
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !325
  tail call void @arm_heavy_mb() #18
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #18, !srcloc !281
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %5, i32 100
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !326
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !327
  tail call void @arm_heavy_mb() #18
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %9, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %7) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #18
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmac_setup_phy(ptr noundef %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %netdev, i32 2316
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_phy_get_and_connect(ptr noundef %netdev, ptr noundef %3, ptr noundef nonnull @gmac_speed_set) #18
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %4 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %phydev, align 16
  %call3 = tail call i32 @phy_set_max_speed(ptr noundef nonnull %call2, i32 noundef 1000) #18
  tail call void @phy_support_asym_pause(ptr noundef nonnull %call2) #18
  %interface = getelementptr inbounds %struct.phy_device, ptr %call2, i32 0, i32 7
  %5 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interface, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %sw.default [
    i32 2, label %do.body4
    i32 3, label %do.body15
    i32 9, label %if.end.do.body38_crit_edge
    i32 10, label %if.end.do.body38_crit_edge96
    i32 12, label %if.end.do.body38_crit_edge97
    i32 11, label %if.end.do.body38_crit_edge98
  ]

if.end.do.body38_crit_edge98:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body38

if.end.do.body38_crit_edge97:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body38

if.end.do.body38_crit_edge96:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body38

if.end.do.body38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body38

do.body4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_setup_phy.__UNIQUE_ID_ddebug489, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_setup_phy, %if.then9)) #18
          to label %do.body60 [label %if.then9], !srcloc !288

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_setup_phy.__UNIQUE_ID_ddebug489, ptr noundef %netdev, ptr noundef nonnull @.str.99) #18
  br label %do.body60

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_setup_phy.__UNIQUE_ID_ddebug490, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_setup_phy, %if.then27)) #18
          to label %do.body60 [label %if.then27], !srcloc !288

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_setup_phy.__UNIQUE_ID_ddebug490, ptr noundef %netdev, ptr noundef nonnull @.str.100) #18
  br label %do.body60

do.body38:                                        ; preds = %if.end.do.body38_crit_edge, %if.end.do.body38_crit_edge96, %if.end.do.body38_crit_edge97, %if.end.do.body38_crit_edge98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_setup_phy.__UNIQUE_ID_ddebug491, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_setup_phy, %if.then50)) #18
          to label %do.body60 [label %if.then50], !srcloc !288

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_setup_phy.__UNIQUE_ID_ddebug491, ptr noundef %netdev, ptr noundef nonnull @.str.101) #18
  br label %do.body60

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.102) #21
  tail call void @phy_disconnect(ptr noundef nonnull %call2) #18
  %8 = ptrtoint ptr %phydev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %phydev, align 16
  br label %cleanup

do.body60:                                        ; preds = %if.then50, %do.body38, %if.then27, %do.body15, %if.then9, %do.body4
  %status.sroa.0.0 = phi i32 [ 0, %if.then9 ], [ 2, %if.then27 ], [ 4, %if.then50 ], [ 0, %do.body4 ], [ 2, %do.body15 ], [ 4, %do.body38 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !328
  tail call void @arm_heavy_mb() #18
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %9 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %status.sroa.0.0) #18, !srcloc !281
  %msg_enable = getelementptr i8, ptr %netdev, i32 2680
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_enable, align 8
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %do.body60.cleanup_crit_edge, label %if.then64

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then64:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_attached_info(ptr noundef nonnull %call2) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %do.body60.cleanup_crit_edge, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.then64 ], [ 0, %do.body60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_init(ptr nocapture noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %add1.i = add i32 %1, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %add1.i)
  %cmp3.not.i = icmp ugt i32 %add1.i, 1518
  br i1 %cmp3.not.i, label %for.inc.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.4.i.if.then.i_crit_edge, %for.inc.3.i.if.then.i_crit_edge, %for.inc.2.i.if.then.i_crit_edge, %for.inc.1.i.if.then.i_crit_edge, %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ], [ 2, %for.inc.1.i.if.then.i_crit_edge ], [ 3, %for.inc.2.i.if.then.i_crit_edge ], [ 4, %for.inc.3.i.if.then.i_crit_edge ], [ 5, %for.inc.4.i.if.then.i_crit_edge ]
  %val.i = getelementptr [6 x %struct.gmac_max_framelen], ptr @gmac_maxlens, i32 0, i32 %i.010.lcssa.i, i32 1
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %val.i, align 4
  %conv.i = zext i8 %3 to i32
  %phi.bo = shl nuw nsw i32 %conv.i, 21
  %phi.bo66 = and i32 %phi.bo, 14680064
  %phi.bo67 = or i32 %phi.bo66, -1073714692
  br label %gmac_pick_rx_max_len.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522, i32 %add1.i)
  %cmp3.not.1.i = icmp ugt i32 %add1.i, 1522
  br i1 %cmp3.not.1.i, label %for.inc.1.i, label %for.inc.i.if.then.i_crit_edge

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %add1.i)
  %cmp3.not.2.i = icmp ugt i32 %add1.i, 1536
  br i1 %cmp3.not.2.i, label %for.inc.2.i, label %for.inc.1.i.if.then.i_crit_edge

for.inc.1.i.if.then.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1542, i32 %add1.i)
  %cmp3.not.3.i = icmp ugt i32 %add1.i, 1542
  br i1 %cmp3.not.3.i, label %for.inc.3.i, label %for.inc.2.i.if.then.i_crit_edge

for.inc.2.i.if.then.i_crit_edge:                  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9212, i32 %add1.i)
  %cmp3.not.4.i = icmp ugt i32 %add1.i, 9212
  br i1 %cmp3.not.4.i, label %for.inc.4.i, label %for.inc.3.i.if.then.i_crit_edge

for.inc.3.i.if.then.i_crit_edge:                  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10236, i32 %add1.i)
  %cmp3.not.5.i = icmp ugt i32 %add1.i, 10236
  br i1 %cmp3.not.5.i, label %for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge, label %for.inc.4.i.if.then.i_crit_edge

for.inc.4.i.if.then.i_crit_edge:                  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then.i

for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge:  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_pick_rx_max_len.exit

gmac_pick_rx_max_len.exit:                        ; preds = %for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %phi.bo67, %if.then.i ], [ -1059034628, %for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge ]
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %4 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !329
  %bf.set10 = or i32 %retval.0.i, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !330
  tail call void @arm_heavy_mb() #18
  %8 = tail call i32 @llvm.bswap.i32(i32 %bf.set10)
  %9 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gmac_base, align 4
  %add.ptr12 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %8) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !331
  tail call void @arm_heavy_mb() #18
  %11 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gmac_base, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 6160) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !332
  tail call void @arm_heavy_mb() #18
  %13 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gmac_base, align 4
  %add.ptr22 = getelementptr i8, ptr %14, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 536875008) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !333
  tail call void @arm_heavy_mb() #18
  %15 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gmac_base, align 4
  %add.ptr27 = getelementptr i8, ptr %16, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 0) #18, !srcloc !281
  %dma_base = getelementptr i8, ptr %netdev, i32 2320
  %17 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_base, align 8
  %add.ptr30 = getelementptr i8, ptr %18, i32 200
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !334
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !335
  tail call void @arm_heavy_mb() #18
  %20 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma_base, align 8
  %add.ptr38 = getelementptr i8, ptr %21, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 15745800) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !336
  tail call void @arm_heavy_mb() #18
  %22 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_base, align 8
  %add.ptr43 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 4263940) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !337
  tail call void @arm_heavy_mb() #18
  %24 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_base, align 8
  %add.ptr48 = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 -2079309304) #18, !srcloc !281
  %rxq_order = getelementptr i8, ptr %netdev, i32 2360
  %26 = ptrtoint ptr %rxq_order to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 9, ptr %rxq_order, align 8
  %txq_order = getelementptr i8, ptr %netdev, i32 2664
  %27 = ptrtoint ptr %txq_order to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %txq_order, align 8
  %rx_coalesce_nsecs = getelementptr i8, ptr %netdev, i32 2640
  %28 = ptrtoint ptr %rx_coalesce_nsecs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %rx_coalesce_nsecs, align 8
  %irq_every_tx_packets = getelementptr i8, ptr %netdev, i32 2668
  %29 = ptrtoint ptr %irq_every_tx_packets to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 64, ptr %irq_every_tx_packets, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_open(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @gmac_irq, ptr noundef null, i32 noundef 128, ptr noundef %netdev, ptr noundef %netdev) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.44) #21
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @netif_carrier_off(ptr noundef %netdev) #18
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %2 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phydev, align 16
  tail call void @phy_start(ptr noundef %3) #18
  %call2 = tail call fastcc i32 @geth_resize_freeq(ptr noundef %add.ptr.i)
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %call2, label %if.then4 [
    i32 0, label %if.end.if.end5_crit_edge
    i32 -16, label %if.end.if.end5_crit_edge83
  ]

if.end.if.end5_crit_edge83:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.45) #21
  br label %err_stop_phy

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.if.end5_crit_edge83
  %geth1.i = getelementptr i8, ptr %netdev, i32 2308
  %5 = ptrtoint ptr %geth1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %geth1.i, align 4
  %base.i = getelementptr inbounds %struct.gemini_ethernet, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %dev_id.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %9 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dev_id.i, align 2
  %conv.i = zext i16 %10 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %add.i = add nuw nsw i32 %mul.i, 8192
  %add.ptr.i57 = getelementptr i8, ptr %8, i32 %add.i
  %word1.i = getelementptr inbounds %struct.nontoe_qhdr, ptr %add.ptr.i57, i32 0, i32 1
  %rxq_rwptr.i = getelementptr i8, ptr %netdev, i32 2352
  %11 = ptrtoint ptr %rxq_rwptr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %word1.i, ptr %rxq_rwptr.i, align 8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %6, align 4
  %rxq_order.i = getelementptr i8, ptr %netdev, i32 2360
  %14 = ptrtoint ptr %rxq_order.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxq_order.i, align 8
  %shl.i = shl i32 16, %15
  %rxq_dma_base.i = getelementptr i8, ptr %netdev, i32 2672
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %13, i32 noundef %shl.i, ptr noundef %rxq_dma_base.i, i32 noundef 3264, i32 noundef 0) #18
  %rxq_ring.i = getelementptr i8, ptr %netdev, i32 2356
  %16 = ptrtoint ptr %rxq_ring.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i, ptr %rxq_ring.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end5.if.then8_crit_edge, label %if.end.i

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then8

if.end.i:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %rxq_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rxq_dma_base.i, align 8
  %and.i = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %if.end9, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.82) #21
  br label %if.then8

if.then8:                                         ; preds = %do.end.i, %if.end5.if.then8_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.46) #21
  br label %err_stop_phy

if.end9:                                          ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !338
  tail call void @arm_heavy_mb() #18
  %21 = ptrtoint ptr %rxq_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rxq_dma_base.i, align 8
  %23 = ptrtoint ptr %rxq_order.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rxq_order.i, align 8
  %or.i = or i32 %24, %22
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %25) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !339
  tail call void @arm_heavy_mb() #18
  %26 = ptrtoint ptr %rxq_rwptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rxq_rwptr.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 0) #18, !srcloc !281
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %28 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tx_queues.i, align 4
  %30 = ptrtoint ptr %geth1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %geth1.i, align 4
  %txq_order.i = getelementptr i8, ptr %netdev, i32 2664
  %32 = ptrtoint ptr %txq_order.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %txq_order.i, align 8
  %shl.i60 = shl nuw i32 1, %33
  %txq2.i = getelementptr i8, ptr %netdev, i32 2648
  %mul.i61 = shl i32 %29, %33
  %dma_base.i = getelementptr i8, ptr %netdev, i32 2320
  %34 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dma_base.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %35, i32 12
  %36 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i61, i32 4) #18
  %37 = extractvalue { i32, i1 } %36, 1
  br i1 %37, label %if.end9.if.then12_crit_edge, label %if.end7.i.i.i, !prof !283

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.end7.i.i.i:                                    ; preds = %if.end9
  %38 = extractvalue { i32, i1 } %36, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %38, i32 noundef 3520) #23
  %tobool.not.i63 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i63, label %if.end7.i.i.i.if.then12_crit_edge, label %if.end.i65

if.end7.i.i.i.if.then12_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then12

if.end.i65:                                       ; preds = %if.end7.i.i.i
  %39 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %31, align 4
  %mul4.i = shl i32 %mul.i61, 4
  %txq_dma_base.i = getelementptr i8, ptr %netdev, i32 2676
  %call.i.i64 = tail call ptr @dma_alloc_attrs(ptr noundef %40, i32 noundef %mul4.i, ptr noundef %txq_dma_base.i, i32 noundef 3264, i32 noundef 0) #18
  %tobool6.not.i = icmp eq ptr %call.i.i64, null
  br i1 %tobool6.not.i, label %if.end.i65.cleanup.sink.split.i_crit_edge, label %if.end8.i

if.end.i65.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup.sink.split.i

if.end8.i:                                        ; preds = %if.end.i65
  %41 = ptrtoint ptr %txq_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %txq_dma_base.i, align 4
  %and.i66 = and i32 %42, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool10.not.i = icmp eq i32 %and.i66, 0
  br i1 %tobool10.not.i, label %do.body17.i, label %do.end.i67

do.end.i67:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #20
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.84) #21
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %31, align 4
  %47 = ptrtoint ptr %txq_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %txq_dma_base.i, align 4
  tail call void @dma_free_attrs(ptr noundef %46, i32 noundef %mul4.i, ptr noundef nonnull %call.i.i64, i32 noundef %48, i32 noundef 0) #18
  br label %cleanup.sink.split.i

do.body17.i:                                      ; preds = %if.end8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !340
  tail call void @arm_heavy_mb() #18
  %49 = ptrtoint ptr %txq_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %txq_dma_base.i, align 4
  %51 = ptrtoint ptr %txq_order.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %txq_order.i, align 8
  %or.i68 = or i32 %52, %50
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i68) #18
  %54 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dma_base.i, align 8
  %add.ptr23.i = getelementptr i8, ptr %55, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %53) #18, !srcloc !281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp83.not.i = icmp eq i32 %29, 0
  br i1 %cmp83.not.i, label %do.body17.i.if.end13_crit_edge, label %do.body17.i.for.body.i_crit_edge

do.body17.i.for.body.i_crit_edge:                 ; preds = %do.body17.i
  br label %for.body.i

do.body17.i.if.end13_crit_edge:                   ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body17.i.for.body.i_crit_edge
  %i.088.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body17.i.for.body.i_crit_edge ]
  %rwptr_reg.087.i = phi ptr [ %add.ptr31.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i62, %do.body17.i.for.body.i_crit_edge ]
  %skb_tab.086.i = phi ptr [ %add.ptr33.i, %for.body.i.for.body.i_crit_edge ], [ %call8.i.i.i, %do.body17.i.for.body.i_crit_edge ]
  %desc_ring.085.i = phi ptr [ %add.ptr32.i, %for.body.i.for.body.i_crit_edge ], [ %call.i.i64, %do.body17.i.for.body.i_crit_edge ]
  %txq.084.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %txq2.i, %do.body17.i.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %txq.084.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %desc_ring.085.i, ptr %txq.084.i, align 4
  %skb.i = getelementptr inbounds %struct.gmac_txq, ptr %txq.084.i, i32 0, i32 1
  %57 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %skb_tab.086.i, ptr %skb.i, align 4
  %noirq_packets.i = getelementptr inbounds %struct.gmac_txq, ptr %txq.084.i, i32 0, i32 3
  %58 = ptrtoint ptr %noirq_packets.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %noirq_packets.i, align 4
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %rwptr_reg.087.i) #18, !srcloc !277
  %60 = tail call i16 @llvm.bswap.i16(i16 %59) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !341
  %conv.i69 = zext i16 %60 to i32
  %add.ptr26.i = getelementptr i8, ptr %rwptr_reg.087.i, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !342
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr26.i, i16 %59) #18, !srcloc !279
  %add.ptr31.i = getelementptr i8, ptr %rwptr_reg.087.i, i32 4
  %cptr.i = getelementptr inbounds %struct.gmac_txq, ptr %txq.084.i, i32 0, i32 2
  %61 = ptrtoint ptr %cptr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i69, ptr %cptr.i, align 4
  %incdec.ptr.i = getelementptr %struct.gmac_txq, ptr %txq.084.i, i32 1
  %add.ptr32.i = getelementptr %struct.gmac_txdesc, ptr %desc_ring.085.i, i32 %shl.i60
  %add.ptr33.i = getelementptr ptr, ptr %skb_tab.086.i, i32 %shl.i60
  %inc.i = add nuw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %for.body.i.if.end13_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.if.end13_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end13

cleanup.sink.split.i:                             ; preds = %do.end.i67, %if.end.i65.cleanup.sink.split.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #18
  br label %if.then12

if.then12:                                        ; preds = %cleanup.sink.split.i, %if.end7.i.i.i.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.47) #21
  tail call fastcc void @gmac_cleanup_rxq(ptr noundef %netdev)
  br label %err_stop_phy

if.end13:                                         ; preds = %for.body.i.if.end13_crit_edge, %do.body17.i.if.end13_crit_edge
  %napi = getelementptr i8, ptr %netdev, i32 2368
  tail call void @napi_enable(ptr noundef %napi) #18
  %62 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_base.i, align 8
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !343
  %65 = and i32 %64, -264306688
  %66 = or i32 %65, 58733361
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !344
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %66) #18, !srcloc !281
  tail call fastcc void @gmac_enable_irq(ptr noundef %netdev, i32 noundef 1)
  %config_lock.i = getelementptr i8, ptr %netdev, i32 2684
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %gmac_base.i = getelementptr i8, ptr %netdev, i32 2324
  %67 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr.i72 = getelementptr i8, ptr %68, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !345
  %70 = and i32 %69, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !346
  tail call void @arm_heavy_mb() #18
  %71 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %72, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %70) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call3.i) #18
  %73 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp4.not.i = icmp eq i32 %74, 0
  br i1 %cmp4.not.i, label %if.end13.netif_tx_start_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.end13.netif_tx_start_all_queues.exit_crit_edge: ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_start_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end13
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i75

for.body.i75:                                     ; preds = %for.body.i75.for.body.i75_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i74, %for.body.i75.for.body.i75_crit_edge ]
  %75 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %76, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #18
  %inc.i74 = add nuw i32 %i.05.i, 1
  %77 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i74, %78
  br i1 %cmp.i, label %for.body.i75.for.body.i75_crit_edge, label %for.body.i75.netif_tx_start_all_queues.exit_crit_edge

for.body.i75.netif_tx_start_all_queues.exit_crit_edge: ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #20
  br label %netif_tx_start_all_queues.exit

for.body.i75.for.body.i75_crit_edge:              ; preds = %for.body.i75
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i75

netif_tx_start_all_queues.exit:                   ; preds = %for.body.i75.netif_tx_start_all_queues.exit_crit_edge, %if.end13.netif_tx_start_all_queues.exit_crit_edge
  %rx_coalesce_timer = getelementptr i8, ptr %netdev, i32 2592
  tail call void @hrtimer_init(ptr noundef %rx_coalesce_timer, i32 noundef 1, i32 noundef 1) #18
  %function = getelementptr i8, ptr %netdev, i32 2624
  %79 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @gmac_coalesce_delay_expired, ptr %function, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_open.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_open, %if.then20)) #18
          to label %cleanup [label %if.then20], !srcloc !288

if.then20:                                        ; preds = %netif_tx_start_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_open.__UNIQUE_ID_ddebug503, ptr noundef %netdev, ptr noundef nonnull @.str.49) #18
  br label %cleanup

err_stop_phy:                                     ; preds = %if.then12, %if.then8, %if.then4
  %err.0 = phi i32 [ %call2, %if.then4 ], [ -12, %if.then8 ], [ -12, %if.then12 ]
  %80 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %81) #18
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  %call26 = tail call ptr @free_irq(i32 noundef %83, ptr noundef %netdev) #18
  br label %cleanup

cleanup:                                          ; preds = %err_stop_phy, %if.then20, %netif_tx_start_all_queues.exit, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %err.0, %err_stop_phy ], [ 0, %if.then20 ], [ 0, %netif_tx_start_all_queues.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_stop(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_coalesce_timer = getelementptr i8, ptr %netdev, i32 2592
  %call1 = tail call i32 @hrtimer_cancel(ptr noundef %rx_coalesce_timer) #18
  tail call void @netif_tx_stop_all_queues(ptr noundef %netdev) #18
  %config_lock.i = getelementptr i8, ptr %netdev, i32 2684
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %gmac_base.i = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !347
  %3 = or i32 %2, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !348
  tail call void @arm_heavy_mb() #18
  %4 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %3) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call3.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #18
  %dma_base.i = getelementptr i8, ptr %netdev, i32 2320
  %16 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_base.i, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !349
  %19 = and i32 %18, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !350
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %19) #18, !srcloc !281
  %napi = getelementptr i8, ptr %netdev, i32 2368
  tail call void @napi_disable(ptr noundef %napi) #18
  tail call fastcc void @gmac_enable_irq(ptr noundef %netdev, i32 noundef 0)
  tail call fastcc void @gmac_cleanup_rxq(ptr noundef %netdev)
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %20 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tx_queues.i, align 4
  %geth1.i = getelementptr i8, ptr %netdev, i32 2308
  %22 = ptrtoint ptr %geth1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %geth1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp33.not.i = icmp eq i32 %21, 0
  br i1 %cmp33.not.i, label %entry.gmac_cleanup_txqs.exit_crit_edge, label %for.body.lr.ph.i

entry.gmac_cleanup_txqs.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_cleanup_txqs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %24 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dma_base.i, align 8
  %add.ptr.i16 = getelementptr i8, ptr %25, i32 12
  %txq.i = getelementptr i8, ptr %netdev, i32 2648
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rwptr_reg.035.i = phi ptr [ %add.ptr.i16, %for.body.lr.ph.i ], [ %add.ptr6.i, %for.body.i.for.body.i_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %rwptr_reg.035.i) #18, !srcloc !277
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !351
  %conv.i = zext i16 %27 to i32
  %add.ptr4.i = getelementptr i8, ptr %rwptr_reg.035.i, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !352
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i, i16 %26) #18, !srcloc !279
  %add.ptr6.i = getelementptr i8, ptr %rwptr_reg.035.i, i32 4
  %add.ptr7.i = getelementptr %struct.gmac_txq, ptr %txq.i, i32 %i.034.i
  tail call fastcc void @gmac_clean_txq(ptr noundef %netdev, ptr noundef %add.ptr7.i, i32 noundef %conv.i) #18
  %inc.i = add nuw i32 %i.034.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.body.i.gmac_cleanup_txqs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.body.i.gmac_cleanup_txqs.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_cleanup_txqs.exit

gmac_cleanup_txqs.exit:                           ; preds = %for.body.i.gmac_cleanup_txqs.exit_crit_edge, %entry.gmac_cleanup_txqs.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !353
  tail call void @arm_heavy_mb() #18
  %28 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_base.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %29, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 0) #18, !srcloc !281
  %txq13.i = getelementptr i8, ptr %netdev, i32 2648
  %skb.i = getelementptr i8, ptr %netdev, i32 2652
  %30 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skb.i, align 4
  tail call void @kfree(ptr noundef %31) #18
  %32 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %23, align 4
  %mul.i = shl i32 %21, 4
  %txq_order.i = getelementptr i8, ptr %netdev, i32 2664
  %34 = ptrtoint ptr %txq_order.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %txq_order.i, align 8
  %shl.i = shl i32 %mul.i, %35
  %36 = ptrtoint ptr %txq13.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %txq13.i, align 8
  %txq_dma_base.i = getelementptr i8, ptr %netdev, i32 2676
  %38 = ptrtoint ptr %txq_dma_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %txq_dma_base.i, align 4
  tail call void @dma_free_attrs(ptr noundef %33, i32 noundef %shl.i, ptr noundef %37, i32 noundef %39, i32 noundef 0) #18
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %40 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phydev, align 16
  tail call void @phy_stop(ptr noundef %41) #18
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %43, ptr noundef %netdev) #18
  tail call fastcc void @gmac_update_hw_stats(ptr noundef %netdev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_start_xmit(ptr noundef %skb, ptr noundef %netdev) #3 align 64 {
entry:
  %w = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %txq_order = getelementptr i8, ptr %netdev, i32 2664
  %0 = ptrtoint ptr %txq_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txq_order, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #18
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp ugt i32 %3, 65535
  br i1 %cmp, label %entry.out_drop_free_crit_edge, label %if.end

entry.out_drop_free_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_drop_free

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %notmask = shl nsw i32 -1, %1
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %4 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %queue_mapping.i, align 8
  %conv3 = zext i16 %5 to i32
  %dma_base = getelementptr i8, ptr %netdev, i32 2320
  %6 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_base, align 8
  %mul = shl nuw nsw i32 %conv3, 2
  %add = add nuw nsw i32 %mul, 12
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %arrayidx = getelementptr %struct.gemini_ethernet_port, ptr %add.ptr.i, i32 0, i32 17, i32 %conv3
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i, align 128
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %10 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nr_frags, align 2
  %conv7 = zext i8 %13 to i32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !354
  %bf.lshr = lshr i32 %15, 16
  %conv12 = trunc i32 %15 to i16
  %16 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv12, ptr %w, align 2
  %cptr = getelementptr %struct.gemini_ethernet_port, ptr %add.ptr.i, i32 0, i32 17, i32 %conv3, i32 2
  %17 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cptr, align 4
  %19 = xor i32 %15, -1
  %sub15 = add i32 %18, %19
  %conv = and i32 %notmask, 65535
  %conv17 = xor i32 %conv, 65535
  %and = and i32 %sub15, %conv17
  %add21 = add nuw nsw i32 %conv7, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %add21)
  %cmp22 = icmp ult i32 %and, %add21
  br i1 %cmp22, label %if.then24, label %if.end.if.end53_crit_edge

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then24:                                        ; preds = %if.end
  tail call fastcc void @gmac_clean_txq(ptr noundef %netdev, ptr noundef %arrayidx, i32 noundef %bf.lshr)
  %20 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cptr, align 4
  %sub29 = add i32 %21, %19
  %and33 = and i32 %sub29, %conv17
  call void @__sanitizer_cov_trace_cmp4(i32 %and33, i32 %add21)
  %cmp37 = icmp ult i32 %and33, %add21
  br i1 %cmp37, label %if.then39, label %if.then24.if.end53_crit_edge

if.then24.if.end53_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end53

if.then39:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %state.i = getelementptr %struct.netdev_queue, ptr %9, i32 %conv3, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #18
  %22 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cptr, align 4
  %add41 = add nuw nsw i32 %conv7, 16
  %conv43 = add i32 %add41, %23
  %and46 = and i32 %conv43, %conv17
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %word3 = getelementptr %struct.gmac_txdesc, ptr %25, i32 %and46, i32 3
  %26 = ptrtoint ptr %word3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %bf.load49 = load i32, ptr %word3, align 4
  %bf.set = or i32 %bf.load49, 4
  store i32 %bf.set, ptr %word3, align 4
  tail call fastcc void @gmac_tx_irq_enable(ptr noundef %netdev, i32 noundef %conv3, i32 noundef 1)
  %tx_stats_syncp = getelementptr i8, ptr %netdev, i32 2728
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_stats_syncp)
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 36, i32 18
  %27 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tx_fifo_errors, align 8
  %inc = add i32 %28, 1
  store i32 %inc, ptr %tx_fifo_errors, align 8
  %dep_map.i.i = getelementptr i8, ptr %netdev, i32 2732
  %29 = tail call ptr @llvm.returnaddress(i32 0) #18
  %30 = ptrtoint ptr %29 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %30) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %31 = ptrtoint ptr %tx_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_stats_syncp, align 4
  %inc.i.i.i = add i32 %32, 1
  store i32 %inc.i.i.i, ptr %tx_stats_syncp, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.then24.if.end53_crit_edge, %if.end.if.end53_crit_edge
  %call54 = call fastcc i32 @gmac_map_tx_bufs(ptr noundef %netdev, ptr noundef %skb, ptr noundef %arrayidx, ptr noundef nonnull %w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool.not = icmp eq i32 %call54, 0
  br i1 %tobool.not, label %if.end53.do.body_crit_edge, label %if.then55

if.end53.do.body_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

if.then55:                                        ; preds = %if.end53
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i, label %if.then55.if.end59_crit_edge, label %cond.true.i

if.then55.if.end59_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

cond.true.i:                                      ; preds = %if.then55
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %34) #18
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.out_drop_crit_edge, label %cond.true.i.if.end59_crit_edge

cond.true.i.if.end59_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end59

cond.true.i.out_drop_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_drop

if.end59:                                         ; preds = %cond.true.i.if.end59_crit_edge, %if.then55.if.end59_crit_edge
  %tx_stats_syncp60 = getelementptr i8, ptr %netdev, i32 2728
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_stats_syncp60)
  %tx_frags_linearized = getelementptr i8, ptr %netdev, i32 3392
  %35 = ptrtoint ptr %tx_frags_linearized to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_frags_linearized, align 8
  %inc61 = add i64 %36, 1
  store i64 %inc61, ptr %tx_frags_linearized, align 8
  %dep_map.i.i129 = getelementptr i8, ptr %netdev, i32 2732
  %37 = tail call ptr @llvm.returnaddress(i32 0) #18
  %38 = ptrtoint ptr %37 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i129, i32 noundef %38) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %39 = ptrtoint ptr %tx_stats_syncp60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tx_stats_syncp60, align 4
  %inc.i.i.i130 = add i32 %40, 1
  store i32 %inc.i.i.i130, ptr %tx_stats_syncp60, align 4
  %call63 = call fastcc i32 @gmac_map_tx_bufs(ptr noundef %netdev, ptr noundef %skb, ptr noundef %arrayidx, ptr noundef nonnull %w)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end59.do.body_crit_edge, label %if.end59.out_drop_free_crit_edge

if.end59.out_drop_free_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %out_drop_free

if.end59.do.body_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %if.end59.do.body_crit_edge, %if.end53.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !355
  tail call void @arm_heavy_mb() #18
  %41 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %w, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %add.ptr68 = getelementptr i8, ptr %add.ptr, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr68, i16 %43) #18, !srcloc !279
  tail call fastcc void @gmac_clean_txq(ptr noundef %netdev, ptr noundef %arrayidx, i32 noundef %bf.lshr)
  br label %cleanup

out_drop_free:                                    ; preds = %if.end59.out_drop_free_crit_edge, %entry.out_drop_free_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #18
  br label %out_drop

out_drop:                                         ; preds = %out_drop_free, %cond.true.i.out_drop_crit_edge
  %tx_stats_syncp70 = getelementptr i8, ptr %netdev, i32 2728
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_stats_syncp70)
  %tx_dropped = getelementptr i8, ptr %netdev, i32 2880
  %44 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tx_dropped, align 8
  %inc72 = add i64 %45, 1
  store i64 %inc72, ptr %tx_dropped, align 8
  %dep_map.i.i131 = getelementptr i8, ptr %netdev, i32 2732
  %46 = tail call ptr @llvm.returnaddress(i32 0) #18
  %47 = ptrtoint ptr %46 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i131, i32 noundef %47) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %48 = ptrtoint ptr %tx_stats_syncp70 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tx_stats_syncp70, align 4
  %inc.i.i.i132 = add i32 %49, 1
  store i32 %inc.i.i.i132, ptr %tx_stats_syncp70, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_drop, %do.body, %if.then39
  %retval.0 = phi i32 [ 0, %out_drop ], [ 16, %if.then39 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #18
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmac_set_rx_mode(ptr noundef readonly %netdev) #3 align 64 {
entry:
  %mc_filter = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mc_filter) #18
  %0 = getelementptr inbounds [2 x i32], ptr %mc_filter, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mc_filter, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 8
  %and = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %0, align 4
  %6 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %mc_filter, align 4
  br label %do.body

if.else:                                          ; preds = %entry
  %and8 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else13, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %0, align 4
  %8 = ptrtoint ptr %mc_filter to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %mc_filter, align 4
  br label %do.body

if.else13:                                        ; preds = %if.else
  %mc = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 66
  %9 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %9)
  %ha.051 = load ptr, ptr %mc, align 4
  %cmp.not52 = icmp eq ptr %ha.051, %mc
  br i1 %cmp.not52, label %if.else13.do.body_crit_edge, label %if.else13.for.body_crit_edge

if.else13.for.body_crit_edge:                     ; preds = %if.else13
  br label %for.body

if.else13.do.body_crit_edge:                      ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else13.for.body_crit_edge
  %ha.053 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.051, %if.else13.for.body_crit_edge ]
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.053, i32 0, i32 2
  %call17 = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr, i32 noundef 6) #24
  %neg = and i32 %call17, 63
  %and18 = xor i32 %neg, 63
  %and19 = and i32 %and18, 31
  %shl = shl nuw i32 1, %and19
  %shr = lshr i32 %and18, 5
  %arrayidx20 = getelementptr [2 x i32], ptr %mc_filter, i32 0, i32 %shr
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx20, align 4
  %or = or i32 %shl, %11
  store i32 %or, ptr %arrayidx20, align 4
  %12 = ptrtoint ptr %ha.053 to i32
  call void @__asan_load4_noabort(i32 %12)
  %ha.0 = load ptr, ptr %ha.053, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.body.do.body_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %if.else13.do.body_crit_edge, %if.then10, %if.then
  %filter.sroa.0.0 = phi i32 [ 248, %if.then ], [ 224, %if.then10 ], [ 224, %if.else13.do.body_crit_edge ], [ 224, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !356
  tail call void @arm_heavy_mb() #18
  %13 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mc_filter, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %16 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gmac_base, align 4
  %add.ptr28 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %15) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !357
  tail call void @arm_heavy_mb() #18
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gmac_base, align 4
  %add.ptr34 = getelementptr i8, ptr %22, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %20) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !358
  tail call void @arm_heavy_mb() #18
  %23 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gmac_base, align 4
  %add.ptr39 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %filter.sroa.0.0) #18, !srcloc !281
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mc_filter) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_set_mac_address(ptr noundef %netdev, ptr noundef %addr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %addr, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #18
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr.i, align 64
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %addr.sroa.0.0.copyload.i = load i32, ptr %1, align 1
  %addr.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %1, i32 4
  %3 = ptrtoint ptr %addr.sroa.6.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %addr.sroa.6.0.copyload.i = load i16, ptr %addr.sroa.6.0..sroa_idx.i, align 1
  %addr.sroa.6.0.insert.ext.i = zext i16 %addr.sroa.6.0.copyload.i to i32
  %addr.sroa.6.0.insert.shift.i = shl nuw i32 %addr.sroa.6.0.insert.ext.i, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !319
  tail call void @arm_heavy_mb() #18
  %gmac_base.i = getelementptr i8, ptr %netdev, i32 2324
  %4 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmac_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %addr.sroa.0.0.copyload.i) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !320
  tail call void @arm_heavy_mb() #18
  %6 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %addr.sroa.6.0.insert.shift.i) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !321
  tail call void @arm_heavy_mb() #18
  %8 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 0) #18, !srcloc !281
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_change_mtu(ptr noundef %netdev, i32 noundef %new_mtu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add1.i = add i32 %new_mtu, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1518, i32 %add1.i)
  %cmp3.not.i = icmp ugt i32 %add1.i, 1518
  br i1 %cmp3.not.i, label %for.inc.i, label %entry.gmac_pick_rx_max_len.exit_crit_edge

entry.gmac_pick_rx_max_len.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_pick_rx_max_len.exit

for.inc.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1522, i32 %add1.i)
  %cmp3.not.1.i = icmp ugt i32 %add1.i, 1522
  br i1 %cmp3.not.1.i, label %for.inc.1.i, label %for.inc.i.gmac_pick_rx_max_len.exit_crit_edge

for.inc.i.gmac_pick_rx_max_len.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_pick_rx_max_len.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %add1.i)
  %cmp3.not.2.i = icmp ugt i32 %add1.i, 1536
  br i1 %cmp3.not.2.i, label %for.inc.2.i, label %for.inc.1.i.gmac_pick_rx_max_len.exit_crit_edge

for.inc.1.i.gmac_pick_rx_max_len.exit_crit_edge:  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_pick_rx_max_len.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1542, i32 %add1.i)
  %cmp3.not.3.i = icmp ugt i32 %add1.i, 1542
  br i1 %cmp3.not.3.i, label %for.inc.3.i, label %for.inc.2.i.gmac_pick_rx_max_len.exit_crit_edge

for.inc.2.i.gmac_pick_rx_max_len.exit_crit_edge:  ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_pick_rx_max_len.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9212, i32 %add1.i)
  %cmp3.not.4.i = icmp ugt i32 %add1.i, 9212
  br i1 %cmp3.not.4.i, label %for.inc.4.i, label %for.inc.3.i.gmac_pick_rx_max_len.exit_crit_edge

for.inc.3.i.gmac_pick_rx_max_len.exit_crit_edge:  ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_pick_rx_max_len.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10236, i32 %add1.i)
  %cmp3.not.5.i = icmp ugt i32 %add1.i, 10236
  br i1 %cmp3.not.5.i, label %for.inc.4.i.cleanup_crit_edge, label %for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge

for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge:  ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_pick_rx_max_len.exit

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

gmac_pick_rx_max_len.exit:                        ; preds = %for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge, %for.inc.3.i.gmac_pick_rx_max_len.exit_crit_edge, %for.inc.2.i.gmac_pick_rx_max_len.exit_crit_edge, %for.inc.1.i.gmac_pick_rx_max_len.exit_crit_edge, %for.inc.i.gmac_pick_rx_max_len.exit_crit_edge, %entry.gmac_pick_rx_max_len.exit_crit_edge
  %i.010.lcssa.i = phi i32 [ 0, %entry.gmac_pick_rx_max_len.exit_crit_edge ], [ 1, %for.inc.i.gmac_pick_rx_max_len.exit_crit_edge ], [ 2, %for.inc.1.i.gmac_pick_rx_max_len.exit_crit_edge ], [ 3, %for.inc.2.i.gmac_pick_rx_max_len.exit_crit_edge ], [ 4, %for.inc.3.i.gmac_pick_rx_max_len.exit_crit_edge ], [ 5, %for.inc.4.i.gmac_pick_rx_max_len.exit_crit_edge ]
  %val.i = getelementptr [6 x %struct.gmac_max_framelen], ptr @gmac_maxlens, i32 0, i32 %i.010.lcssa.i, i32 1
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %val.i, align 4
  %conv.i = zext i8 %1 to i32
  %config_lock.i = getelementptr i8, ptr %netdev, i32 2684
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %gmac_base.i = getelementptr i8, ptr %netdev, i32 2324
  %2 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !347
  %5 = or i32 %4, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !348
  tail call void @arm_heavy_mb() #18
  %6 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %5) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call3.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #18
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %18 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %new_mtu, ptr %mtu, align 4
  %shl = shl nuw nsw i32 %conv.i, 8
  %call3.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %19 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %20, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !359
  %22 = and i32 %21, -458753
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #18
  %or.i = or i32 %23, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !360
  tail call void @arm_heavy_mb() #18
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #18
  %25 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr13.i11 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i11, i32 %24) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call3.i8) #18
  tail call void @netdev_update_features(ptr noundef %netdev) #18
  %call3.i13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %27 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %28, i32 24
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !345
  %30 = and i32 %29, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !346
  tail call void @arm_heavy_mb() #18
  %31 = ptrtoint ptr %gmac_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gmac_base.i, align 4
  %add.ptr13.i16 = getelementptr i8, ptr %32, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i16, i32 %30) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call3.i13) #18
  br label %cleanup

cleanup:                                          ; preds = %gmac_pick_rx_max_len.exit, %for.inc.4.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gmac_pick_rx_max_len.exit ], [ -22, %for.inc.4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmac_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.91) #21
  tail call fastcc void @gmac_dump_dma_state(ptr noundef %netdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmac_get_stats64(ptr noundef %netdev, ptr nocapture noundef %stats) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @gmac_update_hw_stats(ptr noundef %netdev)
  %rx_stats_syncp = getelementptr i8, ptr %netdev, i32 2760
  %stats2 = getelementptr i8, ptr %netdev, i32 2824
  %rx_bytes = getelementptr i8, ptr %netdev, i32 2840
  %rx_bytes5 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %rx_errors = getelementptr i8, ptr %netdev, i32 2856
  %rx_errors7 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 4
  %rx_dropped = getelementptr i8, ptr %netdev, i32 2872
  %rx_dropped9 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %rx_length_errors = getelementptr i8, ptr %netdev, i32 2904
  %rx_length_errors11 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 10
  %rx_over_errors = getelementptr i8, ptr %netdev, i32 2912
  %rx_over_errors13 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 11
  %rx_crc_errors = getelementptr i8, ptr %netdev, i32 2920
  %rx_crc_errors15 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 12
  %rx_frame_errors = getelementptr i8, ptr %netdev, i32 2928
  %rx_frame_errors17 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call1 = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %rx_stats_syncp)
  %0 = ptrtoint ptr %stats2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %stats2, align 8
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %stats, align 8
  %3 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %rx_bytes, align 8
  %5 = ptrtoint ptr %rx_bytes5 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %rx_bytes5, align 8
  %6 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %rx_errors, align 8
  %8 = ptrtoint ptr %rx_errors7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %rx_errors7, align 8
  %9 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %rx_dropped, align 8
  %11 = ptrtoint ptr %rx_dropped9 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %rx_dropped9, align 8
  %12 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %rx_length_errors, align 8
  %14 = ptrtoint ptr %rx_length_errors11 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %rx_length_errors11, align 8
  %15 = ptrtoint ptr %rx_over_errors to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %rx_over_errors, align 8
  %17 = ptrtoint ptr %rx_over_errors13 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %rx_over_errors13, align 8
  %18 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rx_crc_errors, align 8
  %20 = ptrtoint ptr %rx_crc_errors15 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %rx_crc_errors15, align 8
  %21 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %rx_frame_errors, align 8
  %23 = ptrtoint ptr %rx_frame_errors17 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %rx_frame_errors17, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  %24 = ptrtoint ptr %rx_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rx_stats_syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %25, %call1
  br i1 %cmp.i.i.i.i.not, label %do.body20.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body20.preheader:                              ; preds = %do.body
  %ir_stats_syncp = getelementptr i8, ptr %netdev, i32 2792
  %tx_errors = getelementptr i8, ptr %netdev, i32 2864
  %tx_errors23 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 5
  %tx_packets = getelementptr i8, ptr %netdev, i32 2832
  %tx_packets25 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %tx_bytes = getelementptr i8, ptr %netdev, i32 2848
  %tx_bytes27 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %multicast = getelementptr i8, ptr %netdev, i32 2888
  %multicast29 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 8
  %rx_missed_errors = getelementptr i8, ptr %netdev, i32 2944
  %rx_missed_errors31 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 15
  %rx_fifo_errors = getelementptr i8, ptr %netdev, i32 2936
  %rx_fifo_errors33 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 14
  br label %do.body20

do.body20:                                        ; preds = %do.body20.do.body20_crit_edge, %do.body20.preheader
  %call21 = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %ir_stats_syncp)
  %26 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tx_errors, align 8
  %28 = ptrtoint ptr %tx_errors23 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %tx_errors23, align 8
  %29 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %tx_packets, align 8
  %31 = ptrtoint ptr %tx_packets25 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %tx_packets25, align 8
  %32 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tx_bytes, align 8
  %34 = ptrtoint ptr %tx_bytes27 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %tx_bytes27, align 8
  %35 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %multicast, align 8
  %37 = ptrtoint ptr %multicast29 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %multicast29, align 8
  %38 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_missed_errors, align 8
  %40 = ptrtoint ptr %rx_missed_errors31 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %rx_missed_errors31, align 8
  %41 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %rx_fifo_errors, align 8
  %43 = ptrtoint ptr %rx_fifo_errors33 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %rx_fifo_errors33, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  %44 = ptrtoint ptr %ir_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %ir_stats_syncp, align 4
  %cmp.i.i.i.i87.not = icmp eq i32 %45, %call21
  br i1 %cmp.i.i.i.i87.not, label %do.body38.preheader, label %do.body20.do.body20_crit_edge

do.body20.do.body20_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body20

do.body38.preheader:                              ; preds = %do.body20
  %tx_stats_syncp = getelementptr i8, ptr %netdev, i32 2728
  %tx_dropped = getelementptr i8, ptr %netdev, i32 2880
  %tx_dropped41 = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  br label %do.body38

do.body38:                                        ; preds = %do.body38.do.body38_crit_edge, %do.body38.preheader
  %call39 = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %tx_stats_syncp)
  %46 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tx_dropped, align 8
  %48 = ptrtoint ptr %tx_dropped41 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %tx_dropped41, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  %49 = ptrtoint ptr %tx_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %tx_stats_syncp, align 4
  %cmp.i.i.i.i88.not = icmp eq i32 %50, %call39
  br i1 %cmp.i.i.i.i88.not, label %do.end45, label %do.body38.do.body38_crit_edge

do.body38.do.body38_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body38

do.end45:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %rx_missed_errors31 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %rx_missed_errors31, align 8
  %53 = ptrtoint ptr %rx_dropped9 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_dropped9, align 8
  %add = add i64 %54, %52
  store i64 %add, ptr %rx_dropped9, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @gmac_fix_features(ptr nocapture noundef readonly %netdev, i64 noundef %features) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %2 = add i32 %1, -8174
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8192, i32 %2)
  %cmp = icmp ult i32 %2, -8192
  %and = and i64 %features, -1099513004052
  %spec.select = select i1 %cmp, i64 %and, i64 %features
  ret i64 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_set_features(ptr noundef %netdev, i64 noundef %features) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %config_lock = getelementptr i8, ptr %netdev, i32 2684
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock) #18
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !362
  %3 = and i32 %2, -1537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !363
  tail call void @arm_heavy_mb() #18
  %4 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gmac_base, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %3) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock, i32 noundef %call4) #18
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_irq(i32 noundef %irq, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr i8, ptr %data, i32 2308
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  %base.i = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %3, i32 32
  %add.ptr4.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !364
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !365
  %6 = and i32 %5, %4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #18
  %dev_id = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 60
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dev_id, align 2
  %conv = zext i16 %9 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %shl = shl i32 855638016, %mul
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %data, ptr noundef nonnull @.str.50) #21
  tail call fastcc void @gmac_dump_dma_state(ptr noundef %data)
  tail call fastcc void @gmac_enable_irq(ptr noundef %data, i32 noundef 0)
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul5 = mul nuw nsw i32 %conv, 6
  %shl6 = shl i32 4097, %mul5
  %and7 = and i32 %shl6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end10

if.then9:                                         ; preds = %if.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %data, i32 0, i32 103
  %10 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %_tx.i.i, align 128
  %12 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %geth1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_tx_irq_enable.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_irq, %if.then.i.i)) #18
          to label %gmac_tx_irq.exit [label %if.then.i.i], !srcloc !288

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #20
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %dev_id, align 2
  %conv.i.i = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_tx_irq_enable.__UNIQUE_ID_ddebug500, ptr noundef %data, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %conv.i.i) #18
  br label %gmac_tx_irq.exit

gmac_tx_irq.exit:                                 ; preds = %if.then.i.i, %if.then9
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dev_id, align 2
  %conv9.i.i = zext i16 %17 to i32
  %mul.i.i = mul nuw nsw i32 %conv9.i.i, 6
  %shl.i.i = shl i32 4097, %mul.i.i
  %base16.i.i = getelementptr inbounds %struct.gemini_ethernet, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %base16.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base16.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.i) #18, !srcloc !273
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %21, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !367
  tail call void @arm_heavy_mb() #18
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #18
  %23 = ptrtoint ptr %base16.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base16.i.i, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %24, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 %22) #18, !srcloc !281
  tail call void @netif_tx_wake_queue(ptr noundef %11) #18
  br label %if.end10

if.end10:                                         ; preds = %gmac_tx_irq.exit, %if.end.if.end10_crit_edge
  %25 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %geth1, align 4
  %base.i90 = getelementptr inbounds %struct.gemini_ethernet, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %base.i90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i90, align 4
  %add.ptr2.i = getelementptr i8, ptr %28, i32 48
  %add.ptr5.i = getelementptr i8, ptr %28, i32 52
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !364
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !365
  %31 = and i32 %30, %29
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #18
  %or12 = or i32 %32, %7
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %dev_id, align 2
  %conv14 = zext i16 %34 to i32
  %shl15 = shl nuw i32 1, %conv14
  %and16 = and i32 %shl15, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end10.if.end24_crit_edge, label %if.then18

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then18:                                        ; preds = %if.end10
  tail call fastcc void @gmac_enable_rx_irq(ptr noundef %data, i32 noundef 0)
  %rx_coalesce_nsecs = getelementptr i8, ptr %data, i32 2640
  %35 = ptrtoint ptr %rx_coalesce_nsecs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_coalesce_nsecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool19.not = icmp eq i32 %36, 0
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  %napi = getelementptr i8, ptr %data, i32 2368
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call.i, label %if.then.i, label %if.then20.if.end24_crit_edge

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end24

if.then.i:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__napi_schedule(ptr noundef %napi) #18
  br label %if.end24

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i = zext i32 %36 to i64
  %rx_coalesce_timer = getelementptr i8, ptr %data, i32 2592
  tail call void @hrtimer_start_range_ns(ptr noundef %rx_coalesce_timer, i64 noundef %conv.i, i64 noundef 0, i32 noundef 1) #18
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then.i, %if.then20.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %37 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %geth1, align 4
  %base.i94 = getelementptr inbounds %struct.gemini_ethernet, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %base.i94 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i94, align 4
  %add.ptr2.i96 = getelementptr i8, ptr %40, i32 96
  %add.ptr5.i98 = getelementptr i8, ptr %40, i32 100
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i96) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !364
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i98) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !365
  %43 = and i32 %42, %41
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #18
  %or26 = or i32 %or12, %44
  %45 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %dev_id, align 2
  %conv28 = zext i16 %46 to i32
  %mul29 = shl nuw nsw i32 %conv28, 3
  %shl30 = shl i32 4194304, %mul29
  %and31 = and i32 %shl30, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end24.if.end34_crit_edge, label %if.then33

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end34

if.then33:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @gmac_update_hw_stats(ptr noundef %data)
  br label %if.end34

if.end34:                                         ; preds = %if.then33, %if.end24.if.end34_crit_edge
  %47 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dev_id, align 2
  %conv36 = zext i16 %48 to i32
  %mul37 = shl nuw nsw i32 %conv36, 3
  %shl38 = shl i32 131072, %mul37
  %and39 = and i32 %shl38, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end34.if.end48_crit_edge, label %do.body

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end48

do.body:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !368
  tail call void @arm_heavy_mb() #18
  %49 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %dev_id, align 2
  %conv43 = zext i16 %50 to i32
  %mul44 = shl nuw nsw i32 %conv43, 3
  %shl45 = shl i32 33554432, %mul44
  %51 = lshr exact i32 %shl45, 24
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %53, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %51) #18, !srcloc !281
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #18
  %ir_stats_syncp = getelementptr i8, ptr %data, i32 2792
  tail call fastcc void @u64_stats_update_begin(ptr noundef %ir_stats_syncp)
  %rx_fifo_errors = getelementptr i8, ptr %data, i32 2936
  %54 = ptrtoint ptr %rx_fifo_errors to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_fifo_errors, align 8
  %inc = add i64 %55, 1
  store i64 %inc, ptr %rx_fifo_errors, align 8
  %dep_map.i.i = getelementptr i8, ptr %data, i32 2796
  %56 = tail call ptr @llvm.returnaddress(i32 0) #18
  %57 = ptrtoint ptr %56 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %57) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %58 = ptrtoint ptr %ir_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ir_stats_syncp, align 4
  %inc.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i, ptr %ir_stats_syncp, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #18
  br label %if.end48

if.end48:                                         ; preds = %do.body, %if.end34.if.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or26)
  %tobool49.not = icmp ne i32 %or26, 0
  %cond = zext i1 %tobool49.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %cond, %if.end48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geth_resize_freeq(ptr nocapture noundef readonly %port) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr inbounds %struct.gemini_ethernet_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  %netdev2 = getelementptr inbounds %struct.gemini_ethernet_port, ptr %port, i32 0, i32 2
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 8
  %dev_id = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 60
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp = icmp eq i16 %5, 0
  %port1 = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 3
  %port0 = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 2
  %.pn.in = select i1 %cmp, ptr %port1, ptr %port0
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %other_netdev.0.in = getelementptr inbounds %struct.gemini_ethernet_port, ptr %.pn, i32 0, i32 2
  %7 = ptrtoint ptr %other_netdev.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %other_netdev.0 = load ptr, ptr %other_netdev.0.in, align 8
  %tobool.not = icmp eq ptr %other_netdev.0, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %land.lhs.true

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %other_netdev.0, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %entry.if.end8_crit_edge
  %rxq_order = getelementptr inbounds %struct.gemini_ethernet_port, ptr %port, i32 0, i32 12
  %10 = ptrtoint ptr %rxq_order to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rxq_order, align 8
  %add = add i32 %11, 1
  %shl = shl nuw i32 1, %add
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_resize_freeq.__UNIQUE_ID_ddebug495, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geth_resize_freeq, %if.then14)) #18
          to label %do.end20 [label %if.then14], !srcloc !288

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dev_id, align 2
  %conv16 = zext i16 %13 to i32
  %14 = ptrtoint ptr %rxq_order to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rxq_order, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @geth_resize_freeq.__UNIQUE_ID_ddebug495, ptr noundef %3, ptr noundef nonnull @.str.66, i32 noundef %conv16, i32 noundef %shl, i32 noundef %15) #18
  br label %do.end20

do.end20:                                         ; preds = %if.then14, %if.end8
  br i1 %tobool.not, label %do.end20.cond.end64_crit_edge, label %if.then22

do.end20.cond.end64_crit_edge:                    ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #20
  br label %cond.end64

if.then22:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #20
  %rxq_order24 = getelementptr i8, ptr %other_netdev.0, i32 2360
  %16 = ptrtoint ptr %rxq_order24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rxq_order24, align 8
  %add25 = add i32 %17, 1
  %shl26 = shl nuw i32 1, %add25
  %add27 = add i32 %shl26, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_resize_freeq.__UNIQUE_ID_ddebug496, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geth_resize_freeq, %if.then41)) #18
          to label %cond.end64 [label %if.then41], !srcloc !288

if.then41:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #20
  %dev_id42 = getelementptr inbounds %struct.net_device, ptr %other_netdev.0, i32 0, i32 60
  %18 = ptrtoint ptr %dev_id42 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %dev_id42, align 2
  %conv43 = zext i16 %19 to i32
  %20 = ptrtoint ptr %rxq_order24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rxq_order24, align 8
  %add45 = add i32 %21, 1
  %shl46 = shl nuw i32 1, %add45
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @geth_resize_freeq.__UNIQUE_ID_ddebug496, ptr noundef nonnull %other_netdev.0, ptr noundef nonnull @.str.66, i32 noundef %conv43, i32 noundef %shl46, i32 noundef %21) #18
  br label %cond.end64

cond.end64:                                       ; preds = %if.then41, %if.then22, %do.end20.cond.end64_crit_edge
  %new_size.0 = phi i32 [ %add27, %if.then41 ], [ %shl, %do.end20.cond.end64_crit_edge ], [ %add27, %if.then22 ]
  %sub = add i32 %new_size.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i.i = icmp eq i32 %sub, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #18, !range !369
  %sub.i.op.i = xor i32 %22, 31
  %23 = call i32 @llvm.smin.i32(i32 %sub.i.op.i, i32 14)
  %.op = add nuw nsw i32 %23, 1
  %24 = select i1 %tobool.not.i.i, i32 0, i32 %.op
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_resize_freeq.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geth_resize_freeq, %if.then86)) #18
          to label %do.end89 [label %if.then86], !srcloc !288

if.then86:                                        ; preds = %cond.end64
  call void @__sanitizer_cov_trace_pc() #20
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_resize_freeq.__UNIQUE_ID_ddebug499, ptr noundef %26, ptr noundef nonnull @.str.67, i32 noundef %new_size.0, i32 noundef %24) #18
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %cond.end64
  %freeq_order = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %freeq_order, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp90 = icmp eq i32 %28, %24
  br i1 %cmp90, label %do.end89.cleanup_crit_edge, label %do.body95

do.end89.cleanup_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

do.body95:                                        ; preds = %do.end89
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 5
  %call100 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #18
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 100
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !370
  %32 = and i32 %31, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !371
  tail call void @arm_heavy_mb() #18
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr112 = getelementptr i8, ptr %34, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr112, i32 %32) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call100) #18
  %freeq_ring = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %freeq_ring, align 4
  %tobool114.not = icmp eq ptr %36, null
  br i1 %tobool114.not, label %do.body95.if.end116_crit_edge, label %if.then115

do.body95.if.end116_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end116

if.then115:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #20
  tail call fastcc void @geth_cleanup_freeq(ptr noundef %1)
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %do.body95.if.end116_crit_edge
  %37 = ptrtoint ptr %freeq_order to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %24, ptr %freeq_order, align 4
  %call118 = tail call fastcc i32 @geth_setup_freeq(ptr noundef %1)
  %call128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #18
  %38 = or i32 %31, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !372
  tail call void @arm_heavy_mb() #18
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr137 = getelementptr i8, ptr %40, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %38) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call128) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end116, %do.end89.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call118, %if.end116 ], [ -16, %land.lhs.true.cleanup_crit_edge ], [ 0, %do.end89.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_cleanup_rxq(ptr nocapture noundef readonly %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  %rxq_ring = getelementptr i8, ptr %netdev, i32 2356
  %2 = ptrtoint ptr %rxq_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxq_ring, align 4
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %dev_id = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dev_id, align 2
  %conv = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %add = add nuw nsw i32 %mul, 8192
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %word1 = getelementptr inbounds %struct.nontoe_qhdr, ptr %add.ptr, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %word1) #18, !srcloc !273
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !373
  %bf.lshr = lshr i32 %9, 16
  %bf.clear = and i32 %9, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !374
  tail call void @arm_heavy_mb() #18
  %conv5 = trunc i32 %bf.lshr to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv5)
  %add.ptr6 = getelementptr i8, ptr %word1, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 %10) #18, !srcloc !279
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !375
  tail call void @arm_heavy_mb() #18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #18, !srcloc !281
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.lshr, i32 %bf.clear)
  %cmp.not44 = icmp eq i32 %bf.lshr, %bf.clear
  br i1 %cmp.not44, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %rxq_order = getelementptr i8, ptr %netdev, i32 2360
  %freeq_pages.i = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 10
  %num_freeq_pages.i = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %r.045 = phi i32 [ %bf.lshr, %while.body.lr.ph ], [ %and, %while.cond.backedge.while.body_crit_edge ]
  %word2 = getelementptr %struct.gmac_rxdesc, ptr %3, i32 %r.045, i32 2
  %11 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %word2, align 4
  %inc = add i32 %r.045, 1
  %13 = ptrtoint ptr %rxq_order to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rxq_order, align 8
  %notmask = shl nsw i32 -1, %14
  %sub = xor i32 %notmask, -1
  %and = and i32 %inc, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %while.body.while.cond.backedge_crit_edge, label %if.end

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.end:                                           ; preds = %while.body
  %add11 = add i32 %12, 4096
  %and.i = and i32 %add11, -4096
  %15 = ptrtoint ptr %freeq_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %freeq_pages.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %17 = ptrtoint ptr %num_freeq_pages.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_freeq_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp2.not.i = icmp eq i32 %18, 0
  br i1 %cmp2.not.i, label %for.cond.preheader.i.do.end17_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.end17_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.88) #21
  br label %do.end17

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mapping2.i = getelementptr %struct.gmac_queue_page, ptr %16, i32 %i.03.i, i32 1
  %21 = ptrtoint ptr %mapping2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mapping2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %and.i)
  %cmp3.i = icmp eq i32 %22, %and.i
  br i1 %cmp3.i, label %gmac_get_queue_page.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %18
  br i1 %exitcond.not.i, label %for.inc.i.do.end17_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.end17_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17

gmac_get_queue_page.exit:                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.gmac_queue_page, ptr %16, i32 %i.03.i
  store ptr %arrayidx.i, ptr @gmac_cleanup_rxq.gpage, align 4
  %tobool13.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool13.not, label %gmac_get_queue_page.exit.do.end17_crit_edge, label %if.end18

gmac_get_queue_page.exit.do.end17_crit_edge:      ; preds = %gmac_get_queue_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end17

do.end17:                                         ; preds = %gmac_get_queue_page.exit.do.end17_crit_edge, %for.inc.i.do.end17_crit_edge, %do.end.i, %for.cond.preheader.i.do.end17_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.86) #21
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.while.cond.backedge_crit_edge, %do.end17, %while.body.while.cond.backedge_crit_edge
  %cmp.not = icmp eq i32 %and, %bf.clear
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

if.end18:                                         ; preds = %gmac_get_queue_page.exit
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %27 = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %27, align 4
  %and.i.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !282

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %29, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %30 = ptrtoint ptr %26 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %30, %if.end.i.i ]
  %31 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %31, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %32 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %34 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %34, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !284
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !286
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %35, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gmac_cleanup_rxq, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !288

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %31, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.while.cond.backedge_crit_edge

folio_put_testzero.exit.i.i.while.cond.backedge_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.backedge

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %31) #18
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %rxq_order20 = getelementptr i8, ptr %netdev, i32 2360
  %38 = ptrtoint ptr %rxq_order20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rxq_order20, align 8
  %shl21 = shl i32 16, %39
  %40 = ptrtoint ptr %rxq_ring to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rxq_ring, align 4
  %rxq_dma_base = getelementptr i8, ptr %netdev, i32 2672
  %42 = ptrtoint ptr %rxq_dma_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rxq_dma_base, align 8
  tail call void @dma_free_attrs(ptr noundef %37, i32 noundef %shl21, ptr noundef %41, i32 noundef %43, i32 noundef 0) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_enable_irq(ptr noundef %netdev, i32 noundef %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_enable_irq.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_enable_irq, %if.then)) #18
          to label %do.body10 [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev_id = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_id, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool6.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool6.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_enable_irq.__UNIQUE_ID_ddebug501, ptr noundef %netdev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.90, i32 noundef %conv, ptr noundef nonnull %cond) #18
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 5
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #18
  %dev_id19 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %4 = ptrtoint ptr %dev_id19 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_id19, align 2
  %conv20 = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv20, 1
  %shl = shl i32 855638016, %mul
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !376
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool24.not = icmp eq i32 %enable, 0
  %or = or i32 %9, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %cond25 = select i1 %tobool24.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !377
  tail call void @arm_heavy_mb() #18
  %10 = tail call i32 @llvm.bswap.i32(i32 %cond25)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %10) #18, !srcloc !281
  %13 = ptrtoint ptr %dev_id19 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dev_id19, align 2
  %conv32 = zext i16 %14 to i32
  %shl33 = shl nuw i32 1, %conv32
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %16, i32 52
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #18, !srcloc !273
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !378
  %or43 = or i32 %18, %shl33
  %neg45 = xor i32 %shl33, -1
  %and46 = and i32 %18, %neg45
  %cond48 = select i1 %tobool24.not, i32 %and46, i32 %or43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !379
  tail call void @arm_heavy_mb() #18
  %19 = tail call i32 @llvm.bswap.i32(i32 %cond48)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %21, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 %19) #18, !srcloc !281
  %22 = ptrtoint ptr %dev_id19 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dev_id19, align 2
  %conv55 = zext i16 %23 to i32
  %mul56 = shl nuw nsw i32 %conv55, 3
  %shl57 = shl i32 4325376, %mul56
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr61 = getelementptr i8, ptr %25, i32 100
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61) #18, !srcloc !273
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !380
  %or67 = or i32 %27, %shl57
  %neg69 = xor i32 %shl57, -1
  %and70 = and i32 %27, %neg69
  %cond72 = select i1 %tobool24.not, i32 %and70, i32 %or67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !381
  tail call void @arm_heavy_mb() #18
  %28 = tail call i32 @llvm.bswap.i32(i32 %cond72)
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr77 = getelementptr i8, ptr %30, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 %28) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call14) #18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_coalesce_delay_expired(ptr noundef %timer) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %timer, i32 -224
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #18
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__napi_schedule(ptr noundef %napi) #18
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_dump_dma_state(ptr noundef %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !382
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #18, !srcloc !273
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !383
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %11, i32 64
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #18, !srcloc !273
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !384
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 80
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #18, !srcloc !273
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !385
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 96
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #18, !srcloc !273
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !386
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.51, i32 noundef %5, i32 noundef %9, i32 noundef %13, i32 noundef %17, i32 noundef %21) #21
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %23, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #18, !srcloc !273
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !387
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %27, i32 52
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #18, !srcloc !273
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !388
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %31, i32 68
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #18, !srcloc !273
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !389
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr68 = getelementptr i8, ptr %35, i32 84
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68) #18, !srcloc !273
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !390
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr76 = getelementptr i8, ptr %39, i32 100
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #18, !srcloc !273
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !391
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.52, i32 noundef %25, i32 noundef %29, i32 noundef %33, i32 noundef %37, i32 noundef %41) #21
  %dma_base = getelementptr i8, ptr %netdev, i32 2320
  %42 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_base, align 8
  %add.ptr88 = getelementptr i8, ptr %43, i32 88
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #18, !srcloc !273
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !392
  %46 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_base, align 8
  %add.ptr96 = getelementptr i8, ptr %47, i32 92
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr96) #18, !srcloc !273
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !393
  %rxq_rwptr = getelementptr i8, ptr %netdev, i32 2352
  %50 = ptrtoint ptr %rxq_rwptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rxq_rwptr, align 8
  %52 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #18, !srcloc !277
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !394
  %conv = zext i16 %53 to i32
  %54 = ptrtoint ptr %rxq_rwptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rxq_rwptr, align 8
  %add.ptr110 = getelementptr i8, ptr %55, i32 2
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr110) #18, !srcloc !277
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !395
  %conv114 = zext i16 %57 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.53, i32 noundef %45, i32 noundef %49, i32 noundef %conv, i32 noundef %conv114) #21
  %58 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dma_base, align 8
  %add.ptr123 = getelementptr i8, ptr %59, i32 96
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123) #18, !srcloc !273
  %61 = tail call i32 @llvm.bswap.i32(i32 %60)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !396
  %62 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_base, align 8
  %add.ptr131 = getelementptr i8, ptr %63, i32 100
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #18, !srcloc !273
  %65 = tail call i32 @llvm.bswap.i32(i32 %64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !397
  %66 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dma_base, align 8
  %add.ptr139 = getelementptr i8, ptr %67, i32 104
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #18, !srcloc !273
  %69 = tail call i32 @llvm.bswap.i32(i32 %68)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !398
  %70 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_base, align 8
  %add.ptr147 = getelementptr i8, ptr %71, i32 108
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr147) #18, !srcloc !273
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !399
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.54, i32 noundef %61, i32 noundef %65, i32 noundef %69, i32 noundef %73) #21
  %74 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_base, align 8
  %add.ptr157 = getelementptr i8, ptr %75, i32 12
  %add.ptr161 = getelementptr i8, ptr %75, i32 56
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #18, !srcloc !273
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !400
  %78 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dma_base, align 8
  %add.ptr169 = getelementptr i8, ptr %79, i32 60
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr169) #18, !srcloc !273
  %81 = tail call i32 @llvm.bswap.i32(i32 %80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !401
  %82 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr157) #18, !srcloc !277
  %83 = tail call i16 @llvm.bswap.i16(i16 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !402
  %conv179 = zext i16 %83 to i32
  %add.ptr183 = getelementptr i8, ptr %75, i32 14
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr183) #18, !srcloc !277
  %85 = tail call i16 @llvm.bswap.i16(i16 %84)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !403
  %conv187 = zext i16 %85 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.55, i32 noundef %77, i32 noundef %81, i32 noundef %conv179, i32 noundef %conv187) #21
  %86 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dma_base, align 8
  %add.ptr196 = getelementptr i8, ptr %87, i32 64
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #18, !srcloc !273
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !404
  %90 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dma_base, align 8
  %add.ptr204 = getelementptr i8, ptr %91, i32 68
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr204) #18, !srcloc !273
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !405
  %94 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dma_base, align 8
  %add.ptr212 = getelementptr i8, ptr %95, i32 72
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr212) #18, !srcloc !273
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !406
  %98 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dma_base, align 8
  %add.ptr220 = getelementptr i8, ptr %99, i32 76
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr220) #18, !srcloc !273
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !407
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.56, i32 noundef %89, i32 noundef %93, i32 noundef %97, i32 noundef %101) #21
  %102 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base, align 4
  %add.ptr230 = getelementptr i8, ptr %103, i32 20
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr230) #18, !srcloc !277
  %105 = tail call i16 @llvm.bswap.i16(i16 %104)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !408
  %conv236 = zext i16 %105 to i32
  %add.ptr240 = getelementptr i8, ptr %103, i32 22
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr240) #18, !srcloc !277
  %107 = tail call i16 @llvm.bswap.i16(i16 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !409
  %conv244 = zext i16 %107 to i32
  %108 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %base, align 4
  %add.ptr247 = getelementptr i8, ptr %109, i32 24
  %110 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr247) #18, !srcloc !277
  %111 = tail call i16 @llvm.bswap.i16(i16 %110)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !410
  %conv253 = zext i16 %111 to i32
  %add.ptr257 = getelementptr i8, ptr %109, i32 26
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr257) #18, !srcloc !277
  %113 = tail call i16 @llvm.bswap.i16(i16 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !411
  %conv261 = zext i16 %113 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.57, i32 noundef %conv236, i32 noundef %conv244, i32 noundef %conv253, i32 noundef %conv261) #21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_enable_rx_irq(ptr noundef %netdev, i32 noundef %enable) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_enable_rx_irq.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_enable_rx_irq, %if.then)) #18
          to label %do.body10 [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev_id = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_id, align 2
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool6.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool6.not, ptr @.str.63, ptr @.str.62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_enable_rx_irq.__UNIQUE_ID_ddebug502, ptr noundef %netdev, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.60, i32 noundef %conv, ptr noundef nonnull %cond) #18
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 5
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #18
  %dev_id19 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %4 = ptrtoint ptr %dev_id19 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_id19, align 2
  %conv20 = zext i16 %5 to i32
  %shl = shl nuw i32 1, %conv20
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 52
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !412
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool24.not = icmp eq i32 %enable, 0
  %or = or i32 %9, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %9, %neg
  %cond25 = select i1 %tobool24.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !413
  tail call void @arm_heavy_mb() #18
  %10 = tail call i32 @llvm.bswap.i32(i32 %cond25)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr30 = getelementptr i8, ptr %12, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %10) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call14) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_update_hw_stats(ptr noundef %netdev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  %irq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #18
  %ir_stats_syncp = getelementptr i8, ptr %netdev, i32 2792
  tail call fastcc void @u64_stats_update_begin(ptr noundef %ir_stats_syncp)
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %2 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !414
  %conv10 = zext i32 %5 to i64
  %hw_stats = getelementptr i8, ptr %netdev, i32 3016
  %6 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hw_stats, align 8
  %add = add i64 %7, %conv10
  store i64 %add, ptr %hw_stats, align 8
  %8 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gmac_base, align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #18, !srcloc !273
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !415
  %conv18 = zext i32 %11 to i64
  %arrayidx20 = getelementptr i8, ptr %netdev, i32 3024
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx20, align 8
  %add21 = add i64 %13, %conv18
  store i64 %add21, ptr %arrayidx20, align 8
  %14 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gmac_base, align 4
  %add.ptr25 = getelementptr i8, ptr %15, i32 56
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #18, !srcloc !273
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !416
  %conv29 = zext i32 %17 to i64
  %arrayidx31 = getelementptr i8, ptr %netdev, i32 3032
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx31, align 8
  %add32 = add i64 %19, %conv29
  store i64 %add32, ptr %arrayidx31, align 8
  %20 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gmac_base, align 4
  %add.ptr36 = getelementptr i8, ptr %21, i32 60
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #18, !srcloc !273
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !417
  %conv40 = zext i32 %23 to i64
  %arrayidx42 = getelementptr i8, ptr %netdev, i32 3040
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx42, align 8
  %add43 = add i64 %25, %conv40
  store i64 %add43, ptr %arrayidx42, align 8
  %26 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gmac_base, align 4
  %add.ptr47 = getelementptr i8, ptr %27, i32 64
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #18, !srcloc !273
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !418
  %conv51 = zext i32 %29 to i64
  %arrayidx53 = getelementptr i8, ptr %netdev, i32 3048
  %30 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx53, align 8
  %add54 = add i64 %31, %conv51
  store i64 %add54, ptr %arrayidx53, align 8
  %32 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gmac_base, align 4
  %add.ptr58 = getelementptr i8, ptr %33, i32 68
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #18, !srcloc !273
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !419
  %conv62 = zext i32 %35 to i64
  %arrayidx64 = getelementptr i8, ptr %netdev, i32 3056
  %36 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %arrayidx64, align 8
  %add65 = add i64 %37, %conv62
  store i64 %add65, ptr %arrayidx64, align 8
  %rx_missed_errors = getelementptr i8, ptr %netdev, i32 2944
  %38 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_missed_errors, align 8
  %add67 = add i64 %39, %conv10
  store i64 %add67, ptr %rx_missed_errors, align 8
  %multicast = getelementptr i8, ptr %netdev, i32 2888
  %40 = ptrtoint ptr %multicast to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %multicast, align 8
  %add70 = add nuw nsw i64 %conv40, %conv29
  %add74 = add i64 %add70, %41
  store i64 %add74, ptr %multicast, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !420
  tail call void @arm_heavy_mb() #18
  %dev_id = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %dev_id, align 2
  %conv78 = zext i16 %43 to i32
  %mul = shl nuw nsw i32 %conv78, 3
  %shl = shl i32 4194304, %mul
  %44 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr79 = getelementptr i8, ptr %46, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %44) #18, !srcloc !281
  %dep_map.i.i = getelementptr i8, ptr %netdev, i32 2796
  %47 = tail call ptr @llvm.returnaddress(i32 0) #18
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %48) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %49 = ptrtoint ptr %ir_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ir_stats_syncp, align 4
  %inc.i.i.i = add i32 %50, 1
  store i32 %inc.i.i.i, ptr %ir_stats_syncp, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #18
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !263) #18
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !421
  %5 = tail call i32 @llvm.read_register.i32(metadata !263) #18
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !422
  %14 = tail call i32 @llvm.read_register.i32(metadata !263) #18
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !263) #18
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !263) #18
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !423
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #18, !srcloc !424
  %33 = tail call i32 @llvm.read_register.i32(metadata !263) #18
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !282

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #20
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 271, i32 noundef 9, ptr noundef null) #18
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !425
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #18
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #18
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_tx_irq_enable(ptr noundef %netdev, i32 noundef %txq, i32 noundef %en) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %0 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_tx_irq_enable.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_tx_irq_enable, %if.then)) #18
          to label %do.end7 [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dev_id = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dev_id, align 2
  %conv = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_tx_irq_enable.__UNIQUE_ID_ddebug500, ptr noundef %netdev, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.58, i32 noundef %conv) #18
  br label %do.end7

do.end7:                                          ; preds = %if.then, %entry
  %dev_id8 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %4 = ptrtoint ptr %dev_id8 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %dev_id8, align 2
  %conv9 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv9, 6
  %add = add i32 %mul, %txq
  %shl = shl i32 4097, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en)
  %tobool10.not = icmp eq i32 %en, 0
  br i1 %tobool10.not, label %do.end7.if.end15_crit_edge, label %do.body12

do.end7.if.end15_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end15

do.body12:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !426
  tail call void @arm_heavy_mb() #18
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #18, !srcloc !281
  br label %if.end15

if.end15:                                         ; preds = %do.body12, %do.end7.if.end15_crit_edge
  %base16 = getelementptr inbounds %struct.gemini_ethernet, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base16, align 4
  %add.ptr17 = getelementptr i8, ptr %10, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #18, !srcloc !273
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !366
  %or = or i32 %12, %shl
  %neg = xor i32 %shl, -1
  %and = and i32 %12, %neg
  %cond = select i1 %tobool10.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !367
  tail call void @arm_heavy_mb() #18
  %13 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %14 = ptrtoint ptr %base16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base16, align 4
  %add.ptr26 = getelementptr i8, ptr %15, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %13) #18, !srcloc !281
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geth_setup_freeq(ptr noundef %geth) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %freeq_frag_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 7
  %0 = ptrtoint ptr %freeq_frag_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freeq_frag_order, align 4
  %sub = sub i32 12, %1
  %shl = shl nuw i32 1, %1
  %freeq_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 6
  %2 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freeq_order, align 4
  %shl2 = shl nuw i32 1, %3
  %shr = lshr i32 %shl2, %sub
  %4 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %geth, align 4
  %shl4 = shl i32 16, %3
  %freeq_dma_base = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 9
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef %shl4, ptr noundef %freeq_dma_base, i32 noundef 3264, i32 noundef 0) #18
  %freeq_ring = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 8
  %6 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %freeq_ring, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %freeq_dma_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %freeq_dma_base, align 4
  %and = and i32 %8, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %9 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %geth, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.68) #21
  br label %err_freeq

if.end10:                                         ; preds = %if.end
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %shr, i32 8) #18
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !283

kcalloc.exit.thread:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #20
  %freeq_pages119 = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 10
  %13 = ptrtoint ptr %freeq_pages119 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %freeq_pages119, align 4
  br label %err_freeq

if.end7.i.i:                                      ; preds = %if.end10
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #23
  %freeq_pages = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 10
  %15 = ptrtoint ptr %freeq_pages to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %freeq_pages, align 4
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.end7.i.i.err_freeq_crit_edge, label %if.end15

if.end7.i.i.err_freeq_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_freeq

if.end15:                                         ; preds = %if.end7.i.i
  %num_freeq_pages = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 11
  %16 = ptrtoint ptr %num_freeq_pages to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr, ptr %num_freeq_pages, align 4
  %17 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %geth, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.72, i32 noundef %shr) #21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %cmp128.not = icmp eq i32 %shr, 0
  br i1 %cmp128.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end15.for.body_crit_edge
  %pn.0129 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end15.for.body_crit_edge ]
  %call20 = tail call fastcc ptr @geth_freeq_alloc_map_page(ptr noundef %geth, i32 noundef %pn.0129)
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %for.body.err_freeq_alloc_crit_edge, label %for.inc

for.body.err_freeq_alloc_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_freeq_alloc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %pn.0129, 1
  %exitcond.not = icmp eq i32 %inc, %shr
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end15.for.end_crit_edge
  %call24 = tail call fastcc i32 @geth_fill_freeq(ptr noundef %geth, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %for.end.err_freeq_alloc_crit_edge, label %if.end27

for.end.err_freeq_alloc_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_freeq_alloc

if.end27:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 1
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 112
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !427
  %22 = and i32 %21, -256
  %23 = or i32 %22, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !428
  tail call void @arm_heavy_mb() #18
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %25, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %23) #18, !srcloc !281
  %26 = ptrtoint ptr %freeq_frag_order to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %freeq_frag_order, align 4
  %bf.shl = shl i32 65536, %27
  %bf.set39 = or i32 %bf.shl, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !429
  tail call void @arm_heavy_mb() #18
  %28 = tail call i32 @llvm.bswap.i32(i32 %bf.set39)
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %28) #18, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !430
  tail call void @arm_heavy_mb() #18
  %31 = ptrtoint ptr %freeq_dma_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %freeq_dma_base, align 4
  %33 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %freeq_order, align 4
  %or = or i32 %34, %32
  %35 = tail call i32 @llvm.bswap.i32(i32 %or)
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr51 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %35) #18, !srcloc !281
  br label %cleanup

err_freeq_alloc:                                  ; preds = %for.end.err_freeq_alloc_crit_edge, %for.body.err_freeq_alloc_crit_edge
  %pn.0127 = phi i32 [ %shr, %for.end.err_freeq_alloc_crit_edge ], [ %pn.0129, %for.body.err_freeq_alloc_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pn.0127)
  %cmp52.not130 = icmp eq i32 %pn.0127, 0
  br i1 %cmp52.not130, label %err_freeq_alloc.while.end_crit_edge, label %err_freeq_alloc.while.body_crit_edge

err_freeq_alloc.while.body_crit_edge:             ; preds = %err_freeq_alloc
  br label %while.body

err_freeq_alloc.while.end_crit_edge:              ; preds = %err_freeq_alloc
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %err_freeq_alloc.while.body_crit_edge
  %pn.1131 = phi i32 [ %dec, %put_page.exit.while.body_crit_edge ], [ %pn.0127, %err_freeq_alloc.while.body_crit_edge ]
  %dec = add i32 %pn.1131, -1
  %38 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %freeq_ring, align 4
  %shl54 = shl i32 %dec, %sub
  %word2 = getelementptr %struct.gmac_rxdesc, ptr %39, i32 %shl54, i32 2
  %40 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %word2, align 4
  %42 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %geth, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %43, i32 noundef %41, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #18
  %44 = ptrtoint ptr %freeq_pages to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %freeq_pages, align 4
  %arrayidx57 = getelementptr %struct.gmac_queue_page, ptr %45, i32 %dec
  %46 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx57, align 4
  %48 = getelementptr inbounds %struct.page, ptr %47, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i115, label %if.then.i.i, !prof !282

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %50, -1
  br label %_compound_head.exit.i

if.end.i.i115:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %51 = ptrtoint ptr %47 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i115, %if.then.i.i
  %retval.0.i.i116 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %51, %if.end.i.i115 ]
  %52 = inttoptr i32 %retval.0.i.i116 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %53 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i.i.i117 = icmp eq i32 %54, 0
  br i1 %cmp.i.i.i.i117, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %55 = inttoptr i32 %retval.0.i.i116 to ptr
  tail call void @dump_page(ptr noundef %55, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !284
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !286
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %56, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@geth_setup_freeq, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !288

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %52, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %52) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp52.not = icmp eq i32 %dec, 0
  br i1 %cmp52.not, label %put_page.exit.while.end_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.end

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %err_freeq_alloc.while.end_crit_edge
  %57 = ptrtoint ptr %freeq_pages to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %freeq_pages, align 4
  tail call void @kfree(ptr noundef %58) #18
  br label %err_freeq

err_freeq:                                        ; preds = %while.end, %if.end7.i.i.err_freeq_crit_edge, %kcalloc.exit.thread, %do.end
  %59 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %geth, align 4
  %61 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %freeq_order, align 4
  %shl61 = shl i32 16, %62
  %63 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %freeq_ring, align 4
  %65 = ptrtoint ptr %freeq_dma_base to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %freeq_dma_base, align 4
  tail call void @dma_free_attrs(ptr noundef %60, i32 noundef %shl61, ptr noundef %64, i32 noundef %66, i32 noundef 0) #18
  %67 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %freeq_ring, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_freeq, %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_freeq ], [ 0, %if.end27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @geth_freeq_alloc_map_page(ptr nocapture noundef readonly %geth, i32 noundef %pn) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #18
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %geth, align 4
  %call1 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #18
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %call1) #18
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !282

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %1) #18
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.79, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %6 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %geth, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %7, i32 noundef -1) #18
  br label %if.then6

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %1, ptr noundef %call1, i32 noundef 4096) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %call1 to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 2, i32 noundef 0) #18
  %10 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %geth, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %call41.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then6_crit_edge, label %if.end7

dma_map_single_attrs.exit.if.then6_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then6

if.then6:                                         ; preds = %dma_map_single_attrs.exit.if.then6_crit_edge, %dma_map_single_attrs.exit.thread
  %12 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  %and.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i92 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i92, label %if.end.i.i93, label %if.then.i.i, !prof !282

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %14, -1
  br label %_compound_head.exit.i

if.end.i.i93:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #20
  %15 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i93, %if.then.i.i
  %retval.0.i.i94 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %15, %if.end.i.i93 ]
  %16 = inttoptr i32 %retval.0.i.i94 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %17 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.i.i.i = icmp eq i32 %18, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %16, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !284
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !286
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@geth_freeq_alloc_map_page, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !288

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %16, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %16) #18
  br label %cleanup

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  %freeq_frag_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 7
  %20 = ptrtoint ptr %freeq_frag_order to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %freeq_frag_order, align 4
  %shl = shl nuw i32 1, %21
  %sub = sub i32 12, %21
  %freeq_ring = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 8
  %22 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %freeq_ring, align 4
  %shl9 = shl i32 %pn, %sub
  %add.ptr = getelementptr %struct.gmac_rxdesc, ptr %23, i32 %shl9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug492, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geth_freeq_alloc_map_page, %if.then14)) #18
          to label %do.end [label %if.then14], !srcloc !288

if.then14:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  %24 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %geth, align 4
  %shl16 = shl nuw i32 1, %sub
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug492, ptr noundef %25, ptr noundef nonnull @.str.75, i32 noundef %pn, i32 noundef %shl, i32 noundef %shl16, ptr noundef %add.ptr) #18
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %21)
  %cmp124.not = icmp eq i32 %21, -19
  br i1 %cmp124.not, label %do.end.for.end_crit_edge, label %for.body.preheader

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.preheader:                               ; preds = %do.end
  %shl18 = shl nuw i32 1, %sub
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %freeq_entry.0127 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %add.ptr, %for.body.preheader ]
  %i.0126 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %shl18, %for.body.preheader ]
  %mapping.0125 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ %call41.i, %for.body.preheader ]
  %word2 = getelementptr inbounds %struct.gmac_rxdesc, ptr %freeq_entry.0127, i32 0, i32 2
  %26 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mapping.0125, ptr %word2, align 4
  %incdec.ptr = getelementptr %struct.gmac_rxdesc, ptr %freeq_entry.0127, i32 1
  %add = add i32 %mapping.0125, %shl
  %dec = add nsw i32 %i.0126, -1
  %cmp = icmp sgt i32 %i.0126, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %mapping.0.lcssa = phi i32 [ %call41.i, %do.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %freeq_pages = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 10
  %27 = ptrtoint ptr %freeq_pages to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %freeq_pages, align 4
  %arrayidx = getelementptr %struct.gmac_queue_page, ptr %28, i32 %pn
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %30, null
  br i1 %tobool20.not, label %for.end.do.body29_crit_edge, label %if.then21

for.end.do.body29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body29

if.then21:                                        ; preds = %for.end
  %31 = ptrtoint ptr %freeq_ring to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %freeq_ring, align 4
  %word225 = getelementptr %struct.gmac_rxdesc, ptr %32, i32 %shl9, i32 2
  %33 = ptrtoint ptr %word225 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %word225, align 4
  %35 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %geth, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %36, i32 noundef %34, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #18
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %39 = getelementptr inbounds %struct.page, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %39, align 4
  %and.i.i95 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95)
  %tobool.not.i.i96 = icmp eq i32 %and.i.i95, 0
  br i1 %tobool.not.i.i96, label %if.end.i.i99, label %if.then.i.i98, !prof !282

if.then.i.i98:                                    ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i97 = add i32 %41, -1
  br label %_compound_head.exit.i104

if.end.i.i99:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #20
  %42 = ptrtoint ptr %38 to i32
  br label %_compound_head.exit.i104

_compound_head.exit.i104:                         ; preds = %if.end.i.i99, %if.then.i.i98
  %retval.0.i.i100 = phi i32 [ %sub.i.i97, %if.then.i.i98 ], [ %42, %if.end.i.i99 ]
  %43 = inttoptr i32 %retval.0.i.i100 to ptr
  %_refcount.i.i.i.i.i101 = getelementptr inbounds %struct.page, ptr %43, i32 0, i32 3
  %call.i.i.i.i.i.i.i102 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i101, i32 noundef 4) #18
  %44 = ptrtoint ptr %_refcount.i.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %_refcount.i.i.i.i.i101, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i.i.i103 = icmp eq i32 %45, 0
  br i1 %cmp.i.i.i.i103, label %if.then.i.i.i.i105, label %do.end5.i.i.i.i109, !prof !283

if.then.i.i.i.i105:                               ; preds = %_compound_head.exit.i104
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @dump_page(ptr noundef %43, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !284
  unreachable

do.end5.i.i.i.i109:                               ; preds = %_compound_head.exit.i104
  %call.i.i.i10.i.i.i.i106 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i101, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i101, i32 1, i32 3, i32 1) #18
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i101, ptr %_refcount.i.i.i.i.i101, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i101) #18, !srcloc !286
  %asmresult.i.i.i.i.i.i.i.i.i.i107 = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i107)
  %cmp.i.i.i.i.i.i.i108 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i107, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@geth_freeq_alloc_map_page, %if.then.i.i.i.i.i111)) #18
          to label %folio_put_testzero.exit.i.i112 [label %if.then.i.i.i.i.i111], !srcloc !288

if.then.i.i.i.i.i111:                             ; preds = %do.end5.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i110 = zext i1 %cmp.i.i.i.i.i.i.i108 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %43, i32 noundef -1, i32 noundef %conv.i.i.i.i.i110) #18
  br label %folio_put_testzero.exit.i.i112

folio_put_testzero.exit.i.i112:                   ; preds = %if.then.i.i.i.i.i111, %do.end5.i.i.i.i109
  br i1 %cmp.i.i.i.i.i.i.i108, label %if.then.i4.i113, label %folio_put_testzero.exit.i.i112.do.body29_crit_edge

folio_put_testzero.exit.i.i112.do.body29_crit_edge: ; preds = %folio_put_testzero.exit.i.i112
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body29

if.then.i4.i113:                                  ; preds = %folio_put_testzero.exit.i.i112
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %43) #18
  br label %do.body29

do.body29:                                        ; preds = %if.then.i4.i113, %folio_put_testzero.exit.i.i112.do.body29_crit_edge, %for.end.do.body29_crit_edge
  %mapping.1 = phi i32 [ %mapping.0.lcssa, %for.end.do.body29_crit_edge ], [ %34, %folio_put_testzero.exit.i.i112.do.body29_crit_edge ], [ %34, %if.then.i4.i113 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geth_freeq_alloc_map_page, %if.then41)) #18
          to label %do.end45 [label %if.then41], !srcloc !288

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #20
  %47 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %geth, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug493, ptr noundef %48, ptr noundef nonnull @.str.76, i32 noundef %pn, i32 noundef %mapping.1, ptr noundef nonnull %call38.i.i.i) #18
  br label %do.end45

do.end45:                                         ; preds = %if.then41, %do.body29
  %mapping46 = getelementptr %struct.gmac_queue_page, ptr %28, i32 %pn, i32 1
  %49 = ptrtoint ptr %mapping46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mapping.1, ptr %mapping46, align 4
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call38.i.i.i, %do.end45 ], [ null, %entry.cleanup_crit_edge ], [ null, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ null, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @geth_fill_freeq(ptr noundef %geth, i1 noundef zeroext %refill) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %freeq_frag_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 7
  %0 = ptrtoint ptr %freeq_frag_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %freeq_frag_order, align 4
  %sub = sub i32 12, %1
  %freeq_order = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 6
  %2 = ptrtoint ptr %freeq_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freeq_order, align 4
  %sub1 = sub i32 %3, %sub
  %notmask = shl nsw i32 -1, %sub1
  %sub2 = xor i32 %notmask, -1
  %freeq_lock = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 12
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %freeq_lock) #18
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !431
  %bf.clear = and i32 %7, 65535
  %bf.lshr = lshr i32 %7, 16
  %cond = select i1 %refill, i32 %bf.clear, i32 %bf.lshr
  %shr = lshr i32 %cond, %sub
  %shr14 = lshr i32 %bf.lshr, %sub
  %sub15 = add nsw i32 %shr14, -1
  %and = and i32 %sub15, %sub2
  %freeq_pages = getelementptr inbounds %struct.gemini_ethernet, ptr %geth, i32 0, i32 10
  %shl27 = shl nuw i32 1, %sub
  %shr36 = lshr i32 64, %sub
  br label %while.cond

while.cond:                                       ; preds = %cleanup49.while.cond_crit_edge, %entry
  %pn.0 = phi i32 [ %shr, %entry ], [ %pn.1, %cleanup49.while.cond_crit_edge ]
  %count.0 = phi i32 [ 0, %entry ], [ %count.1, %cleanup49.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pn.0, i32 %and)
  %cmp16.not = icmp eq i32 %pn.0, %and
  br i1 %cmp16.not, label %while.cond.do.body53_crit_edge, label %while.body

while.cond.do.body53_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body53

while.body:                                       ; preds = %while.cond
  %8 = ptrtoint ptr %freeq_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %freeq_pages, align 4
  %arrayidx = getelementptr %struct.gmac_queue_page, ptr %9, i32 %pn.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @geth_fill_freeq.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@geth_fill_freeq, %if.then)) #18
          to label %do.end29 [label %if.then], !srcloc !288

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %12 = ptrtoint ptr %geth to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %geth, align 4
  %_refcount.i = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i, i32 noundef 4) #18
  %14 = ptrtoint ptr %_refcount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %_refcount.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @geth_fill_freeq.__UNIQUE_ID_ddebug494, ptr noundef %13, ptr noundef nonnull @.str.81, i32 noundef %pn.0, i32 noundef %15, i32 noundef %shl27) #18
  br label %do.end29

do.end29:                                         ; preds = %if.then, %while.body
  %_refcount.i104 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 3
  %call.i.i.i105 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i104, i32 noundef 4) #18
  %16 = ptrtoint ptr %_refcount.i104 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %_refcount.i104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp31 = icmp sgt i32 %17, 1
  br i1 %cmp31, label %if.then33, label %do.end29.if.end45_crit_edge

do.end29.if.end45_crit_edge:                      ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

if.then33:                                        ; preds = %do.end29
  %sub34 = sub i32 %pn.0, %and
  %and35 = and i32 %sub34, %sub2
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %shr36)
  %cmp37 = icmp ugt i32 %and35, %shr36
  br i1 %cmp37, label %if.then33.do.body53_crit_edge, label %cleanup

if.then33.do.body53_crit_edge:                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body53

cleanup:                                          ; preds = %if.then33
  %call41 = tail call fastcc ptr @geth_freeq_alloc_map_page(ptr noundef %geth, i32 noundef %pn.0)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %cleanup.cleanup49_crit_edge, label %cleanup.if.end45_crit_edge

cleanup.if.end45_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end45

cleanup.cleanup49_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup49

if.end45:                                         ; preds = %cleanup.if.end45_crit_edge, %do.end29.if.end45_crit_edge
  %page.1 = phi ptr [ %call41, %cleanup.if.end45_crit_edge ], [ %11, %do.end29.if.end45_crit_edge ]
  %_refcount.i106 = getelementptr inbounds %struct.page, ptr %page.1, i32 0, i32 3
  %call.i.i.i107 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i106, i32 noundef 4) #18
  tail call void @llvm.prefetch.p0(ptr %_refcount.i106, i32 1, i32 3, i32 1) #18
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i106, ptr %_refcount.i106, i32 %shl27, ptr elementtype(i32) %_refcount.i106) #18, !srcloc !432
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@geth_fill_freeq, %if.then.i)) #18
          to label %page_ref_add.exit [label %if.then.i], !srcloc !288

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__page_ref_mod(ptr noundef %page.1, i32 noundef %shl27) #18
  br label %page_ref_add.exit

page_ref_add.exit:                                ; preds = %if.then.i, %if.end45
  %add = add i32 %count.0, %shl27
  %inc = add i32 %pn.0, 1
  %and48 = and i32 %inc, %sub2
  br label %cleanup49

cleanup49:                                        ; preds = %page_ref_add.exit, %cleanup.cleanup49_crit_edge
  %pn.1 = phi i32 [ %and48, %page_ref_add.exit ], [ %pn.0, %cleanup.cleanup49_crit_edge ]
  %count.1 = phi i32 [ %add, %page_ref_add.exit ], [ %count.0, %cleanup.cleanup49_crit_edge ]
  %switch = phi i1 [ true, %page_ref_add.exit ], [ false, %cleanup.cleanup49_crit_edge ]
  br i1 %switch, label %cleanup49.while.cond_crit_edge, label %cleanup49.do.body53_crit_edge

cleanup49.do.body53_crit_edge:                    ; preds = %cleanup49
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body53

cleanup49.while.cond_crit_edge:                   ; preds = %cleanup49
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

do.body53:                                        ; preds = %cleanup49.do.body53_crit_edge, %if.then33.do.body53_crit_edge, %while.cond.do.body53_crit_edge
  %pn.2 = phi i32 [ %pn.1, %cleanup49.do.body53_crit_edge ], [ %and, %while.cond.do.body53_crit_edge ], [ %pn.0, %if.then33.do.body53_crit_edge ]
  %count.2 = phi i32 [ %count.1, %cleanup49.do.body53_crit_edge ], [ %count.0, %while.cond.do.body53_crit_edge ], [ %count.0, %if.then33.do.body53_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !433
  tail call void @arm_heavy_mb() #18
  %shl56 = shl i32 %pn.2, %sub
  %conv57 = trunc i32 %shl56 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv57)
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %21, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr60, i16 %19) #18, !srcloc !279
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %freeq_lock, i32 noundef %call4) #18
  ret i32 %count.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gmac_clean_txq(ptr noundef %netdev, ptr nocapture noundef %txq, i32 noundef %r) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %txq_order = getelementptr i8, ptr %netdev, i32 2664
  %0 = ptrtoint ptr %txq_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txq_order, align 8
  %notmask = shl nsw i32 -1, %1
  %sub = xor i32 %notmask, -1
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %geth1, align 4
  %cptr = getelementptr inbounds %struct.gmac_txq, ptr %txq, i32 0, i32 2
  %4 = ptrtoint ptr %cptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %r)
  %cmp = icmp eq i32 %5, %r
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %skb = getelementptr inbounds %struct.gmac_txq, ptr %txq, i32 0, i32 1
  %tx_stats_syncp = getelementptr i8, ptr %netdev, i32 2728
  %dep_map.i.i = getelementptr i8, ptr %netdev, i32 2732
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %while.cond.preheader
  %c.0.ph = phi i32 [ %5, %while.cond.preheader ], [ %and8, %while.cond.outer.backedge ]
  %hwchksum.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %spec.select, %while.cond.outer.backedge ]
  %bytes.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %add, %while.cond.outer.backedge ]
  %errs.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %errs.0.ph105, %while.cond.outer.backedge ]
  %pkts.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %inc19, %while.cond.outer.backedge ]
  br label %while.cond.outer103

while.cond.outer103:                              ; preds = %if.then16, %while.cond.outer
  %c.0.ph104 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %and8, %if.then16 ]
  %errs.0.ph105 = phi i32 [ %errs.0.ph, %while.cond.outer ], [ %inc17, %if.then16 ]
  br label %while.cond

while.cond:                                       ; preds = %if.end7.while.cond_crit_edge, %while.cond.outer103
  %c.0 = phi i32 [ %and8, %if.end7.while.cond_crit_edge ], [ %c.0.ph104, %while.cond.outer103 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %c.0, i32 %r)
  %cmp2.not = icmp eq i32 %c.0, %r
  br i1 %cmp2.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %txq, align 4
  %add.ptr = getelementptr %struct.gmac_txdesc, ptr %7, i32 %c.0
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %word0.sroa.0.0.copyload = load i32, ptr %add.ptr, align 4
  %word14 = getelementptr %struct.gmac_txdesc, ptr %7, i32 %c.0, i32 1
  %9 = ptrtoint ptr %word14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %word1.sroa.0.0.copyload = load i32, ptr %word14, align 4
  %word2 = getelementptr %struct.gmac_txdesc, ptr %7, i32 %c.0, i32 2
  %10 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %word2, align 4
  %word35 = getelementptr %struct.gmac_txdesc, ptr %7, i32 %c.0, i32 3
  %12 = ptrtoint ptr %word35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %word35, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %bf.lshr = lshr i32 %word0.sroa.0.0.copyload, 16
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %11, i32 noundef %bf.lshr, i32 noundef 1, i32 noundef 0) #18
  %and = and i32 %13, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.if.end7_crit_edge, label %if.then6

while.body.if.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end7

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %16 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %skb, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %c.0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %19) #18
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %while.body.if.end7_crit_edge
  %inc = add i32 %c.0, 1
  %and8 = and i32 %inc, %sub
  %tobool10.not = icmp sgt i32 %13, -1
  br i1 %tobool10.not, label %if.end7.while.cond_crit_edge, label %if.end12

if.end7.while.cond_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond

if.end12:                                         ; preds = %if.end7
  %20 = and i32 %word0.sroa.0.0.copyload, 512
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #20
  %inc17 = add i32 %errs.0.ph105, 1
  br label %while.cond.outer103

if.end18:                                         ; preds = %if.end12
  %inc19 = add i32 %pkts.0.ph, 1
  %21 = ptrtoint ptr %word14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load21 = load i32, ptr %word14, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 16
  %add = add i32 %bf.lshr22, %bytes.0.ph
  %and23 = and i32 %word1.sroa.0.0.copyload, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp ne i32 %and23, 0
  %inc26 = zext i1 %tobool24.not to i32
  %spec.select = add i32 %hwchksum.0.ph, %inc26
  %22 = trunc i32 %word0.sroa.0.0.copyload to i16
  %23 = lshr i16 %22, 10
  %conv = add nsw i16 %23, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool32.not = icmp eq i16 %conv, 0
  br i1 %tobool32.not, label %if.end18.while.cond.outer.backedge_crit_edge, label %if.then33

if.end18.while.cond.outer.backedge_crit_edge:     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.cond.outer.backedge

if.then33:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #20
  %24 = tail call i16 @llvm.umin.i16(i16 %conv, i16 15)
  tail call fastcc void @u64_stats_update_begin(ptr noundef %tx_stats_syncp)
  %idxprom = zext i16 %24 to i32
  %arrayidx39 = getelementptr %struct.gemini_ethernet_port, ptr %add.ptr.i, i32 0, i32 32, i32 %idxprom
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx39, align 8
  %inc40 = add i64 %26, 1
  store i64 %inc40, ptr %arrayidx39, align 8
  %27 = tail call ptr @llvm.returnaddress(i32 0) #18
  %28 = ptrtoint ptr %27 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %28) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %29 = ptrtoint ptr %tx_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_stats_syncp, align 4
  %inc.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i, ptr %tx_stats_syncp, align 4
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %if.then33, %if.end18.while.cond.outer.backedge_crit_edge
  br label %while.cond.outer

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #20
  %ir_stats_syncp = getelementptr i8, ptr %netdev, i32 2792
  tail call fastcc void @u64_stats_update_begin(ptr noundef %ir_stats_syncp)
  %conv43 = zext i32 %errs.0.ph105 to i64
  %tx_errors = getelementptr i8, ptr %netdev, i32 2864
  %31 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %tx_errors, align 8
  %add44 = add i64 %32, %conv43
  store i64 %add44, ptr %tx_errors, align 8
  %conv45 = zext i32 %pkts.0.ph to i64
  %tx_packets = getelementptr i8, ptr %netdev, i32 2832
  %33 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %tx_packets, align 8
  %add47 = add i64 %34, %conv45
  store i64 %add47, ptr %tx_packets, align 8
  %conv48 = zext i32 %bytes.0.ph to i64
  %tx_bytes = getelementptr i8, ptr %netdev, i32 2848
  %35 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tx_bytes, align 8
  %add50 = add i64 %36, %conv48
  store i64 %add50, ptr %tx_bytes, align 8
  %conv51 = zext i32 %hwchksum.0.ph to i64
  %tx_hw_csummed = getelementptr i8, ptr %netdev, i32 3400
  %37 = ptrtoint ptr %tx_hw_csummed to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %tx_hw_csummed, align 8
  %add52 = add i64 %38, %conv51
  store i64 %add52, ptr %tx_hw_csummed, align 8
  %dep_map.i.i101 = getelementptr i8, ptr %netdev, i32 2796
  %39 = tail call ptr @llvm.returnaddress(i32 0) #18
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i101, i32 noundef %40) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !318
  %41 = ptrtoint ptr %ir_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ir_stats_syncp, align 4
  %inc.i.i.i102 = add i32 %42, 1
  store i32 %inc.i.i.i102, ptr %ir_stats_syncp, align 4
  %43 = ptrtoint ptr %cptr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %r, ptr %cptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmac_map_tx_bufs(ptr nocapture noundef readonly %netdev, ptr noundef %skb, ptr nocapture noundef readonly %txq, ptr nocapture noundef %desc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i, align 4
  %txq_order = getelementptr i8, ptr %netdev, i32 2664
  %2 = ptrtoint ptr %txq_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txq_order, align 8
  %notmask = shl nsw i32 -1, %3
  %4 = trunc i32 %notmask to i16
  %conv = xor i16 %4, -1
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nr_frags, align 2
  %conv2 = zext i8 %6 to i32
  %sub3 = add nsw i32 %conv2, -1
  %geth5 = getelementptr i8, ptr %netdev, i32 2308
  %7 = ptrtoint ptr %geth5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %geth5, align 4
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %desc, align 2
  %mtu6 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %11 = ptrtoint ptr %mtu6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu6, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %14)
  %cmp = icmp eq i16 %14, -32512
  %spec.select.v = select i1 %cmp, i32 18, i32 14
  %spec.select = add i32 %spec.select.v, %12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %15 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len, align 4
  %conv14 = and i32 %spec.select, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv14)
  %cmp15 = icmp ugt i32 %16, %conv14
  %or = or i32 %16, 65536
  %or19 = or i32 %conv14, -2147483648
  %word1.0 = select i1 %cmp15, i32 %or, i32 %16
  %word3.0 = select i1 %cmp15, i32 %or19, i32 -2147483648
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %ip_summed, align 8
  %18 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp22.not = icmp eq i16 %18, 0
  br i1 %cmp22.not, label %entry.if.end43_crit_edge, label %if.then24

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end43

if.then24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %14)
  %cmp27 = icmp eq i16 %14, 2048
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %or30 = or i32 %word1.0, 131072
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %19 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %22 to i32
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %conv.i.i
  %protocol32 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  br label %if.end41

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #20
  %or36 = or i32 %word1.0, 262144
  %head.i.i170 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %23 = ptrtoint ptr %head.i.i170 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head.i.i170, align 8
  %network_header.i.i171 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %25 = ptrtoint ptr %network_header.i.i171 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %network_header.i.i171, align 4
  %conv.i.i172 = zext i16 %26 to i32
  %add.ptr.i.i173 = getelementptr i8, ptr %24, i32 %conv.i.i172
  %nexthdr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i173, i32 0, i32 3
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then29
  %word1.1 = phi i32 [ %or30, %if.then29 ], [ %or36, %if.else ]
  %tcp.0.in.in.in = phi ptr [ %protocol32, %if.then29 ], [ %nexthdr, %if.else ]
  %27 = ptrtoint ptr %tcp.0.in.in.in to i32
  call void @__asan_load1_noabort(i32 %27)
  %tcp.0.in.in = load i8, ptr %tcp.0.in.in.in, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %tcp.0.in.in)
  %tcp.0.in = icmp eq i8 %tcp.0.in.in, 6
  %cond = select i1 %tcp.0.in, i32 524288, i32 1048576
  %or42 = or i32 %cond, %word1.1
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %entry.if.end43_crit_edge
  %word1.2 = phi i32 [ %or42, %if.end41 ], [ %word1.0, %entry.if.end43_crit_edge ]
  %frags = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 12
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %skb64 = getelementptr inbounds %struct.gmac_txq, ptr %txq, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end71.while.body_crit_edge, %if.end43
  %conv44191 = phi i32 [ -1, %if.end43 ], [ %conv44, %if.end71.while.body_crit_edge ]
  %w.0190 = phi i16 [ %10, %if.end43 ], [ %and78168, %if.end71.while.body_crit_edge ]
  %word3.1189 = phi i32 [ %word3.0, %if.end43 ], [ %and, %if.end71.while.body_crit_edge ]
  %frag.0188 = phi i16 [ -1, %if.end43 ], [ %inc80, %if.end71.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %frag.0188)
  %cmp49 = icmp eq i16 %frag.0188, -1
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  %32 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %31, %33
  br label %if.end57

if.else53:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %add.ptr = getelementptr %struct.bio_vec, ptr %frags, i32 %conv44191
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr, align 4
  %call1.i = tail call ptr @page_address(ptr noundef %35) #18
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %frags, i32 %conv44191, i32 2
  %36 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %call1.i, i32 %37
  %bv_len.i = getelementptr %struct.bio_vec, ptr %frags, i32 %conv44191, i32 1
  %38 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bv_len.i, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else53, %if.then51
  %buflen.0 = phi i32 [ %sub.i, %if.then51 ], [ %39, %if.else53 ]
  %buffer.0 = phi ptr [ %29, %if.then51 ], [ %add.ptr.i174, %if.else53 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub3, i32 %conv44191)
  %cmp60 = icmp eq i32 %sub3, %conv44191
  br i1 %cmp60, label %if.then62, label %if.end57.if.end65_crit_edge

if.end57.if.end65_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end65

if.then62:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #20
  %or63 = or i32 %word3.1189, 1073741824
  %40 = ptrtoint ptr %skb64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %skb64, align 4
  %idxprom = zext i16 %w.0190 to i32
  %arrayidx = getelementptr ptr, ptr %41, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %skb, ptr %arrayidx, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.end57.if.end65_crit_edge
  %word3.2 = phi i32 [ %or63, %if.then62 ], [ %word3.1189, %if.end57.if.end65_crit_edge ]
  %43 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %8, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buffer.0) #18
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end65
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !282

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %44) #18
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %46, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %48, %if.end.i.i ], [ %46, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.78, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.79, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #18
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %49 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %8, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %50, i32 noundef -1) #18
  br label %.loopexit

dma_map_single_attrs.exit:                        ; preds = %if.end65
  tail call void @debug_dma_map_single(ptr noundef %44, ptr noundef %buffer.0, i32 noundef %buflen.0) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %buffer.0 to i32
  %sub.i175 = add i32 %52, 1073741824
  %shr.i = lshr i32 %sub.i175, 12
  %add.ptr.i176 = getelementptr %struct.page, ptr %51, i32 %shr.i
  %and.i = and i32 %52, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %44, ptr noundef %add.ptr.i176, i32 noundef %and.i, i32 noundef %buflen.0, i32 noundef 1, i32 noundef 0) #18
  %53 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %8, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %54, i32 noundef %call41.i) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit..loopexit_crit_edge, label %if.end71

dma_map_single_attrs.exit..loopexit_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %.loopexit

.loopexit:                                        ; preds = %dma_map_single_attrs.exit..loopexit_crit_edge, %dma_map_single_attrs.exit.thread
  %55 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %desc, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %w.0190, i16 %56)
  %cmp84.not193 = icmp eq i16 %w.0190, %56
  br i1 %cmp84.not193, label %.loopexit.cleanup_crit_edge, label %.loopexit.while.body86_crit_edge

.loopexit.while.body86_crit_edge:                 ; preds = %.loopexit
  br label %while.body86

.loopexit.cleanup_crit_edge:                      ; preds = %.loopexit
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end71:                                         ; preds = %dma_map_single_attrs.exit
  %57 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %txq, align 4
  %conv72 = zext i16 %w.0190 to i32
  %add.ptr73 = getelementptr %struct.gmac_txdesc, ptr %58, i32 %conv72
  %59 = ptrtoint ptr %add.ptr73 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %buflen.0, ptr %add.ptr73, align 4
  %word174 = getelementptr %struct.gmac_txdesc, ptr %58, i32 %conv72, i32 1
  %60 = ptrtoint ptr %word174 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %word1.2, ptr %word174, align 4
  %word2 = getelementptr %struct.gmac_txdesc, ptr %58, i32 %conv72, i32 2
  %61 = ptrtoint ptr %word2 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call41.i, ptr %word2, align 4
  %word375 = getelementptr %struct.gmac_txdesc, ptr %58, i32 %conv72, i32 3
  %62 = ptrtoint ptr %word375 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %word3.2, ptr %word375, align 4
  %and = and i32 %word3.2, 8191
  %inc = add i16 %w.0190, 1
  %and78168 = and i16 %inc, %conv
  %inc80 = add i16 %frag.0188, 1
  %conv44 = sext i16 %inc80 to i32
  %cmp46.not.not = icmp sgt i32 %conv2, %conv44
  br i1 %cmp46.not.not, label %if.end71.while.body_crit_edge, label %while.end

if.end71.while.body_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

while.end:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #20
  %63 = ptrtoint ptr %desc to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %and78168, ptr %desc, align 2
  br label %cleanup

while.body86:                                     ; preds = %while.body86.while.body86_crit_edge, %.loopexit.while.body86_crit_edge
  %w.1194 = phi i16 [ %and89169, %while.body86.while.body86_crit_edge ], [ %w.0190, %.loopexit.while.body86_crit_edge ]
  %dec = add i16 %w.1194, -1
  %and89169 = and i16 %dec, %conv
  %64 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %8, align 4
  %66 = ptrtoint ptr %txq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %txq, align 4
  %idxprom93 = zext i16 %and89169 to i32
  %arrayidx94 = getelementptr %struct.gmac_txdesc, ptr %67, i32 %idxprom93
  %word295 = getelementptr %struct.gmac_txdesc, ptr %67, i32 %idxprom93, i32 2
  %68 = ptrtoint ptr %word295 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %word295, align 4
  %70 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %bf.load100 = load i32, ptr %arrayidx94, align 4
  %bf.lshr101 = lshr i32 %bf.load100, 16
  tail call void @dma_unmap_page_attrs(ptr noundef %65, i32 noundef %69, i32 noundef %bf.lshr101, i32 noundef 1, i32 noundef 0) #18
  %71 = ptrtoint ptr %desc to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %desc, align 2
  %cmp84.not = icmp eq i16 %and89169, %72
  br i1 %cmp84.not, label %while.body86.cleanup_crit_edge, label %while.body86.while.body86_crit_edge

while.body86.while.body86_crit_edge:              ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body86

while.body86.cleanup_crit_edge:                   ; preds = %while.body86
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cleanup:                                          ; preds = %while.body86.cleanup_crit_edge, %while.end, %.loopexit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -12, %.loopexit.cleanup_crit_edge ], [ -12, %while.body86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin(ptr noundef %syncp) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #18, !srcloc !434
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @trace_hardirqs_off() #18
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #18
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #18
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #18
  tail call void @trace_hardirqs_on() #18
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #18
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #18
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #18
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #18, !srcloc !435
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !283

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @warn_bogus_irq_restore() #18
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #18, !srcloc !436
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !437
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #18, !srcloc !438
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !439
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gmac_get_drvinfo(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %info) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %driver, ptr @.str, i32 12)
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %dev_id = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %dev_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  %3 = select i1 %tobool.not, i16 12288, i16 12544
  %4 = ptrtoint ptr %bus_info to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %bus_info, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmac_get_msglevel(ptr nocapture noundef readonly %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2680
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @gmac_set_msglevel(ptr nocapture noundef writeonly %netdev, i32 noundef %level) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %netdev, i32 2680
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %level, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_nway_reset(ptr nocapture noundef readonly %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @phy_start_aneg(ptr noundef nonnull %1) #18
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmac_get_coalesce(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 2
  %0 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %rx_max_coalesced_frames, align 4
  %irq_every_tx_packets = getelementptr i8, ptr %netdev, i32 2668
  %1 = ptrtoint ptr %irq_every_tx_packets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_every_tx_packets, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 6
  %3 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %tx_max_coalesced_frames, align 4
  %rx_coalesce_nsecs = getelementptr i8, ptr %netdev, i32 2640
  %4 = ptrtoint ptr %rx_coalesce_nsecs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_coalesce_nsecs, align 8
  %div = udiv i32 %5, 1000
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %6 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div, ptr %rx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmac_set_coalesce(ptr nocapture noundef %netdev, ptr nocapture noundef readonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 6
  %0 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %txq_order = getelementptr i8, ptr %netdev, i32 2664
  %2 = ptrtoint ptr %txq_order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txq_order, align 8
  %.highbits = lshr i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.highbits)
  %cmp2.not = icmp eq i32 %.highbits, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %irq_every_tx_packets = getelementptr i8, ptr %netdev, i32 2668
  %4 = ptrtoint ptr %irq_every_tx_packets to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %irq_every_tx_packets, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %5 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rx_coalesce_usecs, align 4
  %mul = mul i32 %6, 1000
  %rx_coalesce_nsecs = getelementptr i8, ptr %netdev, i32 2640
  %7 = ptrtoint ptr %rx_coalesce_nsecs to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %rx_coalesce_nsecs, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmac_get_ringparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %rp, ptr nocapture noundef readnone %kernel_rp, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !440
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 1
  %3 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32768, ptr %rx_max_pending, align 4
  %rx_mini_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 2
  %4 = ptrtoint ptr %rx_mini_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rx_mini_max_pending, align 4
  %rx_jumbo_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 3
  %5 = ptrtoint ptr %rx_jumbo_max_pending to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %rx_jumbo_max_pending, align 4
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 4
  %6 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32768, ptr %tx_max_pending, align 4
  %rxq_order = getelementptr i8, ptr %netdev, i32 2360
  %7 = ptrtoint ptr %rxq_order to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rxq_order, align 8
  %shl = shl nuw i32 1, %8
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 5
  %9 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %rx_pending, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 6
  %10 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %rx_mini_pending, align 4
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 7
  %11 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %rx_jumbo_pending, align 4
  %txq_order = getelementptr i8, ptr %netdev, i32 2664
  %12 = ptrtoint ptr %txq_order to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txq_order, align 8
  %shl3 = shl nuw i32 1, %13
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 8
  %14 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl3, ptr %tx_pending, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_set_ringparam(ptr noundef %netdev, ptr nocapture noundef readonly %rp, ptr nocapture noundef readnone %kernel_rp, ptr nocapture noundef readnone %extack) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 5
  %2 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end.if.end23_crit_edge, label %cond.end14

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end23

cond.end14:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not.i.i = icmp eq i32 %sub, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub, i1 true) #18, !range !369
  %sub.i.op.i = xor i32 %4, 31
  %5 = call i32 @llvm.smin.i32(i32 %sub.i.op.i, i32 14)
  %.op = add nuw nsw i32 %5, 1
  %6 = select i1 %tobool.not.i.i, i32 0, i32 %.op
  %rxq_order = getelementptr i8, ptr %netdev, i32 2360
  %7 = ptrtoint ptr %rxq_order to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rxq_order, align 8
  %call22 = tail call fastcc i32 @geth_resize_freeq(ptr noundef %add.ptr.i)
  br label %if.end23

if.end23:                                         ; preds = %cond.end14, %if.end.if.end23_crit_edge
  %err.0 = phi i32 [ %call22, %cond.end14 ], [ 0, %if.end.if.end23_crit_edge ]
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %rp, i32 0, i32 8
  %8 = ptrtoint ptr %tx_pending to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool24.not = icmp eq i32 %9, 0
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %cond.end46

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

cond.end46:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #20
  %sub27 = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub27)
  %tobool.not.i.i79 = icmp eq i32 %sub27, 0
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub27, i1 true) #18, !range !369
  %sub.i.op.i80 = xor i32 %10, 31
  %11 = call i32 @llvm.smin.i32(i32 %sub.i.op.i80, i32 14)
  %12 = select i1 %tobool.not.i.i79, i32 -1, i32 %11
  %13 = add nsw i32 %12, 1
  %txq_order = getelementptr i8, ptr %netdev, i32 2664
  %14 = ptrtoint ptr %txq_order to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %txq_order, align 8
  %sub57 = add nsw i32 %12, -1
  %shl = shl nuw nsw i32 1, %sub57
  %irq_every_tx_packets = getelementptr i8, ptr %netdev, i32 2668
  %15 = ptrtoint ptr %irq_every_tx_packets to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl, ptr %irq_every_tx_packets, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end46, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ %err.0, %cond.end46 ], [ %err.0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmac_get_pauseparam(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %pparam) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %0 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !441
  %bf.lshr = lshr i32 %3, 17
  %bf.clear = and i32 %bf.lshr, 1
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pparam, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.clear, ptr %rx_pause, align 4
  %bf.lshr4 = lshr i32 %3, 16
  %bf.clear5 = and i32 %bf.lshr4, 1
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pparam, i32 0, i32 3
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.clear5, ptr %tx_pause, align 4
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pparam, i32 0, i32 1
  %6 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %autoneg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gmac_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %0 = call ptr @memcpy(ptr %data, ptr @gmac_stats_strings, i32 1568)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmac_get_ethtool_stats(ptr noundef %netdev, ptr nocapture noundef readnone %estats, ptr nocapture noundef writeonly %values) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @gmac_update_hw_stats(ptr noundef %netdev)
  %ir_stats_syncp = getelementptr i8, ptr %netdev, i32 2792
  %arrayidx = getelementptr i8, ptr %netdev, i32 3016
  %incdec.ptr = getelementptr i64, ptr %values, i32 1
  %arrayidx.1 = getelementptr i8, ptr %netdev, i32 3024
  %incdec.ptr.1 = getelementptr i64, ptr %values, i32 2
  %arrayidx.2 = getelementptr i8, ptr %netdev, i32 3032
  %incdec.ptr.2 = getelementptr i64, ptr %values, i32 3
  %arrayidx.3 = getelementptr i8, ptr %netdev, i32 3040
  %incdec.ptr.3 = getelementptr i64, ptr %values, i32 4
  %arrayidx.4 = getelementptr i8, ptr %netdev, i32 3048
  %incdec.ptr.4 = getelementptr i64, ptr %values, i32 5
  %arrayidx.5 = getelementptr i8, ptr %netdev, i32 3056
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %call1 = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %ir_stats_syncp)
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %2 = ptrtoint ptr %values to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %values, align 8
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx.1, align 8
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %incdec.ptr, align 8
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.2, align 8
  %8 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %incdec.ptr.1, align 8
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx.3, align 8
  %11 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %incdec.ptr.2, align 8
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.4, align 8
  %14 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %incdec.ptr.3, align 8
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.5, align 8
  %17 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %incdec.ptr.4, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  %18 = ptrtoint ptr %ir_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %ir_stats_syncp, align 4
  %cmp.i.i.i.i.not = icmp eq i32 %19, %call1
  br i1 %cmp.i.i.i.i.not, label %do.body4.preheader, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body

do.body4.preheader:                               ; preds = %do.body
  %uglygep = getelementptr i8, ptr %values, i32 48
  %rx_napi_exits = getelementptr i8, ptr %netdev, i32 3256
  %rx_stats_syncp = getelementptr i8, ptr %netdev, i32 2760
  %arrayidx17 = getelementptr i8, ptr %netdev, i32 3192
  %incdec.ptr10 = getelementptr i8, ptr %values, i32 56
  %incdec.ptr10.1 = getelementptr i8, ptr %values, i32 64
  %incdec.ptr10.2 = getelementptr i8, ptr %values, i32 72
  %incdec.ptr10.3 = getelementptr i8, ptr %values, i32 80
  %incdec.ptr10.4 = getelementptr i8, ptr %values, i32 88
  %incdec.ptr10.5 = getelementptr i8, ptr %values, i32 96
  %incdec.ptr10.6 = getelementptr i8, ptr %values, i32 104
  %incdec.ptr10.7 = getelementptr i8, ptr %values, i32 112
  %incdec.ptr10.8 = getelementptr i8, ptr %values, i32 120
  %incdec.ptr10.9 = getelementptr i8, ptr %values, i32 128
  %incdec.ptr10.10 = getelementptr i8, ptr %values, i32 136
  %incdec.ptr10.11 = getelementptr i8, ptr %values, i32 144
  %incdec.ptr10.12 = getelementptr i8, ptr %values, i32 152
  %incdec.ptr10.13 = getelementptr i8, ptr %values, i32 160
  %incdec.ptr10.14 = getelementptr i8, ptr %values, i32 168
  %incdec.ptr10.15 = getelementptr i8, ptr %values, i32 176
  %incdec.ptr18 = getelementptr i8, ptr %values, i32 184
  %incdec.ptr18.1 = getelementptr i8, ptr %values, i32 192
  %incdec.ptr18.2 = getelementptr i8, ptr %values, i32 200
  %incdec.ptr18.3 = getelementptr i8, ptr %values, i32 208
  %incdec.ptr18.4 = getelementptr i8, ptr %values, i32 216
  %incdec.ptr18.5 = getelementptr i8, ptr %values, i32 224
  %incdec.ptr18.6 = getelementptr i8, ptr %values, i32 232
  %incdec.ptr18.7 = getelementptr i8, ptr %values, i32 240
  %arrayidx9 = getelementptr i8, ptr %netdev, i32 3064
  %arrayidx9.1 = getelementptr i8, ptr %netdev, i32 3072
  %arrayidx9.2 = getelementptr i8, ptr %netdev, i32 3080
  %arrayidx9.3 = getelementptr i8, ptr %netdev, i32 3088
  %arrayidx9.4 = getelementptr i8, ptr %netdev, i32 3096
  %arrayidx9.5 = getelementptr i8, ptr %netdev, i32 3104
  %arrayidx9.6 = getelementptr i8, ptr %netdev, i32 3112
  %arrayidx9.7 = getelementptr i8, ptr %netdev, i32 3120
  %arrayidx9.8 = getelementptr i8, ptr %netdev, i32 3128
  %arrayidx9.9 = getelementptr i8, ptr %netdev, i32 3136
  %arrayidx9.10 = getelementptr i8, ptr %netdev, i32 3144
  %arrayidx9.11 = getelementptr i8, ptr %netdev, i32 3152
  %arrayidx9.12 = getelementptr i8, ptr %netdev, i32 3160
  %arrayidx9.13 = getelementptr i8, ptr %netdev, i32 3168
  %arrayidx9.14 = getelementptr i8, ptr %netdev, i32 3176
  %arrayidx9.15 = getelementptr i8, ptr %netdev, i32 3184
  %arrayidx17.1 = getelementptr i8, ptr %netdev, i32 3200
  %arrayidx17.2 = getelementptr i8, ptr %netdev, i32 3208
  %arrayidx17.3 = getelementptr i8, ptr %netdev, i32 3216
  %arrayidx17.4 = getelementptr i8, ptr %netdev, i32 3224
  %arrayidx17.5 = getelementptr i8, ptr %netdev, i32 3232
  %arrayidx17.6 = getelementptr i8, ptr %netdev, i32 3240
  %arrayidx17.7 = getelementptr i8, ptr %netdev, i32 3248
  br label %do.body4

do.body4:                                         ; preds = %do.body4.do.body4_crit_edge, %do.body4.preheader
  %call5 = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %rx_stats_syncp)
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx9, align 8
  %22 = ptrtoint ptr %uglygep to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %uglygep, align 8
  %23 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx9.1, align 8
  %25 = ptrtoint ptr %incdec.ptr10 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %incdec.ptr10, align 8
  %26 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx9.2, align 8
  %28 = ptrtoint ptr %incdec.ptr10.1 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %incdec.ptr10.1, align 8
  %29 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx9.3, align 8
  %31 = ptrtoint ptr %incdec.ptr10.2 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %incdec.ptr10.2, align 8
  %32 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx9.4, align 8
  %34 = ptrtoint ptr %incdec.ptr10.3 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %incdec.ptr10.3, align 8
  %35 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx9.5, align 8
  %37 = ptrtoint ptr %incdec.ptr10.4 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %incdec.ptr10.4, align 8
  %38 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx9.6, align 8
  %40 = ptrtoint ptr %incdec.ptr10.5 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %incdec.ptr10.5, align 8
  %41 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx9.7, align 8
  %43 = ptrtoint ptr %incdec.ptr10.6 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %incdec.ptr10.6, align 8
  %44 = ptrtoint ptr %arrayidx9.8 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx9.8, align 8
  %46 = ptrtoint ptr %incdec.ptr10.7 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %incdec.ptr10.7, align 8
  %47 = ptrtoint ptr %arrayidx9.9 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx9.9, align 8
  %49 = ptrtoint ptr %incdec.ptr10.8 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %48, ptr %incdec.ptr10.8, align 8
  %50 = ptrtoint ptr %arrayidx9.10 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx9.10, align 8
  %52 = ptrtoint ptr %incdec.ptr10.9 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %incdec.ptr10.9, align 8
  %53 = ptrtoint ptr %arrayidx9.11 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx9.11, align 8
  %55 = ptrtoint ptr %incdec.ptr10.10 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %incdec.ptr10.10, align 8
  %56 = ptrtoint ptr %arrayidx9.12 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx9.12, align 8
  %58 = ptrtoint ptr %incdec.ptr10.11 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %57, ptr %incdec.ptr10.11, align 8
  %59 = ptrtoint ptr %arrayidx9.13 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx9.13, align 8
  %61 = ptrtoint ptr %incdec.ptr10.12 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %incdec.ptr10.12, align 8
  %62 = ptrtoint ptr %arrayidx9.14 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx9.14, align 8
  %64 = ptrtoint ptr %incdec.ptr10.13 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %63, ptr %incdec.ptr10.13, align 8
  %65 = ptrtoint ptr %arrayidx9.15 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx9.15, align 8
  %67 = ptrtoint ptr %incdec.ptr10.14 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %66, ptr %incdec.ptr10.14, align 8
  %68 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx17, align 8
  %70 = ptrtoint ptr %incdec.ptr10.15 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %incdec.ptr10.15, align 8
  %71 = ptrtoint ptr %arrayidx17.1 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx17.1, align 8
  %73 = ptrtoint ptr %incdec.ptr18 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %incdec.ptr18, align 8
  %74 = ptrtoint ptr %arrayidx17.2 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx17.2, align 8
  %76 = ptrtoint ptr %incdec.ptr18.1 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %incdec.ptr18.1, align 8
  %77 = ptrtoint ptr %arrayidx17.3 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx17.3, align 8
  %79 = ptrtoint ptr %incdec.ptr18.2 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %incdec.ptr18.2, align 8
  %80 = ptrtoint ptr %arrayidx17.4 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx17.4, align 8
  %82 = ptrtoint ptr %incdec.ptr18.3 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %incdec.ptr18.3, align 8
  %83 = ptrtoint ptr %arrayidx17.5 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx17.5, align 8
  %85 = ptrtoint ptr %incdec.ptr18.4 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %incdec.ptr18.4, align 8
  %86 = ptrtoint ptr %arrayidx17.6 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx17.6, align 8
  %88 = ptrtoint ptr %incdec.ptr18.5 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %incdec.ptr18.5, align 8
  %89 = ptrtoint ptr %arrayidx17.7 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx17.7, align 8
  %91 = ptrtoint ptr %incdec.ptr18.6 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %90, ptr %incdec.ptr18.6, align 8
  %92 = ptrtoint ptr %rx_napi_exits to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %rx_napi_exits, align 8
  %94 = ptrtoint ptr %incdec.ptr18.7 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %93, ptr %incdec.ptr18.7, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  %95 = ptrtoint ptr %rx_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %rx_stats_syncp, align 4
  %cmp.i.i.i.i83.not = icmp eq i32 %96, %call5
  br i1 %cmp.i.i.i.i83.not, label %do.body27.preheader, label %do.body4.do.body4_crit_edge

do.body4.do.body4_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body4

do.body27.preheader:                              ; preds = %do.body4
  %tx_frags_linearized = getelementptr i8, ptr %netdev, i32 3392
  %tx_stats_syncp = getelementptr i8, ptr %netdev, i32 2728
  %tx_hw_csummed = getelementptr i8, ptr %netdev, i32 3400
  %arrayidx32 = getelementptr i8, ptr %netdev, i32 3264
  %arrayidx32.1 = getelementptr i8, ptr %netdev, i32 3272
  %arrayidx32.2 = getelementptr i8, ptr %netdev, i32 3280
  %arrayidx32.3 = getelementptr i8, ptr %netdev, i32 3288
  %arrayidx32.4 = getelementptr i8, ptr %netdev, i32 3296
  %arrayidx32.5 = getelementptr i8, ptr %netdev, i32 3304
  %arrayidx32.6 = getelementptr i8, ptr %netdev, i32 3312
  %arrayidx32.7 = getelementptr i8, ptr %netdev, i32 3320
  %arrayidx32.8 = getelementptr i8, ptr %netdev, i32 3328
  %arrayidx32.9 = getelementptr i8, ptr %netdev, i32 3336
  %arrayidx32.10 = getelementptr i8, ptr %netdev, i32 3344
  %arrayidx32.11 = getelementptr i8, ptr %netdev, i32 3352
  %arrayidx32.12 = getelementptr i8, ptr %netdev, i32 3360
  %arrayidx32.13 = getelementptr i8, ptr %netdev, i32 3368
  %arrayidx32.14 = getelementptr i8, ptr %netdev, i32 3376
  %arrayidx32.15 = getelementptr i8, ptr %netdev, i32 3384
  br label %do.body27

do.body27:                                        ; preds = %do.body27.do.body27_crit_edge, %do.body27.preheader
  %p.2.pn = phi ptr [ %incdec.ptr39, %do.body27.do.body27_crit_edge ], [ %incdec.ptr18.7, %do.body27.preheader ]
  %call28 = tail call fastcc i32 @u64_stats_fetch_begin(ptr noundef %tx_stats_syncp)
  %values.addr.191 = getelementptr i64, ptr %p.2.pn, i32 1
  %97 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx32, align 8
  %99 = ptrtoint ptr %values.addr.191 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %98, ptr %values.addr.191, align 8
  store i64 0, ptr %arrayidx32, align 8
  %values.addr.1 = getelementptr i64, ptr %p.2.pn, i32 2
  %100 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx32.1, align 8
  %102 = ptrtoint ptr %values.addr.1 to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 %101, ptr %values.addr.1, align 8
  store i64 0, ptr %arrayidx32.1, align 8
  %values.addr.1.1 = getelementptr i64, ptr %p.2.pn, i32 3
  %103 = ptrtoint ptr %arrayidx32.2 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx32.2, align 8
  %105 = ptrtoint ptr %values.addr.1.1 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %values.addr.1.1, align 8
  store i64 0, ptr %arrayidx32.2, align 8
  %values.addr.1.2 = getelementptr i64, ptr %p.2.pn, i32 4
  %106 = ptrtoint ptr %arrayidx32.3 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %arrayidx32.3, align 8
  %108 = ptrtoint ptr %values.addr.1.2 to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %107, ptr %values.addr.1.2, align 8
  store i64 0, ptr %arrayidx32.3, align 8
  %values.addr.1.3 = getelementptr i64, ptr %p.2.pn, i32 5
  %109 = ptrtoint ptr %arrayidx32.4 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %arrayidx32.4, align 8
  %111 = ptrtoint ptr %values.addr.1.3 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %values.addr.1.3, align 8
  store i64 0, ptr %arrayidx32.4, align 8
  %values.addr.1.4 = getelementptr i64, ptr %p.2.pn, i32 6
  %112 = ptrtoint ptr %arrayidx32.5 to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx32.5, align 8
  %114 = ptrtoint ptr %values.addr.1.4 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %113, ptr %values.addr.1.4, align 8
  store i64 0, ptr %arrayidx32.5, align 8
  %values.addr.1.5 = getelementptr i64, ptr %p.2.pn, i32 7
  %115 = ptrtoint ptr %arrayidx32.6 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx32.6, align 8
  %117 = ptrtoint ptr %values.addr.1.5 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %values.addr.1.5, align 8
  store i64 0, ptr %arrayidx32.6, align 8
  %values.addr.1.6 = getelementptr i64, ptr %p.2.pn, i32 8
  %118 = ptrtoint ptr %arrayidx32.7 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx32.7, align 8
  %120 = ptrtoint ptr %values.addr.1.6 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %119, ptr %values.addr.1.6, align 8
  store i64 0, ptr %arrayidx32.7, align 8
  %values.addr.1.7 = getelementptr i64, ptr %p.2.pn, i32 9
  %121 = ptrtoint ptr %arrayidx32.8 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx32.8, align 8
  %123 = ptrtoint ptr %values.addr.1.7 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %122, ptr %values.addr.1.7, align 8
  store i64 0, ptr %arrayidx32.8, align 8
  %values.addr.1.8 = getelementptr i64, ptr %p.2.pn, i32 10
  %124 = ptrtoint ptr %arrayidx32.9 to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx32.9, align 8
  %126 = ptrtoint ptr %values.addr.1.8 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %values.addr.1.8, align 8
  store i64 0, ptr %arrayidx32.9, align 8
  %values.addr.1.9 = getelementptr i64, ptr %p.2.pn, i32 11
  %127 = ptrtoint ptr %arrayidx32.10 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx32.10, align 8
  %129 = ptrtoint ptr %values.addr.1.9 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %values.addr.1.9, align 8
  store i64 0, ptr %arrayidx32.10, align 8
  %values.addr.1.10 = getelementptr i64, ptr %p.2.pn, i32 12
  %130 = ptrtoint ptr %arrayidx32.11 to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %arrayidx32.11, align 8
  %132 = ptrtoint ptr %values.addr.1.10 to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %131, ptr %values.addr.1.10, align 8
  store i64 0, ptr %arrayidx32.11, align 8
  %values.addr.1.11 = getelementptr i64, ptr %p.2.pn, i32 13
  %133 = ptrtoint ptr %arrayidx32.12 to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx32.12, align 8
  %135 = ptrtoint ptr %values.addr.1.11 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %134, ptr %values.addr.1.11, align 8
  store i64 0, ptr %arrayidx32.12, align 8
  %values.addr.1.12 = getelementptr i64, ptr %p.2.pn, i32 14
  %136 = ptrtoint ptr %arrayidx32.13 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx32.13, align 8
  %138 = ptrtoint ptr %values.addr.1.12 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %137, ptr %values.addr.1.12, align 8
  store i64 0, ptr %arrayidx32.13, align 8
  %values.addr.1.13 = getelementptr i64, ptr %p.2.pn, i32 15
  %139 = ptrtoint ptr %arrayidx32.14 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %arrayidx32.14, align 8
  %141 = ptrtoint ptr %values.addr.1.13 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %values.addr.1.13, align 8
  store i64 0, ptr %arrayidx32.14, align 8
  %values.addr.1.14 = getelementptr i64, ptr %p.2.pn, i32 16
  %142 = ptrtoint ptr %arrayidx32.15 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx32.15, align 8
  %144 = ptrtoint ptr %values.addr.1.14 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %143, ptr %values.addr.1.14, align 8
  store i64 0, ptr %arrayidx32.15, align 8
  %values.addr.1.15 = getelementptr i64, ptr %p.2.pn, i32 17
  %145 = ptrtoint ptr %tx_frags_linearized to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %tx_frags_linearized, align 8
  %incdec.ptr39 = getelementptr i64, ptr %p.2.pn, i32 18
  %147 = ptrtoint ptr %values.addr.1.15 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %values.addr.1.15, align 8
  %148 = ptrtoint ptr %tx_hw_csummed to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %tx_hw_csummed, align 8
  %150 = ptrtoint ptr %incdec.ptr39 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %149, ptr %incdec.ptr39, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !361
  %151 = ptrtoint ptr %tx_stats_syncp to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %tx_stats_syncp, align 4
  %cmp.i.i.i.i84.not = icmp eq i32 %152, %call28
  br i1 %cmp.i.i.i.i84.not, label %do.end44, label %do.body27.do.body27_crit_edge

do.body27.do.body27_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body27

do.end44:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #20
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gmac_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #17 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp = icmp eq i32 %sset, 1
  %cond = select i1 %cmp, i32 49, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_get_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %1, ptr noundef %cmd) #18
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gmac_set_ksettings(ptr nocapture noundef readonly %netdev, ptr noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %call = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %1, ptr noundef %cmd) #18
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -6, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_start_aneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gmac_rx(ptr noundef %netdev, i32 noundef %budget) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %rxq_order = getelementptr i8, ptr %netdev, i32 2360
  %0 = ptrtoint ptr %rxq_order to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rxq_order, align 8
  %geth1 = getelementptr i8, ptr %netdev, i32 2308
  %2 = ptrtoint ptr %geth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %geth1, align 4
  %rxq_rwptr = getelementptr i8, ptr %netdev, i32 2352
  %4 = ptrtoint ptr %rxq_rwptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxq_rwptr, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #18, !srcloc !273
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !442
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !443
  tail call void @arm_heavy_mb() #18
  %dev_id = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 60
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dev_id, align 2
  %conv4 = zext i16 %9 to i32
  %shl5 = shl nuw i32 1, %conv4
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl5)
  %base = getelementptr inbounds %struct.gemini_ethernet, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #18, !srcloc !281
  %bf.lshr = lshr i32 %7, 16
  %conv6 = trunc i32 %bf.lshr to i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %tobool.not259 = icmp eq i32 %budget, 0
  br i1 %tobool.not259, label %entry.do.body86_crit_edge, label %land.rhs.lr.ph.lr.ph.lr.ph.lr.ph

entry.do.body86_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body86

land.rhs.lr.ph.lr.ph.lr.ph.lr.ph:                 ; preds = %entry
  %notmask = shl nsw i32 -1, %1
  %conv9 = and i32 %7, 65535
  %rxq_ring = getelementptr i8, ptr %netdev, i32 2356
  %13 = trunc i32 %notmask to i16
  %14 = xor i16 %13, -1
  %freeq_pages.i = getelementptr inbounds %struct.gemini_ethernet, ptr %3, i32 0, i32 10
  %num_freeq_pages.i = getelementptr inbounds %struct.gemini_ethernet, ptr %3, i32 0, i32 11
  %skb.i = getelementptr i8, ptr %netdev, i32 2500
  %rx_dropped = getelementptr i8, ptr %netdev, i32 2872
  %napi.i = getelementptr i8, ptr %netdev, i32 2368
  %stats57.i = getelementptr i8, ptr %netdev, i32 2824
  %rx_bytes.i = getelementptr i8, ptr %netdev, i32 2840
  %rx_errors.i = getelementptr i8, ptr %netdev, i32 2856
  %rx_length_errors.i = getelementptr i8, ptr %netdev, i32 2904
  %rx_frame_errors.i = getelementptr i8, ptr %netdev, i32 2928
  %rx_crc_errors96.i = getelementptr i8, ptr %netdev, i32 2920
  %rx_over_errors.i = getelementptr i8, ptr %netdev, i32 2912
  br label %land.rhs.lr.ph.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph.lr.ph:                       ; preds = %if.end75.land.rhs.lr.ph.lr.ph.lr.ph_crit_edge, %land.rhs.lr.ph.lr.ph.lr.ph.lr.ph
  %budget.addr.0.ph.ph.ph263 = phi i32 [ %budget, %land.rhs.lr.ph.lr.ph.lr.ph.lr.ph ], [ %budget.addr.1, %if.end75.land.rhs.lr.ph.lr.ph.lr.ph_crit_edge ]
  %frag_nr.0.ph.ph.ph262 = phi i32 [ 0, %land.rhs.lr.ph.lr.ph.lr.ph.lr.ph ], [ %inc69, %if.end75.land.rhs.lr.ph.lr.ph.lr.ph_crit_edge ]
  %r.0.ph.ph.ph261 = phi i16 [ %conv6, %land.rhs.lr.ph.lr.ph.lr.ph.lr.ph ], [ %conv19, %if.end75.land.rhs.lr.ph.lr.ph.lr.ph_crit_edge ]
  %page.0.ph.ph.ph260 = phi ptr [ null, %land.rhs.lr.ph.lr.ph.lr.ph.lr.ph ], [ %33, %if.end75.land.rhs.lr.ph.lr.ph.lr.ph_crit_edge ]
  %conv10415422431 = zext i16 %r.0.ph.ph.ph261 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv9, i32 %conv10415422431)
  %cmp.not416423432 = icmp eq i32 %conv9, %conv10415422431
  br i1 %cmp.not416423432, label %land.rhs.lr.ph.lr.ph.lr.ph.do.body86_crit_edge, label %land.rhs.lr.ph.lr.ph.lr.ph.while.body.lr.ph.lr.ph_crit_edge

land.rhs.lr.ph.lr.ph.lr.ph.while.body.lr.ph.lr.ph_crit_edge: ; preds = %land.rhs.lr.ph.lr.ph.lr.ph
  br label %while.body.lr.ph.lr.ph

land.rhs.lr.ph.lr.ph.lr.ph.do.body86_crit_edge:   ; preds = %land.rhs.lr.ph.lr.ph.lr.ph
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body86

while.body.lr.ph.lr.ph:                           ; preds = %if.end82.while.body.lr.ph.lr.ph_crit_edge, %land.rhs.lr.ph.lr.ph.lr.ph.while.body.lr.ph.lr.ph_crit_edge
  %conv10415422436 = phi i32 [ %conv10415422, %if.end82.while.body.lr.ph.lr.ph_crit_edge ], [ %conv10415422431, %land.rhs.lr.ph.lr.ph.lr.ph.while.body.lr.ph.lr.ph_crit_edge ]
  %page.0.ph.ph248435 = phi ptr [ %page.1173330, %if.end82.while.body.lr.ph.lr.ph_crit_edge ], [ %page.0.ph.ph.ph260, %land.rhs.lr.ph.lr.ph.lr.ph.while.body.lr.ph.lr.ph_crit_edge ]
  %r.0.ph.ph249434 = phi i16 [ %conv19, %if.end82.while.body.lr.ph.lr.ph_crit_edge ], [ %r.0.ph.ph.ph261, %land.rhs.lr.ph.lr.ph.lr.ph.while.body.lr.ph.lr.ph_crit_edge ]
  %frag_nr.0.ph.ph250433 = phi i32 [ %frag_nr.2174328, %if.end82.while.body.lr.ph.lr.ph_crit_edge ], [ %frag_nr.0.ph.ph.ph262, %land.rhs.lr.ph.lr.ph.lr.ph.while.body.lr.ph.lr.ph_crit_edge ]
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %put_page.exit.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %conv10415426 = phi i32 [ %conv10415422436, %while.body.lr.ph.lr.ph ], [ %conv10415, %put_page.exit.while.body.lr.ph_crit_edge ]
  %page.0.ph242425 = phi ptr [ %page.0.ph.ph248435, %while.body.lr.ph.lr.ph ], [ %33, %put_page.exit.while.body.lr.ph_crit_edge ]
  %r.0.ph243424 = phi i16 [ %r.0.ph.ph249434, %while.body.lr.ph.lr.ph ], [ %conv19, %put_page.exit.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %do.end32.while.body_crit_edge, %while.body.lr.ph
  %conv10418 = phi i32 [ %conv10415426, %while.body.lr.ph ], [ %conv10, %do.end32.while.body_crit_edge ]
  %r.0230417 = phi i16 [ %r.0.ph243424, %while.body.lr.ph ], [ %conv19, %do.end32.while.body_crit_edge ]
  %15 = ptrtoint ptr %rxq_ring to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxq_ring, align 4
  %add.ptr13 = getelementptr %struct.gmac_rxdesc, ptr %16, i32 %conv10418
  %17 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %word0.sroa.0.0.copyload = load i32, ptr %add.ptr13, align 4
  %word115 = getelementptr %struct.gmac_rxdesc, ptr %16, i32 %conv10418, i32 1
  %18 = ptrtoint ptr %word115 to i32
  call void @__asan_load4_noabort(i32 %18)
  %word1.sroa.0.0.copyload = load i32, ptr %word115, align 4
  %word2 = getelementptr %struct.gmac_rxdesc, ptr %16, i32 %conv10418, i32 2
  %19 = ptrtoint ptr %word2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %word2, align 4
  %word316 = getelementptr %struct.gmac_rxdesc, ptr %16, i32 %conv10418, i32 3
  %21 = ptrtoint ptr %word316 to i32
  call void @__asan_load4_noabort(i32 %21)
  %word3.sroa.0.0.copyload = load i32, ptr %word316, align 4
  %inc = add i16 %r.0230417, 1
  %conv19 = and i16 %inc, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #20
  %conv26 = zext i16 %conv19 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.94, i32 noundef %conv26) #21
  br label %err_drop

if.end:                                           ; preds = %while.body
  %add = add i32 %20, 4096
  %and.i = and i32 %add, -4096
  %22 = ptrtoint ptr %freeq_pages.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %freeq_pages.i, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end
  %24 = ptrtoint ptr %num_freeq_pages.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_freeq_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp2.not.i = icmp eq i32 %25, 0
  br i1 %cmp2.not.i, label %for.cond.preheader.i.do.end32_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.do.end32_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end32

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.88) #21
  br label %do.end32

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mapping2.i = getelementptr %struct.gmac_queue_page, ptr %23, i32 %i.03.i, i32 1
  %28 = ptrtoint ptr %mapping2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mapping2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %and.i)
  %cmp3.i = icmp eq i32 %29, %and.i
  br i1 %cmp3.i, label %gmac_get_queue_page.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %for.inc.i.do.end32_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %for.body.i

for.inc.i.do.end32_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end32

gmac_get_queue_page.exit:                         ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.gmac_queue_page, ptr %23, i32 %i.03.i
  %tobool28.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool28.not, label %gmac_get_queue_page.exit.do.end32_crit_edge, label %if.end33

gmac_get_queue_page.exit.do.end32_crit_edge:      ; preds = %gmac_get_queue_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.end32

do.end32:                                         ; preds = %gmac_get_queue_page.exit.do.end32_crit_edge, %for.inc.i.do.end32_crit_edge, %do.end.i, %for.cond.preheader.i.do.end32_crit_edge
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.95) #21
  %conv10 = zext i16 %conv19 to i32
  %cmp.not = icmp eq i32 %conv9, %conv10
  br i1 %cmp.not, label %do.end32.do.body86_crit_edge, label %do.end32.while.body_crit_edge

do.end32.while.body_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body

do.end32.do.body86_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body86

if.end33:                                         ; preds = %gmac_get_queue_page.exit
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %word3.sroa.0.0.copyload)
  %tobool36.not = icmp sgt i32 %word3.sroa.0.0.copyload, -1
  br i1 %tobool36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end33
  %bf.lshr21.le.le = lshr i32 %word0.sroa.0.0.copyload, 16
  %bf.lshr23.le.le = lshr i32 %word1.sroa.0.0.copyload, 16
  %and24.le.le = and i32 %20, 4095
  %34 = load ptr, ptr @gmac_rx.skb, align 4
  %tobool38.not = icmp eq ptr %34, null
  br i1 %tobool38.not, label %if.then37.if.end41_crit_edge, label %if.then39

if.then37.if.end41_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end41

if.then39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #20
  %35 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %36, i32 noundef 0) #18
  %37 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %skb.i, align 4
  %38 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %rx_dropped, align 8
  %inc40 = add i64 %39, 1
  store i64 %inc40, ptr %rx_dropped, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then37.if.end41_crit_edge
  %bf.lshr.i = lshr i32 %word0.sroa.0.0.copyload, 3
  %bf.clear.i = and i32 %bf.lshr.i, 7
  %bf.lshr2.i = lshr i32 %word0.sroa.0.0.copyload, 6
  %bf.clear3.i = and i32 %bf.lshr2.i, 15
  %arrayidx.i134 = getelementptr %struct.gemini_ethernet_port, ptr %add.ptr.i, i32 0, i32 29, i32 %bf.clear3.i
  %40 = ptrtoint ptr %arrayidx.i134 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i134, align 8
  %inc.i135 = add i64 %41, 1
  store i64 %inc.i135, ptr %arrayidx.i134, align 8
  %arrayidx4.i = getelementptr %struct.gemini_ethernet_port, ptr %add.ptr.i, i32 0, i32 30, i32 %bf.clear.i
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx4.i, align 8
  %inc5.i = add i64 %43, 1
  store i64 %inc5.i, ptr %arrayidx4.i, align 8
  %44 = and i32 %word0.sroa.0.0.copyload, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %45 = icmp ne i32 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear3.i)
  %tobool14.not.i = icmp ne i32 %bf.clear3.i, 0
  %or.cond89.i = select i1 %45, i1 true, i1 %tobool14.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3932160, i32 %word1.sroa.0.0.copyload)
  %cmp.i = icmp ult i32 %word1.sroa.0.0.copyload, 3932160
  %or.cond90.i = or i1 %cmp.i, %or.cond89.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bf.clear.i)
  %cmp17.i = icmp ugt i32 %bf.clear.i, 3
  %or.cond91.i = select i1 %or.cond90.i, i1 true, i1 %cmp17.i
  br i1 %or.cond91.i, label %if.then.i, label %if.end48.i

if.then.i:                                        ; preds = %if.end41
  %46 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %rx_errors.i, align 8
  %inc18.i = add i64 %47, 1
  store i64 %inc18.i, ptr %rx_errors.i, align 8
  br i1 %cmp.i, label %if.then.i.if.then26.i_crit_edge, label %switch.early.test.i

if.then.i.if.then26.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then26.i

switch.early.test.i:                              ; preds = %if.then.i
  %48 = zext i32 %bf.clear3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %bf.clear3.i, label %switch.early.test.i.if.then81.sink.split_crit_edge [
    i32 7, label %switch.early.test.i.if.then26.i_crit_edge
    i32 5, label %switch.early.test.i.if.then26.i_crit_edge550
    i32 1, label %switch.early.test.i.if.then26.i_crit_edge551
    i32 10, label %switch.early.test.i.gmac_skb_if_good_frame.exit.thread165_crit_edge
    i32 4, label %switch.early.test.i.if.then37.thread.i_crit_edge
    i32 6, label %switch.early.test.i.if.then44.i_crit_edge
  ]

switch.early.test.i.if.then44.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then44.i

switch.early.test.i.if.then37.thread.i_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then37.thread.i

switch.early.test.i.gmac_skb_if_good_frame.exit.thread165_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_skb_if_good_frame.exit.thread165

switch.early.test.i.if.then26.i_crit_edge551:     ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then26.i

switch.early.test.i.if.then26.i_crit_edge550:     ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then26.i

switch.early.test.i.if.then26.i_crit_edge:        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then26.i

switch.early.test.i.if.then81.sink.split_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then81.sink.split

if.then26.i:                                      ; preds = %switch.early.test.i.if.then26.i_crit_edge, %switch.early.test.i.if.then26.i_crit_edge550, %switch.early.test.i.if.then26.i_crit_edge551, %if.then.i.if.then26.i_crit_edge
  %49 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %rx_length_errors.i, align 8
  %inc28.i = add i64 %50, 1
  store i64 %inc28.i, ptr %rx_length_errors.i, align 8
  %51 = zext i32 %bf.clear3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %bf.clear3.i, label %if.then26.i.if.then81.sink.split_crit_edge [
    i32 10, label %if.then26.i.gmac_skb_if_good_frame.exit.thread165_crit_edge
    i32 4, label %if.then26.i.if.then37.thread.i_crit_edge
    i32 5, label %if.then26.i.if.then37.thread.i_crit_edge552
    i32 6, label %if.then26.i.if.then44.i_crit_edge
    i32 7, label %if.then26.i.if.then44.i_crit_edge553
  ]

if.then26.i.if.then44.i_crit_edge553:             ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then44.i

if.then26.i.if.then44.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then44.i

if.then26.i.if.then37.thread.i_crit_edge552:      ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then37.thread.i

if.then26.i.if.then37.thread.i_crit_edge:         ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then37.thread.i

if.then26.i.gmac_skb_if_good_frame.exit.thread165_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_skb_if_good_frame.exit.thread165

if.then26.i.if.then81.sink.split_crit_edge:       ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then81.sink.split

if.then37.thread.i:                               ; preds = %if.then26.i.if.then37.thread.i_crit_edge, %if.then26.i.if.then37.thread.i_crit_edge552, %switch.early.test.i.if.then37.thread.i_crit_edge
  br label %gmac_skb_if_good_frame.exit.thread165

if.then44.i:                                      ; preds = %if.then26.i.if.then44.i_crit_edge, %if.then26.i.if.then44.i_crit_edge553, %switch.early.test.i.if.then44.i_crit_edge
  br label %gmac_skb_if_good_frame.exit.thread165

if.end48.i:                                       ; preds = %if.end41
  %call.i = tail call ptr @napi_get_frags(ptr noundef %napi.i) #18
  %tobool49.not.i = icmp ne ptr %call.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %cmp52.i = icmp eq i32 %bf.clear.i, 0
  %or.cond95.i = select i1 %tobool49.not.i, i1 %cmp52.i, i1 false
  br i1 %or.cond95.i, label %if.then53.i, label %if.end48.i.gmac_skb_if_good_frame.exit_crit_edge

if.end48.i.gmac_skb_if_good_frame.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %gmac_skb_if_good_frame.exit

if.then53.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #20
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15
  %52 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load54.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear55.i = and i16 %bf.load54.i, -1537
  %bf.set.i = or i16 %bf.clear55.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  br label %gmac_skb_if_good_frame.exit

gmac_skb_if_good_frame.exit.thread165:            ; preds = %if.then44.i, %if.then37.thread.i, %if.then26.i.gmac_skb_if_good_frame.exit.thread165_crit_edge, %switch.early.test.i.gmac_skb_if_good_frame.exit.thread165_crit_edge
  %rx_crc_errors96.sink100.i.ph = phi ptr [ %rx_frame_errors.i, %if.then44.i ], [ %rx_crc_errors96.i, %if.then37.thread.i ], [ %rx_over_errors.i, %if.then26.i.gmac_skb_if_good_frame.exit.thread165_crit_edge ], [ %rx_over_errors.i, %switch.early.test.i.gmac_skb_if_good_frame.exit.thread165_crit_edge ]
  %53 = ptrtoint ptr %rx_crc_errors96.sink100.i.ph to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %rx_crc_errors96.sink100.i.ph, align 8
  %inc3997.i168 = add i64 %54, 1
  store i64 %inc3997.i168, ptr %rx_crc_errors96.sink100.i.ph, align 8
  br label %if.then81.sink.split

gmac_skb_if_good_frame.exit:                      ; preds = %if.then53.i, %if.end48.i.gmac_skb_if_good_frame.exit_crit_edge
  %conv.i = zext i32 %bf.lshr23.le.le to i64
  %55 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %rx_bytes.i, align 8
  %add.i = add i64 %56, %conv.i
  store i64 %add.i, ptr %rx_bytes.i, align 8
  %57 = ptrtoint ptr %stats57.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %stats57.i, align 8
  %inc3997.i = add i64 %58, 1
  store i64 %inc3997.i, ptr %stats57.i, align 8
  store ptr %call.i, ptr @gmac_rx.skb, align 4
  %tobool43.not = icmp eq ptr %call.i, null
  br i1 %tobool43.not, label %gmac_skb_if_good_frame.exit.if.then81_crit_edge, label %if.end45

gmac_skb_if_good_frame.exit.if.then81_crit_edge:  ; preds = %gmac_skb_if_good_frame.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then81

if.end45:                                         ; preds = %gmac_skb_if_good_frame.exit
  call void @__sanitizer_cov_trace_pc() #20
  %add46 = add nuw nsw i32 %and24.le.le, 2
  %sub47 = add nsw i32 %bf.lshr21.le.le, -2
  br label %if.end51

if.else:                                          ; preds = %if.end33
  %59 = load ptr, ptr @gmac_rx.skb, align 4
  %tobool48.not = icmp eq ptr %59, null
  br i1 %tobool48.not, label %if.then49, label %if.end51.loopexit

if.then49:                                        ; preds = %if.else
  %60 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %60, align 4
  %and.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !282

if.then.i.i:                                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i = add i32 %62, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #20
  %63 = ptrtoint ptr %33 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %63, %if.end.i.i ]
  %64 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %64, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  %65 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp.i.i.i.i = icmp eq i32 %66, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !283

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #20
  %67 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %67, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !284
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #18
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #18, !srcloc !286
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gmac_rx, %if.then.i.i.i.i.i)) #18
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !288

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %64, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #18
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %64) #18
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %conv10415 = zext i16 %conv19 to i32
  %cmp.not416 = icmp eq i32 %conv9, %conv10415
  br i1 %cmp.not416, label %put_page.exit.do.body86_crit_edge, label %put_page.exit.while.body.lr.ph_crit_edge

put_page.exit.while.body.lr.ph_crit_edge:         ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.lr.ph

put_page.exit.do.body86_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body86

if.end51.loopexit:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #20
  %bf.lshr21.le.le240 = lshr i32 %word0.sroa.0.0.copyload, 16
  %bf.lshr23.le.le238 = lshr i32 %word1.sroa.0.0.copyload, 16
  %and24.le.le236 = and i32 %20, 4095
  br label %if.end51

if.end51:                                         ; preds = %if.end51.loopexit, %if.end45
  %bf.lshr23192 = phi i32 [ %bf.lshr23.le.le, %if.end45 ], [ %bf.lshr23.le.le238, %if.end51.loopexit ]
  %frag_len.0 = phi i32 [ %sub47, %if.end45 ], [ %bf.lshr21.le.le240, %if.end51.loopexit ]
  %page_offs.0 = phi i32 [ %add46, %if.end45 ], [ %and24.le.le236, %if.end51.loopexit ]
  %frag_nr.1 = phi i32 [ 0, %if.end45 ], [ %frag_nr.0.ph.ph250433, %if.end51.loopexit ]
  %and52 = and i32 %word3.sroa.0.0.copyload, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end51.if.end56_crit_edge, label %if.then54

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end56

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #20
  %69 = load ptr, ptr @gmac_rx.skb, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %sub55 = sub i32 %bf.lshr23192, %71
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %if.end51.if.end56_crit_edge
  %frag_len.1 = phi i32 [ %sub55, %if.then54 ], [ %frag_len.0, %if.end51.if.end56_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %frag_nr.1)
  %cmp57 = icmp eq i32 %frag_nr.1, 17
  br i1 %cmp57, label %if.end56.err_drop_crit_edge, label %if.end60

if.end56.err_drop_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #20
  br label %err_drop

if.end60:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frag_len.1)
  %cmp61 = icmp eq i32 %frag_len.1, 0
  br i1 %cmp61, label %if.then63, label %if.end60.if.end64_crit_edge

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end64

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #20
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %netdev, ptr noundef nonnull @.str.97) #21
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end60.if.end64_crit_edge
  %72 = load ptr, ptr @gmac_rx.skb, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 17
  %73 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %frag_nr.1
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %33, ptr %arrayidx.i.i, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %frag_nr.1, i32 2
  %76 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %page_offs.0, ptr %bv_offset.i.i, align 4
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %frag_nr.1, i32 1
  %77 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %frag_len.1, ptr %bv_len.i.i.i, align 4
  %78 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %78, align 4
  %and.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i, !prof !282

if.then.i.i.i:                                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i.i = add i32 %80, -1
  br label %_compound_head.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #20
  %81 = ptrtoint ptr %33 to i32
  br label %_compound_head.exit.i.i

_compound_head.exit.i.i:                          ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %sub.i.i.i, %if.then.i.i.i ], [ %81, %if.end.i.i.i ]
  %82 = inttoptr i32 %retval.0.i.i.i to ptr
  %83 = getelementptr inbounds %struct.page, ptr %82, i32 0, i32 1
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %86 = ptrtoint ptr %85 to i32
  %and.i8.i.i = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i8.i.i, 0
  br i1 %tobool.i.not.i.i, label %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge, label %if.then.i.i137

_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  br label %skb_fill_page_desc.exit

if.then.i.i137:                                   ; preds = %_compound_head.exit.i.i
  call void @__sanitizer_cov_trace_pc() #20
  %pfmemalloc.i.i = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 12
  %87 = ptrtoint ptr %pfmemalloc.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %bf.load.i.i = load i8, ptr %pfmemalloc.i.i, align 2
  %bf.set.i.i = or i8 %bf.load.i.i, 2
  store i8 %bf.set.i.i, ptr %pfmemalloc.i.i, align 2
  br label %skb_fill_page_desc.exit

skb_fill_page_desc.exit:                          ; preds = %if.then.i.i137, %_compound_head.exit.i.i.skb_fill_page_desc.exit_crit_edge
  %88 = trunc i32 %frag_nr.1 to i8
  %conv.i138 = add i8 %88, 1
  %89 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv.i138, ptr %nr_frags.i, align 2
  %len65 = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 6
  %92 = ptrtoint ptr %len65 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len65, align 4
  %add66 = add i32 %93, %frag_len.1
  store i32 %add66, ptr %len65, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 7
  %94 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_len, align 8
  %add67 = add i32 %95, %frag_len.1
  store i32 %add67, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %72, i32 0, i32 20
  %96 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %truesize, align 8
  %add68 = add i32 %97, %frag_len.1
  store i32 %add68, ptr %truesize, align 8
  %inc69 = add i32 %frag_nr.1, 1
  br i1 %tobool53.not, label %skb_fill_page_desc.exit.if.end75_crit_edge, label %if.then72

skb_fill_page_desc.exit.if.end75_crit_edge:       ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end75

if.then72:                                        ; preds = %skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #20
  %call74 = tail call i32 @napi_gro_frags(ptr noundef %napi.i) #18
  store ptr null, ptr @gmac_rx.skb, align 4
  %dec = add i32 %budget.addr.0.ph.ph.ph263, -1
  br label %if.end75

if.end75:                                         ; preds = %if.then72, %skb_fill_page_desc.exit.if.end75_crit_edge
  %budget.addr.1 = phi i32 [ %dec, %if.then72 ], [ %budget.addr.0.ph.ph.ph263, %skb_fill_page_desc.exit.if.end75_crit_edge ]
  %tobool.not = icmp eq i32 %budget.addr.1, 0
  br i1 %tobool.not, label %if.end75.do.body86_crit_edge, label %if.end75.land.rhs.lr.ph.lr.ph.lr.ph_crit_edge

if.end75.land.rhs.lr.ph.lr.ph.lr.ph_crit_edge:    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #20
  br label %land.rhs.lr.ph.lr.ph.lr.ph

if.end75.do.body86_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body86

err_drop:                                         ; preds = %if.end56.err_drop_crit_edge, %if.then
  %page.1.ph = phi ptr [ %page.0.ph242425, %if.then ], [ %33, %if.end56.err_drop_crit_edge ]
  %frag_nr.2.ph = phi i32 [ %frag_nr.0.ph.ph250433, %if.then ], [ 17, %if.end56.err_drop_crit_edge ]
  %.pr = load ptr, ptr @gmac_rx.skb, align 4
  %tobool76.not = icmp eq ptr %.pr, null
  br i1 %tobool76.not, label %if.end79, label %if.then77

if.then77:                                        ; preds = %err_drop
  %98 = ptrtoint ptr %skb.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %99, i32 noundef 0) #18
  %100 = ptrtoint ptr %skb.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %skb.i, align 4
  store ptr null, ptr @gmac_rx.skb, align 4
  br i1 %tobool25.not, label %if.then77.if.end82_crit_edge, label %if.then77.if.then81_crit_edge

if.then77.if.then81_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then81

if.then77.if.end82_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.end79:                                         ; preds = %err_drop
  br i1 %tobool25.not, label %if.end79.if.end82_crit_edge, label %if.end79.if.then81_crit_edge

if.end79.if.then81_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.then81

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.then81.sink.split:                             ; preds = %gmac_skb_if_good_frame.exit.thread165, %if.then26.i.if.then81.sink.split_crit_edge, %switch.early.test.i.if.then81.sink.split_crit_edge
  store ptr null, ptr @gmac_rx.skb, align 4
  br label %if.then81

if.then81:                                        ; preds = %if.then81.sink.split, %if.end79.if.then81_crit_edge, %if.then77.if.then81_crit_edge, %gmac_skb_if_good_frame.exit.if.then81_crit_edge
  %page.1173329 = phi ptr [ %page.1.ph, %if.end79.if.then81_crit_edge ], [ %page.1.ph, %if.then77.if.then81_crit_edge ], [ %33, %gmac_skb_if_good_frame.exit.if.then81_crit_edge ], [ %33, %if.then81.sink.split ]
  %frag_nr.2174327 = phi i32 [ %frag_nr.2.ph, %if.end79.if.then81_crit_edge ], [ %frag_nr.2.ph, %if.then77.if.then81_crit_edge ], [ %frag_nr.0.ph.ph250433, %gmac_skb_if_good_frame.exit.if.then81_crit_edge ], [ %frag_nr.0.ph.ph250433, %if.then81.sink.split ]
  %101 = getelementptr inbounds %struct.page, ptr %page.1173329, i32 0, i32 1
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load volatile i32, ptr %101, align 4
  %and.i.i140 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i140)
  %tobool.not.i.i141 = icmp eq i32 %and.i.i140, 0
  br i1 %tobool.not.i.i141, label %if.end.i.i144, label %if.then.i.i143, !prof !282

if.then.i.i143:                                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #20
  %sub.i.i142 = add i32 %103, -1
  br label %_compound_head.exit.i149

if.end.i.i144:                                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #20
  %104 = ptrtoint ptr %page.1173329 to i32
  br label %_compound_head.exit.i149

_compound_head.exit.i149:                         ; preds = %if.end.i.i144, %if.then.i.i143
  %retval.0.i.i145 = phi i32 [ %sub.i.i142, %if.then.i.i143 ], [ %104, %if.end.i.i144 ]
  %105 = inttoptr i32 %retval.0.i.i145 to ptr
  %_refcount.i.i.i.i.i146 = getelementptr inbounds %struct.page, ptr %105, i32 0, i32 3
  %call.i.i.i.i.i.i.i147 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i146, i32 noundef 4) #18
  %106 = ptrtoint ptr %_refcount.i.i.i.i.i146 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %_refcount.i.i.i.i.i146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp.i.i.i.i148 = icmp eq i32 %107, 0
  br i1 %cmp.i.i.i.i148, label %if.then.i.i.i.i150, label %do.end5.i.i.i.i154, !prof !283

if.then.i.i.i.i150:                               ; preds = %_compound_head.exit.i149
  call void @__sanitizer_cov_trace_pc() #20
  %108 = inttoptr i32 %retval.0.i.i145 to ptr
  tail call void @dump_page(ptr noundef %108, ptr noundef nonnull @.str.13) #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #18, !srcloc !284
  unreachable

do.end5.i.i.i.i154:                               ; preds = %_compound_head.exit.i149
  %call.i.i.i10.i.i.i.i151 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i146, i32 noundef 4) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !285
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i146, i32 1, i32 3, i32 1) #18
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i146, ptr %_refcount.i.i.i.i.i146, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i146) #18, !srcloc !286
  %asmresult.i.i.i.i.i.i.i.i.i.i152 = extractvalue { i32, i32 } %109, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #18, !srcloc !287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i152)
  %cmp.i.i.i.i.i.i.i153 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i152, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@gmac_rx, %if.then.i.i.i.i.i156)) #18
          to label %folio_put_testzero.exit.i.i157 [label %if.then.i.i.i.i.i156], !srcloc !288

if.then.i.i.i.i.i156:                             ; preds = %do.end5.i.i.i.i154
  call void @__sanitizer_cov_trace_pc() #20
  %conv.i.i.i.i.i155 = zext i1 %cmp.i.i.i.i.i.i.i153 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %105, i32 noundef -1, i32 noundef %conv.i.i.i.i.i155) #18
  br label %folio_put_testzero.exit.i.i157

folio_put_testzero.exit.i.i157:                   ; preds = %if.then.i.i.i.i.i156, %do.end5.i.i.i.i154
  br i1 %cmp.i.i.i.i.i.i.i153, label %if.then.i4.i158, label %folio_put_testzero.exit.i.i157.if.end82_crit_edge

folio_put_testzero.exit.i.i157.if.end82_crit_edge: ; preds = %folio_put_testzero.exit.i.i157
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end82

if.then.i4.i158:                                  ; preds = %folio_put_testzero.exit.i.i157
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @__put_page(ptr noundef %105) #18
  br label %if.end82

if.end82:                                         ; preds = %if.then.i4.i158, %folio_put_testzero.exit.i.i157.if.end82_crit_edge, %if.end79.if.end82_crit_edge, %if.then77.if.end82_crit_edge
  %page.1173330 = phi ptr [ %page.1173329, %if.then.i4.i158 ], [ %page.1173329, %folio_put_testzero.exit.i.i157.if.end82_crit_edge ], [ %page.1.ph, %if.end79.if.end82_crit_edge ], [ %page.1.ph, %if.then77.if.end82_crit_edge ]
  %frag_nr.2174328 = phi i32 [ %frag_nr.2174327, %if.then.i4.i158 ], [ %frag_nr.2174327, %folio_put_testzero.exit.i.i157.if.end82_crit_edge ], [ %frag_nr.2.ph, %if.end79.if.end82_crit_edge ], [ %frag_nr.2.ph, %if.then77.if.end82_crit_edge ]
  %110 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rx_dropped, align 8
  %inc85 = add i64 %111, 1
  store i64 %inc85, ptr %rx_dropped, align 8
  %conv10415422 = zext i16 %conv19 to i32
  %cmp.not416423 = icmp eq i32 %conv9, %conv10415422
  br i1 %cmp.not416423, label %if.end82.do.body86_crit_edge, label %if.end82.while.body.lr.ph.lr.ph_crit_edge

if.end82.while.body.lr.ph.lr.ph_crit_edge:        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %while.body.lr.ph.lr.ph

if.end82.do.body86_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #20
  br label %do.body86

do.body86:                                        ; preds = %if.end82.do.body86_crit_edge, %if.end75.do.body86_crit_edge, %put_page.exit.do.body86_crit_edge, %do.end32.do.body86_crit_edge, %land.rhs.lr.ph.lr.ph.lr.ph.do.body86_crit_edge, %entry.do.body86_crit_edge
  %budget.addr.0.ph.ph.ph.lcssa = phi i32 [ 0, %entry.do.body86_crit_edge ], [ %budget.addr.0.ph.ph.ph263, %do.end32.do.body86_crit_edge ], [ %budget.addr.0.ph.ph.ph263, %put_page.exit.do.body86_crit_edge ], [ %budget.addr.0.ph.ph.ph263, %if.end82.do.body86_crit_edge ], [ 0, %if.end75.do.body86_crit_edge ], [ %budget.addr.0.ph.ph.ph263, %land.rhs.lr.ph.lr.ph.lr.ph.do.body86_crit_edge ]
  %r.0.lcssa = phi i16 [ %conv6, %entry.do.body86_crit_edge ], [ %conv19, %do.end32.do.body86_crit_edge ], [ %conv19, %put_page.exit.do.body86_crit_edge ], [ %conv19, %if.end82.do.body86_crit_edge ], [ %conv19, %if.end75.do.body86_crit_edge ], [ %r.0.ph.ph.ph261, %land.rhs.lr.ph.lr.ph.lr.ph.do.body86_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !444
  tail call void @arm_heavy_mb() #18
  %112 = tail call i16 @llvm.bswap.i16(i16 %r.0.lcssa)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %5, i16 %112) #18, !srcloc !279
  ret i32 %budget.addr.0.ph.ph.ph.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_gro_flush(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_frags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @napi_get_frags(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_get_and_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gmac_speed_set(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #20
  call void @llvm.arm.gnu.eabi.mcount()
  %phydev1 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 145
  %0 = ptrtoint ptr %phydev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phydev1, align 16
  %gmac_base = getelementptr i8, ptr %netdev, i32 2324
  %2 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gmac_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #18, !srcloc !273
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !445
  %link = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %link, align 8
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.value = zext i16 %bf.lshr to i32
  %bf.shl = shl i32 %bf.value, 31
  %bf.clear5 = and i32 %5, 1879048191
  %bf.set = or i32 %bf.shl, %bf.clear5
  %duplex = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %duplex, align 4
  %bf.value7 = shl i32 %8, 28
  %bf.shl8 = and i32 %bf.value7, 268435456
  %bf.set10 = or i32 %bf.set, %bf.shl8
  %speed = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %speed, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %10, label %sw.default [
    i32 1000, label %sw.bb
    i32 100, label %sw.bb28
    i32 10, label %sw.bb59
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear12 = and i32 %bf.set10, -1610612737
  %interface = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interface, align 4
  %14 = add i32 %13, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp ult i32 %14, 4
  %spec.select.v = select i1 %15, i32 1174405120, i32 1073741824
  %spec.select = or i32 %spec.select.v, %bf.clear12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_speed_set.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_speed_set, %if.then23)) #18
          to label %sw.epilog [label %if.then23], !srcloc !288

if.then23:                                        ; preds = %sw.bb
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then23.phydev_name.exit_crit_edge

if.then23.phydev_name.exit_crit_edge:             ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  br label %phydev_name.exit

if.end.i.i:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #20
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  br label %phydev_name.exit

phydev_name.exit:                                 ; preds = %if.end.i.i, %if.then23.phydev_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.then23.phydev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_speed_set.__UNIQUE_ID_ddebug486, ptr noundef %netdev, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i.i) #18
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear30 = and i32 %bf.set10, -1610612737
  %bf.set31 = or i32 %bf.clear30, 536870912
  %interface32 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %interface32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interface32, align 4
  %22 = add i32 %21, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  %bf.clear36 = and i32 %bf.set31, -1174405121
  %bf.set37 = or i32 %bf.clear36, 67108864
  %status.sroa.0.1 = select i1 %23, i32 %bf.set37, i32 %bf.set31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_speed_set.__UNIQUE_ID_ddebug487, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_speed_set, %if.then52)) #18
          to label %sw.epilog [label %if.then52], !srcloc !288

if.then52:                                        ; preds = %sw.bb28
  %init_name.i.i180 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %init_name.i.i180 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i.i180, align 8
  %tobool.not.i.i181 = icmp eq ptr %25, null
  br i1 %tobool.not.i.i181, label %if.end.i.i182, label %if.then52.phydev_name.exit184_crit_edge

if.then52.phydev_name.exit184_crit_edge:          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  br label %phydev_name.exit184

if.end.i.i182:                                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #20
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  br label %phydev_name.exit184

phydev_name.exit184:                              ; preds = %if.end.i.i182, %if.then52.phydev_name.exit184_crit_edge
  %retval.0.i.i183 = phi ptr [ %27, %if.end.i.i182 ], [ %25, %if.then52.phydev_name.exit184_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_speed_set.__UNIQUE_ID_ddebug487, ptr noundef %netdev, ptr noundef nonnull @.str.105, ptr noundef %retval.0.i.i183) #18
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #20
  %bf.clear61 = and i32 %bf.set10, -1610612737
  %interface63 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %interface63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %interface63, align 4
  %30 = add i32 %29, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %31 = icmp ult i32 %30, 4
  %bf.clear67 = and i32 %bf.set10, -1711276033
  %bf.set68 = or i32 %bf.clear67, 67108864
  %status.sroa.0.2 = select i1 %31, i32 %bf.set68, i32 %bf.clear61
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gmac_speed_set.__UNIQUE_ID_ddebug488, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@gmac_speed_set, %if.then83)) #18
          to label %sw.epilog [label %if.then83], !srcloc !288

if.then83:                                        ; preds = %sw.bb59
  %init_name.i.i185 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i.i185 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i185, align 8
  %tobool.not.i.i186 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i186, label %if.end.i.i187, label %if.then83.phydev_name.exit189_crit_edge

if.then83.phydev_name.exit189_crit_edge:          ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #20
  br label %phydev_name.exit189

if.end.i.i187:                                    ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #20
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  br label %phydev_name.exit189

phydev_name.exit189:                              ; preds = %if.end.i.i187, %if.then83.phydev_name.exit189_crit_edge
  %retval.0.i.i188 = phi ptr [ %35, %if.end.i.i187 ], [ %33, %if.then83.phydev_name.exit189_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @gmac_speed_set.__UNIQUE_ID_ddebug488, ptr noundef %netdev, ptr noundef nonnull @.str.106, ptr noundef %retval.0.i.i188) #18
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %init_name.i.i190 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %init_name.i.i190 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i.i190, align 8
  %tobool.not.i.i191 = icmp eq ptr %37, null
  br i1 %tobool.not.i.i191, label %if.end.i.i192, label %sw.default.phydev_name.exit194_crit_edge

sw.default.phydev_name.exit194_crit_edge:         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #20
  br label %phydev_name.exit194

if.end.i.i192:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #20
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  br label %phydev_name.exit194

phydev_name.exit194:                              ; preds = %if.end.i.i192, %sw.default.phydev_name.exit194_crit_edge
  %retval.0.i.i193 = phi ptr [ %39, %if.end.i.i192 ], [ %37, %sw.default.phydev_name.exit194_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %netdev, ptr noundef nonnull @.str.107, i32 noundef %10, ptr noundef %retval.0.i.i193) #21
  br label %sw.epilog

sw.epilog:                                        ; preds = %phydev_name.exit194, %phydev_name.exit189, %sw.bb59, %phydev_name.exit184, %sw.bb28, %phydev_name.exit, %sw.bb
  %status.sroa.0.3 = phi i32 [ %bf.set10, %phydev_name.exit194 ], [ %status.sroa.0.2, %phydev_name.exit189 ], [ %status.sroa.0.1, %phydev_name.exit184 ], [ %spec.select, %phydev_name.exit ], [ %spec.select, %sw.bb ], [ %status.sroa.0.1, %sw.bb28 ], [ %status.sroa.0.2, %sw.bb59 ]
  %40 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp = icmp eq i32 %41, 1
  br i1 %cmp, label %if.then93, label %sw.epilog.if.end107_crit_edge

sw.epilog.if.end107_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end107

if.then93:                                        ; preds = %sw.epilog
  %bus.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 1
  %42 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bus.i, align 8
  %addr.i = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addr.i, align 8
  %call.i = tail call i32 @mdiobus_read(ptr noundef %43, i32 noundef %45, i32 noundef 4) #18
  %46 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bus.i, align 8
  %48 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %addr.i, align 8
  %call.i197 = tail call i32 @mdiobus_read(ptr noundef %47, i32 noundef %49, i32 noundef 5) #18
  %and25.i227 = and i32 %call.i197, %call.i
  %and2.i = and i32 %and25.i227, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then93.if.end107_crit_edge

if.then93.if.end107_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end107

if.else.i:                                        ; preds = %if.then93
  %and6.i = and i32 %and25.i227, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp ne i32 %and6.i, 0
  %50 = and i32 %call.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool11.not.i = icmp eq i32 %50, 0
  %or.cond = select i1 %tobool7.not.i, i1 %tobool11.not.i, i1 false
  br i1 %or.cond, label %mii_resolve_flowctrl_fdx.exit, label %mii_resolve_flowctrl_fdx.exit.thread

mii_resolve_flowctrl_fdx.exit.thread:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #20
  %and6.i.lobit = lshr exact i32 %and6.i, 11
  br label %select.unfold

mii_resolve_flowctrl_fdx.exit:                    ; preds = %if.else.i
  %51 = and i32 %call.i197, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool104.not = icmp eq i32 %51, 0
  br i1 %tobool104.not, label %mii_resolve_flowctrl_fdx.exit.select.unfold_crit_edge, label %mii_resolve_flowctrl_fdx.exit.if.end107_crit_edge

mii_resolve_flowctrl_fdx.exit.if.end107_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end107

mii_resolve_flowctrl_fdx.exit.select.unfold_crit_edge: ; preds = %mii_resolve_flowctrl_fdx.exit
  call void @__sanitizer_cov_trace_pc() #20
  br label %select.unfold

select.unfold:                                    ; preds = %mii_resolve_flowctrl_fdx.exit.select.unfold_crit_edge, %mii_resolve_flowctrl_fdx.exit.thread
  %spec.select173217 = phi i32 [ %and6.i.lobit, %mii_resolve_flowctrl_fdx.exit.thread ], [ 0, %mii_resolve_flowctrl_fdx.exit.select.unfold_crit_edge ]
  br label %if.end107

if.end107:                                        ; preds = %select.unfold, %mii_resolve_flowctrl_fdx.exit.if.end107_crit_edge, %if.then93.if.end107_crit_edge, %sw.epilog.if.end107_crit_edge
  %pause_rx.1 = phi i32 [ 0, %mii_resolve_flowctrl_fdx.exit.if.end107_crit_edge ], [ 0, %sw.epilog.if.end107_crit_edge ], [ %spec.select173217, %select.unfold ], [ 1, %if.then93.if.end107_crit_edge ]
  %tobool108.not = phi i1 [ false, %mii_resolve_flowctrl_fdx.exit.if.end107_crit_edge ], [ true, %sw.epilog.if.end107_crit_edge ], [ true, %select.unfold ], [ false, %if.then93.if.end107_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pause_rx.1)
  %tobool109.not = icmp eq i32 %pause_rx.1, 0
  %config_lock.i = getelementptr i8, ptr %netdev, i32 2684
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %52 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %gmac_base, align 4
  %add.ptr.i198 = getelementptr i8, ptr %53, i32 24
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !446
  %55 = and i32 %54, -12582913
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #18
  %or.i = or i32 %56, 32768
  %spec.select228 = select i1 %tobool108.not, i32 %56, i32 %or.i
  %or12.i = or i32 %spec.select228, 16384
  %57 = select i1 %tobool109.not, i32 %spec.select228, i32 %or12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !447
  tail call void @arm_heavy_mb() #18
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #18
  %59 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %gmac_base, align 4
  %add.ptr18.i = getelementptr i8, ptr %60, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %58) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call4.i) #18
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %status.sroa.0.3)
  %cmp110 = icmp eq i32 %5, %status.sroa.0.3
  br i1 %cmp110, label %if.end107.cleanup_crit_edge, label %if.end113

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #20
  br label %cleanup

if.end113:                                        ; preds = %if.end107
  %msg_enable = getelementptr i8, ptr %netdev, i32 2680
  %61 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable, align 8
  %and114 = and i32 %62, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end123_crit_edge, label %if.then116

if.end113.if.end123_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  br label %if.end123

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #20
  tail call void @phy_print_status(ptr noundef %1) #18
  %pause = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %pause to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool117.not = icmp eq i32 %64, 0
  %asym_pause119 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 12
  %65 = ptrtoint ptr %asym_pause119 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %asym_pause119, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool120.not = icmp eq i32 %66, 0
  %cond = select i1 %tobool120.not, ptr @.str.110, ptr @.str.109
  %cond121 = select i1 %tobool120.not, ptr @.str.112, ptr @.str.111
  %cond122 = select i1 %tobool117.not, ptr %cond121, ptr %cond
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %netdev, ptr noundef nonnull @.str.108, ptr noundef nonnull %cond122) #21
  br label %if.end123

if.end123:                                        ; preds = %if.then116, %if.end113.if.end123_crit_edge
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %67 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %gmac_base, align 4
  %add.ptr.i201 = getelementptr i8, ptr %68, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !347
  %70 = or i32 %69, 50331648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !348
  tail call void @arm_heavy_mb() #18
  %71 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %gmac_base, align 4
  %add.ptr13.i = getelementptr i8, ptr %72, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %70) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call3.i) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 214748000) #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !448
  tail call void @arm_heavy_mb() #18
  %83 = tail call i32 @llvm.bswap.i32(i32 %status.sroa.0.3)
  %84 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %gmac_base, align 4
  %add.ptr128 = getelementptr i8, ptr %85, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %83) #18, !srcloc !281
  %call3.i203 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %config_lock.i) #18
  %86 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %gmac_base, align 4
  %add.ptr.i205 = getelementptr i8, ptr %87, i32 24
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #18, !srcloc !273
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !345
  %89 = and i32 %88, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #18, !srcloc !346
  tail call void @arm_heavy_mb() #18
  %90 = ptrtoint ptr %gmac_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gmac_base, align 4
  %add.ptr13.i206 = getelementptr i8, ptr %91, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i206, i32 %89) #18, !srcloc !281
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %config_lock.i, i32 noundef %call3.i203) #18
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.end107.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_max_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_support_asym_pause(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #18

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #19 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #18 = { nounwind }
attributes #19 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #20 = { nomerge }
attributes #21 = { cold nounwind }
attributes #22 = { nobuiltin }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !138, !139, !140, !141, !142, !144, !145, !147, !148, !149, !151, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !203, !205, !206, !208, !210, !212, !214, !216, !218, !220, !222, !223, !224, !225, !227, !229, !230, !231, !233, !234, !236, !237, !239, !241, !242, !243, !245, !246, !248, !249, !251, !253, !255, !257, !259, !261}
!llvm.named.register.sp = !{!263}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype484, !1, !"__UNIQUE_ID_debugtype484", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug485, !4, !"__UNIQUE_ID_debug485", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 51, i32 1}
!5 = !{ptr @__initcall__kmod_gemini__509_2623_gemini_ethernet_module_init6, !6, !"__initcall__kmod_gemini__509_2623_gemini_ethernet_module_init6", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2623, i32 1}
!7 = !{ptr @__exitcall_gemini_ethernet_module_exit, !8, !"__exitcall_gemini_ethernet_module_exit", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2630, i32 1}
!9 = !{ptr @__UNIQUE_ID_author510, !10, !"__UNIQUE_ID_author510", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2632, i32 1}
!11 = !{ptr @__UNIQUE_ID_description511, !12, !"__UNIQUE_ID_description511", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2633, i32 1}
!13 = !{ptr @__UNIQUE_ID_file512, !14, !"__UNIQUE_ID_file512", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2634, i32 1}
!15 = !{ptr @__UNIQUE_ID_license513, !14, !"__UNIQUE_ID_license513", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias514, !17, !"__UNIQUE_ID_alias514", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2635, i32 1}
!18 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 49, i32 12}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2600, i32 11}
!23 = !{ptr @gemini_ethernet_driver, !24, !"gemini_ethernet_driver", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2598, i32 31}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2564, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gemini_ethernet_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @gemini_ethernet_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2567, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @gemini_ethernet_probe._entry.6, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @gemini_ethernet_probe._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @gemini_ethernet_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2570, i32 2}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gemini_ethernet_probe.__key.11, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2571, i32 2}
!43 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/mm.h", i32 717, i32 2}
!46 = !{ptr @gemini_ethernet_of_match, !47, !"gemini_ethernet_of_match", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2590, i32 34}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2534, i32 11}
!50 = !{ptr @gemini_ethernet_port_driver, !51, !"gemini_ethernet_port_driver", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2532, i32 31}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2365, i32 26}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2365, i32 39}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2378, i32 29}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2380, i32 34}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2385, i32 2}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @gemini_ethernet_port_probe._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @gemini_ethernet_port_probe._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2389, i32 3}
!67 = !{ptr @gemini_ethernet_port_probe._entry.21, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @gemini_ethernet_port_probe._entry_ptr.23, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2404, i32 3}
!71 = !{ptr @gemini_ethernet_port_probe._entry.24, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @gemini_ethernet_port_probe._entry_ptr.26, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2411, i32 3}
!75 = !{ptr @gemini_ethernet_port_probe._entry.27, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @gemini_ethernet_port_probe._entry_ptr.29, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2422, i32 33}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2424, i32 3}
!81 = !{ptr @gemini_ethernet_port_probe._entry.31, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @gemini_ethernet_port_probe._entry_ptr.33, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2437, i32 3}
!85 = !{ptr @gemini_ethernet_port_probe._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @gemini_ethernet_port_probe._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @gemini_ethernet_port_probe.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2461, i32 2}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2479, i32 3}
!92 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @gemini_ethernet_port_probe.__UNIQUE_ID_ddebug508, !91, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2482, i32 3}
!96 = !{ptr @gemini_ethernet_port_probe._entry.40, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @gemini_ethernet_port_probe._entry_ptr.42, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2500, i32 7}
!100 = !{ptr @gmac_351x_ops, !101, !"gmac_351x_ops", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2206, i32 36}
!102 = !{ptr @gmac_maxlens, !103, !"gmac_maxlens", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 422, i32 39}
!104 = !{ptr @.str.44, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1772, i32 22}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1784, i32 22}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1790, i32 22}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1796, i32 22}
!112 = !{ptr @.str.48, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1812, i32 2}
!114 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @gmac_open.__UNIQUE_ID_ddebug503, !113, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1684, i32 22}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1547, i32 21}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1556, i32 21}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1564, i32 21}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1571, i32 21}
!126 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1581, i32 21}
!128 = !{ptr @.str.56, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1588, i32 21}
!130 = !{ptr @.str.57, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1601, i32 21}
!132 = !{ptr @.str.58, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1114, i32 2}
!134 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @gmac_tx_irq_enable.__UNIQUE_ID_ddebug500, !133, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!136 = !{ptr @.str.60, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1341, i32 2}
!138 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @gmac_enable_rx_irq.__UNIQUE_ID_ddebug502, !137, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!140 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!142 = distinct !{null, !143, !"__already_done", i1 false, i1 false}
!143 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!144 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1060, i32 2}
!147 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @geth_resize_freeq.__UNIQUE_ID_ddebug495, !146, !"__UNIQUE_ID_ddebug495", i1 false, i1 false}
!149 = !{ptr @geth_resize_freeq.__UNIQUE_ID_ddebug496, !150, !"__UNIQUE_ID_ddebug496", i1 false, i1 false}
!150 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1067, i32 3}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1074, i32 2}
!153 = !{ptr @geth_resize_freeq.__UNIQUE_ID_ddebug499, !152, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!154 = !{ptr @.str.68, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 943, i32 3}
!156 = !{ptr @.str.69, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @geth_setup_freeq._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @geth_setup_freeq._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 954, i32 2}
!162 = !{ptr @geth_setup_freeq._entry.71, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @geth_setup_freeq._entry_ptr.73, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 836, i32 2}
!166 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug492, !165, !"__UNIQUE_ID_ddebug492", i1 false, i1 false}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 856, i32 2}
!170 = !{ptr @geth_freeq_alloc_map_page.__UNIQUE_ID_ddebug493, !169, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!171 = distinct !{null, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!173 = distinct !{null, !174, !"__already_done", i1 false, i1 false}
!174 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!175 = !{ptr @.str.78, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.80, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 898, i32 3}
!179 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @geth_fill_freeq.__UNIQUE_ID_ddebug494, !178, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 718, i32 3}
!183 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @gmac_setup_rxq._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @gmac_setup_rxq._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.84, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 575, i32 3}
!188 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @gmac_setup_txqs._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @gmac_setup_txqs._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @gmac_cleanup_rxq.gpage, !192, !"gpage", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 759, i32 33}
!193 = !{ptr @.str.86, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 793, i32 4}
!195 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @gmac_cleanup_rxq._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @gmac_cleanup_rxq._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 740, i32 3}
!200 = !{ptr @.str.89, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @gmac_get_queue_page._entry, !199, !"_entry", i1 false, i1 false}
!202 = !{ptr @gmac_get_queue_page._entry_ptr, !199, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.90, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1312, i32 2}
!205 = !{ptr @gmac_enable_irq.__UNIQUE_ID_ddebug501, !204, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!206 = !{ptr @.str.91, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1301, i32 21}
!208 = !{ptr @gmac_351x_ethtool_ops, !209, !"gmac_351x_ethtool_ops", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2220, i32 33}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2203, i32 42}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2203, i32 48}
!214 = !{ptr @gmac_stats_strings, !215, !"gmac_stats_strings", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 171, i32 19}
!216 = !{ptr @gmac_rx.skb, !217, !"skb", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1402, i32 25}
!218 = !{ptr @.str.94, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1436, i32 8}
!220 = !{ptr @.str.95, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1443, i32 4}
!222 = !{ptr @.str.96, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @gmac_rx._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @gmac_rx._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.97, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 1475, i32 23}
!227 = !{ptr @.str.98, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 382, i32 3}
!229 = !{ptr @.str.99, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @gmac_setup_phy.__UNIQUE_ID_ddebug489, !228, !"__UNIQUE_ID_ddebug489", i1 false, i1 false}
!231 = !{ptr @.str.100, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 387, i32 3}
!233 = !{ptr @gmac_setup_phy.__UNIQUE_ID_ddebug490, !232, !"__UNIQUE_ID_ddebug490", i1 false, i1 false}
!234 = !{ptr @.str.101, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 395, i32 3}
!236 = !{ptr @gmac_setup_phy.__UNIQUE_ID_ddebug491, !235, !"__UNIQUE_ID_ddebug491", i1 false, i1 false}
!237 = !{ptr @.str.102, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 400, i32 22}
!239 = !{ptr @.str.103, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 310, i32 3}
!241 = !{ptr @.str.104, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @gmac_speed_set.__UNIQUE_ID_ddebug486, !240, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!243 = !{ptr @.str.105, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 317, i32 3}
!245 = !{ptr @gmac_speed_set.__UNIQUE_ID_ddebug487, !244, !"__UNIQUE_ID_ddebug487", i1 false, i1 false}
!246 = !{ptr @.str.106, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 324, i32 3}
!248 = !{ptr @gmac_speed_set.__UNIQUE_ID_ddebug488, !247, !"__UNIQUE_ID_ddebug488", i1 false, i1 false}
!249 = !{ptr @.str.107, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 328, i32 23}
!251 = !{ptr @.str.108, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 350, i32 23}
!253 = !{ptr @.str.109, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 352, i32 32}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 352, i32 39}
!257 = !{ptr @.str.111, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 353, i32 32}
!259 = !{ptr @.str.112, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 353, i32 39}
!261 = !{ptr @gemini_ethernet_port_of_match, !262, !"gemini_ethernet_port_of_match", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/cortina/gemini.c", i32 2524, i32 34}
!263 = !{!"sp"}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{i64 6340023}
!274 = !{i64 2158053359}
!275 = !{i64 2158053443}
!276 = !{i64 2157929567}
!277 = !{i64 6339185}
!278 = !{i64 2157930474}
!279 = !{i64 6338985}
!280 = !{i64 2157930707}
!281 = !{i64 6339605}
!282 = !{!"branch_weights", i32 2000, i32 1}
!283 = !{!"branch_weights", i32 1, i32 2000}
!284 = !{i64 2153684829, i64 2153685312, i64 2153684866, i64 2153684922, i64 2153684956, i64 2153684980, i64 2153685021, i64 2153685042, i64 2153685070, i64 2153685104}
!285 = !{i64 2148366065}
!286 = !{i64 2148280798, i64 2148280830, i64 2148280859, i64 2148280893, i64 2148280924, i64 2148280947}
!287 = !{i64 2148366294}
!288 = !{i64 2148759428, i64 2148759433, i64 2148759446, i64 2148759490, i64 2148759524, i64 2148759545}
!289 = !{i64 2158033251}
!290 = !{i64 2158034369}
!291 = !{i64 2158035487}
!292 = !{i8 0, i8 2}
!293 = !{i64 2158024715}
!294 = !{i64 2158025107}
!295 = !{i64 2158025499}
!296 = !{i64 2158025891}
!297 = !{i64 2158026283}
!298 = !{i64 2158026684}
!299 = !{i64 2158027112}
!300 = !{i64 2158027540}
!301 = !{i64 2158027968}
!302 = !{i64 2158028396}
!303 = !{i64 2158028816}
!304 = !{i64 2158029212}
!305 = !{i64 2158029608}
!306 = !{i64 2158030004}
!307 = !{i64 2158030400}
!308 = !{i64 2158030795}
!309 = !{i64 2158031187}
!310 = !{i64 2158031579}
!311 = !{i64 2158031971}
!312 = !{i64 2158000038}
!313 = !{i64 2158000559}
!314 = !{i64 2158001080}
!315 = !{i64 2158001601}
!316 = !{i64 2158002122}
!317 = !{i64 2158002643}
!318 = !{i64 2150040399}
!319 = !{i64 2157997505}
!320 = !{i64 2157998318}
!321 = !{i64 2157999131}
!322 = !{i64 2158023265}
!323 = !{i64 2158023766}
!324 = !{i64 2158024320}
!325 = !{i64 2158021658}
!326 = !{i64 2158022348}
!327 = !{i64 2158022575}
!328 = !{i64 2157895345}
!329 = !{i64 2157896644}
!330 = !{i64 2157896883}
!331 = !{i64 2157897337}
!332 = !{i64 2157897791}
!333 = !{i64 2157898245}
!334 = !{i64 2157898977}
!335 = !{i64 2157899218}
!336 = !{i64 2157899680}
!337 = !{i64 2157900136}
!338 = !{i64 2157907726}
!339 = !{i64 2157908205}
!340 = !{i64 2157902668}
!341 = !{i64 2157903402}
!342 = !{i64 2157903606}
!343 = !{i64 2157988493}
!344 = !{i64 2157988982}
!345 = !{i64 2157874493}
!346 = !{i64 2157874889}
!347 = !{i64 2157875960}
!348 = !{i64 2157876356}
!349 = !{i64 2157989661}
!350 = !{i64 2157989882}
!351 = !{i64 2157904800}
!352 = !{i64 2157905004}
!353 = !{i64 2157905390}
!354 = !{i64 2157950518}
!355 = !{i64 2157950724}
!356 = !{i64 2157995971}
!357 = !{i64 2157996417}
!358 = !{i64 2157996864}
!359 = !{i64 2157873194}
!360 = !{i64 2157873422}
!361 = !{i64 2150039749}
!362 = !{i64 2158008795}
!363 = !{i64 2158009367}
!364 = !{i64 2157984605}
!365 = !{i64 2157985059}
!366 = !{i64 2157948657}
!367 = !{i64 2157948880}
!368 = !{i64 2157987696}
!369 = !{i32 0, i32 33}
!370 = !{i64 2157943928}
!371 = !{i64 2157944232}
!372 = !{i64 2157945072}
!373 = !{i64 2157910635}
!374 = !{i64 2157910841}
!375 = !{i64 2157911206}
!376 = !{i64 2157954650}
!377 = !{i64 2157954873}
!378 = !{i64 2157955633}
!379 = !{i64 2157955856}
!380 = !{i64 2157956749}
!381 = !{i64 2157956972}
!382 = !{i64 2157965189}
!383 = !{i64 2157965690}
!384 = !{i64 2157966191}
!385 = !{i64 2157966692}
!386 = !{i64 2157967193}
!387 = !{i64 2157967694}
!388 = !{i64 2157968195}
!389 = !{i64 2157968696}
!390 = !{i64 2157969197}
!391 = !{i64 2157969698}
!392 = !{i64 2157970215}
!393 = !{i64 2157970732}
!394 = !{i64 2157971256}
!395 = !{i64 2157971800}
!396 = !{i64 2157972317}
!397 = !{i64 2157972834}
!398 = !{i64 2157973351}
!399 = !{i64 2157973868}
!400 = !{i64 2157974392}
!401 = !{i64 2157974909}
!402 = !{i64 2157975393}
!403 = !{i64 2157975897}
!404 = !{i64 2157976414}
!405 = !{i64 2157976931}
!406 = !{i64 2157977448}
!407 = !{i64 2157977965}
!408 = !{i64 2157978456}
!409 = !{i64 2157978960}
!410 = !{i64 2157979451}
!411 = !{i64 2157979955}
!412 = !{i64 2157960537}
!413 = !{i64 2157960760}
!414 = !{i64 2157980838}
!415 = !{i64 2157981359}
!416 = !{i64 2157981880}
!417 = !{i64 2157982401}
!418 = !{i64 2157982922}
!419 = !{i64 2157983443}
!420 = !{i64 2157983799}
!421 = !{i64 2149932081}
!422 = !{i64 2149937013}
!423 = !{i64 2149958725}
!424 = !{i64 2149963617}
!425 = !{i64 2150040074}
!426 = !{i64 2157947976}
!427 = !{i64 2157927086}
!428 = !{i64 2157927315}
!429 = !{i64 2157927742}
!430 = !{i64 2157928206}
!431 = !{i64 2157919793}
!432 = !{i64 2148277613, i64 2148277639, i64 2148277668, i64 2148277702, i64 2148277733, i64 2148277756}
!433 = !{i64 2157922648}
!434 = !{i64 670094, i64 670155}
!435 = !{i64 672826}
!436 = !{i64 673111}
!437 = !{i64 2155580166}
!438 = !{i64 2155580008}
!439 = !{i64 2155580336}
!440 = !{i64 2158010694}
!441 = !{i64 2158010173}
!442 = !{i64 2157961840}
!443 = !{i64 2157962187}
!444 = !{i64 2157964529}
!445 = !{i64 2157879996}
!446 = !{i64 2157878725}
!447 = !{i64 2157879293}
!448 = !{i64 2157887596}
